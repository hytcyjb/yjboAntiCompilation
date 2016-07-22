.class Lcom/didi/game/activity/GameInfoActivity$1$1;
.super Ljava/lang/Object;
.source "GameInfoActivity.java"

# interfaces
.implements Lcom/didi/game/download/DownloadManager$RemoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/activity/GameInfoActivity$1;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/game/activity/GameInfoActivity$1;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/GameInfoActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/didi/game/activity/GameInfoActivity$1$1;->this$1:Lcom/didi/game/activity/GameInfoActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2
    .parameter "errNo"
    .parameter "errMsg"

    .prologue
    .line 455
    invoke-static {p2}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity$1$1;->this$1:Lcom/didi/game/activity/GameInfoActivity$1;

    iget-object v0, v0, Lcom/didi/game/activity/GameInfoActivity$1;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity$1$1;->this$1:Lcom/didi/game/activity/GameInfoActivity$1;

    iget-object v1, v1, Lcom/didi/game/activity/GameInfoActivity$1;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    #getter for: Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;
    invoke-static {v1}, Lcom/didi/game/activity/GameInfoActivity;->access$100(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/download/DownloadItem;

    move-result-object v1

    #calls: Lcom/didi/game/activity/GameInfoActivity;->refreshView(Lcom/didi/game/download/DownloadItem;)V
    invoke-static {v0, v1}, Lcom/didi/game/activity/GameInfoActivity;->access$200(Lcom/didi/game/activity/GameInfoActivity;Lcom/didi/game/download/DownloadItem;)V

    .line 457
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 448
    invoke-static {p1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity$1$1;->this$1:Lcom/didi/game/activity/GameInfoActivity$1;

    iget-object v0, v0, Lcom/didi/game/activity/GameInfoActivity$1;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    const/4 v1, 0x0

    #setter for: Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;
    invoke-static {v0, v1}, Lcom/didi/game/activity/GameInfoActivity;->access$102(Lcom/didi/game/activity/GameInfoActivity;Lcom/didi/game/download/DownloadItem;)Lcom/didi/game/download/DownloadItem;

    .line 450
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity$1$1;->this$1:Lcom/didi/game/activity/GameInfoActivity$1;

    iget-object v0, v0, Lcom/didi/game/activity/GameInfoActivity$1;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity$1$1;->this$1:Lcom/didi/game/activity/GameInfoActivity$1;

    iget-object v1, v1, Lcom/didi/game/activity/GameInfoActivity$1;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    #getter for: Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;
    invoke-static {v1}, Lcom/didi/game/activity/GameInfoActivity;->access$100(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/download/DownloadItem;

    move-result-object v1

    #calls: Lcom/didi/game/activity/GameInfoActivity;->refreshView(Lcom/didi/game/download/DownloadItem;)V
    invoke-static {v0, v1}, Lcom/didi/game/activity/GameInfoActivity;->access$200(Lcom/didi/game/activity/GameInfoActivity;Lcom/didi/game/download/DownloadItem;)V

    .line 451
    return-void
.end method
