.class Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$4;
.super Ljava/lang/Object;
.source "DDriveWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/soso/location/view/LocationView$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->initLocationView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onchange()V
    .locals 4

    .prologue
    .line 497
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$400(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/managers/DriverComingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/managers/DriverComingManager;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/managers/DriverComingManager;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v0, v0, Lcom/didi/ddrive/net/http/response/Position;->lat:D

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;
    invoke-static {v2}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/managers/DriverComingManager;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/Position;->lng:D

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    goto :goto_0
.end method
