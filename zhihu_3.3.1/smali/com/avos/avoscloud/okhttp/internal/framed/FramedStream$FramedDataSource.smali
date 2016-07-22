.class final Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lcom/avos/avoscloud/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramedDataSource"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closed:Z

.field private finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lcom/avos/avoscloud/okio/Buffer;

.field private final receiveBuffer:Lcom/avos/avoscloud/okio/Buffer;

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 314
    const-class v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v0}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lcom/avos/avoscloud/okio/Buffer;

    .line 319
    new-instance v0, Lcom/avos/avoscloud/okio/Buffer;

    invoke-direct {v0}, Lcom/avos/avoscloud/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/avos/avoscloud/okio/Buffer;

    .line 334
    iput-wide p2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;JLcom/avos/avoscloud/okhttp/internal/framed/FramedStream$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;-><init>(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;)Z
    .locals 1
    .parameter

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return v0
.end method

.method static synthetic access$102(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    return p1
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;)Z
    .locals 1
    .parameter

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    return v0
.end method

.method private checkNotClosed()V
    .locals 3

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->errorCode:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$800(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 442
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->errorCode:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$800(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_1
    return-void
.end method

.method private waitUntilReadable()V
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$700(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V

    .line 376
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->errorCode:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$800(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->waitForIo()V
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$900(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$700(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$700(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 382
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 429
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    monitor-enter v1

    .line 430
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z

    .line 431
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->clear()V

    .line 432
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 433
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #calls: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->cancelStreamIfNecessary()V
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$1000(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)V

    .line 435
    return-void

    .line 433
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read(Lcom/avos/avoscloud/okio/Buffer;J)J
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 339
    cmp-long v0, p2, v4

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

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    monitor-enter v2

    .line 343
    :try_start_0
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->waitUntilReadable()V

    .line 344
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->checkNotClosed()V

    .line 345
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    monitor-exit v2

    .line 369
    :goto_0
    return-wide v0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/avos/avoscloud/okio/Buffer;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v1}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lcom/avos/avoscloud/okio/Buffer;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v0

    .line 351
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    iget-wide v4, v3, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 352
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    iget-wide v4, v3, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->connection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;
    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    move-result-object v3

    iget-object v3, v3, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    const/high16 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 354
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->connection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;
    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->id:I
    invoke-static {v4}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$600(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)I

    move-result v4

    iget-object v5, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    iget-wide v6, v5, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 355
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 357
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 360
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->connection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    move-result-object v2

    monitor-enter v2

    .line 361
    :try_start_1
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->connection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;
    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    move-result-object v3

    iget-wide v4, v3, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 362
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->connection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;
    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    move-result-object v3

    iget-wide v4, v3, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->connection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;
    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    move-result-object v3

    iget-object v3, v3, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/avos/avoscloud/okhttp/internal/framed/Settings;

    const/high16 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/avos/avoscloud/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 364
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->connection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;
    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->connection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;
    invoke-static {v5}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    move-result-object v5

    iget-wide v6, v5, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->writeWindowUpdateLater(IJ)V

    .line 365
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->connection:Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;
    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$500(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;

    move-result-object v3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/avos/avoscloud/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 367
    :cond_3
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 357
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method receive(Lcom/avos/avoscloud/okio/BufferedSource;J)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 385
    sget-boolean v0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 411
    :cond_0
    sub-long/2addr p2, v4

    .line 414
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    monitor-enter v3

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-nez v0, :cond_7

    move v0, v1

    .line 416
    :goto_0
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/avos/avoscloud/okio/Buffer;

    iget-object v5, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v4, v5}, Lcom/avos/avoscloud/okio/Buffer;->writeAll(Lcom/avos/avoscloud/okio/Source;)J

    .line 417
    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 420
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 387
    :cond_2
    cmp-long v0, p2, v10

    if-lez v0, :cond_3

    .line 390
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    monitor-enter v3

    .line 391
    :try_start_1
    iget-boolean v4, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z

    .line 392
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->readBuffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okio/Buffer;->size()J

    move-result-wide v6

    add-long/2addr v6, p2

    iget-wide v8, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->maxByteCount:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    move v0, v1

    .line 393
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    if-eqz v0, :cond_5

    .line 397
    invoke-interface {p1, p2, p3}, Lcom/avos/avoscloud/okio/BufferedSource;->skip(J)V

    .line 398
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    sget-object v1, Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->closeLater(Lcom/avos/avoscloud/okhttp/internal/framed/ErrorCode;)V

    .line 422
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v2

    .line 392
    goto :goto_1

    .line 393
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 403
    :cond_5
    if-eqz v4, :cond_6

    .line 404
    invoke-interface {p1, p2, p3}, Lcom/avos/avoscloud/okio/BufferedSource;->skip(J)V

    goto :goto_2

    .line 409
    :cond_6
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->receiveBuffer:Lcom/avos/avoscloud/okio/Buffer;

    invoke-interface {p1, v0, p2, p3}, Lcom/avos/avoscloud/okio/BufferedSource;->read(Lcom/avos/avoscloud/okio/Buffer;J)J

    move-result-wide v4

    .line 410
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7
    move v0, v2

    .line 415
    goto :goto_0

    .line 420
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public timeout()Lcom/avos/avoscloud/okio/Timeout;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$FramedDataSource;->this$0:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$StreamTimeout;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;->access$700(Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream;)Lcom/avos/avoscloud/okhttp/internal/framed/FramedStream$StreamTimeout;

    move-result-object v0

    return-object v0
.end method
