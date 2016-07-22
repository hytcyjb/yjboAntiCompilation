.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$7;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->registerPositionPushListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDriverPostionReceived(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 1
    .parameter "orderState"

    .prologue
    .line 922
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onOrderStatusUpdated(Lcom/didi/taxi/model/TaxiOrderState;)V
    invoke-static {v0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$1200(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 923
    return-void
.end method
