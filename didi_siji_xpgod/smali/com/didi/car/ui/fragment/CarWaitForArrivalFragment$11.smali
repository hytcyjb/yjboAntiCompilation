.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$11;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;


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
    .line 1038
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$11;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderRealtimeCountReceived(Lcom/didi/car/model/CarOrderRealtimeCount;)V
    .locals 1
    .parameter "realtimeCount"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$11;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onOrderRealtimeCountPushReceived(Lcom/didi/car/model/CarOrderRealtimeCount;)V
    invoke-static {v0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarOrderRealtimeCount;)V

    .line 1043
    return-void
.end method
