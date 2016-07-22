.class public Lcom/didi/game/download/DownloadManager$ManagerCallBack;
.super Lcom/didi/game/download/RequestCallBack;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/game/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ManagerCallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/game/download/RequestCallBack",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private downloadInfo:Lcom/didi/game/download/DownloadItem;

.field final synthetic this$0:Lcom/didi/game/download/DownloadManager;


# direct methods
.method private constructor <init>(Lcom/didi/game/download/DownloadManager;Lcom/didi/game/download/DownloadItem;)V
    .locals 1
    .parameter
    .parameter "downloadInfo"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->this$0:Lcom/didi/game/download/DownloadManager;

    .line 375
    iget-object v0, p2, Lcom/didi/game/download/DownloadItem;->appId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/game/download/RequestCallBack;-><init>(Ljava/lang/String;)V

    .line 376
    iput-object p2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    .line 377
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/game/download/DownloadManager;Lcom/didi/game/download/DownloadItem;Lcom/didi/game/download/DownloadManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lcom/didi/game/download/DownloadManager$ManagerCallBack;-><init>(Lcom/didi/game/download/DownloadManager;Lcom/didi/game/download/DownloadItem;)V

    return-void
.end method

.method public constructor <init>(Lcom/didi/game/download/DownloadManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "key"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->this$0:Lcom/didi/game/download/DownloadManager;

    .line 371
    invoke-direct {p0, p2}, Lcom/didi/game/download/RequestCallBack;-><init>(Ljava/lang/String;)V

    .line 372
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 7
    .parameter "t"
    .parameter "errorNo"
    .parameter "strMsg"

    .prologue
    .line 453
    invoke-super {p0, p1, p2, p3}, Lcom/didi/game/download/RequestCallBack;->onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 454
    iget-object v5, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    iget-object v2, v5, Lcom/didi/game/download/DownloadItem;->handler:Lnet/tsz/afinal/http/HttpHandler;

    .line 455
    .local v2, handler:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<Ljava/io/File;>;"
    if-eqz v2, :cond_0

    .line 456
    iget-object v5, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    sget-object v6, Lcom/didi/game/download/DownloadItem$State;->PAUSE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v6}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v6

    iput v6, v5, Lcom/didi/game/download/DownloadItem;->state:I

    .line 458
    :cond_0
    invoke-virtual {v2}, Lnet/tsz/afinal/http/HttpHandler;->stop()V

    .line 459
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lnet/tsz/afinal/http/HttpHandler;->cancel(Z)Z

    .line 460
    const/16 v5, 0x1a0

    if-ne p2, v5, :cond_1

    .line 461
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    const v6, 0x7f0b0169

    invoke-virtual {v5, v6}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 462
    iget-object v5, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    sget-object v6, Lcom/didi/game/download/DownloadItem$State;->SUCCESS:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v6}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v6

    iput v6, v5, Lcom/didi/game/download/DownloadItem;->state:I

    .line 463
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v5}, Lcom/didi/game/download/DownloadItem;->getAbsoluteFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 465
    .local v3, len:J
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_4

    .line 466
    iget-object v5, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    iget-wide v5, v5, Lcom/didi/game/download/DownloadItem;->fileLength:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_1

    .line 467
    iget-object v5, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    iput-wide v3, v5, Lcom/didi/game/download/DownloadItem;->fileLength:J

    .line 468
    iget-object v5, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    iput-wide v3, v5, Lcom/didi/game/download/DownloadItem;->curSize:J

    .line 477
    .end local v1           #file:Ljava/io/File;
    .end local v3           #len:J
    :cond_1
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->this$0:Lcom/didi/game/download/DownloadManager;

    #getter for: Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;
    invoke-static {v5}, Lcom/didi/game/download/DownloadManager;->access$100(Lcom/didi/game/download/DownloadManager;)Lcom/didi/game/db/DownloadItemDAO;

    move-result-object v5

    iget-object v6, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v5, v6}, Lcom/didi/game/db/DownloadItemDAO;->update(Lcom/didi/game/download/DownloadItem;)I
    :try_end_0
    .catch Lnet/tsz/afinal/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_1
    iget-object v5, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    if-eqz v5, :cond_3

    .line 482
    const-string v5, "user stop download thread"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 483
    iget-object v5, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->this$0:Lcom/didi/game/download/DownloadManager;

    #getter for: Lcom/didi/game/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/didi/game/download/DownloadManager;->access$200(Lcom/didi/game/download/DownloadManager;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b016a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 484
    :cond_2
    iget-object v5, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v5, p1, p2, p3}, Lcom/didi/game/download/DownloadItem;->onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 486
    :cond_3
    return-void

    .line 471
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #len:J
    :cond_4
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    const v6, 0x7f0b016d

    invoke-virtual {v5, v6}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 472
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 473
    iget-object v5, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    sget-object v6, Lcom/didi/game/download/DownloadItem$State;->BEFORE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v6}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v6

    iput v6, v5, Lcom/didi/game/download/DownloadItem;->state:I

    goto :goto_0

    .line 478
    .end local v1           #file:Ljava/io/File;
    .end local v3           #len:J
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Lnet/tsz/afinal/exception/DbException;
    invoke-virtual {v0}, Lnet/tsz/afinal/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onLoading(JJ)V
    .locals 4
    .parameter "total"
    .parameter "current"

    .prologue
    .line 414
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    iget-object v1, v2, Lcom/didi/game/download/DownloadItem;->handler:Lnet/tsz/afinal/http/HttpHandler;

    .line 415
    .local v1, handler:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<Ljava/io/File;>;"
    if-eqz v1, :cond_0

    .line 416
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->LOADING:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    iput v3, v2, Lcom/didi/game/download/DownloadItem;->state:I

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    iput-wide p1, v2, Lcom/didi/game/download/DownloadItem;->fileLength:J

    .line 419
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    iput-wide p3, v2, Lcom/didi/game/download/DownloadItem;->curSize:J

    .line 421
    :try_start_0
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->this$0:Lcom/didi/game/download/DownloadManager;

    #getter for: Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;
    invoke-static {v2}, Lcom/didi/game/download/DownloadManager;->access$100(Lcom/didi/game/download/DownloadManager;)Lcom/didi/game/db/DownloadItemDAO;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2, v3}, Lcom/didi/game/db/DownloadItemDAO;->update(Lcom/didi/game/download/DownloadItem;)I

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/tsz/afinal/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    if-eqz v2, :cond_1

    .line 427
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/didi/game/download/DownloadItem;->onLoading(JJ)V

    .line 429
    :cond_1
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Lnet/tsz/afinal/exception/DbException;
    invoke-virtual {v0}, Lnet/tsz/afinal/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 381
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    iget-object v1, v2, Lcom/didi/game/download/DownloadItem;->handler:Lnet/tsz/afinal/http/HttpHandler;

    .line 382
    .local v1, handler:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<Ljava/io/File;>;"
    if-eqz v1, :cond_0

    .line 383
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->STARTED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    iput v3, v2, Lcom/didi/game/download/DownloadItem;->state:I

    .line 386
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->this$0:Lcom/didi/game/download/DownloadManager;

    #getter for: Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;
    invoke-static {v2}, Lcom/didi/game/download/DownloadManager;->access$100(Lcom/didi/game/download/DownloadManager;)Lcom/didi/game/db/DownloadItemDAO;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2, v3}, Lcom/didi/game/db/DownloadItemDAO;->update(Lcom/didi/game/download/DownloadItem;)I
    :try_end_0
    .catch Lnet/tsz/afinal/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    if-eqz v2, :cond_1

    .line 391
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2}, Lcom/didi/game/download/DownloadItem;->onStart()V

    .line 393
    :cond_1
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Lnet/tsz/afinal/exception/DbException;
    invoke-virtual {v0}, Lnet/tsz/afinal/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 6
    .parameter "file"

    .prologue
    .line 433
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 434
    :cond_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "user stop download thread"

    invoke-virtual {p0, v2, v3, v4}, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 449
    :cond_1
    :goto_0
    return-void

    .line 437
    :cond_2
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    iget-object v1, v2, Lcom/didi/game/download/DownloadItem;->handler:Lnet/tsz/afinal/http/HttpHandler;

    .line 438
    .local v1, handler:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<Ljava/io/File;>;"
    if-eqz v1, :cond_3

    .line 439
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->SUCCESS:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    iput v3, v2, Lcom/didi/game/download/DownloadItem;->state:I

    .line 442
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->this$0:Lcom/didi/game/download/DownloadManager;

    #getter for: Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;
    invoke-static {v2}, Lcom/didi/game/download/DownloadManager;->access$100(Lcom/didi/game/download/DownloadManager;)Lcom/didi/game/db/DownloadItemDAO;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2, v3}, Lcom/didi/game/db/DownloadItemDAO;->update(Lcom/didi/game/download/DownloadItem;)I
    :try_end_0
    .catch Lnet/tsz/afinal/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_1
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    if-eqz v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2, p1}, Lcom/didi/game/download/DownloadItem;->onSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Lnet/tsz/afinal/exception/DbException;
    invoke-virtual {v0}, Lnet/tsz/afinal/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 367
    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->onSuccess(Ljava/io/File;)V

    return-void
