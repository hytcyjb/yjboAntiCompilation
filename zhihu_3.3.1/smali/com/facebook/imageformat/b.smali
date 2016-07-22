.class public Lcom/facebook/imageformat/b;
.super Ljava/lang/Object;
.source "ImageFormatChecker.java"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x3

    .line 235
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/imageformat/b;->a:[B

    .line 257
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/imageformat/b;->b:[B

    .line 280
    const-string v0, "GIF87a"

    invoke-static {v0}, Lcom/facebook/imageformat/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/imageformat/b;->c:[B

    .line 281
    const-string v0, "GIF89a"

    invoke-static {v0}, Lcom/facebook/imageformat/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/imageformat/b;->d:[B

    .line 303
    const-string v0, "BM"

    invoke-static {v0}, Lcom/facebook/imageformat/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/imageformat/b;->e:[B

    .line 328
    new-array v0, v4, [I

    const/4 v1, 0x0

    const/16 v2, 0x15

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x14

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/facebook/imageformat/b;->a:[B

    array-length v2, v2

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/imageformat/b;->b:[B

    array-length v1, v1

    aput v1, v0, v3

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/imageformat/b;->e:[B

    array-length v2, v2

    aput v2, v0, v1

    invoke-static {v0}, Lcom/facebook/common/internal/e;->a([I)I

    move-result v0

    sput v0, Lcom/facebook/imageformat/b;->f:I

    return-void

    .line 235
    nop

    :array_0
    .array-data 0x1
        0xfft
        0xd8t
        0xfft
    .end array-data

    .line 257
    :array_1
    .array-data 0x1
        0x89t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private static a(Ljava/io/InputStream;[B)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    array-length v0, p1

    sget v2, Lcom/facebook/imageformat/b;->f:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 86
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :try_start_0
    sget v0, Lcom/facebook/imageformat/b;->f:I

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 89
    const/4 v0, 0x0

    sget v1, Lcom/facebook/imageformat/b;->f:I

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/common/internal/a;->a(Ljava/io/InputStream;[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 91
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 94
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 82
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    throw v0

    .line 94
    :cond_1
    sget v0, Lcom/facebook/imageformat/b;->f:I

    invoke-static {p0, p1, v1, v0}, Lcom/facebook/common/internal/a;->a(Ljava/io/InputStream;[BII)I

    move-result v0

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .locals 2
    .parameter

    .prologue
    .line 109
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget v0, Lcom/facebook/imageformat/b;->f:I

    new-array v0, v0, [B

    .line 111
    invoke-static {p0, v0}, Lcom/facebook/imageformat/b;->a(Ljava/io/InputStream;[B)I

    move-result v1

    .line 112
    invoke-static {v0, v1}, Lcom/facebook/imageformat/b;->a([BI)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    return-object v0
.end method

.method private static a([BI)Lcom/facebook/imageformat/ImageFormat;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/common/h/b;->b([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0, p1}, Lcom/facebook/imageformat/b;->b([BI)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 47
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/imageformat/b;->c([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/imageformat/b;->d([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->PNG:Lcom/facebook/imageformat/ImageFormat;

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {p0, p1}, Lcom/facebook/imageformat/b;->e([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->GIF:Lcom/facebook/imageformat/ImageFormat;

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {p0, p1}, Lcom/facebook/imageformat/b;->f([BI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->BMP:Lcom/facebook/imageformat/ImageFormat;

    goto :goto_0

    .line 63
    :cond_4
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    goto :goto_0
.end method

.method private static a([BI[B)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 161
    array-length v0, p2

    add-int/2addr v0, p1

    array-length v3, p0

    if-le v0, v3, :cond_2

    .line 171
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 160
    goto :goto_0

    :cond_2
    move v0, v2

    .line 165
    :goto_2
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 166
    add-int v3, v0, p1

    aget-byte v3, p0, v3

    aget-byte v4, p2, v0

    if-ne v3, v4, :cond_0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    .line 171
    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 3
    .parameter

    .prologue
    .line 181
    invoke-static {p0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ASCII not found!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    .locals 1
    .parameter

    .prologue
    .line 121
    :try_start_0
    invoke-static {p0}, Lcom/facebook/imageformat/b;->a(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-static {v0}, Lcom/facebook/common/internal/j;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static b([BI)Lcom/facebook/imageformat/ImageFormat;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-static {p0, v1, p1}, Lcom/facebook/common/h/b;->b([BII)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Z)V

    .line 210
    invoke-static {p0, v1}, Lcom/facebook/common/h/b;->b([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_SIMPLE:Lcom/facebook/imageformat/ImageFormat;

    .line 228
    :goto_0
    return-object v0

    .line 214
    :cond_0
    invoke-static {p0, v1}, Lcom/facebook/common/h/b;->c([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_LOSSLESS:Lcom/facebook/imageformat/ImageFormat;

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {p0, v1, p1}, Lcom/facebook/common/h/b;->a([BII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    invoke-static {p0, v1}, Lcom/facebook/common/h/b;->a([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_ANIMATED:Lcom/facebook/imageformat/ImageFormat;

    goto :goto_0

    .line 222
    :cond_2
    invoke-static {p0, v1}, Lcom/facebook/common/h/b;->d([BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_EXTENDED_WITH_ALPHA:Lcom/facebook/imageformat/ImageFormat;

    goto :goto_0

    .line 225
    :cond_3
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_EXTENDED:Lcom/facebook/imageformat/ImageFormat;

    goto :goto_0

    .line 228
    :cond_4
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    goto :goto_0
.end method

.method private static c([BI)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 249
    sget-object v1, Lcom/facebook/imageformat/b;->a:[B

    array-length v1, v1

    if-lt p1, v1, :cond_0

    sget-object v1, Lcom/facebook/imageformat/b;->a:[B

    invoke-static {p0, v0, v1}, Lcom/facebook/imageformat/b;->a([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static d([BI)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 272
    sget-object v1, Lcom/facebook/imageformat/b;->b:[B

    array-length v1, v1

    if-lt p1, v1, :cond_0

    sget-object v1, Lcom/facebook/imageformat/b;->b:[B

    invoke-static {p0, v0, v1}, Lcom/facebook/imageformat/b;->a([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static e([BI)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 293
    const/4 v1, 0x6

    if-ge p1, v1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    sget-object v1, Lcom/facebook/imageformat/b;->c:[B

    invoke-static {p0, v0, v1}, Lcom/facebook/imageformat/b;->a([BI[B)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/facebook/imageformat/b;->d:[B

    .line 297
    invoke-static {p0, v0, v1}, Lcom/facebook/imageformat/b;->a([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static f([BI)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 314
    sget-object v1, Lcom/facebook/imageformat/b;->e:[B

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 317
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/facebook/imageformat/b;->e:[B

    invoke-static {p0, v0, v1}, Lcom/facebook/imageformat/b;->a([BI[B)Z

    move-result v0

    goto :goto_0
.end method
