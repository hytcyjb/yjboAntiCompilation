.class Lcom/didi/common/download/DownloadManager$1;
.super Lcom/didi/common/download/DownloadService$ProgressReceiver;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/didi/common/download/DownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    invoke-direct {p0}, Lcom/didi/common/download/DownloadService$ProgressReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    .line 293
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, act:Ljava/lang/String;
    const-string v0, "download_progress_action"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "msg_type"

    const/4 v9, 0x0

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 296
    .local v8, type:I
    const/4 v0, 0x1

    if-ne v8, v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mListener:Lcom/didi/common/download/DownloadManager$DownloadListener;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$000(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/DownloadManager$DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "down_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, url:Ljava/lang/String;
    const-string v0, "task_progress"

    invoke-virtual {p2, v0, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 301
    .local v4, progress:J
    const-string v0, "task_total"

    invoke-virtual {p2, v0, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 303
    .local v2, total:J
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mListener:Lcom/didi/common/download/DownloadManager$DownloadListener;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$000(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/DownloadManager$DownloadListener;

    move-result-object v0

    invoke-interface/range {v0 .. v5}, Lcom/didi/common/download/DownloadManager$DownloadListener;->onProgressUpdate(Ljava/lang/String;JJ)V

    .line 360
    .end local v1           #url:Ljava/lang/String;
    .end local v2           #total:J
    .end local v4           #progress:J
    .end local v8           #type:I
    :cond_0
    :goto_0
    return-void

    .line 306
    .restart local v8       #type:I
    :cond_1
    const/4 v0, 0x2

    if-ne v8, v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mListener:Lcom/didi/common/download/DownloadManager$DownloadListener;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$000(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/DownloadManager$DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 309
    const-string v0, "down_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .restart local v1       #url:Ljava/lang/String;
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mListener:Lcom/didi/common/download/DownloadManager$DownloadListener;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$000(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/DownloadManager$DownloadListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/didi/common/download/DownloadManager$DownloadListener;->onComplete(Ljava/lang/String;)V

    .line 313
    .end local v1           #url:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$100(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/Status;

    move-result-object v0

    sget-object v9, Lcom/didi/common/download/DownloadService$DownloadState;->DELETE:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v9, v0, Lcom/didi/common/download/Status;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 314
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #setter for: Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;
    invoke-static {v0, v10}, Lcom/didi/common/download/DownloadManager;->access$102(Lcom/didi/common/download/DownloadManager;Lcom/didi/common/download/Status;)Lcom/didi/common/download/Status;

    .line 317
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #calls: Lcom/didi/common/download/DownloadManager;->offerTask()V
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$200(Lcom/didi/common/download/DownloadManager;)V

    goto :goto_0

    .line 318
    :cond_3
    const/4 v0, 0x3

    if-ne v8, v0, :cond_5

    .line 320
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mListener:Lcom/didi/common/download/DownloadManager$DownloadListener;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$000(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/DownloadManager$DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 321
    const-string v0, "down_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .restart local v1       #url:Ljava/lang/String;
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mListener:Lcom/didi/common/download/DownloadManager$DownloadListener;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$000(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/DownloadManager$DownloadListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/didi/common/download/DownloadManager$DownloadListener;->onStop(Ljava/lang/String;)V

    .line 325
    .end local v1           #url:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$100(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/Status;

    move-result-object v0

    sget-object v9, Lcom/didi/common/download/DownloadService$DownloadState;->STOP:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v9, v0, Lcom/didi/common/download/Status;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 326
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$300(Lcom/didi/common/download/DownloadManager;)Ljava/util/Vector;

    move-result-object v0

    iget-object v9, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;
    invoke-static {v9}, Lcom/didi/common/download/DownloadManager;->access$100(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/Status;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #setter for: Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;
    invoke-static {v0, v10}, Lcom/didi/common/download/DownloadManager;->access$102(Lcom/didi/common/download/DownloadManager;Lcom/didi/common/download/Status;)Lcom/didi/common/download/Status;

    .line 330
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #calls: Lcom/didi/common/download/DownloadManager;->offerTask()V
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$200(Lcom/didi/common/download/DownloadManager;)V

    goto :goto_0

    .line 331
    :cond_5
    const/4 v0, 0x4

    if-ne v8, v0, :cond_7

    .line 333
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mListener:Lcom/didi/common/download/DownloadManager$DownloadListener;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$000(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/DownloadManager$DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 334
    const-string v0, "down_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .restart local v1       #url:Ljava/lang/String;
    const-string v0, "err_msg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 336
    .local v7, errMsg:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UpdateErrorMsg="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mListener:Lcom/didi/common/download/DownloadManager$DownloadListener;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$000(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/DownloadManager$DownloadListener;

    move-result-object v0

    invoke-interface {v0, v1, v7}, Lcom/didi/common/download/DownloadManager$DownloadListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .end local v1           #url:Ljava/lang/String;
    .end local v7           #errMsg:Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$100(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/Status;

    move-result-object v0

    sget-object v9, Lcom/didi/common/download/DownloadService$DownloadState;->STOP:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v9, v0, Lcom/didi/common/download/Status;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 342
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mPausedTasks:Ljava/util/Vector;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$300(Lcom/didi/common/download/DownloadManager;)Ljava/util/Vector;

    move-result-object v0

    iget-object v9, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;
    invoke-static {v9}, Lcom/didi/common/download/DownloadManager;->access$100(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/Status;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #setter for: Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;
    invoke-static {v0, v10}, Lcom/didi/common/download/DownloadManager;->access$102(Lcom/didi/common/download/DownloadManager;Lcom/didi/common/download/Status;)Lcom/didi/common/download/Status;

    .line 346
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #calls: Lcom/didi/common/download/DownloadManager;->offerTask()V
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$200(Lcom/didi/common/download/DownloadManager;)V

    goto/16 :goto_0

    .line 347
    :cond_7
    const/4 v0, 0x5

    if-ne v8, v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mListener:Lcom/didi/common/download/DownloadManager$DownloadListener;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$000(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/DownloadManager$DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 349
    const-string v0, "down_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .restart local v1       #url:Ljava/lang/String;
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mListener:Lcom/didi/common/download/DownloadManager$DownloadListener;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$000(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/DownloadManager$DownloadListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/didi/common/download/DownloadManager$DownloadListener;->onDelete(Ljava/lang/String;)V

    .line 353
    .end local v1           #url:Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #getter for: Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$100(Lcom/didi/common/download/DownloadManager;)Lcom/didi/common/download/Status;

    move-result-object v0

    sget-object v9, Lcom/didi/common/download/DownloadService$DownloadState;->DELETE:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v9, v0, Lcom/didi/common/download/Status;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 354
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #setter for: Lcom/didi/common/download/DownloadManager;->mRunningTask:Lcom/didi/common/download/Status;
    invoke-static {v0, v10}, Lcom/didi/common/download/DownloadManager;->access$102(Lcom/didi/common/download/DownloadManager;Lcom/didi/common/download/Status;)Lcom/didi/common/download/Status;

    .line 357
    iget-object v0, p0, Lcom/didi/common/download/DownloadManager$1;->this$0:Lcom/didi/common/download/DownloadManager;

    #calls: Lcom/didi/common/download/DownloadManager;->offerTask()V
    invoke-static {v0}, Lcom/didi/common/download/DownloadManager;->access$200(Lcom/didi/common/download/DownloadManager;)V

    goto/16 :goto_0
.end method
