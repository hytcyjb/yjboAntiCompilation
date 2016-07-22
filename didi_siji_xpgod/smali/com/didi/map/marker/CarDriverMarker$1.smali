.class Lcom/didi/map/marker/CarDriverMarker$1;
.super Ljava/lang/Object;
.source "CarDriverMarker.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/marker/CarDriverMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/marker/CarDriverMarker;


# direct methods
.method constructor <init>(Lcom/didi/map/marker/CarDriverMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/didi/map/marker/CarDriverMarker$1;->this$0:Lcom/didi/map/marker/CarDriverMarker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 104
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/CarDriverMarker$1;->this$0:Lcom/didi/map/marker/CarDriverMarker;

    #getter for: Lcom/didi/map/marker/CarDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;
    invoke-static {v0}, Lcom/didi/map/marker/CarDriverMarker;->access$000(Lcom/didi/map/marker/CarDriverMarker;)Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/CarDriverMarkerAdapter;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 107
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/map/listener/MapListener;->getCurrentMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/CarDriverMarker$1;->this$0:Lcom/didi/map/marker/CarDriverMarker;

    iget-object v1, v1, Lcom/didi/map/marker/CarDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/didi/map/marker/CarDriverMarker$1;->this$0:Lcom/didi/map/marker/CarDriverMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/CarDriverMarker;->showInfoWindow()V

    goto :goto_0
.end method
