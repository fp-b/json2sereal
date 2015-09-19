module Sereal.Constants (
st_POS_0,
st_POS_1,
st_POS_2,
st_POS_3,
st_POS_4,
st_POS_5,
st_POS_6,
st_POS_7,
st_POS_8,
st_POS_9,
st_POS_10,
st_POS_11,
st_POS_12,
st_POS_13,
st_POS_14,
st_POS_15,
st_NEG_16,
st_NEG_15,
st_NEG_14,
st_NEG_13,
st_NEG_12,
st_NEG_11,
st_NEG_10,
st_NEG_9,
st_NEG_8,
st_NEG_7,
st_NEG_6,
st_NEG_5,
st_NEG_4,
st_NEG_3,
st_NEG_2,
st_NEG_1,
st_VARINT,
st_ZIGZAG,
st_FLOAT,
st_DOUBLE,
st_LONG_DOUBLE,
st_UNDEF,
st_BINARY,
st_STR_UTF8,
st_REFN,
st_REFP,
st_HASH,
st_ARRAY,
st_OBJECT,
st_OBJECTV,
st_ALIAS,
st_COPY,
st_WEAKEN,
st_REGEXP,
st_OBJECT_FREEZE,
st_OBJECTV_FREEZE,
st_RESERVED_0,
st_RESERVED_1,
st_RESERVED_2,
st_RESERVED_3,
st_RESERVED_4,
st_CANONICAL_UNDEF,
st_FALSE,
st_TRUE,
st_MANY,
st_PACKET_START,
st_EXTEND,
st_PAD,
st_ARRAYREF_0,
st_ARRAYREF_1,
st_ARRAYREF_2,
st_ARRAYREF_3,
st_ARRAYREF_4,
st_ARRAYREF_5,
st_ARRAYREF_6,
st_ARRAYREF_7,
st_ARRAYREF_8,
st_ARRAYREF_9,
st_ARRAYREF_10,
st_ARRAYREF_11,
st_ARRAYREF_12,
st_ARRAYREF_13,
st_ARRAYREF_14,
st_ARRAYREF_15,
st_HASHREF_0,
st_HASHREF_1,
st_HASHREF_2,
st_HASHREF_3,
st_HASHREF_4,
st_HASHREF_5,
st_HASHREF_6,
st_HASHREF_7,
st_HASHREF_8,
st_HASHREF_9,
st_HASHREF_10,
st_HASHREF_11,
st_HASHREF_12,
st_HASHREF_13,
st_HASHREF_14,
st_HASHREF_15,
st_SHORT_BINARY_0,
st_SHORT_BINARY_1,
st_SHORT_BINARY_2,
st_SHORT_BINARY_3,
st_SHORT_BINARY_4,
st_SHORT_BINARY_5,
st_SHORT_BINARY_6,
st_SHORT_BINARY_7,
st_SHORT_BINARY_8,
st_SHORT_BINARY_9,
st_SHORT_BINARY_10,
st_SHORT_BINARY_11,
st_SHORT_BINARY_12,
st_SHORT_BINARY_13,
st_SHORT_BINARY_14,
st_SHORT_BINARY_15,
st_SHORT_BINARY_16,
st_SHORT_BINARY_17,
st_SHORT_BINARY_18,
st_SHORT_BINARY_19,
st_SHORT_BINARY_20,
st_SHORT_BINARY_21,
st_SHORT_BINARY_22,
st_SHORT_BINARY_23,
st_SHORT_BINARY_24,
st_SHORT_BINARY_25,
st_SHORT_BINARY_26,
st_SHORT_BINARY_27,
st_SHORT_BINARY_28,
st_SHORT_BINARY_29,
st_SHORT_BINARY_30,
st_SHORT_BINARY_31,
shortHashTag,
shortArrayTag,
shortStrTag,
shortIntTag
) where

import Data.ByteString.Lazy.Internal(ByteString)
import Data.ByteString.Lazy(singleton)
import qualified Data.Vector as V

