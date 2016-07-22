.class public Lcom/didi/ddrive/managers/DriveConfirmManager;
.super Ljava/lang/Object;
.source "DriveConfirmManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mgr:Lcom/didi/ddrive/managers/DriveConfirmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/didi/ddrive/managers/DriveConfirmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/ddrive/managers/DriveConfirmManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/didi/ddrive/managers/DriveConfirmManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/didi/ddrive/managers/DriveConfirmManager;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/didi/ddrive/managers/DriveConfirmManager;->mgr:Lcom/didi/ddrive/managers/DriveConfirmManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/didi/ddrive/managers/DriveConfirmManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/DriveConfirmManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/managers/DriveConfirmManager;->mgr:Lcom/didi/ddrive/managers/DriveConfirmManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/didi/ddrive/managers/DriveConfirmManager;->mgr:Lcom/didi/ddrive/managers/DriveConfirmManager;

    return-object v0
.end method


# virtual methods
.method public getEstimateFare()V
    .locals 7

    .prologue
    .line 52
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v3

    .line 57
    .local v3, startAddress:Lcom/didi/common/model/Address;
    :goto_0
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 58
    .local v0, endAddress:Lcom/didi/common/model/Address;
    if-eqz v3, :cond_0

    if-nez v0, :cond_2

    .line 91
    :cond_0
    :goto_1
    return-void

    .line 55
    .end local v0           #endAddress:Lcom/didi/common/model/Address;
    .end local v3           #startAddress:Lcom/didi/common/model/Address;
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v3

    .restart local v3       #startAddress:Lcom/didi/common/model/Address;
    goto :goto_0

    .line 62
    .restart local v0       #endAddress:Lcom/didi/common/model/Address;
    :cond_2
    new-instance v2, Lcom/didi/ddrive/net/http/request/DrivePrePriceRequest;

    invoke-direct {v2}, Lcom/didi/ddrive/net/http/request/DrivePrePriceRequest;-><init>()V

    .line 63
    .local v2, request:Lcom/didi/ddrive/net/http/request/DrivePrePriceRequest;
    invoke-virtual {v3}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/didi/ddrive/net/http/request/DrivePrePriceRequest;->slat:D

    .line 64
    invoke-virtual {v3}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/didi/ddrive/net/http/request/DrivePrePriceRequest;->slng:D

    .line 65
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/didi/ddrive/net/http/request/DrivePrePriceRequest;->elat:D

    .line 66
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/didi/ddrive/net/http/request/DrivePrePriceRequest;->elng:D

    .line 68
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/ddrive/managers/DriveAccountManager;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/ddrive/managers/DriveAccountManager;->getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v4

    iget-wide v4, v4, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v4, v2, Lcom/didi/ddrive/net/http/request/DrivePrePriceRequest;->pid:J

    .line 72
    :cond_3
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v1

    .line 73
    .local v1, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    sget-object v4, Lcom/didi/ddrive/managers/DriveConfirmManager;->TAG:Ljava/lang/String;

    new-instance v5, Lcom/didi/ddrive/managers/DriveConfirmManager$1;

    invoke-direct {v5, p0}, Lcom/didi/ddrive/managers/DriveConfirmManager$1;-><init>(Lcom/didi/ddrive/managers/DriveConfirmManager;)V

    const-class v6, Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    invoke-virtual {v1, v4, v2, v5, v6}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    goto :goto_1
.end method

.method public queryOrderDetail(J)V
    .locals 5
    .parameter "oid"

    .prologue
    .line 190
    new-instance v1, Lcom/didi/ddrive/net/http/request/OrderDetailRequest;

    invoke-direct {v1}, Lcom/didi/ddrive/net/http/request/OrderDetailRequest;-><init>()V

    .line 191
    .local v1, request:Lcom/didi/ddrive/net/http/request/OrderDetailRequest;
    iput-wide p1, v1, Lcom/didi/ddrive/net/http/request/OrderDetailRequest;->oid:J

    .line 192
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 193
    .local v0, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    sget-object v2, Lcom/didi/ddrive/managers/DriveConfirmManager;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/didi/ddrive/managers/DriveConfirmManager$4;

    invoke-direct {v3, p0}, Lcom/didi/ddrive/managers/DriveConfirmManager$4;-><init>(Lcom/didi/ddrive/managers/DriveConfirmManager;)V

    const-class v4, Lcom/didi/ddrive/net/http/response/OrderDetailInfo;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 212
    return-void
