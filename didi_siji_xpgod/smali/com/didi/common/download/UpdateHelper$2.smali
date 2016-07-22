.class Lcom/didi/common/download/UpdateHelper$2;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/download/UpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/download/UpdateHelper;


# direct methods
.method constructor <init>(Lcom/didi/common/download/UpdateHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/didi/common/download/UpdateHelper$2;->this$0:Lcom/didi/common/download/UpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper$2;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->isForce:Z
    invoke-static {v0}, Lcom/didi/common/download/UpdateHelper;->access$1000(Lcom/didi/common/download/UpdateHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper$2;->this$0:Lcom/didi/common/download/UpdateHelper;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/download/DownloadManager;->getInStance(Landroid/content/Context;)Lcom/didi/common/download/DownloadManager;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/download/UpdateHelper;->downdload:Lcom/didi/common/download/DownloadManager;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateProgressurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$2;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->urlString:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$800(Lcom/didi/common/download/UpdateHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateProgresspath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$2;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->path:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$400(Lcom/didi/common/download/UpdateHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper$2;->this$0:Lcom/didi/common/download/UpdateHelper;

    iget-object v0, v0, Lcom/didi/common/download/UpdateHelper;->downdload:Lcom/didi/common/download/DownloadManager;

    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$2;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->urlString:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$800(Lcom/didi/common/download/UpdateHelper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/download/UpdateHelper$2;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/common/download/UpdateHelper;->access$400(Lcom/didi/common/download/UpdateHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/download/DownloadManager;->addTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/didi/common/download/UpdateHelper$2;->this$0:Lcom/didi/common/download/UpdateHelper;

    iget-object v0, v0, Lcom/didi/common/download/UpdateHelper;->downdload:Lcom/didi/common/download/DownloadManager;

    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$2;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->downloadListener:Lcom/didi/common/download/DownloadManager$DownloadListener;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$900(Lcom/didi/common/download/UpdateHelper;)Lcom/didi/common/download/DownloadManager$DownloadListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/download/DownloadManager;->setDownloadListener(Lcom/didi/common/download/DownloadManager$DownloadListener;)V

    .line 277
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method
