.class public Lcom/didi/beatles/net/BtsRequest;
.super Ljava/lang/Object;
.source "BtsRequest.java"


# static fields
.field public static final MAP_TYPE:Ljava/lang/String; = "soso"

.field public static final SOURCE_FROM_HISTROY:I = 0x2

.field public static final SOURCE_FROM_MATCH:I = 0x0

.field public static final SOURCE_FROM_NEARBY:I = 0x1

.field public static final SOURCE_FROM_PENDING:I = 0x2710

.field public static final SOURCE_FROM_PUSH:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRoute(Lcom/didi/common/model/Address;Lcom/didi/common/model/Address;Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "from"
    .parameter "to"
    .parameter "dep_time"
    .parameter "back_time"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/model/Address;",
            "Lcom/didi/common/model/Address;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsBaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p4, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsBaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 494
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    const-string v2, "from_longitude"

    iget-object v3, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 496
    const-string v2, "from_latitude"

    iget-object v3, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 497
    const-string v2, "to_longitude"

    iget-object v3, p1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    const-string v2, "to_latitude"

    iget-object v3, p1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    const-string v2, "from_name"

    iget-object v3, p0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    const-string v2, "to_name"

    iget-object v3, p1, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 501
    const-string v3, "from_address"

    iget-object v2, p0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v3, v2}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
    const-string v3, "to_address"

    iget-object v2, p1, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    :goto_1
    invoke-static {v0, v3, v2}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    const-string v2, "from_city_id"

    iget-object v3, p0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    const-string v2, "to_city_id"

    iget-object v3, p1, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 505
    const-string v2, "dep_time"

    invoke-static {v0, v2, p2}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    const-string v2, "back_time"

    invoke-static {v0, v2, p3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/route/add"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/route/add"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 511
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/BtsBaseObject;

    invoke-direct {v3}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p4, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 512
    return-void

    .line 501
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    goto :goto_0

    .line 502
    :cond_1
    iget-object v2, p1, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    goto :goto_1
.end method

.method public static calculateCost(Lcom/didi/beatles/model/order/BtsOrderParams;Lcom/didi/beatles/net/BtsResponseListener;J)V
    .locals 4
    .parameter "btsOrderParams"
    .parameter
    .parameter "reqId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/model/order/BtsOrderParams;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderPrice;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 819
    .local p1, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderPrice;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 820
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 821
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 822
    const-string v2, "from_city_id"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getFromId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 823
    const-string v2, "to_city_id"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getToId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 824
    const-string v2, "from_lat"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getFromLat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 825
    const-string v2, "from_lng"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getFromLng()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 826
    const-string v2, "to_lat"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getToLat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 827
    const-string v2, "to_lng"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getToLng()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 828
    const-string v2, "setup_time"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getSetupTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "passenger/order/calculatecost"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/order/BtsOrderPrice;

    invoke-direct {v3, p2, p3}, Lcom/didi/beatles/model/order/BtsOrderPrice;-><init>(J)V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 831
    return-void
.end method

.method public static checkOrderPayStatus(Ljava/lang/String;JLcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "payId"
    .parameter "agoTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p3, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 292
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    const-string v2, "pay_id"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    const-string v2, "ago_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "platform/order/getpayorderdetail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOrderPayStatus url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "platform/order/getpayorderdetail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 297
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;

    invoke-direct {v3}, Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;-><init>()V

    invoke-virtual {v2, v1, v0, p3, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 298
    return-void
.end method

.method public static createBookingOrder(Lcom/didi/beatles/model/order/BtsOrderParams;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "btsOrderParams"
    .parameter "serial"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/model/order/BtsOrderParams;",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderPassenger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p2, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderPassenger;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 438
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    const-string v2, "from_lat"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getFromLat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    const-string v2, "from_lng"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getFromLng()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    const-string v2, "from_name"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getFromName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 442
    const-string v2, "from_address"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getFromAdress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    const-string v2, "to_lat"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getToLat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    const-string v2, "to_lng"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getToLng()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    const-string v2, "to_name"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getToName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    const-string v2, "to_address"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getToAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    const-string v2, "extra_info"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    const-string v2, "serial"

    invoke-static {v0, v2, p1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    const-string v2, "from_area_id"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getFromId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    const-string v2, "to_area_id"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getToId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    const-string v2, "setup_time"

    invoke-virtual {p0}, Lcom/didi/beatles/model/order/BtsOrderParams;->getSetupTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 452
    const-string v2, "openid"

    sget-object v3, Lcom/didi/frame/WebToActivity;->WX_PAY_OPEN_ID:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    const-string v2, "old_oid"

    iget-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderParams;->old_oid:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "passenger/order/create"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, url:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BtsBookingParams:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 457
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    invoke-direct {v3}, Lcom/didi/beatles/model/order/BtsOrderPassenger;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 459
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/didi/common/config/Preferences;->setSwitcherPannel(I)V

    .line 460
    return-void
.end method

.method private static createProfilePageUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "params"

    .prologue
    .line 708
    const-string v0, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 709
    const-string v0, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 710
    const-string v0, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 711
    const-string v0, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 712
    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    const-string v0, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 714
    const-string v0, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 715
    const-string v0, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 716
    const-string v0, "datatype"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 717
    const-string v0, "userlat"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLatString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 718
    const-string v0, "userlng"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 719
    const-string v0, "lat"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLatString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 720
    const-string v0, "lng"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    const-string v0, "maptype"

    const-string v1, "soso"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 722
    const-string v0, "sig"

    invoke-static {p1}, Lcom/didi/common/util/Signature;->generateSignature(Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 723
    const-string v0, "pixels"

    sget-object v1, Lcom/didi/common/util/Constant;->SCREEN_PIXELS:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 724
    const-string v0, "mac"

    sget-object v1, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 725
    const-string v0, "cpu"

    sget-object v1, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 726
    const-string v0, "city_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 727
    const-string v0, "android_id"

    sget-object v1, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 728
    const-string v0, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 729
    const-string v0, "uuid"

    sget-object v1, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 730
    return-object p0
.end method

.method private static createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "params"

    .prologue
    .line 175
    const-string v0, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-string v0, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string v0, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string v0, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    const-string v0, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-string v0, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    const-string v0, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    const-string v0, "datatype"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    const-string v0, "userlat"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLatString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    const-string v0, "userlng"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    const-string v0, "lat"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLatString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    const-string v0, "lng"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    const-string v0, "maptype"

    const-string v1, "soso"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v0, "sig"

    invoke-static {p1}, Lcom/didi/common/util/Signature;->generateSignature(Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
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

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    const-string v0, "pixels"

    sget-object v1, Lcom/didi/common/util/Constant;->SCREEN_PIXELS:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    const-string v0, "mac"

    sget-object v1, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-string v0, "cpu"

    sget-object v1, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    const-string v0, "city_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    const-string v0, "android_id"

    sget-object v1, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    const-string v0, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    const-string v0, "uuid"

    sget-object v1, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    return-object p0
.end method

.method public static delRoute(Lcom/didi/beatles/model/route/BtsRoute;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "route"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/model/route/BtsRoute;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsBaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsBaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 539
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    const-string v2, "route_id"

    iget-object v3, p0, Lcom/didi/beatles/model/route/BtsRoute;->id:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/route/delete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/route/delete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 545
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/BtsBaseObject;

    invoke-direct {v3}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 546
    return-void
.end method

.method public static driverConfirmSended(Ljava/lang/String;IILcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "orderId"
    .parameter "alert"
    .parameter "free"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p3, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderDriver;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 329
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    const-string v2, "order_id"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    const-string v2, "alert"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    const-string v2, "free"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/order/confirmarrive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "driverConfirmSended url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 336
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/order/BtsOrderDriver;

    invoke-direct {v3}, Lcom/didi/beatles/model/order/BtsOrderDriver;-><init>()V

    invoke-virtual {v2, v1, v0, p3, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 337
    return-void
.end method

.method public static driverPicUpload(Ljava/lang/String;Ljava/io/File;Lcom/didi/beatles/net/BtsResponseListener;Ljava/lang/String;)V
    .locals 9
    .parameter "url"
    .parameter "picFile"
    .parameter
    .parameter "otherParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsPicUpload;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 411
    .local p2, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsPicUpload;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v6

    .line 412
    .local v6, params:Lcom/didi/common/net/HttpParams;
    const-string v7, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    const-string v7, "file"

    invoke-static {v6, v7, p1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/io/File;)V

    .line 414
    const-string v7, "ext"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/didi/common/util/FileUtil;->getExtensionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    if-eqz p3, :cond_0

    const-string v7, ""

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 417
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 418
    .local v3, jsonObject:Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 419
    const-string v7, "data"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 420
    .local v4, jsonObject2:Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 421
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 422
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 423
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 424
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #jsonObject2:Lorg/json/JSONObject;
    .end local v5           #key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 429
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 432
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    invoke-static {p0, v6}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, finalUrl:Ljava/lang/String;
    new-instance v7, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v7}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v8, Lcom/didi/beatles/model/BtsPicUpload;

    invoke-direct {v8}, Lcom/didi/beatles/model/BtsPicUpload;-><init>()V

    invoke-virtual {v7, v1, v6, p2, v8}, Lcom/didi/beatles/net/BtsHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 434
    return-void
.end method

.method public static driverStriveOrder(ILjava/lang/String;Ljava/lang/String;JLcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "from"
    .parameter "orderId"
    .parameter "route_id"
    .parameter "time"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p5, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 254
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    const-string v2, "order_id"

    invoke-static {v0, v2, p1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    const-string v2, "route_id"

    invoke-static {v0, v2, p2}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    const-string v2, "serial"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    const-string v2, "source"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/order/strive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "driverStriveOrder url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 261
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    invoke-direct {v3}, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;-><init>()V

    invoke-virtual {v2, v1, v0, p5, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 262
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/didi/common/config/Preferences;->setSwitcherPannel(I)V

    .line 263
    return-void
.end method

.method public static getApm(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 5
    .parameter "reference"
    .parameter "bahavior_type"
    .parameter "order_id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsBaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p3, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsBaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 758
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v3, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 759
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getUserRoleType()I

    move-result v1

    .line 760
    .local v1, role:I
    if-nez v1, :cond_0

    .line 761
    const-string v3, "user_type"

    const-string v4, "2"

    invoke-static {v0, v3, v4}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 765
    :goto_0
    const-string v3, "order_id"

    invoke-static {v0, v3, p2}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 766
    const-string v3, "bahavior_type"

    invoke-static {v0, v3, p1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 767
    const-string v3, "reference"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "user/user/apm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v2

    .line 769
    .local v2, url:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfilePageUrl url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 771
    new-instance v3, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v3}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v4, Lcom/didi/beatles/model/BtsBaseObject;

    invoke-direct {v4}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    invoke-virtual {v3, v2, v0, p3, v4}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 772
    return-void

    .line 763
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    const-string v3, "user_type"

    const-string v4, "1"

    invoke-static {v0, v3, v4}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getBtsArroundDrivers(DDLcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsUserAround;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p4, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsUserAround;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 466
    .local v0, params:Lcom/didi/common/net/HttpParams;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "passenger/driver/getaround"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, url:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    .line 468
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/BtsUserAround;

    invoke-direct {v3}, Lcom/didi/beatles/model/BtsUserAround;-><init>()V

    invoke-virtual {v2, v1, v0, p4, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 469
    return-void
.end method

.method public static getBtsArroundPasngers(DDLcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsUserAround;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p4, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsUserAround;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 475
    .local v0, params:Lcom/didi/common/net/HttpParams;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/passenger/getaround"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, url:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BtsArroundUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 478
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/BtsUserAround;

    invoke-direct {v3}, Lcom/didi/beatles/model/BtsUserAround;-><init>()V

    invoke-virtual {v2, v1, v0, p4, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 479
    return-void
.end method

.method public static getBtsConfig(Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsConfig;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 83
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user/user/getcityconfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->newInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 88
    return-void
.end method

.method public static getCancelOrderForPassenger(Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "orderId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsBaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsBaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 302
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    const-string v2, "order_id"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "passenger/order/cancel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "passenger/order/cancel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 307
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/BtsBaseObject;

    invoke-direct {v3}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 308
    return-void
.end method

.method public static getCarAuthUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 677
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 678
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->H5_HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/auth/index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarAuthUrl url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCarBaseUrlParamString(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "params"

    .prologue
    .line 137
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 138
    .local v0, commonParams:Lcom/didi/common/net/HttpParams;
    const-string v1, "vcode"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 139
    const-string v1, "dviceid"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 140
    const-string v1, "appversion"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 141
    const-string v1, "model"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 142
    const-string v1, "os"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 143
    const-string v1, "imei"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 144
    const-string v1, "suuid"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 145
    const-string v1, "channel"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 146
    const-string v1, "datatype"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 147
    const-string v1, "sig"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 148
    const-string v1, "lat"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 149
    const-string v1, "lng"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 150
    const-string v1, "cancel"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 151
    const-string v1, "maptype"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 152
    const-string v1, "mac"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 153
    const-string v1, "cpu"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 154
    const-string v1, "android_id"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 155
    const-string v1, "city_id"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 156
    const-string v1, "uuid"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 157
    const-string v1, "networkType"

    invoke-static {p1, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getConponSelectUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "conponUrl"
    .parameter "orderId"

    .prologue
    .line 666
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 667
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 668
    const-string v2, "order_id"

    invoke-static {v0, v2, p1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 669
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 670
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 671
    invoke-static {p0, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConponSelectUrl url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDriverCancelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "oid"

    .prologue
    .line 651
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 652
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 654
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 655
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->H5_HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/order/terminate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPassangerCancelUrl url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDriverComplainUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "oid"

    .prologue
    .line 598
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 599
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 601
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->H5_HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/passenger/complain"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriverComplainUrl url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDriverNumListForPassenger(Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "orderId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsDriverNumList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsDriverNumList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 312
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    const-string v2, "order_id"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "passenger/order/getpushnum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "passenger/order/getinfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 317
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/BtsDriverNumList;

    invoke-direct {v3}, Lcom/didi/beatles/model/BtsDriverNumList;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 318
    return-void
.end method

.method public static getDriverPendingOrderList(Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 368
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/order/getongoing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriverPendingOrderList url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 372
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;

    invoke-direct {v3}, Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 373
    return-void
.end method

.method public static getDriverRouteList(Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/route/BtsRouteList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/route/BtsRouteList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 484
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/route/getlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/route/getlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 489
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/route/BtsRouteList;

    invoke-direct {v3}, Lcom/didi/beatles/model/route/BtsRouteList;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 490
    return-void
.end method

.method public static getMatchOrderListForDriver(Ljava/lang/String;ILcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "offset_order_id"
    .parameter "num"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriverList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p2, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderDriverList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 343
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    const-string v2, "offset_order_id"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    const-string v2, "num"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/order/matchlist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/order/BtsOrderDriverList;

    invoke-direct {v3}, Lcom/didi/beatles/model/order/BtsOrderDriverList;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 351
    return-void
.end method

.method public static getNearByOrderListForDriver(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "offset_order_id"
    .parameter "num"
    .parameter "lastQueryTime"
    .parameter "offsetOrderId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriverList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p4, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderDriverList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 379
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 382
    const-string v2, "offset_order_id"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    const-string v2, "last_query_time"

    invoke-static {v0, v2, p2}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 385
    :cond_0
    const-string v2, "num"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    const-string v2, "offset_order_id"

    invoke-static {v0, v2, p3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/order/nearbylist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/order/BtsOrderDriverList;

    invoke-direct {v3}, Lcom/didi/beatles/model/order/BtsOrderDriverList;-><init>()V

    invoke-virtual {v2, v1, v0, p4, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 390
    return-void
.end method

.method public static getOrderInfoForDriver(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "from"
    .parameter "orderId"
    .parameter "routeId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p3, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderDriver;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 209
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    const-string v2, "order_id"

    invoke-static {v0, v2, p1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    const-string v2, "route_id"

    invoke-static {v0, v2, p2}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    const-string v2, "source"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/order/getinfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrderInfoForDriver url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 215
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/order/BtsOrderDriver;

    invoke-direct {v3}, Lcom/didi/beatles/model/order/BtsOrderDriver;-><init>()V

    invoke-virtual {v2, v1, v0, p3, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 216
    return-void
.end method

.method public static getOrderInfoForPassenger(Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "orderId"
    .parameter "couponId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderPassenger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderPassenger;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 273
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    const-string v2, "order_id"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    const-string v2, "coupon_id"

    invoke-static {v0, v2, p1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "passenger/order/getinfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrderInfoForPassenger url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "passenger/order/getinfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 281
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    invoke-direct {v3}, Lcom/didi/beatles/model/order/BtsOrderPassenger;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 282
    return-void
.end method

.method public static getPassangerCancelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "oid"

    .prologue
    .line 638
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 639
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 640
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 641
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 642
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->H5_HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "passenger/order/terminate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPassangerCancelUrl url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getPassangerComplainUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "oid"

    .prologue
    .line 624
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 625
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 626
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 627
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 628
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->H5_HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "passenger/driver/complain"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPassangerComplainUrl url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getPassengerPendingOrderList(Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 357
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "passenger/order/getongoing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPassengerPendingOrderList url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 361
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;

    invoke-direct {v3}, Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 362
    return-void
.end method

.method public static getPrePayParams(Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 7
    .parameter "orderId"
    .parameter "coupon_id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p2, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 231
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    const-string v2, "order_id"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    const-string v2, "coupon_id"

    invoke-static {v0, v2, p1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    const-string v2, "serial"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "passenger/order/pay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrePayParams url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 237
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;

    invoke-direct {v3}, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 238
    return-void
.end method

.method public static getPriceDetailUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "detailUrl"
    .parameter "oid"

    .prologue
    .line 612
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 613
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 614
    const-string v2, "order_id"

    invoke-static {v0, v2, p1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 615
    invoke-static {p0, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPriceDetailUrl url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getProfilePageUrl(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4
    .parameter "uid"
    .parameter "role"
    .parameter "share"

    .prologue
    .line 693
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 694
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    const-string v2, "role"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    const-string v2, "uid"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 697
    if-eqz p2, :cond_0

    .line 698
    const-string v2, "share"

    const-string v3, "1"

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 700
    :cond_0
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 701
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->H5_HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user/user/home"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createProfilePageUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfilePageUrl url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getRandNickName(Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "gender"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/role/BtsRandNickname;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/role/BtsRandNickname;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 585
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    const-string v2, "gender"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user/profile/randomnick"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user/profile/randomnick"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 591
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/role/BtsRandNickname;

    invoke-direct {v3}, Lcom/didi/beatles/model/role/BtsRandNickname;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 592
    return-void
.end method

.method public static getSessUsrList(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "sid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/im/model/IMUserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 796
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/im/model/IMUserList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 797
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "session_id"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 798
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "im/user/getinfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/im/net/IMHttpRequest;

    invoke-direct {v2}, Lcom/didi/im/net/IMHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/im/model/IMUserList;

    invoke-direct {v3}, Lcom/didi/im/model/IMUserList;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/im/net/IMHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 801
    return-void
.end method

.method private static getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAuthUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 685
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 686
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->H5_HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user/auth/index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAuthUrl url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getUserInfo(Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/role/BtsRoleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/role/BtsRoleInfo;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v1

    .line 71
    .local v1, params:Lcom/didi/common/net/HttpParams;
    const-string v3, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v0, v3, Lcom/didi/beatles/model/BtsConfig;->cityid:Ljava/lang/String;

    .line 73
    .local v0, cityId:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_0
    const-string v3, "city_id"

    invoke-static {v1, v3, v0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "user/user/home"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, url:Ljava/lang/String;
    new-instance v3, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v3}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->newInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v4

    invoke-virtual {v3, v2, v1, p0, v4}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 78
    return-void
.end method

.method public static getWeixinToken(Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsWeixinToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsWeixinToken;>;"
    const/4 v5, 0x0

    .line 93
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 94
    .local v2, trustStore:Ljava/security/KeyStore;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 96
    new-instance v1, Lcom/didi/beatles/net/BtsSSLSocketFactoryEx;

    invoke-direct {v1, v2}, Lcom/didi/beatles/net/BtsSSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 97
    .local v1, sf:Lcom/didi/beatles/net/BtsSSLSocketFactoryEx;
    sget-object v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v3}, Lcom/didi/beatles/net/BtsSSLSocketFactoryEx;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 99
    invoke-static {}, Lnet/tsz/afinal/FinalHttp;->getInstance()Lnet/tsz/afinal/FinalHttp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/tsz/afinal/FinalHttp;->configSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1           #sf:Lcom/didi/beatles/net/BtsSSLSocketFactoryEx;
    .end local v2           #trustStore:Ljava/security/KeyStore;
    :goto_0
    new-instance v3, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v3}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v4, Lcom/didi/beatles/model/BtsWeixinToken;

    invoke-direct {v4}, Lcom/didi/beatles/model/BtsWeixinToken;-><init>()V

    invoke-virtual {v3, p0, v5, p1, v4}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 106
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWeixinUserInfo(Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsWeixinUserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsWeixinUserInfo;>;"
    const/4 v5, 0x0

    .line 111
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 112
    .local v2, trustStore:Ljava/security/KeyStore;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 114
    new-instance v1, Lcom/didi/beatles/net/BtsSSLSocketFactoryEx;

    invoke-direct {v1, v2}, Lcom/didi/beatles/net/BtsSSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 115
    .local v1, sf:Lcom/didi/beatles/net/BtsSSLSocketFactoryEx;
    sget-object v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v3}, Lcom/didi/beatles/net/BtsSSLSocketFactoryEx;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 117
    invoke-static {}, Lnet/tsz/afinal/FinalHttp;->getInstance()Lnet/tsz/afinal/FinalHttp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/tsz/afinal/FinalHttp;->configSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1           #sf:Lcom/didi/beatles/net/BtsSSLSocketFactoryEx;
    .end local v2           #trustStore:Ljava/security/KeyStore;
    :goto_0
    new-instance v3, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v3}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v4, Lcom/didi/beatles/model/BtsWeixinUserInfo;

    invoke-direct {v4}, Lcom/didi/beatles/model/BtsWeixinUserInfo;-><init>()V

    invoke-virtual {v3, p0, v5, p1, v4}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 124
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadRoleSetting(Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/role/BtsRoleSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/role/BtsRoleSetting;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 550
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    const-string v2, "settings_info"

    const-string v3, "pool"

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user/profile/get"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user/profile/get"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 556
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/role/BtsRoleSetting;

    invoke-direct {v3}, Lcom/didi/beatles/model/role/BtsRoleSetting;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 557
    return-void
.end method

.method public static modifyRoute(Lcom/didi/beatles/model/route/BtsRoute;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "route"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/model/route/BtsRoute;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsBaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsBaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 516
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    const-string v2, "route_id"

    iget-object v3, p0, Lcom/didi/beatles/model/route/BtsRoute;->id:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    const-string v2, "from_longitude"

    iget-object v3, p0, Lcom/didi/beatles/model/route/BtsRoute;->from_lng:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    const-string v2, "from_latitude"

    iget-object v3, p0, Lcom/didi/beatles/model/route/BtsRoute;->from_lat:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    const-string v2, "to_longitude"

    iget-object v3, p0, Lcom/didi/beatles/model/route/BtsRoute;->to_lng:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    const-string v2, "to_latitude"

    iget-object v3, p0, Lcom/didi/beatles/model/route/BtsRoute;->to_lat:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    const-string v2, "from_name"

    iget-object v3, p0, Lcom/didi/beatles/model/route/BtsRoute;->from_name:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    const-string v2, "to_name"

    iget-object v3, p0, Lcom/didi/beatles/model/route/BtsRoute;->to_name:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    const-string v2, "from_address"

    iget-object v3, p0, Lcom/didi/beatles/model/route/BtsRoute;->from_address:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 525
    const-string v2, "to_address"

    iget-object v3, p0, Lcom/didi/beatles/model/route/BtsRoute;->to_address:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 526
    const-string v2, "from_city_id"

    iget-object v3, p0, Lcom/didi/beatles/model/route/BtsRoute;->from_city_id:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    const-string v2, "to_city_id"

    iget-object v3, p0, Lcom/didi/beatles/model/route/BtsRoute;->to_city_id:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 528
    const-string v2, "dep_time"

    iget-object v3, p0, Lcom/didi/beatles/model/route/BtsRoute;->departure_time:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    const-string v3, "is_listen"

    iget-boolean v2, p0, Lcom/didi/beatles/model/route/BtsRoute;->recv_push_status:Z

    if-eqz v2, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-static {v0, v3, v2}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/route/update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "driver/route/update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 534
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/BtsBaseObject;

    invoke-direct {v3}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 535
    return-void

    .line 529
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method public static passengerRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "nickname"
    .parameter "gender"
    .parameter "headPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/role/BtsRegisterResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p3, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/role/BtsRegisterResult;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 395
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    const-string v2, "nick"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    const-string v2, "ext"

    const-string v3, "jpeg"

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    const-string v2, "head_file"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/io/File;)V

    .line 403
    :cond_0
    const-string v2, "gender"

    invoke-static {v0, v2, p1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/common/net/CommonRequest;->BASE_COMMON_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "comm/api/updateprofile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/role/BtsRegisterResult;

    invoke-direct {v3}, Lcom/didi/beatles/model/role/BtsRegisterResult;-><init>()V

    invoke-virtual {v2, v1, v0, p3, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 408
    return-void
.end method

.method private static put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter "params"
    .parameter "key"
    .parameter "file"

    .prologue
    .line 169
    if-nez p2, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
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
    .line 162
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, stringValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
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
    .line 127
    invoke-virtual {p0, p2}, Lcom/didi/common/net/HttpParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, stringValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveRoleSetting(Lcom/didi/beatles/model/role/BtsRoleSetting;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 5
    .parameter "setting"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/model/role/BtsRoleSetting;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsBaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsBaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 561
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    const-string v3, "vacation_push"

    iget-boolean v2, p0, Lcom/didi/beatles/model/role/BtsRoleSetting;->vacation_push:Z

    if-eqz v2, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-static {v0, v3, v2}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    const-string v3, "new_order_alter"

    iget-boolean v2, p0, Lcom/didi/beatles/model/role/BtsRoleSetting;->new_order_alert:Z

    if-eqz v2, :cond_1

    const-string v2, "1"

    :goto_1
    invoke-static {v0, v3, v2}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 564
    const-string v2, "route_fit_degree"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/didi/beatles/model/role/BtsRoleSetting;->push_direct_degree:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user/profile/setting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user/profile/setting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 569
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/BtsBaseObject;

    invoke-direct {v3}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 570
    return-void

    .line 562
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    const-string v2, "0"

    goto :goto_0

    .line 563
    :cond_1
    const-string v2, "0"

    goto :goto_1
.end method

.method public static saveWeixinRoleSetting(Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "openId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsBaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsBaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 574
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 575
    const-string v2, "open_id"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user/profile/setting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user/profile/setting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 580
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/BtsBaseObject;

    invoke-direct {v3}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 581
    return-void
.end method

.method public static submitTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "orderId"
    .parameter "content"
    .parameter "tags"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsBaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p3, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/BtsBaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 785
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/beatles/net/BtsRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 786
    const-string v2, "order_id"

    invoke-static {v0, v2, p0}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 787
    const-string v2, "content"

    invoke-static {v0, v2, p1}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 788
    const-string v2, "user_rates"

    invoke-static {v0, v2, p2}, Lcom/didi/beatles/net/BtsRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user/order/addtag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/didi/beatles/net/BtsRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submitTags url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 791
    new-instance v2, Lcom/didi/beatles/net/BtsHttpRequest;

    invoke-direct {v2}, Lcom/didi/beatles/net/BtsHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/beatles/model/BtsBaseObject;

    invoke-direct {v3}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p3, v3}, Lcom/didi/beatles/net/BtsHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/beatles/net/BtsResponseListener;Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 792
    return-void
.end method
