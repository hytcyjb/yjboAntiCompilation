.class Lcom/avos/avoscloud/okio/RealBufferedSource$1;
.super Ljava/io/InputStream;
.source "RealBufferedSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/okio/RealBufferedSource;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okio/RealBufferedSource;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    #getter for: Lcom/avos/avoscloud/okio/RealBufferedSource;->closed:Z
    invoke-static {v0}, Lcom/avos/avoscloud/okio/RealBufferedSource;->access$000(Lcom/avos/avoscloud/okio/RealBufferedSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/avos/avoscloud/okio/RealBufferedSource;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    iget-wide v0, v0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/RealBufferedSource;->close()V

    .line 385
    return-void
.end method

.method public read()I
    .locals 4

    .prologue
    .line 358
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    #getter for: Lcom/avos/avoscloud/okio/RealBufferedSource;->closed:Z
    invoke-static {v0}, Lcom/avos/avoscloud/okio/RealBufferedSource;->access$000(Lcom/avos/avoscloud/okio/RealBufferedSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/avos/avoscloud/okio/RealBufferedSource;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    iget-wide v0, v0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/avos/avoscloud/okio/RealBufferedSource;->source:Lcom/avos/avoscloud/okio/Source;

    iget-object v1, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    iget-object v1, v1, Lcom/avos/avoscloud/okio/RealBufferedSource;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lcom/avos/avoscloud/okio/Source;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v0

    .line 361
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 363
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/avos/avoscloud/okio/RealBufferedSource;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    #getter for: Lcom/avos/avoscloud/okio/RealBufferedSource;->closed:Z
    invoke-static {v0}, Lcom/avos/avoscloud/okio/RealBufferedSource;->access$000(Lcom/avos/avoscloud/okio/RealBufferedSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 370
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/avos/avoscloud/okio/RealBufferedSource;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    iget-wide v0, v0, Lcom/avos/avoscloud/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/avos/avoscloud/okio/RealBufferedSource;->source:Lcom/avos/avoscloud/okio/Source;

    iget-object v1, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    iget-object v1, v1, Lcom/avos/avoscloud/okio/RealBufferedSource;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lcom/avos/avoscloud/okio/Source;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v0

    .line 372
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 375
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/avos/avoscloud/okio/RealBufferedSource;->buffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/okio/Buffer;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/avos/avoscloud/okio/RealBufferedSource$1;->this$0:Lcom/avos/avoscloud/okio/RealBufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