st_POS_0 :: ByteString  -- |   0 | 0x00 | 0b00000000 | small positive integer - value in low 4 bits (identity)
st_POS_0 =    singleton 0
st_POS_1 :: ByteString  -- |   1 | 0x01 | 0b00000001 |
st_POS_1 =    singleton 1
st_POS_2 :: ByteString  -- |   2 | 0x02 | 0b00000010 |
st_POS_2 =    singleton 2
st_POS_3 :: ByteString  -- |   3 | 0x03 | 0b00000011 |
st_POS_3 =    singleton 3
st_POS_4 :: ByteString  -- |   4 | 0x04 | 0b00000100 |
st_POS_4 =    singleton 4
st_POS_5 :: ByteString  -- |   5 | 0x05 | 0b00000101 |
st_POS_5 =    singleton 5
st_POS_6 :: ByteString  -- |   6 | 0x06 | 0b00000110 |
st_POS_6 =    singleton 6
st_POS_7 :: ByteString  -- |   7 | 0x07 | 0b00000111 |
st_POS_7 =    singleton 7
st_POS_8 :: ByteString  -- |   8 | 0x08 | 0b00001000 |
st_POS_8 =    singleton 8
st_POS_9 :: ByteString  -- |   9 | 0x09 | 0b00001001 |
st_POS_9 =    singleton 9
st_POS_10 :: ByteString  -- |  10 | 0x0a | 0b00001010 |
st_POS_10 =   singleton 10
st_POS_11 :: ByteString  -- |  11 | 0x0b | 0b00001011 |
st_POS_11 =   singleton 11
st_POS_12 :: ByteString  -- |  12 | 0x0c | 0b00001100 |
st_POS_12 =   singleton 12
st_POS_13 :: ByteString  -- |  13 | 0x0d | 0b00001101 |
st_POS_13 =   singleton 13
st_POS_14 :: ByteString  -- |  14 | 0x0e | 0b00001110 |
st_POS_14 =   singleton 14
st_POS_15 :: ByteString  -- |  15 | 0x0f | 0b00001111 | small positive integer - value in low 4 bits (identity)
st_POS_15 =   singleton 15
st_NEG_16 :: ByteString  -- |  16 | 0x10 | 0b00010000 | small negative integer - value in low 4 bits (k+32)
st_NEG_16 =   singleton 16
st_NEG_15 :: ByteString  -- |  17 | 0x11 | 0b00010001 |
st_NEG_15 =   singleton 17
st_NEG_14 :: ByteString  -- |  18 | 0x12 | 0b00010010 |
st_NEG_14 =   singleton 18
st_NEG_13 :: ByteString  -- |  19 | 0x13 | 0b00010011 |
st_NEG_13 =   singleton 19
st_NEG_12 :: ByteString  -- |  20 | 0x14 | 0b00010100 |
st_NEG_12 =   singleton 20
st_NEG_11 :: ByteString  -- |  21 | 0x15 | 0b00010101 |
st_NEG_11 =   singleton 21
st_NEG_10 :: ByteString  -- |  22 | 0x16 | 0b00010110 |
st_NEG_10 =   singleton 22
st_NEG_9 :: ByteString  -- |  23 | 0x17 | 0b00010111 |
st_NEG_9 =   singleton 23
st_NEG_8 :: ByteString  -- |  24 | 0x18 | 0b00011000 |
st_NEG_8 =   singleton 24
st_NEG_7 :: ByteString  -- |  25 | 0x19 | 0b00011001 |
st_NEG_7 =   singleton 25
st_NEG_6 :: ByteString  -- |  26 | 0x1a | 0b00011010 |
st_NEG_6 =   singleton 26
st_NEG_5 :: ByteString  -- |  27 | 0x1b | 0b00011011 |
st_NEG_5 =   singleton 27
st_NEG_4 :: ByteString  -- |  28 | 0x1c | 0b00011100 |
st_NEG_4 =   singleton 28
st_NEG_3 :: ByteString  -- |  29 | 0x1d | 0b00011101 |
st_NEG_3 =   singleton 29
st_NEG_2 :: ByteString  -- |  30 | 0x1e | 0b00011110 |
st_NEG_2 =   singleton 30
st_NEG_1 :: ByteString  -- |  31 | 0x1f | 0b00011111 | small negative integer - value in low 4 bits (k+32)
st_NEG_1 =   singleton 31
st_VARINT :: ByteString  -- |  32 | 0x20 | 0b00100000 | <VARINT> - Varint variable length integer
st_VARINT =   singleton 32
st_ZIGZAG :: ByteString  -- |  33 | 0x21 | 0b00100001 | <ZIGZAG-VARINT> - Zigzag variable length integer
st_ZIGZAG =   singleton 33
st_FLOAT :: ByteString  -- |  34 | 0x22 | 0b00100010 | <IEEE-FLOAT>
st_FLOAT =   singleton 34
st_DOUBLE :: ByteString  -- |  35 | 0x23 | 0b00100011 | <IEEE-DOUBLE>
st_DOUBLE =   singleton 35
st_LONG_DOUBLE :: ByteString  -- |  36 | 0x24 | 0b00100100 | <IEEE-LONG-DOUBLE>
st_LONG_DOUBLE =   singleton 36
st_UNDEF :: ByteString  -- |  37 | 0x25 | 0b00100101 | None - Perl undef var; eg my $var= singleton undef;
st_UNDEF =   singleton 37
st_BINARY :: ByteString  -- |  38 | 0x26 | 0b00100110 | <LEN-VARINT> <BYTES> - binary/(latin1) string
st_BINARY =   singleton 38
st_STR_UTF8 :: ByteString  -- |  39 | 0x27 | 0b00100111 | <LEN-VARINT> <UTF8> - utf8 string
st_STR_UTF8 =   singleton 39
st_REFN :: ByteString  -- |  40 | 0x28 | 0b00101000 | <ITEM-TAG>    - ref to next item
st_REFN =   singleton 40
st_REFP :: ByteString  -- |  41 | 0x29 | 0b00101001 | <OFFSET-VARINT> - ref to previous item stored at offset
st_REFP =   singleton 41
st_HASH :: ByteString  -- |  42 | 0x2a | 0b00101010 | <COUNT-VARINT> [<KEY-TAG> <ITEM-TAG> ...] - count followed by key/value pairs
st_HASH =   singleton 42
st_ARRAY :: ByteString  -- |  43 | 0x2b | 0b00101011 | <COUNT-VARINT> [<ITEM-TAG> ...] - count followed by items
st_ARRAY =   singleton 43
st_OBJECT :: ByteString  -- |  44 | 0x2c | 0b00101100 | <STR-TAG> <ITEM-TAG> - class, object-item
st_OBJECT =   singleton 44
st_OBJECTV :: ByteString  -- |  45 | 0x2d | 0b00101101 | <OFFSET-VARINT> <ITEM-TAG> - offset of previously used classname tag - object-item
st_OBJECTV =   singleton 45
st_ALIAS :: ByteString  -- |  46 | 0x2e | 0b00101110 | <OFFSET-VARINT> - alias to item defined at offset
st_ALIAS =   singleton 46
st_COPY :: ByteString  -- |  47 | 0x2f | 0b00101111 | <OFFSET-VARINT> - copy of item defined at offset
st_COPY =   singleton 47
st_WEAKEN :: ByteString  -- |  48 | 0x30 | 0b00110000 | <REF-TAG> - Weaken the following reference
st_WEAKEN =   singleton 48
st_REGEXP :: ByteString  -- |  49 | 0x31 | 0b00110001 | <PATTERN-STR-TAG> <MODIFIERS-STR-TAG>
st_REGEXP =   singleton 49
st_OBJECT_FREEZE :: ByteString  -- |  50 | 0x32 | 0b00110010 | <STR-TAG> <ITEM-TAG> - class, object-item. Need to call "THAW" method on class after decoding
st_OBJECT_FREEZE =   singleton 50
st_OBJECTV_FREEZE :: ByteString  -- |  51 | 0x33 | 0b00110011 | <OFFSET-VARINT> <ITEM-TAG> - (OBJECTV_FREEZE is to OBJECT_FREEZE as OBJECTV is to OBJECT)
st_OBJECTV_FREEZE =   singleton 51
st_RESERVED_0 :: ByteString  -- |  52 | 0x34 | 0b00110100 | reserved
st_RESERVED_0 =   singleton 52
st_RESERVED_1 :: ByteString  -- |  53 | 0x35 | 0b00110101 |
st_RESERVED_1 =   singleton 53
st_RESERVED_2 :: ByteString  -- |  54 | 0x36 | 0b00110110 |
st_RESERVED_2 =   singleton 54
st_RESERVED_3 :: ByteString  -- |  55 | 0x37 | 0b00110111 |
st_RESERVED_3 =   singleton 55
st_RESERVED_4 :: ByteString  -- |  56 | 0x38 | 0b00111000 | reserved
st_RESERVED_4 =   singleton 56
st_CANONICAL_UNDEF :: ByteString  -- |  57 | 0x39 | 0b00111001 | undef (PL_sv_undef) - "the" Perl undef (see notes)
st_CANONICAL_UNDEF =   singleton 57
st_FALSE :: ByteString  -- |  58 | 0x3a | 0b00111010 | false (PL_sv_no)
st_FALSE =   singleton 58
st_TRUE :: ByteString  -- |  59 | 0x3b | 0b00111011 | true  (PL_sv_yes)
st_TRUE =   singleton 59
st_MANY :: ByteString  -- |  60 | 0x3c | 0b00111100 | <LEN-VARINT> <TYPE-BYTE> <TAG-DATA> - repeated tag (not done yet, will be implemented in version 3)
st_MANY =   singleton 60
st_PACKET_START :: ByteString  -- |  61 | 0x3d | 0b00111101 | (first byte of magic string in header)
st_PACKET_START =   singleton 61
st_EXTEND :: ByteString  -- |  62 | 0x3e | 0b00111110 | <BYTE> - for additional tags
st_EXTEND =   singleton 62
st_PAD :: ByteString  -- |  63 | 0x3f | 0b00111111 | (ignored tag, skip to next byte)
st_PAD =   singleton 63
st_ARRAYREF_0 :: ByteString  -- |  64 | 0x40 | 0b01000000 | [<ITEM-TAG> ...] - count of items in low 4 bits (ARRAY must be refcnt=1)
st_ARRAYREF_0 =   singleton 64
st_ARRAYREF_1 :: ByteString  -- |  65 | 0x41 | 0b01000001 |
st_ARRAYREF_1 =   singleton 65
st_ARRAYREF_2 :: ByteString  -- |  66 | 0x42 | 0b01000010 |
st_ARRAYREF_2 =   singleton 66
st_ARRAYREF_3 :: ByteString  -- |  67 | 0x43 | 0b01000011 |
st_ARRAYREF_3 =   singleton 67
st_ARRAYREF_4 :: ByteString  -- |  68 | 0x44 | 0b01000100 |
st_ARRAYREF_4 =   singleton 68
st_ARRAYREF_5 :: ByteString  -- |  69 | 0x45 | 0b01000101 |
st_ARRAYREF_5 =   singleton 69
st_ARRAYREF_6 :: ByteString  -- |  70 | 0x46 | 0b01000110 |
st_ARRAYREF_6 =   singleton 70
st_ARRAYREF_7 :: ByteString  -- |  71 | 0x47 | 0b01000111 |
st_ARRAYREF_7 =   singleton 71
st_ARRAYREF_8 :: ByteString  -- |  72 | 0x48 | 0b01001000 |
st_ARRAYREF_8 =   singleton 72
st_ARRAYREF_9 :: ByteString  -- |  73 | 0x49 | 0b01001001 |
st_ARRAYREF_9 =   singleton 73
st_ARRAYREF_10 :: ByteString  -- |  74 | 0x4a | 0b01001010 |
st_ARRAYREF_10 =   singleton 74
st_ARRAYREF_11 :: ByteString  -- |  75 | 0x4b | 0b01001011 |
st_ARRAYREF_11 =   singleton 75
st_ARRAYREF_12 :: ByteString  -- |  76 | 0x4c | 0b01001100 |
st_ARRAYREF_12 =   singleton 76
st_ARRAYREF_13 :: ByteString  -- |  77 | 0x4d | 0b01001101 |
st_ARRAYREF_13 =   singleton 77
st_ARRAYREF_14 :: ByteString  -- |  78 | 0x4e | 0b01001110 |
st_ARRAYREF_14 =   singleton 78
st_ARRAYREF_15 :: ByteString  -- |  79 | 0x4f | 0b01001111 | [<ITEM-TAG> ...] - count of items in low 4 bits (ARRAY must be refcnt=1)
st_ARRAYREF_15 =   singleton 79
st_HASHREF_0 :: ByteString  -- |  80 | 0x50 | 0b01010000 | [<KEY-TAG> <ITEM-TAG> ...] - count in low 4 bits, key/value pairs (HASH must be refcnt=1)
st_HASHREF_0 =   singleton 80
st_HASHREF_1 :: ByteString  -- |  81 | 0x51 | 0b01010001 |
st_HASHREF_1 =   singleton 81
st_HASHREF_2 :: ByteString  -- |  82 | 0x52 | 0b01010010 |
st_HASHREF_2 =   singleton 82
st_HASHREF_3 :: ByteString  -- |  83 | 0x53 | 0b01010011 |
st_HASHREF_3 =   singleton 83
st_HASHREF_4 :: ByteString  -- |  84 | 0x54 | 0b01010100 |
st_HASHREF_4 =   singleton 84
st_HASHREF_5 :: ByteString  -- |  85 | 0x55 | 0b01010101 |
st_HASHREF_5 =   singleton 85
st_HASHREF_6 :: ByteString  -- |  86 | 0x56 | 0b01010110 |
st_HASHREF_6 =   singleton 86
st_HASHREF_7 :: ByteString  -- |  87 | 0x57 | 0b01010111 |
st_HASHREF_7 =   singleton 87
st_HASHREF_8 :: ByteString  -- |  88 | 0x58 | 0b01011000 |
st_HASHREF_8 =   singleton 88
st_HASHREF_9 :: ByteString  -- |  89 | 0x59 | 0b01011001 |
st_HASHREF_9 =   singleton 89
st_HASHREF_10 :: ByteString  -- |  90 | 0x5a | 0b01011010 |
st_HASHREF_10 =   singleton 90
st_HASHREF_11 :: ByteString  -- |  91 | 0x5b | 0b01011011 |
st_HASHREF_11 =   singleton 91
st_HASHREF_12 :: ByteString  -- |  92 | 0x5c | 0b01011100 |
st_HASHREF_12 =   singleton 92
st_HASHREF_13 :: ByteString  -- |  93 | 0x5d | 0b01011101 |
st_HASHREF_13 =   singleton 93
st_HASHREF_14 :: ByteString  -- |  94 | 0x5e | 0b01011110 |
st_HASHREF_14 =   singleton 94
st_HASHREF_15 :: ByteString  -- |  95 | 0x5f | 0b01011111 | [<KEY-TAG> <ITEM-TAG> ...] - count in low 4 bits, key/value pairs (HASH must be refcnt=1)
st_HASHREF_15 =   singleton 95
st_SHORT_BINARY_0 :: ByteString  -- |  96 | 0x60 | 0b01100000 | <BYTES> - binary/latin1 string, length encoded in low 5 bits of tag
st_SHORT_BINARY_0 =   singleton 96
st_SHORT_BINARY_1 :: ByteString  -- |  97 | 0x61 | 0b01100001 |
st_SHORT_BINARY_1 =   singleton 97
st_SHORT_BINARY_2 :: ByteString  -- |  98 | 0x62 | 0b01100010 |
st_SHORT_BINARY_2 =   singleton 98
st_SHORT_BINARY_3 :: ByteString  -- |  99 | 0x63 | 0b01100011 |
st_SHORT_BINARY_3 =   singleton 99
st_SHORT_BINARY_4 :: ByteString  -- | 100 | 0x64 | 0b01100100 |
st_SHORT_BINARY_4 =  singleton 100
st_SHORT_BINARY_5 :: ByteString  -- | 101 | 0x65 | 0b01100101 |
st_SHORT_BINARY_5 =  singleton 101
st_SHORT_BINARY_6 :: ByteString  -- | 102 | 0x66 | 0b01100110 |
st_SHORT_BINARY_6 =  singleton 102
st_SHORT_BINARY_7 :: ByteString  -- | 103 | 0x67 | 0b01100111 |
st_SHORT_BINARY_7 =  singleton 103
st_SHORT_BINARY_8 :: ByteString  -- | 104 | 0x68 | 0b01101000 |
st_SHORT_BINARY_8 =  singleton 104
st_SHORT_BINARY_9 :: ByteString  -- | 105 | 0x69 | 0b01101001 |
st_SHORT_BINARY_9 =  singleton 105
st_SHORT_BINARY_10 :: ByteString  -- | 106 | 0x6a | 0b01101010 |
st_SHORT_BINARY_10 =  singleton 106
st_SHORT_BINARY_11 :: ByteString  -- | 107 | 0x6b | 0b01101011 |
st_SHORT_BINARY_11 =  singleton 107
st_SHORT_BINARY_12 :: ByteString  -- | 108 | 0x6c | 0b01101100 |
st_SHORT_BINARY_12 =  singleton 108
st_SHORT_BINARY_13 :: ByteString  -- | 109 | 0x6d | 0b01101101 |
st_SHORT_BINARY_13 =  singleton 109
st_SHORT_BINARY_14 :: ByteString  -- | 110 | 0x6e | 0b01101110 |
st_SHORT_BINARY_14 =  singleton 110
st_SHORT_BINARY_15 :: ByteString  -- | 111 | 0x6f | 0b01101111 |
st_SHORT_BINARY_15 =  singleton 111
st_SHORT_BINARY_16 :: ByteString  -- | 112 | 0x70 | 0b01110000 |
st_SHORT_BINARY_16 =  singleton 112
st_SHORT_BINARY_17 :: ByteString  -- | 113 | 0x71 | 0b01110001 |
st_SHORT_BINARY_17 =  singleton 113
st_SHORT_BINARY_18 :: ByteString  -- | 114 | 0x72 | 0b01110010 |
st_SHORT_BINARY_18 =  singleton 114
st_SHORT_BINARY_19 :: ByteString  -- | 115 | 0x73 | 0b01110011 |
st_SHORT_BINARY_19 =  singleton 115
st_SHORT_BINARY_20 :: ByteString  -- | 116 | 0x74 | 0b01110100 |
st_SHORT_BINARY_20 =  singleton 116
st_SHORT_BINARY_21 :: ByteString  -- | 117 | 0x75 | 0b01110101 |
st_SHORT_BINARY_21 =  singleton 117
st_SHORT_BINARY_22 :: ByteString  -- | 118 | 0x76 | 0b01110110 |
st_SHORT_BINARY_22 =  singleton 118
st_SHORT_BINARY_23 :: ByteString  -- | 119 | 0x77 | 0b01110111 |
st_SHORT_BINARY_23 =  singleton 119
st_SHORT_BINARY_24 :: ByteString  -- | 120 | 0x78 | 0b01111000 |
st_SHORT_BINARY_24 =  singleton 120
st_SHORT_BINARY_25 :: ByteString  -- | 121 | 0x79 | 0b01111001 |
st_SHORT_BINARY_25 =  singleton 121
st_SHORT_BINARY_26 :: ByteString  -- | 122 | 0x7a | 0b01111010 |
st_SHORT_BINARY_26 =  singleton 122
st_SHORT_BINARY_27 :: ByteString  -- | 123 | 0x7b | 0b01111011 |
st_SHORT_BINARY_27 =  singleton 123
st_SHORT_BINARY_28 :: ByteString  -- |"  | 124 | 0x7c | 0b01111100 |
st_SHORT_BINARY_28 = singleton 124
st_SHORT_BINARY_29 :: ByteString  -- | 125 | 0x7d | 0b01111101 |
st_SHORT_BINARY_29 =  singleton 125
st_SHORT_BINARY_30 :: ByteString  -- | 126 | 0x7e | 0b01111110 |
st_SHORT_BINARY_30 =  singleton 126
st_SHORT_BINARY_31 :: ByteString  -- | 127 | 0x7f | 0b01111111 | <BYTES> - binary/latin1 string, length encoded in low 5 bits of tag
st_SHORT_BINARY_31 =  singleton 127

