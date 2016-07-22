.class Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;
.super Ljava/lang/Object;
.source "QiniuUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/QiniuUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileBlockUploadTask"
.end annotation


# instance fields
.field private blockOffset:I

.field private bytes:[B

.field latch:Ljava/util/concurrent/CountDownLatch;

.field parent:Lcom/avos/avoscloud/QiniuUploader;

.field progressCalculator:Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;

.field final uploadChunkSize:I

.field uploadFileCtx:[Ljava/lang/String;


# direct methods
.method public constructor <init>([BILjava/util/concurrent/CountDownLatch;ILcom/avos/avoscloud/QiniuUploader$ProgressCalculator;[Ljava/lang/String;Lcom/avos/avoscloud/QiniuUploader;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p1, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->bytes:[B

    .line 412
    iput p2, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->blockOffset:I

    .line 413
    iput-object p3, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 414
    iput p4, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->uploadChunkSize:I

    .line 415
    iput-object p5, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->progressCalculator:Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;

    .line 416
    iput-object p6, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->uploadFileCtx:[Ljava/lang/String;

    .line 417
    iput-object p7, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->parent:Lcom/avos/avoscloud/QiniuUploader;

    .line 418
    return-void
.end method

.method private createBlockInQiniu(III[B)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const-string v0, "try to mkblk"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 451
    :cond_0
    const-string v0, "http://upload.qiniu.com/mkblk/%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 452
    new-instance v1, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 453
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 455
    invoke-direct {p0, p1, p4}, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->getNextChunkSize(I[B)I

    move-result v0

    .line 458
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->parent:Lcom/avos/avoscloud/QiniuUploader;

    iget-object v2, v2, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v2

    invoke-static {v2, p4, p1, v0}, Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;[BII)Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v0

    .line 463
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->post(Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->parent:Lcom/avos/avoscloud/QiniuUploader;

    #calls: Lcom/avos/avoscloud/QiniuUploader;->addAuthHeader(Lcom/avos/avoscloud/okhttp/Request$Builder;)Lcom/avos/avoscloud/okhttp/Request$Builder;
    invoke-static {v1, v0}, Lcom/avos/avoscloud/QiniuUploader;->access$100(Lcom/avos/avoscloud/QiniuUploader;Lcom/avos/avoscloud/okhttp/Request$Builder;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    .line 465
    invoke-static {}, Lcom/avos/avoscloud/HttpClientUploader;->getOKHttpClient()Lcom/avos/avoscloud/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->newCall(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Call;->execute()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    #calls: Lcom/avos/avoscloud/QiniuUploader;->parseQiniuResponse(Lcom/avos/avoscloud/okhttp/Response;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/avos/avoscloud/QiniuUploader;->access$200(Lcom/avos/avoscloud/okhttp/Response;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    return-object v0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_1

    .line 470
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->createBlockInQiniu(III[B)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    move-result-object v0

    goto :goto_0

    .line 472
    :cond_1
    const-string v1, "Exception during file upload"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 475
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentBlockSize([BI)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x40

    .line 531
    array-length v1, p1

    mul-int v2, p2, v0

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    array-length v1, p1

    mul-int/2addr v0, p2

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private getNextChunkSize(I[B)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x40

    .line 537
    array-length v0, p2

    mul-int v1, p1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->uploadChunkSize:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->uploadChunkSize:I

    :goto_0
    return v0

    :cond_0
    array-length v0, p2

    mul-int v1, p1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private putFileBlocksToQiniu(I[BLcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x40

    .line 481
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->getCurrentBlockSize([BI)I

    move-result v1

    .line 482
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->progressCalculator:Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;

    iget v2, p3, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v6

    invoke-virtual {v0, p1, v2}, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;->publishProgress(II)V

    .line 484
    iget v0, p3, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    sub-int v0, v1, v0

    .line 486
    if-lez v0, :cond_4

    iget v2, p3, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    if-lez v2, :cond_4

    .line 488
    :try_start_0
    const-string v2, "http://upload.qiniu.com/bput/%s/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p3, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->ctx:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p3, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 489
    new-instance v3, Lcom/avos/avoscloud/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/avos/avoscloud/okhttp/Request$Builder;-><init>()V

    .line 490
    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 491
    const-string v2, "Content-Type"

    const-string v4, "application/octet-stream"

    invoke-virtual {v3, v2, v4}, Lcom/avos/avoscloud/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    .line 494
    iget v2, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->uploadChunkSize:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->uploadChunkSize:I

    .line 497
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->parent:Lcom/avos/avoscloud/QiniuUploader;

    iget-object v2, v2, Lcom/avos/avoscloud/QiniuUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/MediaType;

    move-result-object v2

    mul-int v4, p1, v6

    iget v5, p3, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    add-int/2addr v4, v5

    invoke-static {v2, p2, v4, v0}, Lcom/avos/avoscloud/okhttp/RequestBody;->create(Lcom/avos/avoscloud/okhttp/MediaType;[BII)Lcom/avos/avoscloud/okhttp/RequestBody;

    move-result-object v0

    .line 502
    invoke-virtual {v3, v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->post(Lcom/avos/avoscloud/okhttp/RequestBody;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    .line 503
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->parent:Lcom/avos/avoscloud/QiniuUploader;

    #calls: Lcom/avos/avoscloud/QiniuUploader;->addAuthHeader(Lcom/avos/avoscloud/okhttp/Request$Builder;)Lcom/avos/avoscloud/okhttp/Request$Builder;
    invoke-static {v2, v0}, Lcom/avos/avoscloud/QiniuUploader;->access$100(Lcom/avos/avoscloud/QiniuUploader;Lcom/avos/avoscloud/okhttp/Request$Builder;)Lcom/avos/avoscloud/okhttp/Request$Builder;

    move-result-object v0

    .line 504
    invoke-static {}, Lcom/avos/avoscloud/HttpClientUploader;->getOKHttpClient()Lcom/avos/avoscloud/okhttp/OkHttpClient;

    move-result-object v2

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Request$Builder;->build()Lcom/avos/avoscloud/okhttp/Request;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/okhttp/OkHttpClient;->newCall(Lcom/avos/avoscloud/okhttp/Request;)Lcom/avos/avoscloud/okhttp/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Call;->execute()Lcom/avos/avoscloud/okhttp/Response;

    move-result-object v0

    const-class v2, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    #calls: Lcom/avos/avoscloud/QiniuUploader;->parseQiniuResponse(Lcom/avos/avoscloud/okhttp/Response;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/avos/avoscloud/QiniuUploader;->access$200(Lcom/avos/avoscloud/okhttp/Response;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    .line 507
    if-eqz v0, :cond_3

    .line 508
    iget v2, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->offset:I

    if-ge v2, v1, :cond_1

    .line 509
    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->putFileBlocksToQiniu(I[BLcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 526
    :cond_1
    :goto_0
    return-object v0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 516
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_2

    .line 517
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->putFileBlocksToQiniu(I[BLcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_2
    const-string v1, "Exception during file upload"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 526
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move-object v0, p3

    .line 524
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 423
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->bytes:[B

    iget v1, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->blockOffset:I

    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->getCurrentBlockSize([BI)I

    move-result v0

    .line 425
    iget v1, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->blockOffset:I

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->bytes:[B

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->createBlockInQiniu(III[B)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_0

    .line 429
    iget v1, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->blockOffset:I

    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->bytes:[B

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->putFileBlocksToQiniu(I[BLcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;

    move-result-object v0

    .line 432
    :cond_0
    if-eqz v0, :cond_2

    .line 433
    iget-object v1, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->uploadFileCtx:[Ljava/lang/String;

    iget v2, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->blockOffset:I

    iget-object v0, v0, Lcom/avos/avoscloud/QiniuUploader$QiniuBlockResponseData;->ctx:Ljava/lang/String;

    aput-object v0, v1, v2

    .line 434
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->progressCalculator:Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;

    iget v1, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->blockOffset:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/QiniuUploader$ProgressCalculator;->publishProgress(II)V

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 443
    return-void

    .line 436
    :cond_2
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/4 v1, -0x1

    const-string v2, "Upload File failure"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    .line 437
    iget-object v0, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    .line 438
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 439
    iget-object v2, p0, Lcom/avos/avoscloud/QiniuUploader$FileBlockUploadTask;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 438
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0
.end method
