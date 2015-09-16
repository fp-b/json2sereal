module Sereal (encode) where

import qualified Data.Aeson as Aeson
import Data.HashMap.Lazy(fromList)
import Data.HashMap.Lazy(toList)
import Data.Text(toUpper)
import qualified Data.ByteString.Lazy as B
import qualified Data.ByteString.Lazy.Char8 as BC
import Data.Text.Encoding (encodeUtf8)
import Sereal.Constants (st_FALSE, st_TRUE, st_REFN, st_ARRAY, st_HASH, st_STR_UTF8, st_UNDEF, shortHashTag, shortArrayTag)
import Data.HashMap.Lazy(size)
import qualified Data.Text as T
import qualified Data.Vector as V
import Data.Text (Text(..))
import Data.String.Conversions (cs)
import Data.Bits
import Data.Word(Word8)

encode :: Aeson.Value -> B.ByteString
encode val = B.concat [header, encode_content val]
    where header = B.concat [_MAGIC, _VERSION_TYPE, _HEADER_SUFFIX_SIZE]
            where _MAGIC = BC.pack "=\xF3rl"
                  _VERSION_TYPE = B.singleton 3
                  _HEADER_SUFFIX_SIZE = B.singleton 0


encode_content :: Aeson.Value -> B.ByteString
encode_content (Aeson.Object obj)
    | obj_size >= 16 = B.concat [st_REFN, st_HASH, varInt obj_size, encoded_contents]
    | otherwise = B.concat [shortHashTag obj_size, encoded_contents]
    where obj_size = size obj
          encoded_contents = B.concat $ map encodeKV $ toList obj
            where encodeKV (k, v) = B.concat [encode_text k, encode_content v]

encode_content (Aeson.Array array)
    | arr_size >= 16 = B.concat [st_REFN, st_ARRAY, varInt arr_size, encoded_contents]
    | otherwise = B.concat [shortArrayTag arr_size, encoded_contents]
    where arr_size = V.length array
          encoded_contents = B.concat $ map encode_content $ V.toList array

encode_content (Aeson.String str) = encode_text str

encode_content (Aeson.Number n) = encode_text $ cs $ show n

encode_content (Aeson.Bool True) = st_TRUE
encode_content (Aeson.Bool False) = st_FALSE

encode_content (Aeson.Null) = st_UNDEF



encode_text :: Text -> B.ByteString
encode_text text = B.concat [st_STR_UTF8, varInt n, cs $ encoded_text]
    where
        n = fromIntegral $ B.length $ cs encoded_text
        encoded_text = encoded_text
                  where encoded_text = encodeUtf8 text

varInt :: Int -> B.ByteString
varInt n
    | n < 128 = B.singleton $ fromIntegral n
    | otherwise = B.concat [B.singleton $ 0x80 .|. fromIntegral (0xFF .&. n), varInt (shiftR n 7)]