shortHashTags = V.fromList [
    st_HASHREF_0,
    st_HASHREF_1,
    st_HASHREF_2,
    st_HASHREF_3,
    st_HASHREF_4,
    st_HASHREF_5,
    st_HASHREF_6,
    st_HASHREF_7,
    st_HASHREF_8,
    st_HASHREF_9,
    st_HASHREF_10,
    st_HASHREF_11,
    st_HASHREF_12,
    st_HASHREF_13,
    st_HASHREF_14,
    st_HASHREF_15
    ]
shortHashTag :: Int -> ByteString
shortHashTag = (V.!) shortHashTags

shortArrayTags = V.fromList [
    st_ARRAYREF_0,
    st_ARRAYREF_1,
    st_ARRAYREF_2,
    st_ARRAYREF_3,
    st_ARRAYREF_4,
    st_ARRAYREF_5,
    st_ARRAYREF_6,
    st_ARRAYREF_7,
    st_ARRAYREF_8,
    st_ARRAYREF_9,
    st_ARRAYREF_10,
    st_ARRAYREF_11,
    st_ARRAYREF_12,
    st_ARRAYREF_13,
    st_ARRAYREF_14,
    st_ARRAYREF_15
    ]
shortArrayTag :: Int -> ByteString
shortArrayTag = (V.!) shortArrayTags

