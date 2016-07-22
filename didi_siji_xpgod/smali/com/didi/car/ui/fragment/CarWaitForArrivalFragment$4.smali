.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$4;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 486
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 492
    .local v6, driversId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    iget-object v0, v0, Lcom/didi/car/model/CarDriver;->did:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 493
    .local v7, did:J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    const-wide/16 v1, 0x0

    .line 496
    .local v1, lat:D
    const-wide/16 v3, 0x0

    .line 498
    .local v3, lng:D
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderStat:Lcom/didi/frame/protobuffer/OrderStat;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/frame/protobuffer/OrderStat;

    move-result-object v0

    sget-object v5, Lcom/didi/frame/protobuffer/OrderStat;->WaitPick:Lcom/didi/frame/protobuffer/OrderStat;

    if-ne v0, v5, :cond_2

    .line 499
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/NumberUtil;->strToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 500
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/NumberUtil;->strToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 505
    :goto_1
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    iget-object v5, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderStat:Lcom/didi/frame/protobuffer/OrderStat;
    invoke-static {v5}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/frame/protobuffer/OrderStat;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/didi/car/helper/CarPushHelper;->sendMsgCallDriverLocation(Lcom/didi/frame/business/Business;DDLcom/didi/frame/protobuffer/OrderStat;Ljava/util/List;)V

    .line 506
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$4;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mGetDriverLocationLooper:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$300(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getSmoothGoingFreguency()I

    move-result v5

    int-to-long v9, v5

    invoke-static {v0, v9, v10}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 502
    :cond_2
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v1

    .line 503
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v3

    goto :goto_1
.end method
