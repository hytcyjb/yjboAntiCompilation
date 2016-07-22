.class public Lcom/didi/car/net/CarRequest;
.super Ljava/lang/Object;
.source "CarRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/net/CarRequest$1;
    }
.end annotation


# static fields
.field public static BASE_HOST:Ljava/lang/String; = null

.field public static BASE_PAY_URL:Ljava/lang/String; = null

.field public static BASE_URL:Ljava/lang/String; = null

.field public static CAR_INVOICE_HISTORY_URL:Ljava/lang/String; = null

.field public static CAR_INVOICE_URL:Ljava/lang/String; = null

.field public static CAR_VALUATION_RULE_WEB_URL:Ljava/lang/String; = null

.field public static CAR_WXAGENT_AGREEMENT_URL:Ljava/lang/String; = null

.field public static final MAP_TYPE:Ljava/lang/String; = "soso"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "api.udache.com"

    sput-object v0, Lcom/didi/car/net/CarRequest;->BASE_HOST:Ljava/lang/String;

    .line 75
    const-string v0, "http://api.udache.com/gulfstream/api/v1/"

    sput-object v0, Lcom/didi/car/net/CarRequest;->BASE_PAY_URL:Ljava/lang/String;

    .line 76
    const-string v0, "http://api.udache.com/gulfstream/api/v1/passenger/"

    sput-object v0, Lcom/didi/car/net/CarRequest;->BASE_URL:Ljava/lang/String;

    .line 82
    const-string v0, "http://static.udache.com/gulfstream/webapp/pages/price-rule.html"

    sput-object v0, Lcom/didi/car/net/CarRequest;->CAR_VALUATION_RULE_WEB_URL:Ljava/lang/String;

    .line 83
    const-string v0, "http://static.udache.com/gulfstream/webapp/pages/invoice-history.html?token=%s"

    sput-object v0, Lcom/didi/car/net/CarRequest;->CAR_INVOICE_HISTORY_URL:Ljava/lang/String;

    .line 84
    const-string v0, "http://api.udache.com/gulfstream/api/v1/webapp/pInvoice?token=%s"

    sput-object v0, Lcom/didi/car/net/CarRequest;->CAR_INVOICE_URL:Ljava/lang/String;

    .line 87
    const-string v0, "http://static.udache.com/gulfstream/webapp/pages/weixin-agreement.html"

    sput-object v0, Lcom/didi/car/net/CarRequest;->CAR_WXAGENT_AGREEMENT_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    return-void
.end method

