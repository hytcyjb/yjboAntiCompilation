.class final Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/avos/avoscloud/okhttp/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lcom/avos/avoscloud/okio/Buffer;

.field private final hpackWriter:Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Lcom/avos/avoscloud/okio/BufferedSink;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/okio/BufferedSink;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    .line 373
    iput-boolean p2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->client:Z

    .line 374
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v0}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/avos/avoscloud/okio/Buffer;

    .line 375
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;-><init>(Lcom/avos/avoscloud/okio/Buffer;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;

    .line 376
    const/16 v0, 0x4000

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    .line 377
    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 457
    :goto_0
    cmp-long v0, p2, v6

    if-lez v0, :cond_1

    .line 458
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 459
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 460
    const/16 v2, 0x9

    cmp-long v0, p2, v6

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 461
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/avos/avoscloud/okio/Buffer;

    int-to-long v4, v1

    invoke-interface {v0, v2, v4, v5}, Lcom/avos/avoscloud/okio/BufferedSink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    goto :goto_0

    .line 460
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 463
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized ackSettings(Lcom/avos/avoscloud/okhttp/internal/framed/Settings;)V
    .locals 4
    .parameter

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 386
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->getMaxFrameSize(I)I

    move-result v0

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    .line 387
    const/4 v0, 0x0

    .line 388
    const/4 v1, 0x4

    .line 389
    const/4 v2, 0x1

    .line 390
    const/4 v3, 0x0

    .line 391
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 392
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 562
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    .line 563
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    monitor-exit p0

    return-void

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 5

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 397
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->client:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 403
    :goto_0
    monitor-exit p0

    return-void

    .line 398
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->access$000()Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avos/avoscloud/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->access$000()Lcom/avos/avoscloud/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->write([B)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 402
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized data(ZILcom/avos/avoscloud/okio/Buffer;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 485
    :cond_0
    const/4 v0, 0x0

    .line 486
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    int-to-byte v0, v0

    .line 487
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->dataFrame(IBLcom/avos/avoscloud/okio/Buffer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    monitor-exit p0

    return-void
.end method

.method dataFrame(IBLcom/avos/avoscloud/okio/Buffer;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 492
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 493
    if-lez p4, :cond_0

    .line 494
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    .line 496
    :cond_0
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 2

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 381
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    monitor-exit p0

    return-void
.end method

.method frameHeader(IIBB)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v3, p1, p2, p3, p4}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 568
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    if-le p2, v0, :cond_1

    .line 569
    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 571
    :cond_1
    const/high16 v0, -0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    const-string v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->writeMedium(Lcom/avos/avoscloud/okio/BufferedSink;I)V
    invoke-static {v0, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->access$600(Lcom/avos/avoscloud/okio/BufferedSink;I)V

    .line 573
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 574
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 575
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeInt(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 576
    return-void
.end method

.method public declared-synchronized goAway(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;[B)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 532
    :cond_0
    :try_start_1
    iget v0, p2, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 533
    :cond_1
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    .line 534
    const/4 v1, 0x7

    .line 535
    const/4 v2, 0x0

    .line 536
    const/4 v3, 0x0

    .line 537
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 538
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0, p1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeInt(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 539
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    iget v1, p2, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeInt(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 540
    array-length v0, p3

    if-lez v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0, p3}, Lcom/avos/avoscloud/okio/BufferedSink;->write([B)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 422
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    monitor-exit p0

    return-void
.end method

.method headers(ZILjava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 445
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v2

    .line 446
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 447
    const/4 v4, 0x1

    .line 448
    int-to-long v6, v1

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 449
    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 450
    :cond_1
    invoke-virtual {p0, p2, v1, v4, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 451
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/avos/avoscloud/okio/Buffer;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lcom/avos/avoscloud/okio/BufferedSink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    .line 453
    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p2, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V

    .line 454
    :cond_2
    return-void

    .line 448
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxDataLength()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 518
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 519
    :cond_0
    const/16 v1, 0x8

    .line 520
    const/4 v2, 0x6

    .line 521
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 522
    :cond_1
    const/4 v3, 0x0

    .line 523
    :try_start_1
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 524
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0, p2}, Lcom/avos/avoscloud/okio/BufferedSink;->writeInt(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 525
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0, p3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeInt(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 526
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 428
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 430
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v2

    .line 431
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    add-int/lit8 v0, v0, -0x4

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 432
    const/4 v4, 0x5

    .line 433
    int-to-long v6, v1

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 434
    :goto_0
    add-int/lit8 v5, v1, 0x4

    invoke-virtual {p0, p1, v5, v4, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 435
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v0, v4}, Lcom/avos/avoscloud/okio/BufferedSink;->writeInt(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 436
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lcom/avos/avoscloud/okio/Buffer;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lcom/avos/avoscloud/okio/BufferedSink;->write(Lcom/avos/avoscloud/okio/Buffer;J)V

    .line 438
    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    :cond_1
    monitor-exit p0

    return-void

    .line 433
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized rstStream(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 468
    :cond_0
    :try_start_1
    iget v0, p2, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 470
    :cond_1
    const/4 v0, 0x4

    .line 471
    const/4 v1, 0x3

    .line 472
    const/4 v2, 0x0

    .line 473
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 474
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    iget v1, p2, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeInt(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 475
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized settings(Lcom/avos/avoscloud/okhttp/internal/framed/Settings;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 499
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 500
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 501
    const/4 v3, 0x4

    .line 502
    const/4 v4, 0x0

    .line 503
    const/4 v5, 0x0

    .line 504
    invoke-virtual {p0, v5, v0, v3, v4}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 505
    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_3

    .line 506
    invoke-virtual {p1, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    :cond_1
    if-ne v2, v1, :cond_2

    const/4 v0, 0x3

    .line 510
    :goto_2
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v3, v0}, Lcom/avos/avoscloud/okio/BufferedSink;->writeShort(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 511
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-virtual {p1, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->get(I)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeInt(I)Lcom/avos/avoscloud/okio/BufferedSink;

    goto :goto_1

    .line 509
    :cond_2
    const/4 v0, 0x7

    if-ne v2, v0, :cond_4

    move v0, v1

    goto :goto_2

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 416
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 409
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_1
    invoke-virtual {p0, p1, p3, p5}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 549
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 550
    :cond_1
    :try_start_1
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 553
    :cond_2
    const/4 v0, 0x4

    .line 554
    const/16 v1, 0x8

    .line 555
    const/4 v2, 0x0

    .line 556
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 557
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeInt(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 558
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/Http2$Writer;->sink:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    monitor-exit p0

    return-void
.end method
