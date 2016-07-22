.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$12;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;


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
    .line 1047
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$12;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderRealtimeCountReceived(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V
    .locals 1
    .parameter "realtimeCount"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$12;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onOrderNewRealtimeCountPushReceived(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V
    invoke-static {v0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1600(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarOrderNewRealtimeCount;)V

    .line 1052
    return-void
.end method
