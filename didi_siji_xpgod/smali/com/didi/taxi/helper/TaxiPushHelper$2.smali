.class final Lcom/didi/taxi/helper/TaxiPushHelper$2;
.super Ljava/lang/Object;
.source "TaxiPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiPushHelper;->onReceiveLocateMsg([BLcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;

.field final synthetic val$orderState:Lcom/didi/taxi/model/TaxiOrderState;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$2;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;

    iput-object p2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$2;->val$orderState:Lcom/didi/taxi/model/TaxiOrderState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiPushHelper$2;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;

    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$2;->val$orderState:Lcom/didi/taxi/model/TaxiOrderState;

    invoke-interface {v0, v1}, Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;->onDriverPostionReceived(Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 187
    return-void
.end method
