.class public Lcom/didi/common/base/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "2882303761517342044"

.field public static final APP_KEY:Ljava/lang/String; = "5611734215044"

.field private static mContext:Lcom/didi/common/base/BaseApplication;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field public notificationId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 28
    const/16 v0, 0x64

    iput v0, p0, Lcom/didi/common/base/BaseApplication;->notificationId:I

    .line 29
    new-instance v0, Lcom/didi/common/base/BaseApplication$1;

    invoke-direct {v0, p0}, Lcom/didi/common/base/BaseApplication$1;-><init>(Lcom/didi/common/base/BaseApplication;)V

    iput-object v0, p0, Lcom/didi/common/base/BaseApplication;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/didi/common/base/BaseApplication;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/didi/common/base/BaseApplication;->mContext:Lcom/didi/common/base/BaseApplication;

    return-object v0
.end method

.method public static getAppContext()Lcom/didi/common/base/BaseApplication;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/didi/common/base/BaseApplication;->mContext:Lcom/didi/common/base/BaseApplication;

    return-object v0
.end method

.method public static isDebugMode()Z
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/base/BaseApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 84
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldInit()Z
    .locals 7

    .prologue
    .line 87
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 88
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 89
    .local v5, processInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {p0}, Lcom/didi/common/base/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, mainProcessName:Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 91
    .local v4, myPid:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 92
    .local v2, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v4, :cond_0

    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 93
    const/4 v6, 0x1

    .line 96
    .end local v2           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 59
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->computeScaleRatio()V

    .line 60
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->computeWindowRotation()V

    .line 61
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 43
    sput-object p0, Lcom/didi/common/base/BaseApplication;->mContext:Lcom/didi/common/base/BaseApplication;

    .line 44
    invoke-direct {p0}, Lcom/didi/common/base/BaseApplication;->shouldInit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "2882303761517342044"

    const-string v2, "5611734215044"

    invoke-static {p0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->setDebugMode(Z)V

    .line 48
    sget-boolean v1, Lcom/didi/common/util/Constant;->isPreRom:Z

    if-nez v1, :cond_1

    .line 49
    new-instance v0, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, strategy:Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppChannel(Ljava/lang/String;)Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    .line 51
    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppVersion(Ljava/lang/String;)Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    .line 53
    .end local v0           #strategy:Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
    :cond_1
    iget-object v1, p0, Lcom/didi/common/base/BaseApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 66
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 75
    return-void
.end method
