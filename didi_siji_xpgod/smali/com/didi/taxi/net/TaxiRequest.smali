.class public Lcom/didi/taxi/net/TaxiRequest;
.super Ljava/lang/Object;
.source "TaxiRequest.java"


# static fields
.field public static BASE_PAY_URL:Ljava/lang/String; = null

.field public static BASE_URL:Ljava/lang/String; = null

.field public static final MAP_TYPE:Ljava/lang/String; = "soso"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "http://pay.diditaxi.qq.com/api/v2/"

    sput-object v0, Lcom/didi/taxi/net/TaxiRequest;->BASE_PAY_URL:Ljava/lang/String;

    .line 69
    const-string v0, "http://api.diditaxi.com.cn/api/v2/"

    sput-object v0, Lcom/didi/taxi/net/TaxiRequest;->BASE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 765
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v3

    .line 766
    .local v3, params:Lcom/didi/common/net/HttpParams;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, lng:Ljava/lang/String;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/taxi/model/TaxiOrder;

    .line 769
    .local v2, order:Lcom/didi/taxi/model/TaxiOrder;
    const-string v5, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 770
    const-string v5, "lng"

    invoke-static {v3, v5, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 771
    const-string v5, "lat"

    invoke-static {v3, v5, v0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 772
    const-string v5, "oid"

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 773
    const-string v5, "type"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 774
    const-string v5, "p_cancelorder"

    invoke-static {v5, v3}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v4

    .line 775
    .local v4, url:Ljava/lang/String;
    new-instance v5, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v5}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v6, Lcom/didi/common/model/BaseObject;

    invoke-direct {v6}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v5, v4, v3, p0, v6}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 776
    return-void
.end method

