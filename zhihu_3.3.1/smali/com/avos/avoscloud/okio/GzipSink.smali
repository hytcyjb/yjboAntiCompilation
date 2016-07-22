.class public final Lcom/avos/avoscloud/okio/GzipSink;
.super Ljava/lang/Object;
.source "GzipSink.java"

# interfaces
.implements Lcom/avos/avoscloud/okio/Sink;


# instance fields
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Lcom/avos/avoscloud/okio/DeflaterSink;

.field private final sink:Lcom/avos/avoscloud/okio/BufferedSink;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okio/Sink;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    .line 57
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lcom/avos/avoscloud/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 59
    invoke-static {p1}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Sink;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okio/GzipSink;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    .line 60
    new-instance v0, Lcom/avos/avoscloud/okio/DeflaterSink;

    iget-object v1, p0, Lcom/avos/avoscloud/okio/GzipSink;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    iget-object v2, p0, Lcom/avos/avoscloud/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/okio/DeflaterSink;-><init>(Lcom/avos/avoscloud/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okio/GzipSink;->deflaterSink:Lcom/avos/avoscloud/okio/DeflaterSink;

    .line 62
    invoke-direct {p0}, Lcom/avos/avoscloud/okio/GzipSink;->writeHeader()V

    .line 63
    return-void
.end method

.method private updateCrc(Lcom/avos/avoscloud/okio/Buffer;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p1, Lcom/avos/avoscloud/okio/Buffer;->head:Lcom/avos/avoscloud/okio/Segment;

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 132
    iget v1, v0, Lcom/avos/avoscloud/okio/Segment;->limit:I

    iget v2, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 133
    iget-object v2, p0, Lcom/avos/avoscloud/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    iget-object v3, v0, Lcom/avos/avoscloud/okio/Segment;->data:[B

    iget v4, v0, Lcom/avos/avoscloud/okio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 134
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 131
    iget-object v0, v0, Lcom/avos/avoscloud/okio/Segment;->next:Lcom/avos/avoscloud/okio/Segment;

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method private writeFooter()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/avos/avoscloud/okio/GzipSink;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    iget-object v1, p0, Lcom/avos/avoscloud/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeIntLe(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 126
    iget-object v0, p0, Lcom/avos/avoscloud/okio/GzipSink;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    iget-object v1, p0, Lcom/avos/avoscloud/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeIntLe(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 127
    return-void
.end method

.method private writeHeader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/avos/avoscloud/okio/GzipSink;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->buffer()Lcom/avos/avoscloud/okio/Buffer;

    move-result-object v0

    .line 116
    const/16 v1, 0x1f8b

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeShort(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 117
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 118
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 119
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/okio/Buffer;->writeInt(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 120
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 121
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 122
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/GzipSink;->closed:Z

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/4 v1, 0x0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/GzipSink;->deflaterSink:Lcom/avos/avoscloud/okio/DeflaterSink;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/DeflaterSink;->finishDeflate()V

    .line 92
    invoke-direct {p0}, Lcom/avos/avoscloud/okio/GzipSink;->writeFooter()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 104
    :cond_2
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/avos/avoscloud/okio/GzipSink;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v1}, Lcom/avos/avoscloud/okio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    :cond_3
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/avos/avoscloud/okio/GzipSink;->closed:Z

    .line 110
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 94
    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 105
    :catch_2
    move-exception v1

    .line 106
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/avos/avoscloud/okio/GzipSink;->deflaterSink:Lcom/avos/avoscloud/okio/DeflaterSink;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/DeflaterSink;->flush()V

    .line 75
    return-void
.end method

.method public timeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/avos/avoscloud/okio/GzipSink;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/avos/avoscloud/okio/Buffer;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 66
    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    cmp-long v0, p2, v2

    if-nez v0, :cond_1

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/okio/GzipSink;->updateCrc(Lcom/avos/avoscloud/okio/Buffer;J)V

    .line 70
    iget-object v0, p0, Lcom/avos/avoscloud/okio/GzipSink;->deflaterSink:Lcom/avos/avoscloud/okio/DeflaterSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/okio/DeflaterSink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    goto :goto_0
.end method