shortStrTags = V.fromList [
    st_SHORT_BINARY_0,
    st_SHORT_BINARY_1,
    st_SHORT_BINARY_2,
    st_SHORT_BINARY_3,
    st_SHORT_BINARY_4,
    st_SHORT_BINARY_5,
    st_SHORT_BINARY_6,
    st_SHORT_BINARY_7,
    st_SHORT_BINARY_8,
    st_SHORT_BINARY_9,
    st_SHORT_BINARY_10,
    st_SHORT_BINARY_11,
    st_SHORT_BINARY_12,
    st_SHORT_BINARY_13,
    st_SHORT_BINARY_14,
    st_SHORT_BINARY_15,
    st_SHORT_BINARY_16,
    st_SHORT_BINARY_17,
    st_SHORT_BINARY_18,
    st_SHORT_BINARY_19,
    st_SHORT_BINARY_20,
    st_SHORT_BINARY_21,
    st_SHORT_BINARY_22,
    st_SHORT_BINARY_23,
    st_SHORT_BINARY_24,
    st_SHORT_BINARY_25,
    st_SHORT_BINARY_26,
    st_SHORT_BINARY_27,
    st_SHORT_BINARY_28,
    st_SHORT_BINARY_29,
    st_SHORT_BINARY_30,
    st_SHORT_BINARY_31
    ]
shortStrTag :: Int -> ByteString
shortStrTag = (V.!) shortStrTags

shortIntTags = V.fromList[
    st_NEG_16,
    st_NEG_15,
    st_NEG_14,
    st_NEG_13,
    st_NEG_12,
    st_NEG_11,
    st_NEG_10,
    st_NEG_9,
    st_NEG_8,
    st_NEG_7,
    st_NEG_6,
    st_NEG_5,
    st_NEG_4,
    st_NEG_3,
    st_NEG_2,
    st_NEG_1,
    st_POS_0,
    st_POS_1,
    st_POS_2,
    st_POS_3,
    st_POS_4,
    st_POS_5,
    st_POS_6,
    st_POS_7,
    st_POS_8,
    st_POS_9,
    st_POS_10,
    st_POS_11,
    st_POS_12,
    st_POS_13,
    st_POS_14,
    st_POS_15
    ]
shortIntTag :: Int -> ByteString
shortIntTag = (V.!) shortIntTags . ((+) 16)
