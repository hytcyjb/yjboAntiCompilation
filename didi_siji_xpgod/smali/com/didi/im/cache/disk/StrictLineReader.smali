.class Lcom/didi/im/cache/disk/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2
    .parameter "in"
    .parameter "capacity"
    .parameter "charset"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 102
    :cond_1
    if-gez p2, :cond_2

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    sget-object v0, Lcom/didi/im/cache/disk/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_3
    iput-object p1, p0, Lcom/didi/im/cache/disk/StrictLineReader;->in:Ljava/io/InputStream;

    .line 110
    iput-object p3, p0, Lcom/didi/im/cache/disk/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 111
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/didi/im/cache/disk/StrictLineReader;->buf:[B

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .parameter "in"
    .parameter "charset"

    .prologue
    .line 79
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/didi/im/cache/disk/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/didi/im/cache/disk/StrictLineReader;)Ljava/nio/charset/Charset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/im/cache/disk/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private fillBuf()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v1, p0, Lcom/didi/im/cache/disk/StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/didi/im/cache/disk/StrictLineReader;->buf:[B

    iget-object v3, p0, Lcom/didi/im/cache/disk/StrictLineReader;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 201
    .local v0, result:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 202
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 204
    :cond_0
    iput v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    .line 205
    iput v0, p0, Lcom/didi/im/cache/disk/StrictLineReader;->end:I

    .line 206
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v1, p0, Lcom/didi/im/cache/disk/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/didi/im/cache/disk/StrictLineReader;->buf:[B

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/im/cache/disk/StrictLineReader;->buf:[B

    .line 125
    iget-object v0, p0, Lcom/didi/im/cache/disk/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 127
    :cond_0
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    .line 141
    iget-object v5, p0, Lcom/didi/im/cache/disk/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v5

    .line 142
    :try_start_0
    iget-object v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->buf:[B

    if-nez v4, :cond_0

    .line 143
    new-instance v4, Ljava/io/IOException;

    const-string v6, "LineReader is closed"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 192
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 149
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    iget v6, p0, Lcom/didi/im/cache/disk/StrictLineReader;->end:I

    if-lt v4, v6, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/didi/im/cache/disk/StrictLineReader;->fillBuf()V

    .line 153
    :cond_1
    iget v0, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    .local v0, i:I
    :goto_0
    iget v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->end:I

    if-eq v0, v4, :cond_4

    .line 154
    iget-object v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->buf:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_3

    .line 155
    iget v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    if-eq v0, v4, :cond_2

    iget-object v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->buf:[B

    add-int/lit8 v6, v0, -0x1

    aget-byte v4, v4, v6

    const/16 v6, 0xd

    if-ne v4, v6, :cond_2

    add-int/lit8 v1, v0, -0x1

    .line 156
    .local v1, lineEnd:I
    :goto_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->buf:[B

    iget v6, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    iget v7, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    sub-int v7, v1, v7

    iget-object v8, p0, Lcom/didi/im/cache/disk/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 157
    .local v3, res:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    .line 158
    monitor-exit v5

    .line 188
    .end local v1           #lineEnd:I
    .end local v3           #res:Ljava/lang/String;
    :goto_2
    return-object v3

    :cond_2
    move v1, v0

    .line 155
    goto :goto_1

    .line 153
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_4
    new-instance v2, Lcom/didi/im/cache/disk/StrictLineReader$1;

    iget v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->end:I

    iget v6, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x50

    invoke-direct {v2, p0, v4}, Lcom/didi/im/cache/disk/StrictLineReader$1;-><init>(Lcom/didi/im/cache/disk/StrictLineReader;I)V

    .line 177
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :cond_5
    iget-object v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->buf:[B

    iget v6, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    iget v7, p0, Lcom/didi/im/cache/disk/StrictLineReader;->end:I

    iget v8, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 179
    const/4 v4, -0x1

    iput v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->end:I

    .line 180
    invoke-direct {p0}, Lcom/didi/im/cache/disk/StrictLineReader;->fillBuf()V

    .line 182
    iget v0, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    :goto_3
    iget v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->end:I

    if-eq v0, v4, :cond_5

    .line 183
    iget-object v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->buf:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_7

    .line 184
    iget v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    if-eq v0, v4, :cond_6

    .line 185
    iget-object v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->buf:[B

    iget v6, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    iget v7, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    sub-int v7, v0, v7

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 187
    :cond_6
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/didi/im/cache/disk/StrictLineReader;->pos:I

    .line 188
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 182
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