.method public static cancelOrder(Lcom/didi/common/net/ResponseListener;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, lng:Ljava/lang/String;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/car/model/CarOrder;

    .line 224
    .local v2, order:Lcom/didi/car/model/CarOrder;
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v3

    .line 225
    .local v3, params:Lcom/didi/common/net/HttpParams;
    const-string v5, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    const-string v5, "lng"

    invoke-static {v3, v5, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    const-string v5, "lat"

    invoke-static {v3, v5, v0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    const-string v5, "oid"

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    const-string v5, "pCancelOrder"

    invoke-static {v5, v3}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, url:Ljava/lang/String;
    new-instance v5, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v5}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v6, Lcom/didi/common/model/BaseObject;

    invoke-direct {v6}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v5, v4, v3, p0, v6}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 231
    return-void
.end method

.method public static cancelTrip(Ljava/lang/String;ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 6
    .parameter "oid"
    .parameter "type"
    .parameter "content"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarCancelTrip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 582
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarCancelTrip;>;"
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, lng:Ljava/lang/String;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v2

    .line 585
    .local v2, params:Lcom/didi/common/net/HttpParams;
    const-string v4, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    const-string v4, "lng"

    invoke-static {v2, v4, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    const-string v4, "lat"

    invoke-static {v2, v4, v0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 588
    const-string v4, "oid"

    invoke-static {v2, v4, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    const-string v4, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    const-string v4, "content"

    invoke-static {v2, v4, p2}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    const-string v4, "pCancelTrip"

    invoke-static {v4, v2}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, url:Ljava/lang/String;
    new-instance v4, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v4}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v5, Lcom/didi/car/model/CarCancelTrip;

    invoke-direct {v5}, Lcom/didi/car/model/CarCancelTrip;-><init>()V

    invoke-virtual {v4, v3, v2, p3, v5}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 594
    return-void
.end method

.method public static cancelWxAgentBind(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarWxAgentRelease;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 835
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarWxAgentRelease;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 836
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 837
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 838
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 839
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 840
    const-string v2, "pWxAgentRelease"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarWxAgentRelease;

    invoke-direct {v3}, Lcom/didi/car/model/CarWxAgentRelease;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 842
    return-void
.end method

.method public static changeTip(Lcom/didi/common/net/ResponseListener;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, lng:Ljava/lang/String;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/car/model/CarOrder;

    .line 371
    .local v2, order:Lcom/didi/car/model/CarOrder;
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v3

    .line 372
    .local v3, params:Lcom/didi/common/net/HttpParams;
    const-string v5, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    const-string v5, "lng"

    invoke-static {v3, v5, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    const-string v5, "lat"

    invoke-static {v3, v5, v0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    const-string v5, "oid"

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    const-string v5, "tip"

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->getTipParam()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    iget v5, v2, Lcom/didi/car/model/CarOrder;->waitTime:I

    if-lez v5, :cond_0

    .line 378
    const-string v5, "extra_waittime"

    iget v6, v2, Lcom/didi/car/model/CarOrder;->waitTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    :cond_0
    const-string v5, "extraInfo"

    iget-object v6, v2, Lcom/didi/car/model/CarOrder;->remark:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    const-string v5, "pUpdateOrderInfo"

    invoke-static {v5, v3}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v4

    .line 383
    .local v4, url:Ljava/lang/String;
    new-instance v5, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v5}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v6, Lcom/didi/common/model/BaseObject;

    invoke-direct {v6}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v5, v4, v3, p0, v6}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 384
    return-void
.end method

.method public static communicateService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "oid"
    .parameter "did"

    .prologue
    .line 926
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 927
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 928
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 929
    const-string v2, "did"

    invoke-static {v0, v2, p1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 930
    const-string v2, "pLogCollection/callServicePhone"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 931
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    const/4 v3, 0x0

    new-instance v4, Lcom/didi/common/model/BaseObject;

    invoke-direct {v4}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 932
    return-void
.end method

.method public static confirmWait(Ljava/lang/String;ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "type"
    .parameter "consultTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 273
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    const-string v2, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    const-string v2, "waitTime"

    invoke-static {v0, v2, p2}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    const-string v2, "pConfirmWait"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p3, v3}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 280
    return-void
.end method

.method public static countDownEnd(Lcom/didi/common/net/ResponseListener;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    const/4 v3, 0x1

    .line 1098
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 1099
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v4, "oid"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1100
    const-string v4, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1102
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v4, v5, :cond_0

    const/4 v1, 0x0

    .line 1103
    .local v1, type:I
    :goto_0
    const-string v4, "flier"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1104
    const-string v4, "mode"

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/Utils;->isAppFront(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1106
    const-string v3, "pCountDownEnd"

    invoke-static {v3, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v2

    .line 1107
    .local v2, url:Ljava/lang/String;
    new-instance v3, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v3}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v4, Lcom/didi/common/model/BaseObject;

    invoke-direct {v4}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v3, v2, v0, p0, v4}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 1108
    return-void

    .end local v1           #type:I
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 1102
    goto :goto_0

    .line 1104
    .restart local v1       #type:I
    :cond_1
    const/4 v3, 0x2

    goto :goto_1
.end method

.method public static createOrder(Lcom/didi/frame/business/Business;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 16
    .parameter "bus"
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/Business;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarOrder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarOrder;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v7

    .line 103
    .local v7, params:Lcom/didi/common/net/HttpParams;
    invoke-static/range {p0 .. p0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v6

    check-cast v6, Lcom/didi/car/model/CarOrder;

    .line 104
    .local v6, order:Lcom/didi/car/model/CarOrder;
    const-string v12, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v12, "type"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getOrderTypeInt()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string v12, "input"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getInputTypeInt()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    const-string v12, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v12, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v12, "time"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getDepartureTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string v12, "apptime"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 113
    const-string v12, "flat"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v13

    iget-object v13, v13, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v12, "flng"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v13

    iget-object v13, v13, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :cond_0
    const-string v12, "area"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getArea()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    const-string v12, "openid"

    sget-object v13, Lcom/didi/frame/WebToActivity;->WX_PAY_OPEN_ID:Ljava/lang/String;

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-string v12, "__x_voice"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getVoiceFile()Ljava/io/File;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/io/File;)V

    .line 120
    const-string v12, "voicetime"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getVoiceTime()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v12, "fromName"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getStartDisplayName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v12, "toName"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getEndDisplayName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v12, "fromAddress"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getStartAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string v12, "toAddress"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getEndAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 127
    const-string v12, "tlat"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v13

    iget-object v13, v13, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v12, "tlng"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v13

    iget-object v13, v13, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    :cond_1
    const-string v12, "tip"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getTipParam()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v12, "nettype"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentApnType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v12, "extraInfo"

    iget-object v13, v6, Lcom/didi/car/model/CarOrder;->remark:Ljava/lang/String;

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v12, "is_protect"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getVirtualStatus()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v12, "is_multicar"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v12, "activity_id"

    const v13, 0x3131f

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v12, "order_source_car"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getSource()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v12

    iget v12, v12, Lcom/didi/common/model/CommonAttributes;->is_html:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 139
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 140
    .local v1, additional:Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .local v2, data:Lorg/json/JSONObject;
    :try_start_0
    const-string v12, "project_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v13

    invoke-virtual {v13}, Lcom/didi/common/config/Preferences;->getActivityId()I

    move-result v13

    invoke-virtual {v1, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    const-string v12, "traffic_num"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v13

    iget-object v13, v13, Lcom/didi/common/model/CommonAttributes;->traffic_num:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v12, "traffic_type"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v13

    iget v13, v13, Lcom/didi/common/model/CommonAttributes;->traffic_type:I

    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    const-string v12, "data"

    invoke-virtual {v1, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    const-string v12, "additional_info"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    .end local v1           #additional:Lorg/json/JSONObject;
    .end local v2           #data:Lorg/json/JSONObject;
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 153
    const-string v12, "cancelOid"

    move-object/from16 v0, p1

    invoke-static {v7, v12, v0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    :cond_3
    iget-object v12, v6, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    if-eqz v12, :cond_5

    .line 156
    iget-object v12, v6, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 157
    .local v9, size:I
    if-lez v9, :cond_5

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v8, sBuild:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, index:I
    :goto_1
    if-ge v5, v9, :cond_4

    .line 160
    iget-object v12, v6, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/didi/car/model/CarModel;

    iget v12, v12, Lcom/didi/car/model/CarModel;->cLevel:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 146
    .end local v5           #index:I
    .end local v8           #sBuild:Ljava/lang/StringBuilder;
    .end local v9           #size:I
    .restart local v1       #additional:Lorg/json/JSONObject;
    .restart local v2       #data:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 147
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v1           #additional:Lorg/json/JSONObject;
    .end local v2           #data:Lorg/json/JSONObject;
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v5       #index:I
    .restart local v8       #sBuild:Ljava/lang/StringBuilder;
    .restart local v9       #size:I
    :cond_4
    const-string v12, "require_level"

    const/4 v13, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    .end local v5           #index:I
    .end local v8           #sBuild:Ljava/lang/StringBuilder;
    .end local v9           #size:I
    :cond_5
    const-string v12, "default_voucher"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 171
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v12

    sget-object v13, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v12, v13, :cond_9

    .line 172
    const-string v12, "fsource"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getFSource()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AddressSourceF="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v13

    invoke-virtual {v13}, Lcom/didi/common/model/Address;->getType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 178
    :cond_6
    const-string v12, "default_fsource"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDefaultFSource()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getInputTypeInt()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 180
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 181
    const-string v12, "tsource"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v13

    invoke-virtual {v13}, Lcom/didi/common/model/Address;->getType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AddressSourceT="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v13

    invoke-virtual {v13}, Lcom/didi/common/model/Address;->getType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 186
    :cond_7
    const-string v12, "versionid"

    const-string v13, "37000"

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    sget-object v12, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_a

    const/4 v10, 0x0

    .line 188
    .local v10, type:I
    :goto_3
    const-string v12, "flier"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    invoke-static {}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getInstance()Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getOrderSource()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, flag:Ljava/lang/String;
    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 191
    const-string v12, "order_source"

    invoke-virtual {v7, v12, v4}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_8
    const-string v12, "pNewOrder"

    invoke-static {v12, v7}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, url:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pNewOrder : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 196
    new-instance v12, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v12}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v13, Lcom/didi/car/model/CarOrder;

    invoke-direct {v13}, Lcom/didi/car/model/CarOrder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v11, v7, v0, v13}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 199
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/didi/common/config/Preferences;->setSwitcherPannel(I)V

    .line 200
    return-void

    .line 174
    .end local v4           #flag:Ljava/lang/String;
    .end local v10           #type:I
    .end local v11           #url:Ljava/lang/String;
    :cond_9
    const-string v12, "fsource"

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v13

    invoke-virtual {v13}, Lcom/didi/common/model/Address;->getType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v7, v12, v13}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 187
    :cond_a
    const/4 v10, 0x1

    goto :goto_3
.end method

.method private static createPayUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "params"

    .prologue
    .line 1054
    const-string v0, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1055
    const-string v0, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1056
    const-string v0, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1057
    const-string v0, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1058
    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1059
    const-string v0, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1060
    const-string v0, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1061
    const-string v0, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1062
    const-string v0, "datatype"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1063
    const-string v0, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1064
    const-string v0, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1065
    const-string v0, "maptype"

    const-string v1, "soso"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1066
    const-string v0, "mac"

    sget-object v1, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1067
    const-string v0, "city_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1068
    const-string v0, "cpu"

    sget-object v1, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1069
    const-string v0, "android_id"

    sget-object v1, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1070
    const-string v0, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1071
    const-string v0, "uuid"

    sget-object v1, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/car/net/CarRequest;->BASE_PAY_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "params"

    .prologue
    .line 1029
    const-string v0, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1030
    const-string v0, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1031
    const-string v0, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1032
    const-string v0, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1033
    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1034
    const-string v0, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1035
    const-string v0, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1036
    const-string v0, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1037
    const-string v0, "datatype"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1038
    const-string v0, "userlat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1039
    const-string v0, "userlng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1040
    const-string v0, "cancel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/common/util/Constant;->SIGN_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1041
    const-string v0, "maptype"

    const-string v1, "soso"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1042
    const-string v0, "sig"

    invoke-static {p1}, Lcom/didi/common/util/Signature;->generateSignature(Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1043
    const-string v0, "pixels"

    sget-object v1, Lcom/didi/common/util/Constant;->SCREEN_PIXELS:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1044
    const-string v0, "mac"

    sget-object v1, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1045
    const-string v0, "cpu"

    sget-object v1, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1046
    const-string v0, "city_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1047
    const-string v0, "android_id"

    sget-object v1, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1048
    const-string v0, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1049
    const-string v0, "uuid"

    sget-object v1, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/car/net/CarRequest;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doComment(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "level"
    .parameter "type"
    .parameter "typeText"
    .parameter "content"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p5, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 409
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 410
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    const-string v2, "level"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    const-string v2, "type"

    invoke-static {v0, v2, p2}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    const-string v2, "typeTxt"

    invoke-static {v0, v2, p3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    const-string v2, "content"

    invoke-static {v0, v2, p4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    const-string v2, "pComment"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p5, v3}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 417
    return-void
.end method

.method public static doComplaint(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "content"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 428
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    const-string v2, "content"

    invoke-static {v0, v2, p1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    const-string v2, "type"

    const-string v3, "1"

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 432
    const-string v2, "pComplaint"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 434
    return-void
.end method

.method public static doFeeDissent(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 389
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    const-string v2, "pFeeDissent"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 393
    return-void
.end method

.method public static doGenPrepayInfo(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarChangeEnterpriseDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 706
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarChangeEnterpriseDetail;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 707
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 708
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 709
    const-string v2, "business_pay_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 710
    const-string v2, "passenger/pPrePayInfo"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createPayUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarChangeEnterpriseDetail;

    invoke-direct {v3}, Lcom/didi/car/model/CarChangeEnterpriseDetail;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 712
    return-void
.end method

.method public static doGetDriverInfo(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V
    .locals 5
    .parameter "did"
    .parameter "page"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarDriverPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarDriverPage;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 486
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    const-string v2, "did"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    const-string v2, "page"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    const-string v2, "pGetDriverInfo"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarDriverPage;

    invoke-direct {v3}, Lcom/didi/car/model/CarDriverPage;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 491
    return-void
.end method

.method public static doGetGenPayParams(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "couponid"
    .parameter "type"
    .parameter "checked"
    .parameter "phone"
    .parameter "returnUrl"
    .parameter "attach"
    .parameter "payType"
    .parameter "payMentMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarPayParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 682
    .local p9, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarPayParams;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 683
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 685
    if-eqz p1, :cond_0

    .line 686
    const-string v2, "coupon_id"

    invoke-static {v0, v2, p1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    :cond_0
    const-string v2, "business_pay_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    const-string v2, "versionid"

    const-string v3, "37000"

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    const-string v2, "sign_agin"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 691
    const-string v2, "wxtype"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 692
    const-string v2, "payment_mode"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 693
    const-string v2, "passenger/pPrePay"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createPayUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarPayParams;

    invoke-direct {v3}, Lcom/didi/car/model/CarPayParams;-><init>()V

    invoke-virtual {v2, v1, v0, p9, v3}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 696
    return-void
.end method

.method public static doPayStop(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "billId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 731
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 732
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 733
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 734
    const-string v2, "didibillid"

    invoke-static {v0, v2, p1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 735
    const-string v2, "passenger/pStopPay"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createPayUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 736
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 737
    return-void
.end method

.method public static doWxAgentBind(ILcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarPayParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 819
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarPayParams;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 820
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 821
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 822
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 823
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 824
    const-string v2, "bind_type"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 825
    const-string v2, "pWxAgentBind"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 826
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarPayParams;

    invoke-direct {v3}, Lcom/didi/car/model/CarPayParams;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 827
    return-void
.end method

.method public static getCarBaseUrlParamString(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "params"

    .prologue
    .line 991
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 992
    .local v0, commonParams:Lcom/didi/common/net/HttpParams;
    const-string v1, "vcode"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 993
    const-string v1, "dviceid"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 994
    const-string v1, "appversion"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 995
    const-string v1, "model"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 996
    const-string v1, "os"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 997
    const-string v1, "imei"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 998
    const-string v1, "suuid"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 999
    const-string v1, "channel"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1000
    const-string v1, "datatype"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1001
    const-string v1, "sig"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1002
    const-string v1, "lat"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1003
    const-string v1, "lng"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1004
    const-string v1, "cancel"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1005
    const-string v1, "maptype"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1006
    const-string v1, "mac"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1007
    const-string v1, "cpu"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1008
    const-string v1, "android_id"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1009
    const-string v1, "city_id"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1010
    const-string v1, "uuid"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1011
    const-string v1, "networkType"

    invoke-static {p1, v0, v1}, Lcom/didi/car/net/CarRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getConfig(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "version"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarConfig;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 646
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 647
    const-string v2, "version"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    const-string v2, "pGetConfig"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarConfig;

    invoke-direct {v3}, Lcom/didi/car/model/CarConfig;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 650
    return-void
.end method

.method public static getDrivers(Lcom/didi/frame/business/Business;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 5
    .parameter "bus"
    .parameter "area"
    .parameter "lat1"
    .parameter "lng1"
    .parameter "lat2"
    .parameter "lng2"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/Business;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarDriverList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p6, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarDriverList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 349
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v3, "lat1"

    invoke-static {v0, v3, p2}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    const-string v3, "lng1"

    invoke-static {v0, v3, p3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    const-string v3, "0.0"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0.0"

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    const-string v3, "lat2"

    invoke-static {v0, v3, p4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    const-string v3, "lng2"

    invoke-static {v0, v3, p5}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    :cond_0
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v3, :cond_1

    const/4 v1, 0x0

    .line 356
    .local v1, type:I
    :goto_0
    const-string v3, "flier"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    const-string v3, "area"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    const-string v3, "pGetDrivers"

    invoke-static {v3, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, url:Ljava/lang/String;
    new-instance v3, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v3}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v4, Lcom/didi/car/model/CarDriverList;

    invoke-direct {v4}, Lcom/didi/car/model/CarDriverList;-><init>()V

    invoke-virtual {v3, v2, v0, p6, v4}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 361
    return-void

    .line 355
    .end local v1           #type:I
    .end local v2           #url:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getEstimatePrice(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V
    .locals 7
    .parameter "bus"
    .parameter "flng"
    .parameter "flat"
    .parameter "tlng"
    .parameter "tlat"
    .parameter "departureTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/Business;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarEstimatePrice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p7, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarEstimatePrice;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v2

    .line 498
    .local v2, params:Lcom/didi/common/net/HttpParams;
    const-string v5, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    const-string v5, "flng"

    invoke-static {v2, v5, p1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    const-string v5, "flat"

    invoke-static {v2, v5, p2}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 501
    const-string v5, "tlng"

    invoke-static {v2, v5, p3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
    const-string v5, "tlat"

    invoke-static {v2, v5, p4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    const-wide/16 v5, 0x0

    cmp-long v5, p5, v5

    if-lez v5, :cond_0

    .line 504
    const-string v5, "departure_time"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    :cond_0
    const-string v5, "area"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 507
    const-string v5, "is_protect"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getVirtualStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    const-string v5, "versionid"

    const-string v6, "37000"

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    invoke-static {p0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 511
    .local v1, order:Lcom/didi/car/model/CarOrder;
    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v5, v6, :cond_2

    const/4 v3, 0x1

    .line 512
    .local v3, type:I
    :goto_0
    const-string v5, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 513
    const-string v5, "fromName"

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getStartDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    const-string v5, "toName"

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getEndDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 515
    const-string v5, "fromAddress"

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getStartAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    const-string v5, "toAddress"

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getEndAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    const-string v5, "car_level_type"

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getCarTypeBySplit()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->isSmoothOpen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 520
    const-string v5, "car_smooth"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    const-string v5, "car_smooth_car_type"

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getCarLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    :cond_1
    sget-object v5, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v5, :cond_3

    const/4 v0, 0x0

    .line 525
    .local v0, flier:I
    :goto_1
    const-string v5, "flier"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 526
    const-string v5, "bubble_type"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    const-string v5, "pGetEstimatePrice"

    invoke-static {v5, v2}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, url:Ljava/lang/String;
    new-instance v5, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v5}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v6, Lcom/didi/car/model/CarEstimatePrice;

    invoke-direct {v6}, Lcom/didi/car/model/CarEstimatePrice;-><init>()V

    invoke-virtual {v5, v4, v2, p7, v6}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 530
    return-void

    .line 511
    .end local v0           #flier:I
    .end local v3           #type:I
    .end local v4           #url:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 524
    .restart local v3       #type:I
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static getEstimatePriceCoupon(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V
    .locals 7
    .parameter "bus"
    .parameter "flng"
    .parameter "flat"
    .parameter "tlng"
    .parameter "tlat"
    .parameter "departureTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/Business;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarExModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p7, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarExModel;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v2

    .line 536
    .local v2, params:Lcom/didi/common/net/HttpParams;
    const-string v5, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 537
    const-string v5, "flng"

    invoke-static {v2, v5, p1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    const-string v5, "flat"

    invoke-static {v2, v5, p2}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    const-string v5, "tlng"

    invoke-static {v2, v5, p3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    const-string v5, "tlat"

    invoke-static {v2, v5, p4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 541
    const/4 v1, 0x0

    .line 542
    .local v1, order:Lcom/didi/car/model/CarOrder;
    sget-object v5, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v5, :cond_3

    .line 543
    sget-object v5, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    .end local v1           #order:Lcom/didi/car/model/CarOrder;
    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 547
    .restart local v1       #order:Lcom/didi/car/model/CarOrder;
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, p5, v5

    if-lez v5, :cond_1

    .line 548
    const-string v5, "departure_time"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 550
    :cond_1
    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v5, v6, :cond_4

    const/4 v3, 0x1

    .line 551
    .local v3, type:I
    :goto_1
    const-string v5, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    const-string v5, "fromName"

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getStartDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    const-string v5, "toName"

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getEndDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    const-string v5, "fromAddress"

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getStartAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    const-string v5, "toAddress"

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getEndAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 556
    const-string v5, "area"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getOrderCityId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 558
    const-string v5, "car_level_type"

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getCarTypeBySplit()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->isSmoothOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 561
    const-string v5, "car_smooth"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    const-string v5, "car_smooth_car_type"

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getCarLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 565
    :cond_2
    sget-object v5, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v5, :cond_5

    const/4 v0, 0x0

    .line 566
    .local v0, flier:I
    :goto_2
    const-string v5, "flier"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 567
    const-string v5, "bubble_type"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    const-string v5, "versionid"

    const-string v6, "37000"

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    const-string v5, "pGetEstimatePriceCoupon"

    invoke-static {v5, v2}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, url:Ljava/lang/String;
    new-instance v5, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v5}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v6, Lcom/didi/car/model/CarExModel;

    invoke-direct {v6}, Lcom/didi/car/model/CarExModel;-><init>()V

    invoke-virtual {v5, v4, v2, p7, v6}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 571
    return-void

    .line 544
    .end local v0           #flier:I
    .end local v3           #type:I
    .end local v4           #url:Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne p0, v5, :cond_0

    .line 545
    sget-object v5, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    .end local v1           #order:Lcom/didi/car/model/CarOrder;
    check-cast v1, Lcom/didi/car/model/CarOrder;

    .restart local v1       #order:Lcom/didi/car/model/CarOrder;
    goto/16 :goto_0

    .line 550
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 565
    .restart local v3       #type:I
    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static getFeeDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarFeeDetailResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarFeeDetailResult;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 604
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 605
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 606
    const-string v2, "versionid"

    const-string v3, "37000"

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    const-string v2, "pGetFeeDetail"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarFeeDetailResult;

    invoke-direct {v3}, Lcom/didi/car/model/CarFeeDetailResult;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 609
    return-void
.end method

.method public static getFlierHistroyOrderDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/flier/model/FlierHistoryOrder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/flier/model/FlierHistoryOrder;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "historyUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tokenview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 635
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 636
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 637
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 638
    const-string v2, "versionid"

    const-string v3, "37000"

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 639
    const-string v2, "pGetOrderDetail"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/flier/model/FlierHistoryOrder;

    invoke-direct {v3}, Lcom/didi/flier/model/FlierHistoryOrder;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 641
    return-void
.end method

.method public static getGeoCoder(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 5
    .parameter "city"
    .parameter "address"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/map/modle/SoSoGeoCoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/map/modle/SoSoGeoCoder;>;"
    const-string v1, "http://apis.map.qq.com/ws/geocoder/v1/?"

    .line 717
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "city="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/common/util/Constant;->MAP_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, params:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 721
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    const/4 v3, 0x0

    new-instance v4, Lcom/didi/map/modle/SoSoGeoCoder;

    invoke-direct {v4}, Lcom/didi/map/modle/SoSoGeoCoder;-><init>()V

    invoke-virtual {v2, v1, v3, p2, v4}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 722
    return-void
.end method

.method public static getGuideFlag(Lcom/didi/common/net/ResponseListener;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarGuideFlag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarGuideFlag;>;"
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, lng:Ljava/lang/String;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v2

    .line 657
    .local v2, params:Lcom/didi/common/net/HttpParams;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-------------------------get guide flag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 658
    const-string v4, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    const-string v4, "lng"

    invoke-static {v2, v4, v1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 660
    const-string v4, "lat"

    invoke-static {v2, v4, v0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 661
    const-string v4, "versionFlag"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 662
    const-string v4, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 663
    const-string v4, "pGetFlag"

    invoke-static {v4, v2}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v3

    .line 664
    .local v3, url:Ljava/lang/String;
    new-instance v4, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v4}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v5, Lcom/didi/car/model/CarGuideFlag;

    invoke-direct {v5}, Lcom/didi/car/model/CarGuideFlag;-><init>()V

    invoke-virtual {v4, v3, v2, p0, v5}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 665
    return-void
.end method

.method public static getHistroyOrderDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarHistoryOrder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarHistoryOrder;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "historyUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tokenview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 619
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 620
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 621
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 622
    const-string v2, "versionid"

    const-string v3, "37000"

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    const-string v2, "pGetOrderDetail"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarHistoryOrder;

    invoke-direct {v3}, Lcom/didi/car/model/CarHistoryOrder;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 625
    return-void
.end method

.method public static getIntroGuideFlag(ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 9
    .parameter "cancel"
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarFlag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 941
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarFlag;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v3

    .line 942
    .local v3, params:Lcom/didi/common/net/HttpParams;
    const-string v7, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 943
    const-string v7, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 944
    const-string v7, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 945
    const-string v7, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 947
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v4

    .line 948
    .local v4, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    .line 950
    .local v1, end:Lcom/didi/common/model/Address;
    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    const-string v7, "flng"

    iget-object v8, v4, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {v3, v7, v8}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 954
    const-string v7, "flat"

    iget-object v8, v4, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-static {v3, v7, v8}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 955
    const-string v7, "tlng"

    iget-object v8, v1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {v3, v7, v8}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 956
    const-string v7, "tlat"

    iget-object v8, v1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-static {v3, v7, v8}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 958
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v2

    .line 960
    .local v2, orderType:Lcom/didi/frame/business/OrderType;
    const-string v8, "type"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/didi/frame/business/OrderType;->getIntValue()I

    move-result v7

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v8, v7}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 961
    const-string v7, "versionFlag"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 962
    const-string v7, "oid"

    invoke-static {v3, v7, p1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 963
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 964
    .local v0, business:Lcom/didi/frame/business/Business;
    const/4 v5, -0x1

    .line 965
    .local v5, type:I
    sget-object v7, Lcom/didi/car/net/CarRequest$1;->$SwitchMap$com$didi$frame$business$Business:[I

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 977
    :goto_2
    const-string v7, "guideType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 978
    const-string v7, "cancelWait"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 979
    const-string v7, "pGetGuideFlag"

    invoke-static {v7, v3}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v6

    .line 980
    .local v6, url:Ljava/lang/String;
    new-instance v7, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v7}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v8, Lcom/didi/car/model/CarFlag;

    invoke-direct {v8}, Lcom/didi/car/model/CarFlag;-><init>()V

    invoke-virtual {v7, v6, v3, p2, v8}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    goto :goto_0

    .line 960
    .end local v0           #business:Lcom/didi/frame/business/Business;
    .end local v5           #type:I
    .end local v6           #url:Ljava/lang/String;
    :cond_2
    const/4 v7, -0x1

    goto :goto_1

    .line 967
    .restart local v0       #business:Lcom/didi/frame/business/Business;
    .restart local v5       #type:I
    :pswitch_0
    const/4 v5, 0x1

    .line 968
    goto :goto_2

    .line 970
    :pswitch_1
    const/4 v5, 0x0

    .line 971
    goto :goto_2

    .line 973
    :pswitch_2
    const/4 v5, 0x2

    goto :goto_2

    .line 965
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getNearbyDrivers(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 5
    .parameter "business"
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/Business;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarDriverList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarDriverList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 300
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v3, "lat"

    invoke-static {v0, v3, p1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    const-string v3, "lng"

    invoke-static {v0, v3, p2}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    const-string v3, "accuracy"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    const-string v3, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v3, :cond_0

    const/4 v1, 0x0

    .line 305
    .local v1, type:I
    :goto_0
    const-string v3, "flier"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    const-string v3, "pNearDrivers"

    invoke-static {v3, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, url:Ljava/lang/String;
    new-instance v3, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v3}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v4, Lcom/didi/car/model/CarDriverList;

    invoke-direct {v4}, Lcom/didi/car/model/CarDriverList;-><init>()V

    invoke-virtual {v3, v2, v0, p3, v4}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 308
    return-void

    .line 304
    .end local v1           #type:I
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getNearbyDriversByCarType(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 7
    .parameter "business"
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/Business;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarDriverList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarDriverList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v2

    .line 320
    .local v2, params:Lcom/didi/common/net/HttpParams;
    const-string v5, "lat"

    invoke-static {v2, v5, p1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    const-string v5, "lng"

    invoke-static {v2, v5, p2}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    const-string v5, "accuracy"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/soso/location/LocationController;->getAccuracy()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    const-string v5, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    sget-object v5, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v5, :cond_0

    const/4 v3, 0x0

    .line 325
    .local v3, type:I
    :goto_0
    const-string v5, "flier"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    invoke-static {p0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 328
    .local v1, order:Lcom/didi/car/model/CarOrder;
    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getCarTypeBySplit()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, carType:Ljava/lang/String;
    const-string v5, "car_level_type"

    invoke-static {v2, v5, v0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNearbyDriversByCarType cartype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lng:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 332
    const-string v5, "pNearDriversCarLever"

    invoke-static {v5, v2}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, url:Ljava/lang/String;
    new-instance v5, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v5}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v6, Lcom/didi/car/model/CarDriverList;

    invoke-direct {v6}, Lcom/didi/car/model/CarDriverList;-><init>()V

    invoke-virtual {v5, v4, v2, p3, v6}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 334
    return-void

    .line 324
    .end local v0           #carType:Ljava/lang/String;
    .end local v1           #order:Lcom/didi/car/model/CarOrder;
    .end local v3           #type:I
    .end local v4           #url:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static getOverdraftOrder(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarOverdraftOrder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarOverdraftOrder;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 285
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    const-string v2, "pGetOverdraftOrder"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarOverdraftOrder;

    invoke-direct {v3}, Lcom/didi/car/model/CarOverdraftOrder;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 289
    return-void
.end method

.method public static getPiceRuleHistoryUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "district"
    .parameter "business"

    .prologue
    .line 472
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/car/net/CarRequest;->CAR_VALUATION_RULE_WEB_URL:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/car/net/CarRequest;->CAR_VALUATION_RULE_WEB_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?district="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&flier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPiceRuleUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "business"

    .prologue
    .line 467
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/didi/car/net/CarRequest;->getPiceRuleUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPiceRuleUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "cityID"
    .parameter "business"

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/car/net/CarRequest;->CAR_VALUATION_RULE_WEB_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&flier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/didi/common/util/Constant;->telCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&district="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/didi/common/util/Constant;->telCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&area="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getQuestionNaire(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 5
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarQuestionNaire;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1111
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarQuestionNaire;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 1112
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v3, "oid"

    invoke-static {v0, v3, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1113
    const-string v3, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1115
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    sget-object v4, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v3, v4, :cond_0

    const/4 v1, 0x0

    .line 1116
    .local v1, type:I
    :goto_0
    const-string v3, "flier"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1118
    const-string v3, "pQuestionNaire"

    invoke-static {v3, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v2

    .line 1119
    .local v2, url:Ljava/lang/String;
    new-instance v3, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v3}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v4, Lcom/didi/car/model/CarQuestionNaire;

    invoke-direct {v4}, Lcom/didi/car/model/CarQuestionNaire;-><init>()V

    invoke-virtual {v3, v2, v0, p1, v4}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 1120
    return-void

    .line 1115
    .end local v1           #type:I
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getSNSConfig(Lcom/didi/frame/business/Business;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 5
    .parameter "bus"
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/Business;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarSNSConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarSNSConfig;>;"
    const/4 v1, 0x1

    .line 441
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 442
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v3, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    const-string v3, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    const-string v3, "apptype"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    const-string v3, "oid"

    invoke-static {v0, v3, p1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v3, :cond_0

    const/4 v1, 0x0

    .line 447
    .local v1, type:I
    :cond_0
    const-string v3, "flier"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    const-string v3, "pSnsConfig"

    invoke-static {v3, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, url:Ljava/lang/String;
    new-instance v3, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v3}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v4, Lcom/didi/car/model/CarSNSConfig;

    invoke-direct {v4}, Lcom/didi/car/model/CarSNSConfig;-><init>()V

    invoke-virtual {v3, v2, v0, p2, v4}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 450
    return-void
.end method

.method private static getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1083
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getVirtualStatus()I
    .locals 2

    .prologue
    .line 1077
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getVirtualStatus()I

    move-result v0

    .line 1079
    .local v0, status:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .end local v0           #status:I
    :cond_0
    return v0
.end method

.method public static getWxAgentShouldToast(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarWxAgentLayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarWxAgentLayer;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 884
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 885
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 886
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 887
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 888
    const-string v2, "pWxAgentLayer"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarWxAgentLayer;

    invoke-direct {v3}, Lcom/didi/car/model/CarWxAgentLayer;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 890
    return-void
.end method

.method public static getWxAgentStatus(IILcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "type"
    .parameter "pollingTimes"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarWxAgentStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 800
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarWxAgentStatus;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 801
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 802
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 803
    const-string v2, "type"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 804
    const-string v2, "polling_times"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 805
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 806
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 807
    const-string v2, "pWxAgentQuery"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarWxAgentStatus;

    invoke-direct {v3}, Lcom/didi/car/model/CarWxAgentStatus;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 809
    return-void
.end method

.method public static protectLogStatistics(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 912
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 913
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 914
    const-string v2, "is_protect"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 915
    const-string v2, "pLogCollection/virtualPhone"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 916
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    const/4 v3, 0x0

    new-instance v4, Lcom/didi/common/model/BaseObject;

    invoke-direct {v4}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 917
    return-void
.end method

.method private static put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter "params"
    .parameter "key"
    .parameter "file"

    .prologue
    .line 1023
    if-nez p2, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 1025
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0
.end method

.method private static put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "params"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1016
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, stringValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1020
    :goto_0
    return-void

    .line 1019
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V
    .locals 2
    .parameter "params"
    .parameter "commonParams"
    .parameter "key"

    .prologue
    .line 984
    invoke-virtual {p0, p2}, Lcom/didi/common/net/HttpParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, stringValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    :goto_0
    return-void

    .line 987
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static queryOrderStatus(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarOrderState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarOrderState;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 210
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    const-string v2, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    const-string v2, "pGetOrderStatusSpare"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarOrderState;

    invoke-direct {v3}, Lcom/didi/car/model/CarOrderState;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 215
    return-void
.end method

.method public static redirectToWxagentAgreement(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1087
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1088
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const v2, 0x7f0b0234

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 1089
    sget-object v2, Lcom/didi/car/net/CarRequest;->CAR_WXAGENT_AGREEMENT_URL:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1090
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 1091
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1092
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1093
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1094
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1095
    return-void
.end method

.method public static resendOrder(Lcom/didi/car/model/CarOrder;Lcom/didi/common/net/ResponseListener;)V
    .locals 8
    .parameter "order"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/car/model/CarOrder;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarOrder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarOrder;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v1

    .line 241
    .local v1, params:Lcom/didi/common/net/HttpParams;
    const-string v5, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    const-string v5, "oid"

    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    const-string v5, "tip"

    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->getTipParam()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    const-string v5, "extraInfo"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    const-string v5, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    const-string v5, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    const-string v5, "maptype"

    const-string v6, "soso"

    invoke-static {v1, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    const-string v5, "activity_id"

    const v6, 0x3131f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    iget-object v5, p0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 250
    iget-object v5, p0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 251
    .local v3, size:I
    if-lez v3, :cond_1

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v2, sBuild:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 254
    iget-object v5, p0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/car/model/CarModel;

    iget v5, v5, Lcom/didi/car/model/CarModel;->cLevel:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    const-string v5, "require_level"

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    .end local v0           #index:I
    .end local v2           #sBuild:Ljava/lang/StringBuilder;
    .end local v3           #size:I
    :cond_1
    const-string v5, "pRecall"

    invoke-static {v5, v1}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, url:Ljava/lang/String;
    new-instance v5, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v5}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v6, Lcom/didi/car/model/CarOrder;

    invoke-direct {v6}, Lcom/didi/car/model/CarOrder;-><init>()V

    invoke-virtual {v5, v4, v1, p1, v6}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 261
    return-void
.end method

.method public static updateLocationFlag(ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 1
    .parameter "type"
    .parameter "log"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 795
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    const-string v0, "0"

    invoke-static {v0, p0, p1, p2}, Lcom/didi/car/net/CarRequest;->updateLocationFlag(Ljava/lang/String;ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 796
    return-void
.end method

.method public static updateLocationFlag(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V
    .locals 1
    .parameter "oid"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 790
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Lcom/didi/car/net/CarRequest;->updateLocationFlag(Ljava/lang/String;ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 791
    return-void
.end method

.method public static updateLocationFlag(Ljava/lang/String;ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "type"
    .parameter "log"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 776
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 777
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 778
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 779
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 780
    const-string v2, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 781
    const-string v2, "log"

    invoke-static {v0, v2, p2}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 782
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 783
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 784
    const-string v2, "pLogCollection"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p3, v3}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 786
    return-void
.end method

.method public static updatePayInfo(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "tid"
    .parameter "type"
    .parameter "paymentMode"
    .parameter "paymentStr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarFeeDetailResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 865
    .local p5, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarFeeDetailResult;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 866
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 867
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 868
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 869
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 870
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 871
    const-string v2, "coupon_id"

    invoke-static {v0, v2, p1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 872
    const-string v2, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    if-eqz p3, :cond_0

    .line 874
    const-string v2, "payment_mode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 876
    :cond_0
    const-string v2, "payments"

    invoke-static {v0, v2, p4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 877
    const-string v2, "pGetPayInfo"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarFeeDetailResult;

    invoke-direct {v3}, Lcom/didi/car/model/CarFeeDetailResult;-><init>()V

    invoke-virtual {v2, v1, v0, p5, v3}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 879
    return-void
.end method

.method public static updateWaitFlag(ILcom/didi/car/model/CarFlag;Lcom/didi/common/net/ResponseListener;)V
    .locals 5
    .parameter "type"
    .parameter "flag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/didi/car/model/CarFlag;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 747
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v1

    .line 748
    .local v1, params:Lcom/didi/common/net/HttpParams;
    const-string v3, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 749
    const-string v3, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 750
    const-string v3, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 751
    const-string v3, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 752
    const-string v3, "type"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 753
    const-string v3, "versionFlag"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, business:I
    sget-object v3, Lcom/didi/car/net/CarRequest$1;->$SwitchMap$com$didi$frame$business$Business:[I

    iget-object v4, p1, Lcom/didi/car/model/CarFlag;->lastBusiness:Lcom/didi/frame/business/Business;

    invoke-virtual {v4}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 767
    :goto_0
    const-string v3, "guideType"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 768
    const-string v3, "guide_for"

    iget v4, p1, Lcom/didi/car/model/CarFlag;->guideTo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 769
    const-string v3, "oid"

    iget-object v4, p1, Lcom/didi/car/model/CarFlag;->lastOid:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 770
    const-string v3, "pSetWaitFlag"

    invoke-static {v3, v1}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, url:Ljava/lang/String;
    new-instance v3, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v3}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v4, Lcom/didi/common/model/BaseObject;

    invoke-direct {v4}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v3, v2, v1, p2, v4}, Lcom/didi/car/net/CarHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 772
    return-void

    .line 758
    .end local v2           #url:Ljava/lang/String;
    :pswitch_0
    const/4 v0, 0x1

    .line 759
    goto :goto_0

    .line 761
    :pswitch_1
    const/4 v0, 0x0

    .line 762
    goto :goto_0

    .line 764
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 756
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static updateWxAgentCallBack(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 894
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 895
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 896
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 897
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 898
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 899
    const-string v2, "type"

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 900
    const-string v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 901
    const-string v2, "pPushCallback"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 903
    return-void
.end method

.method public static updateWxAgentTicket(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "tid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarChCouponResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 852
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarChCouponResult;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 853
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/car/net/CarRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 854
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 855
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 856
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 857
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 858
    const-string v2, "coupon_id"

    invoke-static {v0, v2, p1}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 859
    const-string v2, "server_switch"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/car/net/CarRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 860
    const-string v2, "pCouponConfirm"

    invoke-static {v2, v0}, Lcom/didi/car/net/CarRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/car/net/CarHttpRequest;

    invoke-direct {v2}, Lcom/didi/car/net/CarHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/car/model/CarChCouponResult;

    invoke-direct {v3}, Lcom/didi/car/model/CarChCouponResult;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/car/net/CarHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 862
    return-void
.end method
