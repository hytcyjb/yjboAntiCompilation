.class Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;
.super Lcom/didi/game/download/RequestCallBack;
.source "GameInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/game/activity/GameInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadRequestCallBack"
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
.field final synthetic this$0:Lcom/didi/game/activity/GameInfoActivity;


# direct methods
.method public constructor <init>(Lcom/didi/game/activity/GameInfoActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "key"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    .line 378
    invoke-direct {p0, p2}, Lcom/didi/game/download/RequestCallBack;-><init>(Ljava/lang/String;)V

    .line 379
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 2
    .parameter "t"
    .parameter "errorNo"
    .parameter "strMsg"

    .prologue
    .line 383
    invoke-super {p0, p1, p2, p3}, Lcom/didi/game/download/RequestCallBack;->onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 384
    const-string v0, "DownloadRequestCallBack  onFailure..."

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    #getter for: Lcom/didi/game/activity/GameInfoActivity;->instance:Lcom/didi/game/activity/GameInfoActivity;
    invoke-static {v0}, Lcom/didi/game/activity/GameInfoActivity;->access$000(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/activity/GameInfoActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 386
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    #getter for: Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;
    invoke-static {v1}, Lcom/didi/game/activity/GameInfoActivity;->access$100(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/download/DownloadItem;

    move-result-object v1

    #calls: Lcom/didi/game/activity/GameInfoActivity;->refreshView(Lcom/didi/game/download/DownloadItem;)V
    invoke-static {v0, v1}, Lcom/didi/game/activity/GameInfoActivity;->access$200(Lcom/didi/game/activity/GameInfoActivity;Lcom/didi/game/download/DownloadItem;)V

    .line 387
    return-void
.end method

.method public onLoading(JJ)V
    .locals 2
    .parameter "count"
    .parameter "current"

    .prologue
    .line 391
    invoke-super {p0, p1, p2, p3, p4}, Lcom/didi/game/download/RequestCallBack;->onLoading(JJ)V

    .line 392
    const-string v0, "DownloadRequestCallBack  onLoading..."

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    #getter for: Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;
    invoke-static {v1}, Lcom/didi/game/activity/GameInfoActivity;->access$100(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/download/DownloadItem;

    move-result-object v1

    #calls: Lcom/didi/game/activity/GameInfoActivity;->refreshView(Lcom/didi/game/download/DownloadItem;)V
    invoke-static {v0, v1}, Lcom/didi/game/activity/GameInfoActivity;->access$200(Lcom/didi/game/activity/GameInfoActivity;Lcom/didi/game/download/DownloadItem;)V

    .line 394
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Lcom/didi/game/download/RequestCallBack;->onStart()V

    .line 399
    const-string v0, "DownloadRequestCallBack  onStart..."

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    #getter for: Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;
    invoke-static {v1}, Lcom/didi/game/activity/GameInfoActivity;->access$100(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/download/DownloadItem;

    move-result-object v1

    #calls: Lcom/didi/game/activity/GameInfoActivity;->refreshView(Lcom/didi/game/download/DownloadItem;)V
    invoke-static {v0, v1}, Lcom/didi/game/activity/GameInfoActivity;->access$200(Lcom/didi/game/activity/GameInfoActivity;Lcom/didi/game/download/DownloadItem;)V

    .line 401
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/didi/game/download/RequestCallBack;->onSuccess(Ljava/lang/Object;)V

    .line 406
    const-string v0, "onSuccess  onStart..."

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    #getter for: Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;
    invoke-static {v0}, Lcom/didi/game/activity/GameInfoActivity;->access$100(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/download/DownloadItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/game/download/DownloadItem;->getOriginalState()Lcom/didi/game/download/DownloadItem$State;

    move-result-object v0

    sget-object v1, Lcom/didi/game/download/DownloadItem$State;->SUCCESS:Lcom/didi/game/download/DownloadItem$State;

    if-ne v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    #getter for: Lcom/didi/game/activity/GameInfoActivity;->instance:Lcom/didi/game/activity/GameInfoActivity;
    invoke-static {v0}, Lcom/didi/game/activity/GameInfoActivity;->access$000(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/activity/GameInfoActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    #getter for: Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;
    invoke-static {v1}, Lcom/didi/game/activity/GameInfoActivity;->access$100(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/download/DownloadItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/game/download/DownloadItem;->getAbsoluteFile()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/didi/common/util/Utils;->installApk(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    #getter for: Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;
    invoke-static {v1}, Lcom/didi/game/activity/GameInfoActivity;->access$100(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/download/DownloadItem;

    move-result-object v1

    #calls: Lcom/didi/game/activity/GameInfoActivity;->refreshView(Lcom/didi/game/download/DownloadItem;)V
    invoke-static {v0, v1}, Lcom/didi/game/activity/GameInfoActivity;->access$200(Lcom/didi/game/activity/GameInfoActivity;Lcom/didi/game/download/DownloadItem;)V

    .line 411
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 376
    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/game/activity/GameInfoActivity$DownloadRequestCallBack;->onSuccess(Ljava/io/File;)V

    return-void
.end method

.method public progress(ZI)Lnet/tsz/afinal/http/AjaxCallBack;
    .locals 1
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
    .line 415
    const-string v0, "onSuccess  progress..."

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 416
    invoke-super {p0, p1, p2}, Lcom/didi/game/download/RequestCallBack;->progress(ZI)Lnet/tsz/afinal/http/AjaxCallBack;

    move-result-object v0

    return-object v0
.end method
