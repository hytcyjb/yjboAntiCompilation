.class Lcom/didi/frame/departure/DepartureMap$1;
.super Ljava/lang/Object;
.source "DepartureMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/departure/DepartureMap;->onUp(FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/departure/DepartureMap;


# direct methods
.method constructor <init>(Lcom/didi/frame/departure/DepartureMap;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/didi/frame/departure/DepartureMap$1;->this$0:Lcom/didi/frame/departure/DepartureMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/didi/frame/departure/DepartureMap;->access$000()Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/departure/DepartureMap;->access$100()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getCameraPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/departure/DepartureMap;->access$100()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getCameraPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->target:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/didi/frame/departure/DepartureMap;->access$000()Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureMap;->access$100()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getCameraPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->target:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-interface {v0, v1}, Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;->onUp(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 142
    :cond_0
    return-void
.end method