.method public static changeTip(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 7
    .parameter "remark"
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
    .line 783
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 784
    .local v0, order:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v1

    .line 785
    .local v1, params:Lcom/didi/common/net/HttpParams;
    const-string v3, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 786
    const-string v4, "lat"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartLatDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_0
    invoke-static {v1, v4, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 788
    const-string v4, "lng"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartLngDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_1
    invoke-static {v1, v4, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 790
    const-string v4, "dlat"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v1, v4, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 791
    const-string v4, "dlng"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {v1, v4, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 792
    const-string v3, "oid"

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 793
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getWaitTime()I

    move-result v3

    if-lez v3, :cond_0

    .line 794
    const-string v3, "extra_waittime"

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getWaitTime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 796
    :cond_0
    const-string v3, "isnew_extra"

    const-string v4, "1"

    invoke-static {v1, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 797
    const-string v3, "tip"

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTipParam()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 798
    if-eqz p0, :cond_5

    .line 799
    const-string v3, "extra_info"

    invoke-static {v1, v3, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 803
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changetip :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " waittime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getWaitTime()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 804
    const-string v3, "p_changetip"

    invoke-static {v3, v1}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v2

    .line 805
    .local v2, url:Ljava/lang/String;
    new-instance v3, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v3}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v4, Lcom/didi/common/model/BaseObject;

    invoke-direct {v4}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v3, v2, v1, p1, v4}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 806
    return-void

    .line 786
    .end local v2           #url:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 788
    :cond_2
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 790
    :cond_3
    const-string v3, ""

    goto/16 :goto_2

    .line 791
    :cond_4
    const-string v3, ""

    goto/16 :goto_3

    .line 801
    :cond_5
    const-string v3, "extra_info"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public static checkUserProperty(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/UserProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/UserProperty;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 326
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    const-string v2, "p_checkvipuser"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/UserProperty;

    invoke-direct {v3}, Lcom/didi/common/model/UserProperty;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 330
    return-void
.end method

.method public static comment(Ljava/lang/String;ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "score"
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
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 682
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 683
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 685
    const-string v2, "score1"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 686
    const-string v2, "content"

    invoke-static {v0, v2, p2}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    const-string v2, "p_comment"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p3, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 690
    return-void
.end method

.method public static complain(Ljava/lang/String;ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
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
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 701
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 702
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 703
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 704
    const-string v2, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 705
    const-string v2, "content"

    invoke-static {v0, v2, p2}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 706
    const-string v2, "p_complaint"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p3, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 708
    return-void
.end method

.method public static createBookingOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 9
    .parameter "oid"
    .parameter "canceltype"
    .parameter "temptime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiOrder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiOrder;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v4

    .line 194
    .local v4, params:Lcom/didi/common/net/HttpParams;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v3

    check-cast v3, Lcom/didi/taxi/model/TaxiOrder;

    .line 195
    .local v3, order:Lcom/didi/taxi/model/TaxiOrder;
    const-string v6, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    const-string v6, "type"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getOrderTypeInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    const-string v6, "input"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getInputTypeInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    const-string v6, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    const-string v6, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    const-string v6, "from_name"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    const-string v6, "to_name"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    const-string v6, "from_address"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    const-string v6, "to_address"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    const-string v6, "flat"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    iget-object v7, v7, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    const-string v6, "flng"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    iget-object v7, v7, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    const-string v6, "tlat"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    iget-object v7, v7, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    const-string v6, "tlng"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    iget-object v7, v7, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getArea()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "-1"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getArea()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 209
    :cond_0
    const-string v6, "area"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    :goto_0
    const-string v6, "time"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getDepartureTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    const-string v6, "apptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    const-string v6, "tip"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getTipParam()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    const-string v6, "nettype"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentApnType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    const-string v6, "extra_info"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getRemark()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    const-string v6, "fsource"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/model/Address;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    const-string v6, "tsource"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/model/Address;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AddressSourceF="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/model/Address;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AddressSourceT="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/model/Address;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 225
    sget-object v6, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    invoke-virtual {v6}, Lcom/didi/common/model/CommonVirtualMobile;->isShow()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    invoke-virtual {v6}, Lcom/didi/common/model/CommonVirtualMobile;->isSupport()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 226
    const-string v6, "virtual_mobile_status"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getVirtualStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    :cond_1
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v6

    iget v6, v6, Lcom/didi/common/model/CommonAttributes;->is_html:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 230
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 231
    .local v0, additional:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 233
    .local v1, data:Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "project_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getActivityId()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    const-string v6, "traffic_num"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v7

    iget-object v7, v7, Lcom/didi/common/model/CommonAttributes;->traffic_num:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v6, "traffic_type"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v7

    iget v7, v7, Lcom/didi/common/model/CommonAttributes;->traffic_type:I

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    const-string v6, "data"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_1
    const-string v6, "additional_info"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    .end local v0           #additional:Lorg/json/JSONObject;
    .end local v1           #data:Lorg/json/JSONObject;
    :cond_2
    const-string v6, "cancel_oid"

    invoke-static {v4, v6, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    const-string v6, "cancel_type"

    invoke-static {v4, v6, p1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    const-string v6, "serial"

    invoke-static {v4, v6, p2}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    const-string v6, "p_preorder"

    invoke-static {v6, v4}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, url:Ljava/lang/String;
    new-instance v6, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v6}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v7, Lcom/didi/taxi/model/TaxiOrder;

    invoke-direct {v7}, Lcom/didi/taxi/model/TaxiOrder;-><init>()V

    invoke-virtual {v6, v5, v4, p3, v7}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 250
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v7}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/didi/common/config/Preferences;->setSwitcherPannel(I)V

    .line 251
    return-void

    .line 211
    .end local v5           #url:Ljava/lang/String;
    :cond_3
    const-string v6, "area"

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getArea()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 237
    .restart local v0       #additional:Lorg/json/JSONObject;
    .restart local v1       #data:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 238
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private static createPayUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "params"

    .prologue
    .line 303
    const-string v0, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    const-string v0, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    const-string v0, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    const-string v0, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    const-string v0, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    const-string v0, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    const-string v0, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    const-string v0, "datatype"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    const-string v0, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    const-string v0, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    const-string v0, "maptype"

    const-string v1, "soso"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    const-string v0, "city_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    const-string v0, "mac"

    sget-object v1, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    const-string v0, "cpu"

    sget-object v1, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    const-string v0, "android_id"

    sget-object v1, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    const-string v0, "uuid"

    sget-object v1, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    const-string v0, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/taxi/net/TaxiRequest;->BASE_PAY_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createRealtimeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 1
    .parameter "oid"
    .parameter "cancelType"
    .parameter "temptime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiOrder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiOrder;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/taxi/net/TaxiRequest;->createRealtimeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;Z)V

    .line 87
    return-void
.end method

.method public static createRealtimeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;Z)V
    .locals 11
    .parameter "oid"
    .parameter "cancelType"
    .parameter "temptime"
    .parameter
    .parameter "gsflow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiOrder;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiOrder;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v5

    .line 101
    .local v5, params:Lcom/didi/common/net/HttpParams;
    sget-object v7, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v7}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v4

    check-cast v4, Lcom/didi/taxi/model/TaxiOrder;

    .line 102
    .local v4, order:Lcom/didi/taxi/model/TaxiOrder;
    const-string v7, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v7, "type"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getOrderTypeInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v7, "input"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getInputTypeInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v8, "lat"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getStartLatDouble()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    :goto_0
    invoke-static {v5, v8, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    const-string v8, "lng"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getStartLngDouble()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    :goto_1
    invoke-static {v5, v8, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string v8, "dlat"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-static {v5, v8, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v8, "dlng"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-static {v5, v8, v7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string v7, "__x_voice"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getVoiceFile()Ljava/io/File;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/io/File;)V

    .line 112
    const-string v7, "voicetime"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getVoiceTime()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string v7, "order_source"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InputType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getInputTypeInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 116
    const-string v7, "from_name"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getStartDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    const-string v7, "to_name"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getEndDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    const-string v7, "from_address"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getStartAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-string v7, "to_address"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getEndAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string v7, "tlat"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getEndLatDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v7, "tlng"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getEndLngDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v7, "tip"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getTipParam()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v7, "nettype"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentApnType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getWaitTime()I

    move-result v7

    if-lez v7, :cond_0

    .line 125
    const-string v7, "extra_waittime"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getWaitTime()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    :cond_0
    const-string v7, "isnew_extra"

    const-string v8, "1"

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v7, "extra_info"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getRemark()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v7, "cancel_oid"

    invoke-static {v5, v7, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    sget-object v7, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    invoke-virtual {v7}, Lcom/didi/common/model/CommonVirtualMobile;->isShow()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    invoke-virtual {v7}, Lcom/didi/common/model/CommonVirtualMobile;->isSupport()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 131
    const-string v7, "virtual_mobile_status"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/config/Preferences;->getVirtualStatus()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    :cond_1
    const-string v7, "cancel_type"

    invoke-static {v5, v7, p1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v7, "serial"

    invoke-static {v5, v7, p2}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v7, "accuracy"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/soso/location/LocationController;->getAccuracy()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getInstance()Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getOrderSource()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, flag:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 139
    const-string v7, "gsflow"

    invoke-virtual {v5, v7, v3}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_2
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 144
    const-string v7, "fsource"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getFSource()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    :goto_4
    const-string v7, "default_fsource"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDefaultFSource()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getInputTypeInt()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 151
    const-string v7, "tsource"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/model/Address;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AddressSourceF="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/model/Address;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AddressSourceT="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/model/Address;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/TaxiPreferences;->isOpenShareTrip()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getInputTypeInt()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getOrderTypeInt()I

    move-result v7

    sget-object v8, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v8}, Lcom/didi/frame/business/OrderType;->getIntValue()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 159
    const-string v7, "trip_type"

    invoke-static {}, Lcom/didi/frame/carpool/CarPoolHelper;->getCarPoolType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    :cond_4
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v7

    iget v7, v7, Lcom/didi/common/model/CommonAttributes;->is_html:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 165
    .local v0, additional:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .local v1, data:Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "project_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/config/Preferences;->getActivityId()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    const-string v7, "traffic_num"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v8

    iget-object v8, v8, Lcom/didi/common/model/CommonAttributes;->traffic_num:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v7, "traffic_type"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v8

    iget v8, v8, Lcom/didi/common/model/CommonAttributes;->traffic_type:I

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 170
    const-string v7, "data"

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_5
    const-string v7, "additional_info"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    .end local v0           #additional:Lorg/json/JSONObject;
    .end local v1           #data:Lorg/json/JSONObject;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "temptime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 178
    const-string v7, "p_neworder"

    invoke-static {v7, v5}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, url:Ljava/lang/String;
    const-string v7, "gsflow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u662f\u5426\u613f\u610f\u62fc\u8f66 createorder:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createRealtimeOrder : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 181
    new-instance v7, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v7}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v8, Lcom/didi/taxi/model/TaxiOrder;

    invoke-direct {v8}, Lcom/didi/taxi/model/TaxiOrder;-><init>()V

    invoke-virtual {v7, v6, v5, p3, v8}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 184
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    sget-object v8, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v8}, Lcom/didi/frame/business/Business;->getIntValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/didi/common/config/Preferences;->setSwitcherPannel(I)V

    .line 185
    return-void

    .line 105
    .end local v3           #flag:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 107
    :cond_7
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 109
    :cond_8
    const-string v7, ""

    goto/16 :goto_2

    .line 110
    :cond_9
    const-string v7, ""

    goto/16 :goto_3

    .line 146
    .restart local v3       #flag:Ljava/lang/String;
    :cond_a
    const-string v7, "fsource"

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/model/Address;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 171
    .restart local v0       #additional:Lorg/json/JSONObject;
    .restart local v1       #data:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 172
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5
.end method

.method private static createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "params"

    .prologue
    .line 254
    const-string v0, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    const-string v0, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    const-string v0, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    const-string v0, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    const-string v0, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    const-string v0, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    const-string v0, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    const-string v0, "datatype"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    const-string v0, "userlat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    const-string v0, "userlng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    const-string v0, "maptype"

    const-string v1, "soso"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    const-string v0, "sig"

    invoke-static {p1}, Lcom/didi/common/util/Signature;->generateSignature(Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
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

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    const-string v0, "pixels"

    sget-object v1, Lcom/didi/common/util/Constant;->SCREEN_PIXELS:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    const-string v0, "mac"

    sget-object v1, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    const-string v0, "cpu"

    sget-object v1, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    const-string v0, "android_id"

    sget-object v1, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    const-string v0, "uuid"

    sget-object v1, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    const-string v0, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/taxi/net/TaxiRequest;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doFinishOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "type"
    .parameter "content"
    .parameter "confirm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 729
    .local p4, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 730
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 731
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 732
    const-string v2, "pcomplainttype"

    invoke-static {v0, v2, p1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 733
    const-string v2, "pcomplaint"

    invoke-static {v0, v2, p2}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 734
    if-eqz p3, :cond_0

    .line 735
    const-string v2, "first"

    const-string v3, "1"

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 737
    :cond_0
    const-string v2, "p_terminateorder"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;-><init>()V

    invoke-virtual {v2, v1, v0, p4, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 739
    return-void
.end method

.method public static doGetDriverInfo(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V
    .locals 4
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
            "Lcom/didi/taxi/model/TaxiDriverPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 817
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiDriverPage;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 818
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 819
    const-string v2, "did"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 820
    const-string v2, "page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 821
    const-string v2, "p_getdriverinfo"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/taxi/model/TaxiDriverPage;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiDriverPage;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 823
    return-void
.end method

.method public static doGetGenPayParams(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "cost"
    .parameter "couponid"
    .parameter "phone"
    .parameter "ticketId"
    .parameter "returnUrl"
    .parameter "attach"
    .parameter "openId"
    .parameter "enterpriseStatus"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/PayParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 910
    .local p9, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/PayParams;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 911
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 912
    const-string v2, "out_trade_no"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 913
    const-string v2, "coupon_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 914
    const-string v2, "phone"

    invoke-static {v0, v2, p3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 915
    const-string v2, "cost"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 916
    const-string v2, "return_url"

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 917
    const-string v2, "attach"

    invoke-static {v0, v2, p6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 918
    const-string v2, "enable_hongbao"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 919
    const-string v2, "dcq_id"

    invoke-static {v0, v2, p4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 920
    const-string v2, "enterprise_status"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 922
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 923
    const-string v2, "openid"

    invoke-static {v0, v2, p7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 925
    :cond_0
    const-string v2, "wxPay/genPayParams"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createPayUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/PayParams;

    invoke-direct {v3}, Lcom/didi/common/model/PayParams;-><init>()V

    invoke-virtual {v2, v1, v0, p9, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 928
    return-void
.end method

.method public static doGetNewGenPayParams(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "cost"
    .parameter "couponid"
    .parameter "phone"
    .parameter "ticketId"
    .parameter "returnUrl"
    .parameter "attach"
    .parameter "openId"
    .parameter "code"
    .parameter "enterpriseStatus"
    .parameter "channelId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/PayParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 853
    .local p11, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/PayParams;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 854
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 855
    const-string v2, "out_trade_no"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 856
    const-string v2, "coupon_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 857
    const-string v2, "phone"

    invoke-static {v0, v2, p3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 858
    const-string v2, "cost"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 859
    const-string v2, "return_url"

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 860
    const-string v2, "attach"

    invoke-static {v0, v2, p6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 861
    const-string v2, "enable_hongbao"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 862
    const-string v2, "dcq_id"

    invoke-static {v0, v2, p4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 863
    const-string v2, "enterprise_status"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 864
    const-string v2, "channel_id"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 866
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 867
    const-string v2, "code"

    invoke-static {v0, v2, p8}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 870
    :cond_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 871
    const-string v2, "openid"

    invoke-static {v0, v2, p7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    :cond_1
    const-string v2, "payservice/genPayParams"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createPayUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/PayParams;

    invoke-direct {v3}, Lcom/didi/common/model/PayParams;-><init>()V

    invoke-virtual {v2, v1, v0, p11, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 876
    return-void
.end method

.method public static doGetNewPayResult(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiPayResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiPayResult;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 883
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 884
    const-string v2, "orderid"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 885
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 886
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 887
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 888
    const-string v2, "payservice/getPayResult"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createPayUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/taxi/model/TaxiPayResult;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiPayResult;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 891
    return-void
.end method

.method public static doGetOnCar(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
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
    .line 754
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 755
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 756
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 757
    const-string v2, "p_setoncar"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/RelationCancelResult;

    invoke-direct {v3}, Lcom/didi/common/model/RelationCancelResult;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 759
    return-void
.end method

.method public static doGetPayResult(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiPayResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 932
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiPayResult;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 933
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 934
    const-string v2, "orderid"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 935
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 936
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 937
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 938
    const-string v2, "wxPay/getpayresult"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createPayUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 939
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/taxi/model/TaxiPayResult;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiPayResult;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 941
    return-void
.end method

.method public static getCancelReasonCustomParams()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1146
    sget-object v4, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v4}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v3

    check-cast v3, Lcom/didi/taxi/model/TaxiOrder;

    .line 1147
    .local v3, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    const-string v2, ""

    .line 1148
    .local v2, oid:Ljava/lang/String;
    const-string v1, ""

    .line 1149
    .local v1, dPhone:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->isNewServerManageMent()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "1"

    .line 1150
    .local v0, control:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 1151
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    .line 1152
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1153
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/taxi/model/TaxiDriver;->virtualMobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1154
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v4

    iget-object v1, v4, Lcom/didi/taxi/model/TaxiDriver;->virtualMobile:Ljava/lang/String;

    .line 1160
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&d_phone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&openid=&guankong="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1149
    .end local v0           #control:Ljava/lang/String;
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 1156
    .restart local v0       #control:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v4

    iget-object v1, v4, Lcom/didi/taxi/model/TaxiDriver;->phone:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getCancelReasonUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/taxi/net/TaxiRequest;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p_cancel_reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDiverPos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "lng"
    .parameter "lat"
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiPosition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 743
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiPosition;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 744
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    const-string v2, "lng"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    const-string v2, "lat"

    invoke-static {v0, v2, p1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 747
    const-string v2, "oid"

    invoke-static {v0, v2, p2}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    const-string v2, "p_getdriverpos"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/taxi/model/TaxiPosition;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiPosition;-><init>()V

    invoke-virtual {v2, v1, v0, p3, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 750
    return-void
.end method

.method public static getDrivers(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "area"
    .parameter "lat1"
    .parameter "lng1"
    .parameter "lat2"
    .parameter "lng2"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiDriverList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 661
    .local p5, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiDriverList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 662
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "lat1"

    invoke-static {v0, v2, p1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 663
    const-string v2, "lng1"

    invoke-static {v0, v2, p2}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 664
    const-string v2, "0.0"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0.0"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 665
    const-string v2, "lat2"

    invoke-static {v0, v2, p3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 666
    const-string v2, "lng2"

    invoke-static {v0, v2, p4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 668
    :cond_0
    const-string v2, "area"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 669
    const-string v2, "p_getdrivers"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/taxi/model/TaxiDriverList;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiDriverList;-><init>()V

    invoke-virtual {v2, v1, v0, p5, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 671
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
    .line 1039
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/map/modle/SoSoGeoCoder;>;"
    const-string v1, "http://apis.map.qq.com/ws/geocoder/v1/?"

    .line 1040
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

    .line 1043
    .local v0, params:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1044
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    const/4 v3, 0x0

    new-instance v4, Lcom/didi/map/modle/SoSoGeoCoder;

    invoke-direct {v4}, Lcom/didi/map/modle/SoSoGeoCoder;-><init>()V

    invoke-virtual {v2, v1, v3, p2, v4}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 1045
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
            "Lcom/didi/taxi/model/TaxiHistoryOrder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1008
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiHistoryOrder;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 1009
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1010
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1011
    const-string v2, "p_getorderdetail"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 1012
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/taxi/model/TaxiHistoryOrder;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiHistoryOrder;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 1013
    return-void
.end method

.method public static getMyAccount(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/CommonAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 995
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/CommonAccount;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 996
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 997
    const-string v2, "p_getaccountinfo"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 998
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/CommonAccount;

    invoke-direct {v3}, Lcom/didi/common/model/CommonAccount;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 999
    return-void
.end method

.method public static getMyTicketUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/taxi/net/TaxiRequest;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "p_coupon/couponinfo?pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&page=1&product_id=100"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNearbyDrivers(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiDriverList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiDriverList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 643
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "lat"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 644
    const-string v2, "lng"

    invoke-static {v0, v2, p1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    const-string v2, "accuracy"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 646
    const-string v2, "p_nearbydrivers"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/taxi/model/TaxiDriverList;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiDriverList;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 648
    return-void
.end method

.method public static getOrderStatus(Lcom/didi/common/net/ResponseListener;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiOrderState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiOrderState;>;"
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v4

    .line 522
    .local v4, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, lng:Ljava/lang/String;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/didi/taxi/net/TaxiRequest;->getOrderStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 526
    return-void
.end method

.method public static getOrderStatus(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 8
    .parameter "oid"
    .parameter "did"
    .parameter "status"
    .parameter "wait"
    .parameter "lng"
    .parameter "lat"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiOrderState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p6, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiOrderState;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/didi/taxi/net/TaxiRequest;->getOrderStatus(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;Z)V

    .line 548
    return-void
.end method

.method public static getOrderStatus(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;Z)V
    .locals 7
    .parameter "oid"
    .parameter "did"
    .parameter "status"
    .parameter "wait"
    .parameter "lng"
    .parameter "lat"
    .parameter
    .parameter "gsflow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiOrderState;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p6, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiOrderState;>;"
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    .line 572
    .local v1, send:Lcom/didi/frame/Sendable;
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 573
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v3, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 574
    const-string v3, "oid"

    invoke-static {v0, v3, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 575
    const-string v3, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 577
    if-gez p3, :cond_0

    .line 578
    const/4 p3, 0x0

    .line 580
    :cond_0
    const-string v3, "wait"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 581
    const-string v4, "lat"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_0
    invoke-static {v0, v4, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    const-string v4, "lng"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_1
    invoke-static {v0, v4, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    const-string v4, "dlat"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v0, v4, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    const-string v4, "dlng"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {v0, v4, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    const-string v3, "platform"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 588
    const-string v3, "did"

    invoke-static {v0, v3, p1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    const-string v3, "p_getorderstatus"

    invoke-static {v3, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, url:Ljava/lang/String;
    const-string v3, "gsflow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u662f\u5426\u613f\u610f\u62fc\u8f66 orderstatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    new-instance v3, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v3}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v4, Lcom/didi/taxi/model/TaxiOrderState;

    invoke-direct {v4}, Lcom/didi/taxi/model/TaxiOrderState;-><init>()V

    invoke-virtual {v3, v2, v0, p6, v4}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 593
    return-void

    .line 581
    .end local v2           #url:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 583
    :cond_2
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 585
    :cond_3
    const-string v3, ""

    goto :goto_2

    .line 586
    :cond_4
    const-string v3, ""

    goto :goto_3
.end method

.method public static getOrderStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 7
    .parameter "oid"
    .parameter "did"
    .parameter "status"
    .parameter "lng"
    .parameter "lat"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiOrderState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p5, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiOrderState;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/didi/taxi/net/TaxiRequest;->getOrderStatus(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 513
    return-void
.end method

.method public static getPaySaleInfo(Ljava/lang/String;IILjava/lang/String;ILcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "cost"
    .parameter "couponid"
    .parameter "ticketId"
    .parameter "enterpriseStatus"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiLivePaySale;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 957
    .local p5, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiLivePaySale;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 958
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 959
    const-string v2, "coupon_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 960
    const-string v2, "orderid"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 961
    const-string v2, "cost"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 962
    const-string v2, "enterprise_status"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 964
    invoke-static {p3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 965
    const-string v2, "dcq_id"

    invoke-static {v0, v2, p3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 967
    :cond_0
    const-string v2, "p_getpayinfo"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/taxi/model/TaxiLivePaySale;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiLivePaySale;-><init>()V

    invoke-virtual {v2, v1, v0, p5, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 969
    return-void
.end method

.method public static getPrePayInfo(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "ticketId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiPrePayInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1027
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiPrePayInfo;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 1028
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1029
    const-string v2, "orderid"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1030
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1031
    const-string v2, "dcq_id"

    invoke-static {v0, v2, p1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1033
    :cond_0
    const-string v2, "p_getprepayinfo"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 1034
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/taxi/model/TaxiPrePayInfo;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiPrePayInfo;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 1035
    return-void
.end method

.method public static getSNSConfig(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/SNSConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/SNSConfig;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 716
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 717
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 718
    const-string v2, "apptype"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 719
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 720
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 722
    const-string v2, "p_snsconfig"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/SNSConfig;

    invoke-direct {v3}, Lcom/didi/common/model/SNSConfig;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 724
    return-void
.end method

.method public static getServerMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "phone"
    .parameter "imei"
    .parameter "latitude"
    .parameter "longitude"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/ServerMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p4, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/ServerMessage;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 414
    .local v0, params:Lcom/didi/common/net/HttpParams;
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 415
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    :goto_0
    const-string v2, "p_getmsgdata"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/ServerMessage;

    invoke-direct {v3}, Lcom/didi/common/model/ServerMessage;-><init>()V

    invoke-virtual {v2, v1, v0, p4, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 424
    return-void

    .line 417
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    const-string v2, "imei"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    const-string v2, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    const-string v2, "lat"

    invoke-static {v0, v2, p2}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    const-string v2, "lng"

    invoke-static {v0, v2, p3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getSupplyCoupon(Lcom/didi/common/net/ResponseListener;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiSupplyCoupon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiSupplyCoupon;>;"
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    .line 602
    .local v1, send:Lcom/didi/frame/Sendable;
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 603
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v3, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 605
    const-string v3, "oid"

    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/taxi/business/TaxiOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    const-string v4, "lat"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_0
    invoke-static {v0, v4, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 609
    const-string v4, "lng"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_1
    invoke-static {v0, v4, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    const-string v4, "dlat"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v0, v4, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 612
    const-string v4, "dlng"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {v0, v4, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 613
    const-string v3, "platform"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 615
    const-string v3, "p_supplycoupon"

    invoke-static {v3, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, url:Ljava/lang/String;
    const-string v3, "supplycoupon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    new-instance v3, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v3}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v4, Lcom/didi/taxi/model/TaxiSupplyCoupon;

    invoke-direct {v4}, Lcom/didi/taxi/model/TaxiSupplyCoupon;-><init>()V

    invoke-virtual {v3, v2, v0, p0, v4}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 618
    return-void

    .line 607
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 609
    :cond_1
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 611
    :cond_2
    const-string v3, ""

    goto :goto_2

    .line 612
    :cond_3
    const-string v3, ""

    goto :goto_3
.end method

.method public static getTaxiBaseUrlParamString(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "params"

    .prologue
    .line 278
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 279
    .local v0, commonParams:Lcom/didi/common/net/HttpParams;
    const-string v1, "vcode"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 280
    const-string v1, "dviceid"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 281
    const-string v1, "appversion"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 282
    const-string v1, "model"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 283
    const-string v1, "os"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 284
    const-string v1, "imei"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 285
    const-string v1, "suuid"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 286
    const-string v1, "channel"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 287
    const-string v1, "datatype"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 288
    const-string v1, "sig"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 289
    const-string v1, "lat"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 290
    const-string v1, "lng"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 291
    const-string v1, "maptype"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 292
    const-string v1, "cancel"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 293
    const-string v1, "mac"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 294
    const-string v1, "cpu"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 295
    const-string v1, "android_id"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 296
    const-string v1, "uuid"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 297
    const-string v1, "city_id"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 298
    const-string v1, "networkType"

    invoke-static {p1, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTrasactionList(IILcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "lastTransactionId"
    .parameter "count"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/taxi/model/TaxiTransactionList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiTransactionList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 982
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 983
    const-string v2, "startid"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 984
    const-string v2, "reqno"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 985
    const-string v2, "p_gettransactions"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 986
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/taxi/model/TaxiTransactionList;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiTransactionList;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 987
    return-void
.end method

.method public static logAddress(Lcom/didi/common/model/Address;Ljava/lang/String;ZZZIZLjava/lang/String;)V
    .locals 8
    .parameter "poi"
    .parameter "inputText"
    .parameter "isInstantOrder"
    .parameter "isStartAddress"
    .parameter "isCurrentAddress"
    .parameter "dataIndex"
    .parameter "isCustomAddress"
    .parameter "searchId"

    .prologue
    .line 457
    if-eqz p2, :cond_2

    const/4 v1, 0x0

    .line 458
    .local v1, orderType:I
    :goto_0
    if-eqz p3, :cond_3

    const/4 v0, 0x0

    .line 459
    .local v0, addressType:I
    :goto_1
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getSource()Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, source:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 463
    if-eqz p6, :cond_0

    .line 464
    const/4 v1, 0x2

    .line 465
    const-string v3, "p_confirm"

    .line 467
    :cond_0
    if-eqz p4, :cond_1

    .line 468
    const/4 v0, 0x0

    .line 469
    const/4 v1, 0x2

    .line 472
    :cond_1
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v2

    .line 473
    .local v2, params:Lcom/didi/common/net/HttpParams;
    const-string v5, "sourcetype"

    invoke-static {v2, v5, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 474
    const-string v5, "ordertype"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    const-string v5, "addrtype"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 476
    const-string v5, "displayname"

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    const-string v5, "query"

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getKeyword()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    const-string v5, "inputtext"

    invoke-static {v2, v5, p1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    const-string v5, "address"

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    const-string v5, "city_id"

    iget-object v6, p0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    const-string v5, "tag"

    iget-object v6, p0, Lcom/didi/common/model/Address;->tag:Ljava/lang/String;

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    const-string v5, "runtime"

    invoke-static {}, Lcom/didi/common/helper/TimeHelper;->getOrderTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/didi/common/util/Utils;->formatDate(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    const-string v6, "is_hand"

    if-eqz p6, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v6, v5}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    const-string v5, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    const-string v5, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    const-string v5, "selectid"

    add-int/lit8 v6, p5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    const-string v5, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    const-string v5, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    const-string v5, "sel_lat"

    iget-object v6, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    const-string v5, "sel_lng"

    iget-object v6, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {v2, v5, v6}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    const-string v5, "searchid"

    invoke-static {v2, v5, p7}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    const-string v6, "productline"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    sget-object v7, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v5, v7, :cond_5

    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v6, v5}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    const-string v5, "p_noticeaddress"

    invoke-static {v5, v2}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, url:Ljava/lang/String;
    new-instance v5, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v5}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    const/4 v6, 0x0

    new-instance v7, Lcom/didi/common/model/BaseObject;

    invoke-direct {v7}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v5, v4, v2, v6, v7}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 495
    return-void

    .line 457
    .end local v0           #addressType:I
    .end local v1           #orderType:I
    .end local v2           #params:Lcom/didi/common/net/HttpParams;
    .end local v3           #source:Ljava/lang/String;
    .end local v4           #url:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 458
    .restart local v1       #orderType:I
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 483
    .restart local v0       #addressType:I
    .restart local v2       #params:Lcom/didi/common/net/HttpParams;
    .restart local v3       #source:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 492
    :cond_5
    const/4 v5, 0x1

    goto :goto_3
.end method

.method public static logSelectedAddress(Lcom/didi/common/model/Address;Ljava/lang/String;ZZZILjava/lang/String;)V
    .locals 8
    .parameter "poi"
    .parameter "inputText"
    .parameter "isInstantOrder"
    .parameter "isStartAddress"
    .parameter "isCurrentAddress"
    .parameter "dataIndex"
    .parameter "searchId"

    .prologue
    .line 439
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/didi/taxi/net/TaxiRequest;->logAddress(Lcom/didi/common/model/Address;Ljava/lang/String;ZZZIZLjava/lang/String;)V

    .line 440
    return-void
.end method

.method private static put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .parameter "params"
    .parameter "key"
    .parameter "file"

    .prologue
    .line 347
    if-nez p2, :cond_0

    .line 350
    :goto_0
    return-void

    .line 349
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
    .line 333
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, stringValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter "params"
    .parameter "key"
    .parameter "value1"
    .parameter "value2"

    .prologue
    .line 353
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, string1:Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, string2:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 356
    .local v2, value:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    :goto_1
    return-void

    .end local v2           #value:Ljava/lang/String;
    :cond_0
    move-object v2, v0

    .line 355
    goto :goto_0

    .line 358
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V
    .locals 2
    .parameter "params"
    .parameter "commonParams"
    .parameter "key"

    .prologue
    .line 340
    invoke-virtual {p0, p2}, Lcom/didi/common/net/HttpParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, stringValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static resendOrder(Lcom/didi/taxi/model/TaxiOrder;Lcom/didi/common/net/ResponseListener;)V
    .locals 6
    .parameter "order"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/taxi/model/TaxiOrder;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 374
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    const-string v2, "oid"

    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    const-string v2, "tip"

    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->getTipParam()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->getWaitTime()I

    move-result v2

    if-lez v2, :cond_0

    .line 378
    const-string v2, "extra_waittime"

    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->getWaitTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    :cond_0
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/TaxiPreferences;->isOpenShareTrip()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->getOrderTypeInt()I

    move-result v2

    sget-object v3, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v3}, Lcom/didi/frame/business/OrderType;->getIntValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 381
    const-string v2, "trip_type"

    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    :cond_1
    const-string v2, "isnew_extra"

    const-string v3, "1"

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 385
    const-string v2, "extra_info"

    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    sget-object v2, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    invoke-virtual {v2}, Lcom/didi/common/model/CommonVirtualMobile;->isShow()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    invoke-virtual {v2}, Lcom/didi/common/model/CommonVirtualMobile;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    const-string v2, "virtual_mobile_status"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getVirtualStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    :cond_2
    const-string v2, "maptype"

    const-string v3, "soso"

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    const-string v3, "lat"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->getStartLatDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_0
    invoke-static {v0, v3, v2}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    const-string v3, "lng"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->getStartLngDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_1
    invoke-static {v0, v3, v2}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    const-string v3, "dlat"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v0, v3, v2}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    const-string v3, "dlng"

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v0, v3, v2}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    const-string v2, "accuracy"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    const-string v2, "p_recall"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 400
    return-void

    .line 391
    .end local v1           #url:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 393
    :cond_4
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 395
    :cond_5
    const-string v2, ""

    goto :goto_2

    .line 396
    :cond_6
    const-string v2, ""

    goto :goto_3
.end method

.method public static sendAppInfoLog(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "appList"
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
    .line 1130
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 1131
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1132
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1133
    const-string v2, "ostype"

    const-string v3, "2"

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1134
    const-string v2, "usertype"

    const-string v3, "3"

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1135
    const-string v2, "app_list"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1136
    const-string v2, "p_gettracelog"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------sendAppInfolog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1138
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 1139
    return-void
.end method

.method public static sendOnlineLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "oid"
    .parameter "driverPhone"

    .prologue
    .line 1059
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 1060
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1061
    const-string v2, "phonesrc"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1062
    const-string v2, "phonetarget"

    invoke-static {v0, v2, p1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1063
    const-string v2, "type"

    const-string v3, "callfrompass"

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1064
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1065
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1066
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1067
    const-string v2, "maptype"

    const-string v3, "soso"

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1069
    const-string v2, "onlinelog"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 1070
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    const/4 v3, 0x0

    new-instance v4, Lcom/didi/common/model/BaseObject;

    invoke-direct {v4}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 1071
    return-void
.end method

.method public static sendPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "lat"
    .parameter "lng"
    .parameter "oid"

    .prologue
    .line 1049
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 1050
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1051
    const-string v2, "orderid"

    invoke-static {v0, v2, p2}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1052
    const-string v2, "lat"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1053
    const-string v2, "lng"

    invoke-static {v0, v2, p1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1054
    const-string v2, "p_logloc"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    const/4 v3, 0x0

    new-instance v4, Lcom/didi/common/model/BaseObject;

    invoke-direct {v4}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 1056
    return-void
.end method

.method public static sendlog(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "logPath"
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
    .line 1118
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 1119
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1120
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1121
    const-string v2, "ostype"

    const-string v3, "2"

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1122
    const-string v2, "usertype"

    const-string v3, "3"

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1123
    const-string v2, "__x_log"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/io/File;)V

    .line 1124
    const-string v2, "p_gettracelog"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 1125
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------sendnetlog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1126
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 1127
    return-void
.end method

.method public static updateRelation(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter "type"
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
    .line 1017
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 1018
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1019
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1020
    const-string v2, "type"

    invoke-static {v0, v2, p1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1021
    const-string v2, "p_push_relation"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 1023
    return-void
.end method

.method public static uploadCid()V
    .locals 7

    .prologue
    .line 1092
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getClientIdString()Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, mCid:Ljava/lang/String;
    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 1094
    .local v1, mToken:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-----------------update cid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1095
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v2

    .line 1096
    .local v2, params:Lcom/didi/common/net/HttpParams;
    const-string v4, "token"

    invoke-static {v2, v4, v1}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1097
    const-string v4, "cid"

    invoke-static {v2, v4, v0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1098
    const-string v4, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1099
    const-string v4, "lat"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getMyLat()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1100
    const-string v4, "lng"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getMyLng()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1101
    const-string v4, "brand_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getMiPushRegId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1102
    const-string v4, "brand"

    const-string v5, "xiaomi"

    invoke-static {v2, v4, v5}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1103
    const-string v4, "p_cidcollector"

    invoke-static {v4, v2}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v3

    .line 1104
    .local v3, url:Ljava/lang/String;
    new-instance v4, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v4}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v5, Lcom/didi/taxi/net/TaxiRequest$2;

    invoke-direct {v5}, Lcom/didi/taxi/net/TaxiRequest$2;-><init>()V

    new-instance v6, Lcom/didi/common/model/BaseObject;

    invoke-direct {v6}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v4, v3, v2, v5, v6}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 1110
    return-void
.end method

.method public static uploadCid(Ljava/lang/String;)V
    .locals 5
    .parameter "cid"

    .prologue
    .line 1075
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 1076
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "cid"

    invoke-static {v0, v2, p0}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1077
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getMyLat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1078
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getMyLng()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1079
    const-string v2, "brand_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getMiPushRegId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1080
    const-string v2, "brand"

    const-string v3, "xiaomi"

    invoke-static {v0, v2, v3}, Lcom/didi/taxi/net/TaxiRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1081
    const-string v2, "p_cidcollector"

    invoke-static {v2, v0}, Lcom/didi/taxi/net/TaxiRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/taxi/net/TaxiHttpRequest;

    invoke-direct {v2}, Lcom/didi/taxi/net/TaxiHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/taxi/net/TaxiRequest$1;

    invoke-direct {v3}, Lcom/didi/taxi/net/TaxiRequest$1;-><init>()V

    new-instance v4, Lcom/didi/common/model/BaseObject;

    invoke-direct {v4}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/didi/taxi/net/TaxiHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 1088
    return-void
.end method
