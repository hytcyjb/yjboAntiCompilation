.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$19;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onOrderNewRealtimeCountPushReceived(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

.field final synthetic val$realtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarOrderNewRealtimeCount;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$19;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iput-object p2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$19;->val$realtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1205
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$19;->val$realtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$19;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showRealtimeMarker(Lcom/didi/car/model/CarOrderNewRealtimeCount;Z)V

    .line 1206
    return-void

    .line 1205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
