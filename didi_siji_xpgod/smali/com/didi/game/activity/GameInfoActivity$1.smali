.class Lcom/didi/game/activity/GameInfoActivity$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "GameInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/activity/GameInfoActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/activity/GameInfoActivity;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/GameInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/didi/game/activity/GameInfoActivity$1;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 464
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity$1;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    #getter for: Lcom/didi/game/activity/GameInfoActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/game/activity/GameInfoActivity;->access$400(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->cancel()V

    .line 465
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    .line 444
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 445
    iget-object v0, p0, Lcom/didi/game/activity/GameInfoActivity$1;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    #getter for: Lcom/didi/game/activity/GameInfoActivity;->downloadManager:Lcom/didi/game/download/DownloadManager;
    invoke-static {v0}, Lcom/didi/game/activity/GameInfoActivity;->access$300(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/activity/GameInfoActivity$1;->this$0:Lcom/didi/game/activity/GameInfoActivity;

    #getter for: Lcom/didi/game/activity/GameInfoActivity;->downloadItem:Lcom/didi/game/download/DownloadItem;
    invoke-static {v1}, Lcom/didi/game/activity/GameInfoActivity;->access$100(Lcom/didi/game/activity/GameInfoActivity;)Lcom/didi/game/download/DownloadItem;

    move-result-object v1

    new-instance v2, Lcom/didi/game/activity/GameInfoActivity$1$1;

    invoke-direct {v2, p0}, Lcom/didi/game/activity/GameInfoActivity$1$1;-><init>(Lcom/didi/game/activity/GameInfoActivity$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/game/download/DownloadManager;->removeDownload(Lcom/didi/game/download/DownloadItem;Lcom/didi/game/download/DownloadManager$RemoveCallback;)V

    .line 459
    return-void
.end method
