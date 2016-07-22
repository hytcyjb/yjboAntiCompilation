.class public Lcom/didi/ddrive/managers/ShareManager;
.super Ljava/lang/Object;
.source "ShareManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getShareConfigAndShareContentFromServer()V
    .locals 8

    .prologue
    .line 29
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    .line 30
    .local v1, latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 33
    :cond_0
    sget-object v5, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/model/DDriveOrder;

    .line 35
    .local v2, mOrder:Lcom/didi/ddrive/model/DDriveOrder;
    new-instance v3, Lcom/didi/ddrive/net/http/request/ShareConfigRequest;

    invoke-direct {v3}, Lcom/didi/ddrive/net/http/request/ShareConfigRequest;-><init>()V

    .line 36
    .local v3, shareConfigRequest:Lcom/didi/ddrive/net/http/request/ShareConfigRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v2, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/didi/ddrive/net/http/request/ShareConfigRequest;->param:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v5

    iget-object v5, v5, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-wide v5, v5, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v5, v3, Lcom/didi/ddrive/net/http/request/ShareConfigRequest;->pid:J

    .line 38
    if-eqz v1, :cond_1

    .line 39
    iget-wide v5, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iput-wide v5, v3, Lcom/didi/ddrive/net/http/request/ShareConfigRequest;->lat:D

    .line 40
    iget-wide v5, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    iput-wide v5, v3, Lcom/didi/ddrive/net/http/request/ShareConfigRequest;->lng:D

    .line 42
    :cond_1
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 43
    .local v0, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v5, "ShareManager"

    new-instance v6, Lcom/didi/ddrive/managers/ShareManager$1;

    invoke-direct {v6, p0}, Lcom/didi/ddrive/managers/ShareManager$1;-><init>(Lcom/didi/ddrive/managers/ShareManager;)V

    const-class v7, Lcom/didi/ddrive/net/http/response/ShareConfig;

    invoke-virtual {v0, v5, v3, v6, v7}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 60
    new-instance v4, Lcom/didi/ddrive/net/http/request/ShareContentRequest;

    invoke-direct {v4}, Lcom/didi/ddrive/net/http/request/ShareContentRequest;-><init>()V

    .line 61
    .local v4, shareContentRequest:Lcom/didi/ddrive/net/http/request/ShareContentRequest;
    iget-object v5, v3, Lcom/didi/ddrive/net/http/request/ShareConfigRequest;->param:Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/ddrive/net/http/request/ShareContentRequest;->param:Ljava/lang/String;

    .line 62
    iget-wide v5, v3, Lcom/didi/ddrive/net/http/request/ShareConfigRequest;->pid:J

    iput-wide v5, v4, Lcom/didi/ddrive/net/http/request/ShareContentRequest;->pid:J

    .line 63
    iget-wide v5, v3, Lcom/didi/ddrive/net/http/request/ShareConfigRequest;->lat:D

    iput-wide v5, v4, Lcom/didi/ddrive/net/http/request/ShareContentRequest;->lat:D

    .line 64
    iget-wide v5, v3, Lcom/didi/ddrive/net/http/request/ShareConfigRequest;->lng:D

    iput-wide v5, v4, Lcom/didi/ddrive/net/http/request/ShareContentRequest;->lng:D

    .line 65
    const-string v5, "ShareManager"

    new-instance v6, Lcom/didi/ddrive/managers/ShareManager$2;

    invoke-direct {v6, p0}, Lcom/didi/ddrive/managers/ShareManager$2;-><init>(Lcom/didi/ddrive/managers/ShareManager;)V

    const-class v7, Lcom/didi/ddrive/net/http/response/ShareContent;

    invoke-virtual {v0, v5, v4, v6, v7}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    goto :goto_0
.end method
