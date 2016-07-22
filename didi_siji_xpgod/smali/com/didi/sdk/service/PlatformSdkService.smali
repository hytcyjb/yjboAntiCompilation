.class public Lcom/didi/sdk/service/PlatformSdkService;
.super Landroid/app/Service;
.source "PlatformSdkService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PlatformSdkService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private initModule()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/didi/sdk/module/PlatformLoginModule;->getInstance()Lcom/didi/sdk/module/PlatformLoginModule;

    .line 35
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 17
    const-string v0, "------->didi PlatformSdkService onBind"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->getInstance()Lcom/didi/sdk/platform/PlatformServiceAidlBus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/sdk/platform/PlatformServiceAidlBus;->getServiceMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 24
    const-string v0, "------->didi PlatformSdkService onCreate"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/didi/sdk/service/PlatformSdkService;->initModule()V

    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 31
    return-void
.end method
