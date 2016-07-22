.class Lcom/didi/ddrive/managers/DriveAccountManager$2;
.super Ljava/lang/Object;
.source "DriveAccountManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/DriveAccountManager;->userLogin(DDLjava/lang/String;)V
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
        "Lcom/didi/ddrive/net/http/response/DriveLoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/DriveAccountManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/DriveAccountManager;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/didi/ddrive/managers/DriveAccountManager$2;->this$0:Lcom/didi/ddrive/managers/DriveAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/didi/ddrive/managers/DriveAccountManager$2;->this$0:Lcom/didi/ddrive/managers/DriveAccountManager;

    iget v1, v0, Lcom/didi/ddrive/managers/DriveAccountManager;->mRetryTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/didi/ddrive/managers/DriveAccountManager;->mRetryTime:I

    .line 127
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/DriveAccountLoginEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/didi/ddrive/eventbus/event/DriveAccountLoginEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriveLoginResponse;)V
    .locals 10
    .parameter "response"

    .prologue
    const/4 v0, 0x1

    .line 96
    const-string v1, "DriveAccountManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/didi/ddrive/net/http/response/DriveLoginResponse;->pid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " & token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/didi/ddrive/net/http/response/DriveLoginResponse;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p1, Lcom/didi/ddrive/net/http/response/DriveLoginResponse;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v9

    .line 101
    .local v9, mgr:Lcom/didi/ddrive/preferences/KDPreferenceManager;
    invoke-virtual {v9}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v7

    .line 103
    .local v7, drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    iget-object v1, p0, Lcom/didi/ddrive/managers/DriveAccountManager$2;->this$0:Lcom/didi/ddrive/managers/DriveAccountManager;

    new-instance v2, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-object v3, p1, Lcom/didi/ddrive/net/http/response/DriveLoginResponse;->token:Ljava/lang/String;

    iget-wide v4, p1, Lcom/didi/ddrive/net/http/response/DriveLoginResponse;->pid:J

    invoke-direct {v2, v3, v4, v5}, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;-><init>(Ljava/lang/String;J)V

    iput-object v2, v1, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    .line 104
    iget-object v1, p0, Lcom/didi/ddrive/managers/DriveAccountManager$2;->this$0:Lcom/didi/ddrive/managers/DriveAccountManager;

    iget-object v1, v1, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    invoke-virtual {v7, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->saveUser(Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;)V

    .line 106
    iget-boolean v1, p1, Lcom/didi/ddrive/net/http/response/DriveLoginResponse;->switchOn:Z

    if-eqz v1, :cond_1

    move v6, v0

    .line 107
    .local v6, bizSwitch:I
    :goto_0
    invoke-virtual {v7, v6}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->setDriveEnable(I)V

    .line 110
    new-instance v8, Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;

    invoke-direct {v8}, Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;-><init>()V

    .line 111
    .local v8, event:Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;
    iput v6, v8, Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;->bizSwitch:I

    .line 112
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getWarmUpSwitch()I

    move-result v1

    iput v1, v8, Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;->warmUpSwitch:I

    .line 113
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v8}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 115
    .end local v6           #bizSwitch:I
    .end local v7           #drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    .end local v8           #event:Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;
    .end local v9           #mgr:Lcom/didi/ddrive/preferences/KDPreferenceManager;
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/didi/ddrive/eventbus/event/DriveAccountLoginEvent;

    invoke-direct {v2, v0}, Lcom/didi/ddrive/eventbus/event/DriveAccountLoginEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->getInstance()Lcom/didi/ddrive/managers/DriveRealtimeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v2

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->getSupportCity(Landroid/content/Context;DD)V

    .line 121
    iget-object v0, p0, Lcom/didi/ddrive/managers/DriveAccountManager$2;->this$0:Lcom/didi/ddrive/managers/DriveAccountManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/didi/ddrive/managers/DriveAccountManager;->mRetryTime:I

    .line 122
    return-void

    .line 106
    .restart local v7       #drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    .restart local v9       #mgr:Lcom/didi/ddrive/preferences/KDPreferenceManager;
    :cond_1
    const/4 v6, 0x2

    goto :goto_0
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    check-cast p1, Lcom/didi/ddrive/net/http/response/DriveLoginResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/DriveAccountManager$2;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/DriveLoginResponse;)V

    return-void
.end method
