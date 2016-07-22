.class Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;
.super Ljava/lang/Object;
.source "NameValueBlockReader.java"


# instance fields
.field private compressedLimit:I

.field private final inflaterSource:Lcom/avos/avoscloud/okio/InflaterSource;

.field private final source:Lcom/avos/avoscloud/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okio/BufferedSource;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader$1;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader$1;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;Lcom/avos/avoscloud/okio/Source;)V

    .line 65
    new-instance v1, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader$2;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader$2;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;)V

    .line 77
    new-instance v2, Lcom/avos/avoscloud/okio/InflaterSource;

    invoke-direct {v2, v0, v1}, Lcom/avos/avoscloud/okio/InflaterSource;-><init>(Lcom/avos/avoscloud/okio/Source;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->inflaterSource:Lcom/avos/avoscloud/okio/InflaterSource;

    .line 78
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->inflaterSource:Lcom/avos/avoscloud/okio/InflaterSource;

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    return v0
.end method

.method static synthetic access$022(Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;J)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    return v0
.end method

.method private doneReading()V
    .locals 3

    .prologue
    .line 109
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    if-lez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->inflaterSource:Lcom/avos/avoscloud/okio/InflaterSource;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/InflaterSource;->refill()Z

    .line 111
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressedLimit > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    return-void
.end method

.method private readByteString()Lcom/avos/avoscloud/okio/ByteString;
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->readInt()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/avos/avoscloud/okio/BufferedSource;->readByteString(J)Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->close()V

    .line 117
    return-void
.end method

.method public readNameValueBlock(I)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    .line 84
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->source:Lcom/avos/avoscloud/okio/BufferedSource;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSource;->readInt()I

    move-result v1

    .line 85
    if-gez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberOfPairs < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    const/16 v0, 0x400

    if-le v1, v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberOfPairs > 1024: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 90
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->readByteString()Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/okio/ByteString;->toAsciiLowercase()Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v3

    .line 91
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->readByteString()Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v4

    .line 92
    invoke-virtual {v3}, Lcom/avos/avoscloud/okio/ByteString;->size()I

    move-result v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "name.size == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    new-instance v5, Lcom/avos/avoscloud/okhttp/internal/framed/Header;

    invoke-direct {v5, v3, v4}, Lcom/avos/avoscloud/okhttp/internal/framed/Header;-><init>(Lcom/avos/avoscloud/okio/ByteString;Lcom/avos/avoscloud/okio/ByteString;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_3
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/framed/NameValueBlockReader;->doneReading()V

    .line 97
    return-object v2
.end method
