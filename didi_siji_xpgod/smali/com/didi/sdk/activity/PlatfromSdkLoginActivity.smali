.class public Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PlatfromSdkLoginActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatfromSdkLoginActivity"

.field private static sActivity:Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private createLogDirs()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/Constant;->TRACE_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->mkDir(Ljava/lang/String;)Z

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/Constant;->NET_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->mkDir(Ljava/lang/String;)Z

    .line 105
    invoke-static {}, Lcom/didi/common/util/LogUtil;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/common/util/Constant;->DEBUG_LOG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->mkDir(Ljava/lang/String;)Z

    .line 108
    :cond_0
    return-void
.end method

.method private didiAppInit()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/soso/location/LocationController;->startLocation(Landroid/content/Context;)V

    .line 79
    invoke-static {p0}, Lcom/tendcloud/tenddata/TCAgent;->init(Landroid/content/Context;)V

    .line 80
    invoke-virtual {p0}, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 81
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tendcloud/tenddata/TCAgent;->setReportUncaughtExceptions(Z)V

    .line 82
    invoke-static {}, Lcom/didi/common/crash/CrashHandler;->getInstance()Lcom/didi/common/crash/CrashHandler;

    .line 83
    sget-object v0, Lcom/didi/common/util/Constant;->TD_CPA_KEY:Ljava/lang/String;

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->init()Lcom/didi/frame/business/redirector/RedirectEngine;

    .line 86
    invoke-direct {p0}, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->init()V

    .line 87
    return-void
.end method

.method public static getActivity()Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->sActivity:Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/didi/taxi/price/TaxiPriceAdapter;->getInstance()Lcom/didi/taxi/price/TaxiPriceAdapter;

    .line 91
    invoke-static {}, Lcom/didi/taxi/wait/TaxiWaitAdapter;->getInstance()Lcom/didi/taxi/wait/TaxiWaitAdapter;

    .line 92
    invoke-static {}, Lcom/didi/car/price/CarPriceAdapter;->getInstance()Lcom/didi/car/price/CarPriceAdapter;

    .line 93
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelAdapter;->getInstance()Lcom/didi/frame/carmodel/CarModelAdapter;

    .line 94
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->startUUIDWatching()V

    .line 95
    invoke-static {}, Lcom/didi/frame/recovery/RecoveryHelper;->resetInstance()V

    .line 96
    invoke-static {}, Lcom/didi/frame/recovery/RecoveryHelper;->getInstance()Lcom/didi/frame/recovery/RecoveryHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/frame/recovery/RecoveryHelper;->init(Landroid/content/Context;)V

    .line 98
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->loadUserInfo()V

    .line 99
    invoke-direct {p0}, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->createLogDirs()V

    .line 100
    return-void
.end method

.method public static isInvalid()Z
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->getActivity()Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;

    move-result-object v0

    .line 150
    .local v0, activity:Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;
    if-nez v0, :cond_0

    .line 151
    const/4 v1, 0x1

    .line 152
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->isFinishing()Z

    move-result v1

    goto :goto_0
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 62
    const v1, 0x7f0804b9

    invoke-virtual {p0, v1}, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/titlebar/TitleBar;

    .line 63
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    new-instance v2, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity$1;-><init>(Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f0b03ee

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 73
    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 74
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 75
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 133
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 134
    const-string v0, "--------->PlatfromSdkLoginActivity onBackPressed"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/didi/sdk/module/PlatformLoginModule;->getInstance()Lcom/didi/sdk/module/PlatformLoginModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/sdk/module/PlatformLoginModule;->getLoginListener()Lcom/didi/common/listener/LoginListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, ""

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/didi/common/listener/LoginListener;->onLogin(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sput-object p0, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->sActivity:Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->requestWindowFeature(I)Z

    .line 50
    const v0, 0x7f0300dc

    invoke-virtual {p0, v0}, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->setTitlebar()V

    .line 52
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->addAcitivty(Landroid/app/Activity;)V

    .line 53
    invoke-static {}, Lcom/didi/sdk/module/PlatformLoginModule;->getInstance()Lcom/didi/sdk/module/PlatformLoginModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/sdk/module/PlatformLoginModule;->registerLoginListener()V

    .line 55
    invoke-static {}, Lcom/didi/frame/MainActivity;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->didiAppInit()V

    .line 57
    const-string v0, "----------->PlatfromSdkLoginActivity dsf init.."

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 118
    invoke-static {}, Lcom/didi/sdk/module/PlatformLoginModule;->getInstance()Lcom/didi/sdk/module/PlatformLoginModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/sdk/module/PlatformLoginModule;->unregisterLoginListener()V

    .line 119
    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->stopUUIDWatching()V

    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;->sActivity:Lcom/didi/sdk/activity/PlatfromSdkLoginActivity;

    .line 121
    invoke-static {}, Lcom/didi/frame/MainActivity;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->hideMenu()V

    .line 123
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/common/ui/fragment/CommonLoginFragment;

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------->PlatfromSdkLoginActivity onDestroy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 140
    const-string v0, "--------->PlatfromSdkLoginActivity onKeyDown"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 141
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 113
    return-void
.end method
