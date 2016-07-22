.class public Lcom/didi/ddrive/managers/DriverBarManager;
.super Ljava/lang/Object;
.source "DriverBarManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DriverBarManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contactDriver()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 17
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/model/DDriveOrder;

    .line 18
    .local v2, mOrder:Lcom/didi/ddrive/model/DDriveOrder;
    new-instance v0, Lcom/didi/ddrive/net/http/request/ContactDriverRequest;

    invoke-direct {v0}, Lcom/didi/ddrive/net/http/request/ContactDriverRequest;-><init>()V

    .line 19
    .local v0, cr:Lcom/didi/ddrive/net/http/request/ContactDriverRequest;
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/managers/DriveAccountManager;->getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v3

    iget-wide v3, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v3, v0, Lcom/didi/ddrive/net/http/request/ContactDriverRequest;->pid:J

    .line 20
    iget-wide v3, v2, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    iput-wide v3, v0, Lcom/didi/ddrive/net/http/request/ContactDriverRequest;->oid:J

    .line 21
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 22
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iput-wide v3, v0, Lcom/didi/ddrive/net/http/request/ContactDriverRequest;->lat:D

    .line 23
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    iput-wide v3, v0, Lcom/didi/ddrive/net/http/request/ContactDriverRequest;->lng:D

    .line 27
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v1

    .line 28
    .local v1, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v3, "DriverBarManager"

    invoke-virtual {v1, v3, v0, v5, v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 29
    .end local v1           #httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    :cond_0
    return-void
.end method
