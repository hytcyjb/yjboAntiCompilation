.class public Lcom/avos/avoscloud/signature/Base64Encoder;
.super Ljava/io/FilterOutputStream;
.source "Base64Encoder.java"


# static fields
.field private static final chars:[C


# instance fields
.field private carryOver:I

.field private charCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    return-void

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

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    invoke-static {v0}, Lcom/avos/avoscloud/signature/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 159
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    int-to-double v2, v1

    const-wide v4, 0x3ff5eb851eb851ecL

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 160
    new-instance v1, Lcom/avos/avoscloud/signature/Base64Encoder;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/signature/Base64Encoder;-><init>(Ljava/io/OutputStream;)V

    .line 163
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/signature/Base64Encoder;->write([B)V

    .line 164
    invoke-virtual {v1}, Lcom/avos/avoscloud/signature/Base64Encoder;->close()V

    .line 166
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/16 v3, 0x3d

    .line 123
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 124
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3f

    .line 125
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 126
    iget-object v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 127
    iget-object v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 133
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 134
    return-void

    .line 128
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 129
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3f

    .line 130
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 131
    iget-object v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .parameter

    .prologue
    .line 66
    if-gez p1, :cond_0

    .line 67
    add-int/lit16 p1, p1, 0x100

    .line 71
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_3

    .line 72
    shr-int/lit8 v0, p1, 0x2

    .line 73
    and-int/lit8 v1, p1, 0x3

    iput v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    .line 74
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 92
    :cond_1
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    .line 95
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v0, v0, 0x39

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 98
    :cond_2
    return-void

    .line 78
    :cond_3
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 79
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3f

    .line 80
    and-int/lit8 v1, p1, 0xf

    iput v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    .line 81
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 85
    :cond_4
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->charCount:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 86
    iget v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, p1, 0x6

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3f

    .line 87
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 88
    and-int/lit8 v0, p1, 0x3f

    .line 89
    iget-object v1, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/avos/avoscloud/signature/Base64Encoder;->chars:[C

    aget-char v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/avos/avoscloud/signature/Base64Encoder;->carryOver:I

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 111
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/signature/Base64Encoder;->write(I)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method
