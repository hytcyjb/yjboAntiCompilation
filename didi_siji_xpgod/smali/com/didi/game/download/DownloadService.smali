.class public Lcom/didi/game/download/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# static fields
.field private static DOWNLOAD_MANAGER:Lcom/didi/game/download/DownloadManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    return-void
.end method

.method public static getDownloadManager(Landroid/content/Context;)Lcom/didi/game/download/DownloadManager;
    .locals 2
    .parameter "appContext"

    .prologue
    .line 19
    invoke-static {p0}, Lcom/didi/game/download/DownloadService;->isServiceRunning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/didi/game/download/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v0, downloadSvr:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    .end local v0           #downloadSvr:Landroid/content/Intent;
    :cond_0
    sget-object v1, Lcom/didi/game/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/didi/game/download/DownloadManager;

    if-nez v1, :cond_1

    .line 24
    new-instance v1, Lcom/didi/game/download/DownloadManager;

    invoke-direct {v1, p0}, Lcom/didi/game/download/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/didi/game/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/didi/game/download/DownloadManager;

    .line 26
    :cond_1
    sget-object v1, Lcom/didi/game/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/didi/game/download/DownloadManager;

    return-object v1
.end method

.method public static isServiceRunning(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 65
    .local v2, isRunning:Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 66
    .local v0, activityManager:Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 68
    .local v3, serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 69
    :cond_0
    const/4 v4, 0x0

    .line 78
    :goto_0
    return v4

    .line 72
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 73
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/didi/game/download/DownloadService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    const/4 v2, 0x1

    :cond_2
    move v4, v2

    .line 78
    goto :goto_0

    .line 72
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    sget-object v2, Lcom/didi/game/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/didi/game/download/DownloadManager;

    if-eqz v2, :cond_0

    .line 84
    :try_start_0
    sget-object v2, Lcom/didi/game/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/didi/game/download/DownloadManager;

    invoke-virtual {v2}, Lcom/didi/game/download/DownloadManager;->stopAllDownload()V

    .line 85
    sget-object v2, Lcom/didi/game/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/didi/game/download/DownloadManager;

    invoke-virtual {v2}, Lcom/didi/game/download/DownloadManager;->backupDownloadInfoList()V

    .line 86
    sget-object v2, Lcom/didi/game/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/didi/game/download/DownloadManager;

    invoke-virtual {v2}, Lcom/didi/game/download/DownloadManager;->destroy()V
    :try_end_0
    .catch Lnet/tsz/afinal/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/didi/game/download/DownloadService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, downloadSvr:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 94
    return-void

    .line 87
    .end local v0           #downloadSvr:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Lnet/tsz/afinal/exception/DbException;
    invoke-virtual {v1}, Lnet/tsz/afinal/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 50
    sget-object v1, Lcom/didi/game/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/didi/game/download/DownloadManager;

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    sget-object v1, Lcom/didi/game/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/didi/game/download/DownloadManager;

    invoke-virtual {v1}, Lcom/didi/game/download/DownloadManager;->stopAllDownload()V

    .line 53
    sget-object v1, Lcom/didi/game/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/didi/game/download/DownloadManager;

    invoke-virtual {v1}, Lcom/didi/game/download/DownloadManager;->backupDownloadInfoList()V
    :try_end_0
    .catch Lnet/tsz/afinal/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    sget-object v1, Lcom/didi/game/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/didi/game/download/DownloadManager;

    invoke-virtual {v1}, Lcom/didi/game/download/DownloadManager;->destroy()V

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 60
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Lnet/tsz/afinal/exception/DbException;
    invoke-virtual {v0}, Lnet/tsz/afinal/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 46
    return-void
.end method
