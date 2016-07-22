.class public Lcom/didi/ddrive/managers/VoucherManager;
.super Ljava/lang/Object;
.source "VoucherManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoucherManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVoucherFromEntrance()V
    .locals 6

    .prologue
    .line 16
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/DriveAccountManager;->getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v1

    .line 17
    .local v1, user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    new-instance v0, Lcom/didi/ddrive/net/http/request/DDriverEntranceRequest;

    invoke-direct {v0}, Lcom/didi/ddrive/net/http/request/DDriverEntranceRequest;-><init>()V

    .line 22
    .local v0, request:Lcom/didi/ddrive/net/http/request/DDriverEntranceRequest;
    iget-wide v2, v1, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v2, v0, Lcom/didi/ddrive/net/http/request/DDriverEntranceRequest;->pid:J

    .line 23
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/didi/ddrive/net/http/request/DDriverEntranceRequest;->lat:D

    .line 24
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/didi/ddrive/net/http/request/DDriverEntranceRequest;->lng:D

    .line 26
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v2

    const-string v3, "VoucherManager"

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    goto :goto_0
.end method
