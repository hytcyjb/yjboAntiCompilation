.class Lcom/didi/ddrive/managers/DriveRealtimeManager$1;
.super Ljava/lang/Object;
.source "DriveRealtimeManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/DriveRealtimeManager;->getSupportCity(Landroid/content/Context;DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
        "<",
        "Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/DriveRealtimeManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/DriveRealtimeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/didi/ddrive/managers/DriveRealtimeManager$1;->this$0:Lcom/didi/ddrive/managers/DriveRealtimeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 94
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    .line 97
    .local v0, drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    new-instance v1, Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;

    invoke-direct {v1}, Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;-><init>()V

    .line 98
    .local v1, event:Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;
    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getBizSwitch()I

    move-result v2

    iput v2, v1, Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;->bizSwitch:I

    .line 99
    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getWarmUpSwitch()I

    move-result v2

    iput v2, v1, Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;->warmUpSwitch:I

    .line 100
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Lcom/didi/ddrive/managers/GlobalSettingManager;->getInstance()Lcom/didi/ddrive/managers/GlobalSettingManager;

    .line 104
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 62
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    .line 65
    .local v0, drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    iget v3, p1, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;->bizSwitch:I

    invoke-virtual {v0, v3}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->setDriveEnable(I)V

    .line 68
    iget-object v3, p1, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;->warmUp:Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;->warmUp:Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;

    invoke-virtual {v3}, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    iget v2, p1, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;->warmUpSwitch:I

    .line 70
    .local v2, warmupSwitch:I
    invoke-virtual {v0, v2}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->setWarmupSwtich(I)V

    .line 71
    iget-object v3, p1, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;->warmUp:Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;

    invoke-static {v3}, Lcom/didi/ddrive/util/JsonUtil;->jsonFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->setWarmupConfig(Ljava/lang/String;)V

    .line 77
    :goto_0
    iget v3, p1, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;->cityId:I

    invoke-virtual {v0, v3}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->setCityId(I)V

    .line 78
    iget-object v3, p1, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->setCityName(Ljava/lang/String;)V

    .line 79
    iget v3, p1, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;->driveringCountSwitch:I

    invoke-virtual {v0, v3}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->hideDriveCount(I)V

    .line 82
    new-instance v1, Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;

    invoke-direct {v1}, Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;-><init>()V

    .line 83
    .local v1, event:Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;
    iget v3, p1, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;->bizSwitch:I

    iput v3, v1, Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;->bizSwitch:I

    .line 84
    iput v2, v1, Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;->warmUpSwitch:I

    .line 85
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    invoke-virtual {v3, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Lcom/didi/ddrive/managers/GlobalSettingManager;->getInstance()Lcom/didi/ddrive/managers/GlobalSettingManager;

    move-result-object v3

    iget v4, p1, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;->cityId:I

    invoke-virtual {v3, v4}, Lcom/didi/ddrive/managers/GlobalSettingManager;->queryGlobalSetting(I)V

    .line 90
    .end local v0           #drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    .end local v1           #event:Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;
    .end local v2           #warmupSwitch:I
    :cond_0
    return-void

    .line 73
    .restart local v0       #drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    :cond_1
    const/4 v2, 0x2

    .line 74
    .restart local v2       #warmupSwitch:I
    invoke-virtual {v0, v2}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->setWarmupSwtich(I)V

    .line 75
    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->setWarmupConfig(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/DriveRealtimeManager$1;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse;)V

    return-void
.end method
