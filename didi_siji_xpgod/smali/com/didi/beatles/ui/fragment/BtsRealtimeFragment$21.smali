.class Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21;
.super Ljava/lang/Object;
.source "BtsRealtimeFragment.java"

# interfaces
.implements Lcom/didi/soso/location/LocationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationUpdate(Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21;->this$0:Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/beatles/model/BtsConfig;->open:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isRemoveBtsMapUserMarker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->setBtsMapUserMarker(DD)V

    .line 1010
    :cond_0
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21$1;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21;)V

    invoke-virtual {v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21$1;->start()V

    .line 1016
    return-void
.end method
