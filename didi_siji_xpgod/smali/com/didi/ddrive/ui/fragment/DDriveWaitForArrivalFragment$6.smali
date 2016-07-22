.class Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$6;
.super Ljava/lang/Object;
.source "DDriveWaitForArrivalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->onEventMainThread(Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

.field final synthetic val$event:Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$6;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    iput-object p2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$6;->val$event:Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 718
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$6;->val$event:Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$6;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/managers/DriverComingManager;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v1, v1, Lcom/didi/ddrive/net/http/response/Position;->lat:D

    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$6;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;
    invoke-static {v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/managers/DriverComingManager;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v3, v3, Lcom/didi/ddrive/net/http/response/Position;->lng:D

    iget-object v5, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$6;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    invoke-virtual {v5}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->isPaused()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static/range {v0 .. v5}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showRealtimeMarker(Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;DDZ)V

    .line 721
    return-void

    .line 718
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
