import qualified Sereal
import qualified Data.Aeson as Aeson
import qualified Data.ByteString.Lazy as B
import Data.ByteString.Lazy.Internal(ByteString)
import Control.Monad(liftM)
import Data.ByteString.Lazy.Char8(pack)

json2Sereal :: ByteString -> Maybe ByteString
json2Sereal bytes = Sereal.encode `liftM` (Aeson.decode bytes)

main :: IO ()
main = do
    json_string <- B.readFile "in.txt"

    B.writeFile "out.txt" $
        case json2Sereal json_string of
            Just bla -> bla
            Nothing -> pack "WHOOOPS"
