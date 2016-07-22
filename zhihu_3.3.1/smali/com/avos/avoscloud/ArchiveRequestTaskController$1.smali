.class final Lcom/avos/avoscloud/ArchiveRequestTaskController$1;
.super Ljava/lang/Object;
.source "ArchiveRequestTaskController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/ArchiveRequestTaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "trying to send archive request"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 41
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 42
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PaasClient;->handleAllArchivedRequest(Z)V

    .line 45
    invoke-static {}, Lcom/avos/avoscloud/RequestStatisticsUtil;->getInstance()Lcom/avos/avoscloud/RequestStatisticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/RequestStatisticsUtil;->sendToServer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 55
    :cond_1
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    :try_start_1
    const-string v1, "Exception happended during processing archive requests"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/avos/avoscloud/ArchiveRequestTaskController;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 53
    :cond_2
    const-string v0, "applicationContext is null, Please call AVOSCloud.initialize first"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
