.class final Lcom/didi/common/helper/DriversHelper$2;
.super Ljava/lang/Object;
.source "DriversHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/helper/DriversHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------------getNearDriversLooper----------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---isConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getSmoothHomeFreguency()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->isConnected()Z

    move-result v0

    .line 149
    .local v0, isPushConnected:Z
    const/4 v1, 0x0

    .line 150
    .local v1, type:I
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_2

    .line 151
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/car/config/CarPreferences;->getCarConfigLevelType()I

    move-result v1

    .line 155
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 156
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/protobuffer/OrderStat;->HomePage:Lcom/didi/frame/protobuffer/OrderStat;

    invoke-static {v2, v1, v3}, Lcom/didi/car/helper/CarPushHelper;->sendLocationCallNearDrivers(Lcom/didi/frame/business/Business;ILcom/didi/frame/protobuffer/OrderStat;)V

    .line 161
    :goto_1
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/FragmentMgr;->isRealtimeFragment()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$300()Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getSmoothHomeFreguency()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    :cond_1
    return-void

    .line 152
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_0

    .line 153
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/car/config/CarPreferences;->getFlierConfigLevelType()I

    move-result v1

    goto :goto_0

    .line 158
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/protobuffer/OrderStat;->HomePage:Lcom/didi/frame/protobuffer/OrderStat;

    invoke-virtual {v3}, Lcom/didi/frame/protobuffer/OrderStat;->getValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/didi/common/helper/DriversHelper;->getHttpSendLocationListner(Z)Lcom/didi/common/net/ResponseListener;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/didi/common/net/CommonRequest;->sendLocationCallNearDrivers(Lcom/didi/frame/business/Business;IILcom/didi/common/net/ResponseListener;)V

    goto :goto_1
.end method