.end method

.method public progress(ZI)Lnet/tsz/afinal/http/AjaxCallBack;
    .locals 4
    .parameter "progress"
    .parameter "rate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lnet/tsz/afinal/http/AjaxCallBack",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    iget-object v1, v2, Lcom/didi/game/download/DownloadItem;->handler:Lnet/tsz/afinal/http/HttpHandler;

    .line 398
    .local v1, handler:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<Ljava/io/File;>;"
    if-eqz v1, :cond_0

    .line 399
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->LOADING:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    iput v3, v2, Lcom/didi/game/download/DownloadItem;->state:I

    .line 402
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->this$0:Lcom/didi/game/download/DownloadManager;

    #getter for: Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;
    invoke-static {v2}, Lcom/didi/game/download/DownloadManager;->access$100(Lcom/didi/game/download/DownloadManager;)Lcom/didi/game/db/DownloadItemDAO;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2, v3}, Lcom/didi/game/db/DownloadItemDAO;->update(Lcom/didi/game/download/DownloadItem;)I
    :try_end_0
    .catch Lnet/tsz/afinal/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    if-eqz v2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager$ManagerCallBack;->downloadInfo:Lcom/didi/game/download/DownloadItem;

    invoke-virtual {v2, p1, p2}, Lcom/didi/game/download/DownloadItem;->progress(ZI)V

    .line 409
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/didi/game/download/RequestCallBack;->progress(ZI)Lnet/tsz/afinal/http/AjaxCallBack;

    move-result-object v2

    return-object v2

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, e:Lnet/tsz/afinal/exception/DbException;
    invoke-virtual {v0}, Lnet/tsz/afinal/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
