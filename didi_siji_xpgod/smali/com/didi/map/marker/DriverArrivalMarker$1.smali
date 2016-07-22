.class Lcom/didi/map/marker/DriverArrivalMarker$1;
.super Ljava/lang/Object;
.source "DriverArrivalMarker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/marker/DriverArrivalMarker;->hideMarker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/marker/DriverArrivalMarker;


# direct methods
.method constructor <init>(Lcom/didi/map/marker/DriverArrivalMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/didi/map/marker/DriverArrivalMarker$1;->this$0:Lcom/didi/map/marker/DriverArrivalMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/didi/map/marker/DriverArrivalMarker$1;->this$0:Lcom/didi/map/marker/DriverArrivalMarker;

    iget-object v0, v0, Lcom/didi/map/marker/DriverArrivalMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowStillVisible(Z)V

    .line 119
    iget-object v0, p0, Lcom/didi/map/marker/DriverArrivalMarker$1;->this$0:Lcom/didi/map/marker/DriverArrivalMarker;

    iget-object v0, v0, Lcom/didi/map/marker/DriverArrivalMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setVisible(Z)V

    goto :goto_0
.end method
