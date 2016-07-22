.class Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$6;
.super Ljava/lang/Object;
.source "FlierRealtimeFragment.java"

# interfaces
.implements Lcom/didi/soso/location/view/LocationView$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$6;->this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onchange()V
    .locals 4

    .prologue
    .line 255
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapNorth(DD)V

    .line 256
    return-void
.end method
