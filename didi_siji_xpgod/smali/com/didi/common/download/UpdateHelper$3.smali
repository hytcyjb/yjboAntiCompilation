.class Lcom/didi/common/download/UpdateHelper$3;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Lcom/didi/common/download/DownloadManager$DownloadListener;


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
    .line 301
    iput-object p1, p0, Lcom/didi/common/download/UpdateHelper$3;->this$0:Lcom/didi/common/download/UpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateProgressEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 333
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 334
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 335
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 336
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$3;->this$0:Lcom/didi/common/download/UpdateHelper;

    iget-object v1, v1, Lcom/didi/common/download/UpdateHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 337
    return-void
.end method

.method public onDelete(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 328
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter "errMsg"

    .prologue
    .line 320
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 321
    .local v0, msg:Landroid/os/Message;
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 322
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 323
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$3;->this$0:Lcom/didi/common/download/UpdateHelper;

    iget-object v1, v1, Lcom/didi/common/download/UpdateHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;JJ)V
    .locals 3
    .parameter "url"
    .parameter "total"
    .parameter "progress"

    .prologue
    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 311
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 312
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 313
    long-to-int v1, p2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 314
    long-to-int v1, p4

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 315
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$3;->this$0:Lcom/didi/common/download/UpdateHelper;

    iget-object v1, v1, Lcom/didi/common/download/UpdateHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 306
    return-void
.end method
