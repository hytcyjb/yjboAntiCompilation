.class Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;
.super Lcom/avos/avoscloud/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"

# interfaces
.implements Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reader"
.end annotation


# instance fields
.field frameReader:Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader;

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)V
    .locals 4
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    .line 569
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$900(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)V

    return-void
.end method

.method private ackSettingsLater(Lcom/avos/avoscloud/okhttp/internal/framed/Settings;)V
    .locals 6
    .parameter

    .prologue
    .line 718
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1900()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader$2;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;
    invoke-static {v5}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$900(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader$2;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/avos/avoscloud/okhttp/internal/framed/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 726
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .prologue
    .line 730
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lcom/avos/avoscloud/okio/ByteString;Ljava/lang/String;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 793
    return-void
.end method

.method public data(ZILcom/avos/avoscloud/okio/BufferedSource;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 598
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v0, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushDataLater(ILcom/avos/avoscloud/okio/BufferedSource;IZ)V
    invoke-static {v0, p2, p3, p4, p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1200(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;ILcom/avos/avoscloud/okio/BufferedSource;IZ)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    move-result-object v0

    .line 603
    if-nez v0, :cond_2

    .line 604
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, p2, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    .line 605
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lcom/avos/avoscloud/okio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {v0, p3, p4}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->receiveData(Lcom/avos/avoscloud/okio/BufferedSource;I)V

    .line 609
    if-eqz p1, :cond_0

    .line 610
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->receiveFin()V

    goto :goto_0
.end method

.method protected execute()V
    .locals 6

    .prologue
    .line 573
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    .line 574
    sget-object v2, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->variant:Lcom/avos/avoscloud/okhttp/internal/framed/Variant;

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    iget-object v3, v3, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    invoke-static {v3}, Lcom/avos/avoscloud/okio/Okio;->source(Ljava/net/Socket;)Lcom/avos/avoscloud/okio/Source;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    iget-boolean v4, v4, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->client:Z

    invoke-interface {v1, v3, v4}, Lcom/avos/avoscloud/okhttp/internal/framed/Variant;->newReader(Lcom/avos/avoscloud/okio/BufferedSource;Z)Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader;

    .line 577
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    iget-boolean v1, v1, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->client:Z

    if-nez v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader;

    invoke-interface {v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader;->readConnectionPreface()V

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader;

    invoke-interface {v1, p0}, Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader;->nextFrame(Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    .line 583
    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :try_start_1
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->close(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    invoke-static {v2, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1000(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 592
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 594
    :goto_1
    return-void

    .line 584
    :catch_0
    move-exception v1

    .line 585
    :try_start_2
    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    :try_start_3
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 589
    :try_start_4
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->close(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    invoke-static {v2, v1, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1000(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 592
    :goto_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader;

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 588
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 589
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->close(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    invoke-static {v3, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1000(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 592
    :goto_4
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/avos/avoscloud/okhttp/internal/framed/FrameReader;

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 590
    :catch_1
    move-exception v1

    goto :goto_4

    .line 588
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 590
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public goAway(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;Lcom/avos/avoscloud/okio/ByteString;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 745
    invoke-virtual {p3}, Lcom/avos/avoscloud/okio/ByteString;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    monitor-enter v1

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1700(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1700(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    .line 752
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    const/4 v3, 0x1

    #setter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->shutdown:Z
    invoke-static {v2, v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1402(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Z)Z

    .line 753
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 757
    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->getId()I

    move-result v4

    if-le v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 758
    sget-object v4, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v3, v4}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->receiveRstStream(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    .line 759
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    .line 756
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 762
    :cond_2
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lcom/avos/avoscloud/okhttp/internal/framed/HeadersMode;)V
    .locals 8
    .parameter
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
            ">;",
            "Lcom/avos/avoscloud/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v0, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V
    invoke-static {v0, p3, p5, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1300(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v6, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    monitor-enter v6

    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->shutdown:Z
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1400(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 625
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    move-result-object v0

    .line 627
    if-nez v0, :cond_6

    .line 629
    invoke-virtual {p6}, Lcom/avos/avoscloud/okhttp/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, p3, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    .line 631
    monitor-exit v6

    goto :goto_0

    .line 635
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)I

    move-result v0

    if-gt p3, v0, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 638
    :cond_4
    rem-int/lit8 v0, p3, 0x2

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->nextStreamId:I
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1600(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_5

    monitor-exit v6

    goto :goto_0

    .line 642
    :cond_5
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;-><init>(ILcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 644
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #setter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I
    invoke-static {v1, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1502(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;I)I

    .line 645
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1700(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1900()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;
    invoke-static {v7}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$900(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader$1;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 659
    monitor-exit v6

    goto :goto_0

    .line 661
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    invoke-virtual {p6}, Lcom/avos/avoscloud/okhttp/internal/framed/HeadersMode;->failIfStreamPresent()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 665
    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->closeLater(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    .line 666
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    goto/16 :goto_0

    .line 671
    :cond_7
    invoke-virtual {v0, p5, p6}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->receiveHeaders(Ljava/util/List;Lcom/avos/avoscloud/okhttp/internal/framed/HeadersMode;)V

    .line 672
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->receiveFin()V

    goto/16 :goto_0
.end method

.method public ping(ZII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 733
    if-eqz p1, :cond_1

    .line 734
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->removePing(I)Lcom/avos/avoscloud/okhttp/internal/framed/Ping;
    invoke-static {v0, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$2200(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;I)Lcom/avos/avoscloud/okhttp/internal/framed/Ping;

    move-result-object v0

    .line 735
    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/Ping;->receive()V

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->writePingLater(ZIILcom/avos/avoscloud/okhttp/internal/framed/Ping;)V
    invoke-static {v0, v1, p2, p3, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$2300(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;ZIILcom/avos/avoscloud/okhttp/internal/framed/Ping;)V

    goto :goto_0
.end method

.method public priority(IIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 783
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
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
    .line 787
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V
    invoke-static {v0, p2, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$2400(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V

    .line 788
    return-void
.end method

.method public rstStream(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 676
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v0, p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->pushResetLater(ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V
    invoke-static {v0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$2000(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;ILcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->receiveRstStream(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    goto :goto_0
.end method

.method public settings(ZLcom/avos/avoscloud/okhttp/internal/framed/Settings;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 687
    .line 688
    const/4 v0, 0x0

    .line 689
    iget-object v6, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    monitor-enter v6

    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    iget-object v1, v1, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v1

    .line 691
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    iget-object v2, v2, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->clear()V

    .line 692
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    iget-object v2, v2, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    invoke-virtual {v2, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->merge(Lcom/avos/avoscloud/okhttp/internal/framed/Settings;)V

    .line 693
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/avos/avoscloud/okhttp/Protocol;

    move-result-object v2

    sget-object v3, Lcom/avos/avoscloud/okhttp/Protocol;->HTTP_2:Lcom/avos/avoscloud/okhttp/Protocol;

    if-ne v2, v3, :cond_1

    .line 694
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->ackSettingsLater(Lcom/avos/avoscloud/okhttp/internal/framed/Settings;)V

    .line 696
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    iget-object v2, v2, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v2

    .line 697
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    if-eq v2, v1, :cond_5

    .line 698
    sub-int v1, v2, v1

    int-to-long v2, v1

    .line 699
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$2100(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 700
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1, v2, v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->addBytesToWriteWindow(J)V

    .line 701
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    const/4 v7, 0x1

    #setter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z
    invoke-static {v1, v7}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$2102(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;Z)Z

    .line 703
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1700(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 704
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1700(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->access$1700(Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    move-object v1, v0

    .line 707
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    if-eqz v1, :cond_3

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 709
    array-length v4, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v1, v0

    .line 710
    monitor-enter v5

    .line 711
    :try_start_1
    invoke-virtual {v5, v2, v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    .line 712
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 707
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 712
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 715
    :cond_3
    return-void

    :cond_4
    move-object v1, v0

    goto :goto_0

    :cond_5
    move-object v1, v0

    move-wide v2, v4

    goto :goto_0
.end method

.method public windowUpdate(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 765
    if-nez p1, :cond_1

    .line 766
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    monitor-enter v1

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    iget-wide v2, v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 768
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 769
    monitor-exit v1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    move-result-object v1

    .line 772
    if-eqz v1, :cond_0

    .line 773
    monitor-enter v1

    .line 774
    :try_start_1
    invoke-virtual {v1, p2, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    .line 775
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
