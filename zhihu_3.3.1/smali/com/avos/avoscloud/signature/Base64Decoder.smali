.class public Lcom/avos/avoscloud/signature/Base64Decoder;
.super Ljava/io/FilterInputStream;
.source "Base64Decoder.java"


# static fields
.field private static final chars:[C

.field private static final ints:[I


# instance fields
.field private carryOver:I

.field private charCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x40

    .line 35
    new-array v0, v3, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avos/avoscloud/signature/Base64Decoder;->chars:[C

    .line 41
    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lcom/avos/avoscloud/signature/Base64Decoder;->ints:[I

    .line 43
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 44
    sget-object v1, Lcom/avos/avoscloud/signature/Base64Decoder;->ints:[I

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Decoder;->chars:[C

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void

    .line 35
    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
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
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 155
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/avos/avoscloud/signature/Base64Decoder;->decodeToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static decodeToBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 165
    .line 167
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 170
    :goto_0
    new-instance v2, Lcom/avos/avoscloud/signature/Base64Decoder;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/signature/Base64Decoder;-><init>(Ljava/io/InputStream;)V

    .line 172
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v0, v0

    int-to-double v4, v0

    const-wide v6, 0x3fe570a3d70a3d71L

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 175
    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B

    .line 177
    :goto_1
    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/signature/Base64Decoder;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 178
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :goto_2
    return-object v1

    .line 168
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 182
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 189
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 190
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java Base64Decoder fileToDecode"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v2, 0x0

    .line 196
    :try_start_0
    new-instance v1, Lcom/avos/avoscloud/signature/Base64Decoder;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/signature/Base64Decoder;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B

    .line 199
    :goto_1
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/signature/Base64Decoder;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 200
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/PrintStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 203
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/avos/avoscloud/signature/Base64Decoder;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/avos/avoscloud/signature/Base64Decoder;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 71
    if-ne v1, v0, :cond_2

    .line 112
    :cond_1
    :goto_0
    return v0

    .line 74
    :cond_2
    int-to-char v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget v2, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->charCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->charCount:I

    .line 78
    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    .line 83
    sget-object v2, Lcom/avos/avoscloud/signature/Base64Decoder;->ints:[I

    aget v1, v2, v1

    .line 86
    iget v2, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->charCount:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x4

    .line 89
    if-nez v2, :cond_3

    .line 90
    and-int/lit8 v0, v1, 0x3f

    iput v0, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->carryOver:I

    .line 91
    invoke-virtual {p0}, Lcom/avos/avoscloud/signature/Base64Decoder;->read()I

    move-result v0

    goto :goto_0

    .line 95
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 96
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->carryOver:I

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v2, v1, 0x4

    add-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 97
    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->carryOver:I

    goto :goto_0

    .line 102
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 103
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->carryOver:I

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 104
    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->carryOver:I

    goto :goto_0

    .line 108
    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 109
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Decoder;->carryOver:I

    shl-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 110
    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 126
    array-length v1, p1

    add-int v2, p3, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 127
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The input buffer is too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes requested starting at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while the buffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes long."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/avos/avoscloud/signature/Base64Decoder;->read()I

    move-result v2

    .line 136
    if-ne v2, v0, :cond_1

    if-nez v1, :cond_1

    .line 143
    :goto_1
    return v0

    .line 138
    :cond_1
    if-ne v2, v0, :cond_3

    :cond_2
    move v0, v1

    .line 143
    goto :goto_1

    .line 141
    :cond_3
    add-int v3, p2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
