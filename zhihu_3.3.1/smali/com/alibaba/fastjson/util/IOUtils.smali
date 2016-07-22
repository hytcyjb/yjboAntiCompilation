.class public Lcom/alibaba/fastjson/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final ASCII_CHARS:[C

.field public static final DIGITS:[C

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field static final digits:[C

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field static final sizeTable:[I

.field public static final specicalFlags_doubleQuotes:[B

.field public static final specicalFlags_singleQuotes:[B

.field public static whitespaceFlags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/16 v5, 0xa

    const/4 v1, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 32
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    .line 35
    new-array v0, v6, [Z

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    move v0, v1

    .line 37
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 48
    new-array v0, v6, [Z

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    move v0, v1

    .line 51
    :goto_1
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_4

    .line 64
    new-array v0, v6, [B

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    .line 65
    new-array v0, v6, [B

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 67
    const/16 v0, 0x80

    new-array v0, v0, [C

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    .line 69
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v0, v1

    .line 70
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v0, v3

    .line 71
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 72
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 73
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v0, v4

    .line 74
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v2, 0x5

    aput-byte v4, v0, v2

    .line 75
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v2, 0x6

    aput-byte v4, v0, v2

    .line 76
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v2, 0x7

    aput-byte v4, v0, v2

    .line 77
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0x8

    aput-byte v3, v0, v2

    .line 78
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0x9

    aput-byte v3, v0, v2

    .line 79
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v3, v0, v5

    .line 80
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0xb

    aput-byte v4, v0, v2

    .line 81
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0xc

    aput-byte v3, v0, v2

    .line 82
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0xd

    aput-byte v3, v0, v2

    .line 83
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0x22

    aput-byte v3, v0, v2

    .line 84
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0x5c

    aput-byte v3, v0, v2

    .line 86
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v0, v1

    .line 87
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v0, v3

    .line 88
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v2, 0x2

    aput-byte v4, v0, v2

    .line 89
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 90
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v0, v4

    .line 91
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v2, 0x5

    aput-byte v4, v0, v2

    .line 92
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v2, 0x6

    aput-byte v4, v0, v2

    .line 93
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v2, 0x7

    aput-byte v4, v0, v2

    .line 94
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0x8

    aput-byte v3, v0, v2

    .line 95
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0x9

    aput-byte v3, v0, v2

    .line 96
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v3, v0, v5

    .line 97
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0xb

    aput-byte v4, v0, v2

    .line 98
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0xc

    aput-byte v3, v0, v2

    .line 99
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0xd

    aput-byte v3, v0, v2

    .line 100
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0x5c

    aput-byte v3, v0, v2

    .line 101
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0x27

    aput-byte v3, v0, v2

    .line 103
    const/16 v0, 0xe

    :goto_2
    const/16 v2, 0x1f

    if-le v0, v2, :cond_9

    .line 108
    const/16 v0, 0x7f

    :goto_3
    const/16 v2, 0xa0

    if-le v0, v2, :cond_a

    .line 113
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0x30

    aput-char v2, v0, v1

    .line 114
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x31

    aput-char v1, v0, v3

    .line 115
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v1, 0x2

    const/16 v2, 0x32

    aput-char v2, v0, v1

    .line 116
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-char v2, v0, v1

    .line 117
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x34

    aput-char v1, v0, v4

    .line 118
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    .line 119
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    .line 120
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    .line 121
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x8

    const/16 v2, 0x62

    aput-char v2, v0, v1

    .line 122
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x9

    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 123
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x6e

    aput-char v1, v0, v5

    .line 124
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0xb

    const/16 v2, 0x76

    aput-char v2, v0, v1

    .line 125
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0xc

    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 126
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0xd

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 127
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x22

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 128
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x27

    const/16 v2, 0x27

    aput-char v2, v0, v1

    .line 129
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    .line 130
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x5c

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 133
    const/16 v0, 0x60

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    .line 274
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    .line 277
    const/16 v0, 0x64

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    .line 283
    const/16 v0, 0x64

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    .line 289
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    .line 320
    new-array v0, v6, [Z

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->whitespaceFlags:[Z

    .line 322
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->whitespaceFlags:[Z

    const/16 v1, 0x20

    aput-boolean v3, v0, v1

    .line 323
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->whitespaceFlags:[Z

    aput-boolean v3, v0, v5

    .line 324
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->whitespaceFlags:[Z

    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    .line 325
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->whitespaceFlags:[Z

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 326
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->whitespaceFlags:[Z

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    .line 327
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->whitespaceFlags:[Z

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 328
    return-void

    .line 38
    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_2

    .line 39
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v3, v2, v0

    .line 37
    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto/16 :goto_0

    .line 40
    :cond_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_3

    .line 41
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v3, v2, v0

    goto :goto_4

    .line 42
    :cond_3
    const/16 v2, 0x5f

    if-ne v0, v2, :cond_1

    .line 43
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v3, v2, v0

    goto :goto_4

    .line 52
    :cond_4
    const/16 v2, 0x41

    if-lt v0, v2, :cond_6

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_6

    .line 53
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v3, v2, v0

    .line 51
    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto/16 :goto_1

    .line 54
    :cond_6
    const/16 v2, 0x61

    if-lt v0, v2, :cond_7

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_7

    .line 55
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v3, v2, v0

    goto :goto_5

    .line 56
    :cond_7
    const/16 v2, 0x5f

    if-ne v0, v2, :cond_8

    .line 57
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v3, v2, v0

    goto :goto_5

    .line 58
    :cond_8
    const/16 v2, 0x30

    if-lt v0, v2, :cond_5

    const/16 v2, 0x39

    if-gt v0, v2, :cond_5

    .line 59
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v3, v2, v0

    goto :goto_5

    .line 104
    :cond_9
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v2, v0

    .line 105
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v2, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 109
    :cond_a
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v4, v2, v0

    .line 110
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v4, v2, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 32
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data

    .line 133
    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x30t 0x0t
        0x32t 0x0t
        0x30t 0x0t
        0x33t 0x0t
        0x30t 0x0t
        0x34t 0x0t
        0x30t 0x0t
        0x35t 0x0t
        0x30t 0x0t
        0x36t 0x0t
        0x30t 0x0t
        0x37t 0x0t
        0x30t 0x0t
        0x38t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x41t 0x0t
        0x30t 0x0t
        0x42t 0x0t
        0x30t 0x0t
        0x43t 0x0t
        0x30t 0x0t
        0x44t 0x0t
        0x30t 0x0t
        0x45t 0x0t
        0x30t 0x0t
        0x46t 0x0t
        0x31t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x31t 0x0t
        0x33t 0x0t
        0x31t 0x0t
        0x34t 0x0t
        0x31t 0x0t
        0x35t 0x0t
        0x31t 0x0t
        0x36t 0x0t
        0x31t 0x0t
        0x37t 0x0t
        0x31t 0x0t
        0x38t 0x0t
        0x31t 0x0t
        0x39t 0x0t
        0x31t 0x0t
        0x41t 0x0t
        0x31t 0x0t
        0x42t 0x0t
        0x31t 0x0t
        0x43t 0x0t
        0x31t 0x0t
        0x44t 0x0t
        0x31t 0x0t
        0x45t 0x0t
        0x31t 0x0t
        0x46t 0x0t
        0x32t 0x0t
        0x30t 0x0t
        0x32t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x32t 0x0t
        0x34t 0x0t
        0x32t 0x0t
        0x35t 0x0t
        0x32t 0x0t
        0x36t 0x0t
        0x32t 0x0t
        0x37t 0x0t
        0x32t 0x0t
        0x38t 0x0t
        0x32t 0x0t
        0x39t 0x0t
        0x32t 0x0t
        0x41t 0x0t
        0x32t 0x0t
        0x42t 0x0t
        0x32t 0x0t
        0x43t 0x0t
        0x32t 0x0t
        0x44t 0x0t
        0x32t 0x0t
        0x45t 0x0t
        0x32t 0x0t
        0x46t 0x0t
    .end array-data

    .line 274
    :array_2
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data

    .line 277
    :array_3
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
    .end array-data

    .line 283
    :array_4
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data

    .line 289
    :array_5
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
        0xft 0x27t 0x0t 0x0t
        0x9ft 0x86t 0x1t 0x0t
        0x3ft 0x42t 0xft 0x0t
        0x7ft 0x96t 0x98t 0x0t
        0xfft 0xe0t 0xf5t 0x5t
        0xfft 0xc9t 0x9at 0x3bt
        0xfft 0xfft 0xfft 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 143
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 308
    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_1
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 316
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static firstIdentifier(C)Z
    .locals 1
    .parameter

    .prologue
    .line 331
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getChars(BI[C)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    .line 250
    const/4 v0, 0x0

    .line 252
    if-gez p0, :cond_0

    .line 253
    const/16 v0, 0x2d

    .line 254
    neg-int p0, p0

    .line 260
    :cond_0
    :goto_0
    const v1, 0xcccd

    mul-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x13

    .line 261
    shl-int/lit8 v2, v1, 0x3

    shl-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    sub-int v2, p0, v2

    .line 262
    add-int/lit8 p1, p1, -0x1

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v2, v3, v2

    aput-char v2, p2, p1

    .line 264
    if-nez v1, :cond_2

    .line 266
    if-eqz v0, :cond_1

    .line 267
    add-int/lit8 v1, p1, -0x1

    aput-char v0, p2, v1

    .line 269
    :cond_1
    return-void

    :cond_2
    move p0, v1

    goto :goto_0
.end method

.method public static getChars(II[C)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    .line 215
    const/4 v0, 0x0

    .line 217
    if-gez p0, :cond_3

    .line 218
    const/16 v0, 0x2d

    .line 219
    neg-int v1, p0

    move v3, v0

    move v0, p1

    .line 223
    :goto_0
    const/high16 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 235
    :goto_1
    const v2, 0xcccd

    mul-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0x13

    .line 236
    shl-int/lit8 v4, v2, 0x3

    shl-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v5

    sub-int/2addr v1, v4

    .line 237
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v1, v4, v1

    aput-char v1, p2, v0

    .line 239
    if-nez v2, :cond_2

    .line 241
    if-eqz v3, :cond_0

    .line 242
    add-int/lit8 v0, v0, -0x1

    aput-char v3, p2, v0

    .line 244
    :cond_0
    return-void

    .line 224
    :cond_1
    div-int/lit8 p0, v1, 0x64

    .line 226
    shl-int/lit8 v2, p0, 0x6

    shl-int/lit8 v4, p0, 0x5

    add-int/2addr v2, v4

    shl-int/lit8 v4, p0, 0x2

    add-int/2addr v2, v4

    sub-int/2addr v1, v2

    .line 228
    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v2, v2, v1

    aput-char v2, p2, v0

    .line 229
    add-int/lit8 p1, v0, -0x1

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v0, v0, v1

    aput-char v0, p2, p1

    move v0, p1

    move v1, p0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v3, v0

    move v1, p0

    move v0, p1

    goto :goto_0
.end method

.method public static getChars(JI[C)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    .line 164
    const/4 v0, 0x0

    .line 166
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_4

    .line 167
    const/16 v0, 0x2d

    .line 168
    neg-long p0, p0

    move v3, v0

    move v1, p2

    .line 172
    :goto_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v0, p0, v4

    if-gtz v0, :cond_1

    .line 183
    long-to-int v0, p0

    .line 184
    :goto_1
    const/high16 v2, 0x1

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 196
    :goto_2
    const v1, 0xcccd

    mul-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x13

    .line 197
    shl-int/lit8 v4, v1, 0x3

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    sub-int v4, v0, v4

    .line 198
    add-int/lit8 v0, v2, -0x1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v2, v2, v4

    aput-char v2, p3, v0

    .line 200
    if-nez v1, :cond_3

    .line 202
    if-eqz v3, :cond_0

    .line 203
    add-int/lit8 v0, v0, -0x1

    aput-char v3, p3, v0

    .line 205
    :cond_0
    return-void

    .line 173
    :cond_1
    const-wide/16 v4, 0x64

    div-long v4, p0, v4

    .line 175
    const/4 v0, 0x6

    shl-long v6, v4, v0

    const/4 v0, 0x5

    shl-long v8, v4, v0

    add-long/2addr v6, v8

    const/4 v0, 0x2

    shl-long v8, v4, v0

    add-long/2addr v6, v8

    sub-long v6, p0, v6

    long-to-int v0, v6

    .line 177
    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v2, v2, v0

    aput-char v2, p3, v1

    .line 178
    add-int/lit8 p2, v1, -0x1

    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v0, v1, v0

    aput-char v0, p3, p2

    move v1, p2

    move-wide p0, v4

    goto :goto_0

    .line 185
    :cond_2
    div-int/lit8 v2, v0, 0x64

    .line 187
    shl-int/lit8 v4, v2, 0x6

    shl-int/lit8 v5, v2, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v0, v4

    .line 189
    add-int/lit8 v1, v1, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v4, v4, v0

    aput-char v4, p3, v1

    .line 190
    add-int/lit8 v1, v1, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v0, v4, v0

    aput-char v0, p3, v1

    move v0, v2

    goto :goto_1

    :cond_3
    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_4
    move v3, v0

    move v1, p2

    goto :goto_0
.end method

.method public static isIdent(C)Z
    .locals 1
    .parameter

    .prologue
    .line 335
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stringSize(I)I
    .locals 2
    .parameter

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    .line 295
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 293
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringSize(J)I
    .locals 8
    .parameter

    .prologue
    const-wide/16 v4, 0xa

    const/16 v1, 0x13

    .line 152
    .line 153
    const/4 v0, 0x1

    move-wide v2, v4

    :goto_0
    if-lt v0, v1, :cond_1

    move v0, v1

    .line 157
    :cond_0
    return v0

    .line 154
    :cond_1
    cmp-long v6, p0, v2

    if-ltz v6, :cond_0

    .line 155
    mul-long/2addr v2, v4

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
