.class public Lcom/didi/frame/recovery/RecoveryTaxi;
.super Lcom/didi/frame/recovery/RecoveryBusiness;
.source "RecoveryTaxi.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter "business"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/didi/frame/recovery/RecoveryBusiness;-><init>(Lcom/didi/frame/business/Business;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiOrder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/didi/frame/recovery/RecoveryTaxi;->isOrderTimeOut(Lcom/didi/taxi/model/TaxiOrder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiHistoryOrder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/didi/frame/recovery/RecoveryTaxi;->isSetUserDepart(Lcom/didi/taxi/model/TaxiHistoryOrder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/didi/frame/recovery/RecoveryTaxi;->redirectTaxiWaitForResponse(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiOrder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/recovery/RecoveryTaxi;->redirectTaxiWaitForArrival(Lcom/didi/taxi/model/TaxiOrder;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/frame/recovery/RecoveryTaxi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/didi/frame/recovery/RecoveryTaxi;->redirectTaxiEndOrder()V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/frame/recovery/RecoveryTaxi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/didi/frame/recovery/RecoveryTaxi;->clearMap()V

    return-void
.end method

.method private clearMap()V
    .locals 0

    .prologue
    .line 231
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToArrivelMapView()V

    .line 232
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hide()V

    .line 233
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 234
    return-void
.end method

.method private isOrderTimeOut(Lcom/didi/taxi/model/TaxiOrder;)Z
    .locals 7
    .parameter "taxiOrder"

    .prologue
    .line 256
    const/4 v2, 0x0

    .line 257
    .local v2, isTimeOut:Z
    const/4 v4, 0x0

    .line 258
    .local v4, maxCountTime:I
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getCreateTime()J

    move-result-wide v0

    .line 259
    .local v0, createTime:J
    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v5, v6, :cond_2

    .line 261
    const/16 v4, 0x258

    .line 267
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    long-to-int v5, v5

    div-int/lit16 v3, v5, 0x3e8

    .line 268
    .local v3, mRecoveryTime:I
    if-le v3, v4, :cond_1

    .line 269
    const/4 v2, 0x1

    .line 271
    :cond_1
    return v2

    .line 263
    .end local v3           #mRecoveryTime:I
    :cond_2
    const/16 v4, 0x12c

    goto :goto_0
.end method

.method private isSetUserDepart(Lcom/didi/taxi/model/TaxiHistoryOrder;)Z
    .locals 2
    .parameter "taxiHistoryOrder"

    .prologue
    .line 243
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->lng:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isCoordinateEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->lat:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isCoordinateEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->dlat:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isCoordinateEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->dlng:Ljava/lang/String;

    invoke-static {v0}, Lutil/TextUtil;->isCoordinateEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->lat:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->dlat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->lng:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->dlng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recoveryByOid(Ljava/lang/String;)V
    .locals 4
    .parameter "oid"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/frame/recovery/RecoveryTaxi;->mContext:Landroid/content/Context;

    const v1, 0x7f0b035b

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 56
    new-instance v0, Lcom/didi/frame/recovery/RecoveryTaxi$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/recovery/RecoveryTaxi$1;-><init>(Lcom/didi/frame/recovery/RecoveryTaxi;)V

    invoke-static {p1, v0}, Lcom/didi/taxi/net/TaxiRequest;->getHistroyOrderDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 188
    return-void
.end method

.method private redirectTaxiEndOrder()V
    .locals 3

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/didi/frame/recovery/RecoveryTaxi;->clearMap()V

    .line 225
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 226
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryTaxi;->mContext:Landroid/content/Context;

    const-class v2, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/didi/frame/recovery/RecoveryTaxi;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method private redirectTaxiWaitForArrival(Lcom/didi/taxi/model/TaxiOrder;I)V
    .locals 3
    .parameter "taxiOrder"
    .parameter "serviceType"

    .prologue
    .line 211
    new-instance v0, Lcom/didi/frame/recovery/RecoveryTaxi$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/didi/frame/recovery/RecoveryTaxi$3;-><init>(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiOrder;I)V

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    return-void
.end method

.method private redirectTaxiWaitForResponse(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 3
    .parameter "taxiOrder"

    .prologue
    .line 191
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    .line 192
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->isBooking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 194
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCarDriverMarkerList()V

    .line 197
    :cond_0
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->setSent()V

    .line 198
    new-instance v0, Lcom/didi/frame/recovery/RecoveryTaxi$2;

    invoke-direct {v0, p0, p1}, Lcom/didi/frame/recovery/RecoveryTaxi$2;-><init>(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiOrder;)V

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    return-void
.end method


# virtual methods
.method public recovery(Landroid/content/Context;Lcom/didi/common/model/RecoveryConfig;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryTaxi;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p2, Lcom/didi/common/model/RecoveryConfig;->oid:Ljava/lang/String;

    .line 51
    .local v0, oid:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/didi/frame/recovery/RecoveryTaxi;->recoveryByOid(Ljava/lang/String;)V

    .line 52
    return-void
.end method