.end method

.method public queryUnpayedOrder(Ljava/lang/String;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 169
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/DriveAccountManager;->getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v1

    .line 170
    .local v1, user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    if-nez v1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Lcom/didi/ddrive/net/http/request/UnpayedOrdersRequest;

    invoke-direct {v0}, Lcom/didi/ddrive/net/http/request/UnpayedOrdersRequest;-><init>()V

    .line 174
    .local v0, request:Lcom/didi/ddrive/net/http/request/UnpayedOrdersRequest;
    iget-wide v2, v1, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v2, v0, Lcom/didi/ddrive/net/http/request/UnpayedOrdersRequest;->pid:J

    .line 175
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v2

    sget-object v3, Lcom/didi/ddrive/managers/DriveConfirmManager;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/didi/ddrive/managers/DriveConfirmManager$3;

    invoke-direct {v4, p0, p1}, Lcom/didi/ddrive/managers/DriveConfirmManager$3;-><init>(Lcom/didi/ddrive/managers/DriveConfirmManager;Ljava/lang/String;)V

    const-class v5, Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse;

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public sendOrder()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 98
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    .line 100
    .local v0, driveP:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    sget-object v4, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v4}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/model/DDriveOrder;

    .line 101
    .local v2, order:Lcom/didi/ddrive/model/DDriveOrder;
    new-instance v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;

    invoke-direct {v3}, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;-><init>()V

    .line 102
    .local v3, request:Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;
    const/4 v4, 0x0

    iput v4, v2, Lcom/didi/ddrive/model/DDriveOrder;->canceller:I

    .line 103
    sget-object v4, Lcom/didi/ddrive/model/PayState;->NONE:Lcom/didi/ddrive/model/PayState;

    iput-object v4, v2, Lcom/didi/ddrive/model/DDriveOrder;->payState:Lcom/didi/ddrive/model/PayState;

    .line 104
    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getEndLatDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->endLat:D

    .line 105
    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getEndLngDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->endLng:D

    .line 106
    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getEndAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->endPoiAddress:Ljava/lang/String;

    .line 107
    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getEndDisplayName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->endPoiName:Ljava/lang/String;

    .line 109
    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getUserInfo()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v4

    iget-wide v4, v4, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->pid:J

    .line 110
    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getStartLatDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->startLat:D

    .line 111
    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getStartLngDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->startLng:D

    .line 112
    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getStartAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->startPoiAddress:Ljava/lang/String;

    .line 113
    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getStartDisplayName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->startPoiName:Ljava/lang/String;

    .line 116
    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getStartLatDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->publishLat:D

    .line 117
    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getStartLngDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->publishLng:D

    .line 119
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 120
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getFSource()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->modify_start_source:Ljava/lang/String;

    .line 126
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDefaultFSource()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->default_start_source:Ljava/lang/String;

    .line 129
    iget-object v4, v2, Lcom/didi/ddrive/model/DDriveOrder;->predictPrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    if-eqz v4, :cond_3

    .line 130
    iget-object v4, v2, Lcom/didi/ddrive/model/DDriveOrder;->predictPrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    iget-wide v4, v4, Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;->vid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 131
    iput-wide v8, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->voucherId:J

    .line 139
    :goto_1
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v1

    .line 140
    .local v1, httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    sget-object v4, Lcom/didi/ddrive/managers/DriveConfirmManager;->TAG:Ljava/lang/String;

    new-instance v5, Lcom/didi/ddrive/managers/DriveConfirmManager$2;

    invoke-direct {v5, p0}, Lcom/didi/ddrive/managers/DriveConfirmManager$2;-><init>(Lcom/didi/ddrive/managers/DriveConfirmManager;)V

    const-class v6, Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;

    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 166
    return-void

    .line 123
    .end local v1           #httpManager:Lcom/didi/ddrive/net/http/KDHttpManager;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/model/Address;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->modify_start_source:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_2
    iget-object v4, v2, Lcom/didi/ddrive/model/DDriveOrder;->predictPrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    iget-wide v4, v4, Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;->vid:J

    iput-wide v4, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->voucherId:J

    goto :goto_1

    .line 136
    :cond_3
    iput-wide v8, v3, Lcom/didi/ddrive/net/http/request/DriveSendOrderRequest;->voucherId:J

    goto :goto_1
.end method
