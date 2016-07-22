.class public Lcom/didi/common/helper/ExitHelper;
.super Ljava/lang/Object;
.source "ExitHelper.java"


# static fields
.field private static isExitBackPressed:Z

.field private static mExitRunnable:Ljava/lang/Runnable;

.field private static final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/common/helper/ExitHelper;->isExitBackPressed:Z

    .line 34
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/ExitHelper;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    new-instance v0, Lcom/didi/common/helper/ExitHelper$1;

    invoke-direct {v0}, Lcom/didi/common/helper/ExitHelper$1;-><init>()V

    sput-object v0, Lcom/didi/common/helper/ExitHelper;->mExitRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    sput-boolean p0, Lcom/didi/common/helper/ExitHelper;->isExitBackPressed:Z

    return p0
.end method

.method public static checkExit()V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/didi/common/helper/ExitHelper;->isExitBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const v0, 0x7f0b033f

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    .line 105
    invoke-static {}, Lcom/didi/common/helper/ExitHelper;->setExitBackPressed()V

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/ExitHelper;->exit()V

    goto :goto_0
.end method

.method private static delayExit(I)V
    .locals 5
    .parameter "seconds"

    .prologue
    .line 54
    sget-object v0, Lcom/didi/common/helper/ExitHelper;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/didi/common/helper/ExitHelper$2;

    invoke-direct {v1}, Lcom/didi/common/helper/ExitHelper$2;-><init>()V

    int-to-long v2, p0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 62
    return-void
.end method

.method public static doExit()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/async/task/ActivityController;->clearActivity()V

    .line 85
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    .line 86
    .local v0, activity:Lcom/didi/frame/MainActivity;
    if-eqz v0, :cond_0

    .line 87
    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getInstance(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/TraceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/TraceManager;->stopTrace()V

    .line 88
    invoke-static {v0}, Lcom/didi/game/download/DownloadService;->stop(Landroid/content/Context;)V

    .line 89
    invoke-static {v0}, Lcom/didi/common/service/DaemonService;->stop(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->unregisterReceiver()V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/frame/MainActivity;->moveTaskToBack(Z)Z

    .line 92
    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->finish()V

    .line 94
    :cond_0
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->stopLocation()V

    .line 95
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->stopUUIDWatching()V

    .line 96
    invoke-static {}, Lcom/didi/beatles/push/BtsPushController;->unRegiseterBtsPush()V

    .line 97
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->release()V

    .line 98
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 100
    return-void
.end method

.method public static exit()V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/didi/common/helper/VoucherHelper;->setVoucherRedPointToNative(I)V

    .line 67
    const-string v0, "--------------delay exit---------"

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/didi/common/util/TraceNetLog;->saveLog()V

    .line 69
    invoke-static {}, Lcom/didi/common/util/TraceLog;->saveLog()V

    .line 70
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->saveCurrentPoint()V

    .line 71
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setTopicOpen(Z)V

    .line 72
    invoke-static {}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->getInstance()Lcom/didi/common/config/preference/PreferenceEditorProxy;

    move-result-object v0

    new-instance v1, Lcom/didi/common/helper/ExitHelper$3;

    invoke-direct {v1}, Lcom/didi/common/helper/ExitHelper$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commitImmediately(Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;)V

    .line 81
    return-void
.end method

.method public static isExitBackPressed()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/didi/common/helper/ExitHelper;->isExitBackPressed:Z

    return v0
.end method

.method public static setExitBackPressed()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/common/helper/ExitHelper;->isExitBackPressed:Z

    .line 45
    sget-object v0, Lcom/didi/common/helper/ExitHelper;->mExitRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    sget-object v0, Lcom/didi/common/helper/ExitHelper;->mExitRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    return-void
.end method
