.class final Lcom/avos/avoscloud/okio/RealBufferedSink;
.super Ljava/lang/Object;
.source "RealBufferedSink.java"

# interfaces
.implements Lcom/avos/avoscloud/okio/BufferedSink;


# instance fields
.field public final buffer:Lcom/avos/avoscloud/okio/Buffer;

.field private closed:Z

.field public final sink:Lcom/avos/avoscloud/okio/Sink;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okio/Sink;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v0}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/okio/RealBufferedSink;-><init>(Lcom/avos/avoscloud/okio/Sink;Lcom/avos/avoscloud/okio/Buffer;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/okio/Sink;Lcom/avos/avoscloud/okio/Buffer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p2, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    .line 31
    iput-object p1, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->sink:Lcom/avos/avoscloud/okio/Sink;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/okio/RealBufferedSink;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    return v0
.end method


# virtual methods
.method public buffer()Lcom/avos/avoscloud/okio/Buffer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    return-object v0
.end method

.method public close()V
    .locals 6

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    iget-wide v2, v1, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->sink:Lcom/avos/avoscloud/okio/Sink;

    iget-object v2, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    iget-object v3, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    iget-wide v4, v3, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-interface {v1, v2, v4, v5}, Lcom/avos/avoscloud/okio/Sink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->sink:Lcom/avos/avoscloud/okio/Sink;

    invoke-interface {v1}, Lcom/avos/avoscloud/okio/Sink;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    :cond_3
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    .line 247
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 236
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public emit()Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 4

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v0

    .line 183
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->sink:Lcom/avos/avoscloud/okio/Sink;

    iget-object v3, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lcom/avos/avoscloud/okio/Sink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    .line 184
    :cond_1
    return-object p0
.end method

.method public emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 4

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v0

    .line 176
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->sink:Lcom/avos/avoscloud/okio/Sink;

    iget-object v3, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lcom/avos/avoscloud/okio/Sink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    .line 177
    :cond_1
    return-object p0
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    iget-wide v0, v0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->sink:Lcom/avos/avoscloud/okio/Sink;

    iget-object v1, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    iget-object v2, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    iget-wide v2, v2, Lcom/avos/avoscloud/okio/Buffer;->size:J

    invoke-interface {v0, v1, v2, v3}, Lcom/avos/avoscloud/okio/Sink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->sink:Lcom/avos/avoscloud/okio/Sink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/Sink;->flush()V

    .line 224
    return-void
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/avos/avoscloud/okio/RealBufferedSink$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/okio/RealBufferedSink$1;-><init>(Lcom/avos/avoscloud/okio/RealBufferedSink;)V

    return-object v0
.end method

.method public timeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->sink:Lcom/avos/avoscloud/okio/Sink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/Sink;->timeout()Lcom/avos/avoscloud/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->sink:Lcom/avos/avoscloud/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/avos/avoscloud/okio/ByteString;)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okio/Buffer;->write(Lcom/avos/avoscloud/okio/ByteString;)Lcom/avos/avoscloud/okio/Buffer;

    .line 52
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/avos/avoscloud/okio/Source;J)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 110
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-interface {p1, v0, p2, p3}, Lcom/avos/avoscloud/okio/Source;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v0

    .line 112
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 113
    :cond_0
    sub-long/2addr p2, v0

    .line 114
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    goto :goto_0

    .line 116
    :cond_1
    return-object p0
.end method

.method public write([B)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okio/Buffer;->write([B)Lcom/avos/avoscloud/okio/Buffer;

    .line 90
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/okio/Buffer;->write([BII)Lcom/avos/avoscloud/okio/Buffer;

    .line 96
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/avos/avoscloud/okio/Buffer;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/okio/Buffer;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    .line 46
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    .line 47
    return-void
.end method

.method public writeAll(Lcom/avos/avoscloud/okio/Source;)J
    .locals 6
    .parameter

    .prologue
    .line 100
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    const-wide/16 v0, 0x0

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    const-wide/16 v4, 0x800

    invoke-interface {p1, v2, v4, v5}, Lcom/avos/avoscloud/okio/Source;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 103
    add-long/2addr v0, v2

    .line 104
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    goto :goto_0

    .line 106
    :cond_1
    return-wide v0
.end method

.method public writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeByte(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 122
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeDecimalLong(J)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 3
    .parameter

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/okio/Buffer;->writeDecimalLong(J)Lcom/avos/avoscloud/okio/Buffer;

    .line 164
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 3
    .parameter

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/avos/avoscloud/okio/Buffer;

    .line 170
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2
    .parameter

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeInt(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 140
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLe(I)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeIntLe(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 146
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 3
    .parameter

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/okio/Buffer;->writeLong(J)Lcom/avos/avoscloud/okio/Buffer;

    .line 152
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLe(J)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 3
    .parameter

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/okio/Buffer;->writeLongLe(J)Lcom/avos/avoscloud/okio/Buffer;

    .line 158
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2
    .parameter

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeShort(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 128
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLe(I)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeShortLe(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 134
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/Buffer;

    .line 84
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/avos/avoscloud/okio/Buffer;

    .line 77
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/Buffer;

    .line 58
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/avos/avoscloud/okio/Buffer;

    .line 65
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSink;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okio/Buffer;->writeUtf8CodePoint(I)Lcom/avos/avoscloud/okio/Buffer;

    .line 71
    invoke-virtual {p0}, Lcom/avos/avoscloud/okio/RealBufferedSink;->emitCompleteSegments()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method
