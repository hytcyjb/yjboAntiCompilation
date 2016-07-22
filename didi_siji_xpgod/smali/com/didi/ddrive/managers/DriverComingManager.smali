.class public Lcom/didi/ddrive/managers/DriverComingManager;
.super Ljava/lang/Object;
.source "DriverComingManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DriverComingManager"


# instance fields
.field private dCurrent:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private dStart:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private mDistance:Ljava/lang/String;

.field private mDriver:Lcom/didi/ddrive/model/Driver;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mKDLocationManager:Lcom/didi/common/helper/LocationHelper;

.field public mLastDriverWaitingFeeEvent:Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;

.field public mLastDrivingFeeEvent:Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;

.field public mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

.field public mWaitFee:D

.field public mWaitTime:J

.field private pCurrent:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private pStart:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/didi/ddrive/managers/DriverComingManager;->mFragment:Landroid/support/v4/app/Fragment;

    .line 73
    new-instance v0, Lcom/didi/ddrive/model/Driver;

    invoke-direct {v0}, Lcom/didi/ddrive/model/Driver;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/managers/DriverComingManager;->mDriver:Lcom/didi/ddrive/model/Driver;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/managers/DriverComingManager;)Lcom/didi/ddrive/model/Driver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/didi/ddrive/managers/DriverComingManager;->mDriver:Lcom/didi/ddrive/model/Driver;

    return-object v0
.end method


# virtual methods
.method public loadDriverInfo()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 279
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    .line 281
    .local v1, mOrder:Lcom/didi/ddrive/model/DDriveOrder;
    new-instance v2, Lcom/didi/ddrive/net/http/request/DriverBriefInfoRequest;

    invoke-direct {v2}, Lcom/didi/ddrive/net/http/request/DriverBriefInfoRequest;-><init>()V

    .line 282
    .local v2, request:Lcom/didi/ddrive/net/http/request/DriverBriefInfoRequest;
    iget-object v3, v1, Lcom/didi/ddrive/model/DDriveOrder;->driver:Lcom/didi/ddrive/model/Driver;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/didi/ddrive/model/DDriveOrder;->driver:Lcom/didi/ddrive/model/Driver;

    iget-wide v3, v3, Lcom/didi/ddrive/model/Driver;->did:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 283
    iget-object v3, v1, Lcom/didi/ddrive/model/DDriveOrder;->driver:Lcom/didi/ddrive/model/Driver;

    iget-wide v3, v3, Lcom/didi/ddrive/model/Driver;->did:J

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/DriverBriefInfoRequest;->did:J

    .line 290
    :goto_0
    const-string v3, "morning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadDriverInfo did is ==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/didi/ddrive/net/http/request/DriverBriefInfoRequest;->did:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 292
    .local v0, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v3, "DriverComingManager"

    new-instance v4, Lcom/didi/ddrive/managers/DriverComingManager$6;

    invoke-direct {v4, p0, v1}, Lcom/didi/ddrive/managers/DriverComingManager$6;-><init>(Lcom/didi/ddrive/managers/DriverComingManager;Lcom/didi/ddrive/model/DDriveOrder;)V

    const-class v5, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 313
    .end local v0           #httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    :cond_0
    return-void

    .line 284
    :cond_1
    iget-wide v3, v1, Lcom/didi/ddrive/model/DDriveOrder;->did:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 285
    iget-wide v3, v1, Lcom/didi/ddrive/model/DDriveOrder;->did:J

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/DriverBriefInfoRequest;->did:J

    goto :goto_0
.end method

.method public performGetReason(ILandroid/content/Context;)V
    .locals 5
    .parameter "scene"
    .parameter "context"

    .prologue
    .line 251
    const v2, 0x7f0b0304

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p2, v2, v3, v4}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 254
    new-instance v0, Lcom/didi/ddrive/net/http/request/CancelReasonRequest;

    invoke-direct {v0}, Lcom/didi/ddrive/net/http/request/CancelReasonRequest;-><init>()V

    .line 255
    .local v0, crr:Lcom/didi/ddrive/net/http/request/CancelReasonRequest;
    iput p1, v0, Lcom/didi/ddrive/net/http/request/CancelReasonRequest;->scence:I

    .line 256
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v1

    .line 257
    .local v1, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v2, "DriverComingManager"

    new-instance v3, Lcom/didi/ddrive/managers/DriverComingManager$5;

    invoke-direct {v3, p0}, Lcom/didi/ddrive/managers/DriverComingManager$5;-><init>(Lcom/didi/ddrive/managers/DriverComingManager;)V

    const-class v4, Lcom/didi/ddrive/net/http/response/CancelReason;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 276
    return-void
.end method

