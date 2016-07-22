.class public Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;
.super Ljava/lang/Object;
.source "EsGameOnDriverPositionReceivedListener.java"

# interfaces
.implements Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "EsGameOnDriverPositionReceivedListener"

.field private static listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public key:Ljava/lang/String;

.field public mArrivalTriggered:Z

.field public mQiangDanTriggered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->listenerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->mQiangDanTriggered:Z

    .line 30
    iput-boolean v0, p0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->mArrivalTriggered:Z

    .line 35
    iput-object p1, p0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->key:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 115
    sget-object v1, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->listenerMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->listenerMap:Ljava/util/Map;

    .line 118
    :cond_0
    sget-object v1, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->listenerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;

    .local v0, listener:Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;
    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;

    .end local v0           #listener:Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;
    invoke-direct {v0, p0}, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v0       #listener:Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;
    sget-object v1, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->listenerMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    sget v1, Lcom/didi/common/util/Constant;->TaxiOrderType:I

    packed-switch v1, :pswitch_data_0

    .line 131
    iput-boolean v2, v0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->mQiangDanTriggered:Z

    .line 132
    iput-boolean v2, v0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->mArrivalTriggered:Z

    .line 135
    :goto_0
    return-object v0

    .line 125
    :pswitch_0
    iput-boolean v3, v0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->mQiangDanTriggered:Z

    .line 126
    iput-boolean v3, v0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->mArrivalTriggered:Z

    .line 128
    :pswitch_1
    iput-boolean v2, v0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->mQiangDanTriggered:Z

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isArrived(Lcom/didi/taxi/model/TaxiOrderState;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 5
    .parameter "orderState"
    .parameter "taxiOrder"

    .prologue
    const/4 v4, 0x1

    .line 93
    const-string v1, "EsGameOnDriverPositionReceivedListener"

    const-string v2, "onDriverPostionReceived---33---isArrived"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-boolean v1, p0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->mArrivalTriggered:Z

    if-nez v1, :cond_0

    .line 95
    iput-boolean v4, p0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->mArrivalTriggered:Z

    .line 96
    invoke-virtual {p2}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v0

    .line 97
    .local v0, driver:Lcom/didi/taxi/model/TaxiDriver;
    const-string v1, "EsGameOnDriverPositionReceivedListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDriverPostionReceived---4---driver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-nez v0, :cond_1

    .line 105
    .end local v0           #driver:Lcom/didi/taxi/model/TaxiDriver;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v0       #driver:Lcom/didi/taxi/model/TaxiDriver;
    :cond_1
    const-string v1, "EsGameOnDriverPositionReceivedListener"

    const-string v2, "onDriverPostionReceived---5---show"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, v0, Lcom/didi/taxi/model/TaxiDriver;->avatarUrl:Ljava/lang/String;

    iget-object v2, v0, Lcom/didi/taxi/model/TaxiDriver;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/didi/taxi/model/TaxiDriver;->card:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    goto :goto_0
.end method

.method private notArrived(Lcom/didi/taxi/model/TaxiOrderState;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 8
    .parameter "orderState"
    .parameter "taxiOrder"

    .prologue
    const/4 v5, 0x1

    .line 71
    const-string v0, "EsGameOnDriverPositionReceivedListener"

    const-string v1, "onDriverPostionReceived--notArrived---33---notArrived"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->mQiangDanTriggered:Z

    if-nez v0, :cond_0

    .line 73
    iput-boolean v5, p0, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->mQiangDanTriggered:Z

    .line 74
    invoke-virtual {p2}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v6

    .line 75
    .local v6, driver:Lcom/didi/taxi/model/TaxiDriver;
    const-string v0, "EsGameOnDriverPositionReceivedListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDriverPostionReceived--notArrived---4---driver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    if-nez v6, :cond_1

    .line 84
    .end local v6           #driver:Lcom/didi/taxi/model/TaxiDriver;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v6       #driver:Lcom/didi/taxi/model/TaxiDriver;
    :cond_1
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "EsGameOnDriverPositionReceivedListener"

    const-string v1, "onDriverPostionReceived--notArrived---5---show"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, v6, Lcom/didi/taxi/model/TaxiDriver;->avatarUrl:Ljava/lang/String;

    iget-object v1, v6, Lcom/didi/taxi/model/TaxiDriver;->name:Ljava/lang/String;

    iget-object v2, v6, Lcom/didi/taxi/model/TaxiDriver;->card:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    iget-object v3, v3, Lcom/didi/taxi/model/TaxiPosition;->distance:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    iget v7, v7, Lcom/didi/taxi/model/TaxiPosition;->arrivedTime:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    goto :goto_0
.end method

.method public static removeListener(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 145
    sget-object v1, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->listenerMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 147
    :try_start_0
    sget-object v1, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->listenerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onDriverPostionReceived(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 6
    .parameter "orderState"

    .prologue
    .line 40
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/taxi/model/TaxiOrder;

    .line 41
    .local v2, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    const-string v3, "EsGameOnDriverPositionReceivedListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDriverPostionReceived---1---orderState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "EsGameOnDriverPositionReceivedListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDriverPostionReceived---1---taxiOrder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    if-nez v2, :cond_1

    .line 44
    const-string v3, "EsGameOnDriverPositionReceivedListener"

    const-string v4, "onDriverPostionReceived---2---taxiOrder == null ?"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    .line 48
    .local v0, ca:Lcom/didi/common/model/CommonAttributes;
    if-eqz v0, :cond_0

    .line 50
    const-string v3, "EsGameOnDriverPositionReceivedListener"

    const-string v4, "onDriverPostionReceived---3---ca \uff01=null ?"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget v1, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 52
    .local v1, status:I
    if-lez v1, :cond_0

    .line 54
    iget-boolean v3, p1, Lcom/didi/taxi/model/TaxiOrderState;->isArrieved:Z

    if-eqz v3, :cond_2

    .line 55
    invoke-direct {p0, p1, v2}, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->isArrived(Lcom/didi/taxi/model/TaxiOrderState;Lcom/didi/taxi/model/TaxiOrder;)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/didi/game/common/listener/EsGameOnDriverPositionReceivedListener;->notArrived(Lcom/didi/taxi/model/TaxiOrderState;Lcom/didi/taxi/model/TaxiOrder;)V

    goto :goto_0
.end method