.method public queryDriverPosition()V
    .locals 6

    .prologue
    .line 89
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    .line 91
    .local v1, mOrder:Lcom/didi/ddrive/model/DDriveOrder;
    new-instance v2, Lcom/didi/ddrive/net/http/request/DriverLocationRequest;

    invoke-direct {v2}, Lcom/didi/ddrive/net/http/request/DriverLocationRequest;-><init>()V

    .line 92
    .local v2, request:Lcom/didi/ddrive/net/http/request/DriverLocationRequest;
    iget-wide v3, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/DriverLocationRequest;->oid:J

    .line 93
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-wide v3, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/DriverLocationRequest;->pid:J

    .line 94
    iget-object v3, p0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    if-eqz v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v3, v3, Lcom/didi/ddrive/net/http/response/Position;->time:J

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/DriverLocationRequest;->time:J

    .line 97
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 98
    .local v0, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v3, "DriverComingManager"

    new-instance v4, Lcom/didi/ddrive/managers/DriverComingManager$1;

    invoke-direct {v4, p0}, Lcom/didi/ddrive/managers/DriverComingManager$1;-><init>(Lcom/didi/ddrive/managers/DriverComingManager;)V

    const-class v5, Lcom/didi/ddrive/net/http/response/DriverPositionResponse;

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 124
    return-void
.end method

.method public queryDriverWaitingFee()V
    .locals 6

    .prologue
    .line 189
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    .line 191
    .local v1, mOrder:Lcom/didi/ddrive/model/DDriveOrder;
    new-instance v2, Lcom/didi/ddrive/net/http/request/DriverWaitingFeeRequest;

    invoke-direct {v2}, Lcom/didi/ddrive/net/http/request/DriverWaitingFeeRequest;-><init>()V

    .line 192
    .local v2, request:Lcom/didi/ddrive/net/http/request/DriverWaitingFeeRequest;
    iget-wide v3, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/DriverWaitingFeeRequest;->oid:J

    .line 193
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-wide v3, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/DriverWaitingFeeRequest;->pid:J

    .line 194
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 195
    .local v0, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v3, "DriverComingManager"

    new-instance v4, Lcom/didi/ddrive/managers/DriverComingManager$3;

    invoke-direct {v4, p0}, Lcom/didi/ddrive/managers/DriverComingManager$3;-><init>(Lcom/didi/ddrive/managers/DriverComingManager;)V

    const-class v5, Lcom/didi/ddrive/net/http/response/DriverWaitingFeeResponse;

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 218
    return-void
.end method

.method public queryDrivingFee()V
    .locals 6

    .prologue
    .line 221
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    .line 223
    .local v1, mOrder:Lcom/didi/ddrive/model/DDriveOrder;
    new-instance v2, Lcom/didi/ddrive/net/http/request/DrivingFeeRequest;

    invoke-direct {v2}, Lcom/didi/ddrive/net/http/request/DrivingFeeRequest;-><init>()V

    .line 224
    .local v2, request:Lcom/didi/ddrive/net/http/request/DrivingFeeRequest;
    iget-wide v3, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/DrivingFeeRequest;->oid:J

    .line 225
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-wide v3, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/DrivingFeeRequest;->did:J

    .line 226
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 227
    .local v0, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v3, "DriverComingManager"

    new-instance v4, Lcom/didi/ddrive/managers/DriverComingManager$4;

    invoke-direct {v4, p0}, Lcom/didi/ddrive/managers/DriverComingManager$4;-><init>(Lcom/didi/ddrive/managers/DriverComingManager;)V

    const-class v5, Lcom/didi/ddrive/net/http/response/DrivingFeeResponse;

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 243
    return-void
.end method

.method public queryOrderDetailForOrderCanceledByDriver()V
    .locals 6

    .prologue
    .line 127
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    .line 129
    .local v1, mOrder:Lcom/didi/ddrive/model/DDriveOrder;
    new-instance v2, Lcom/didi/ddrive/net/http/request/OrderDetailRequest;

    invoke-direct {v2}, Lcom/didi/ddrive/net/http/request/OrderDetailRequest;-><init>()V

    .line 130
    .local v2, request:Lcom/didi/ddrive/net/http/request/OrderDetailRequest;
    iget-wide v3, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/OrderDetailRequest;->oid:J

    .line 131
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 132
    .local v0, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v3, "DriverComingManager"

    new-instance v4, Lcom/didi/ddrive/managers/DriverComingManager$2;

    invoke-direct {v4, p0, v1}, Lcom/didi/ddrive/managers/DriverComingManager$2;-><init>(Lcom/didi/ddrive/managers/DriverComingManager;Lcom/didi/ddrive/model/DDriveOrder;)V

    const-class v5, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 186
    return-void
.end method

.method public removeOverlays()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public showNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "title"

    .prologue
    .line 316
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-static {p1}, Lcom/didi/common/util/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/didi/common/util/Utils;->isAppTopFront(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const v0, 0x7f0b01e2

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public updateDriverOverlay()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public updatePassengerOverlay(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter "latlng"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/didi/ddrive/managers/DriverComingManager;->pCurrent:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 83
    return-void
.end method
