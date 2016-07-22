.class Lcom/didi/map/marker/DDriveDriverMarker$1;
.super Ljava/lang/Object;
.source "DDriveDriverMarker.java"

# interfaces
.implements Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/map/marker/DDriveDriverMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/map/marker/DDriveDriverMarker;


# direct methods
.method constructor <init>(Lcom/didi/map/marker/DDriveDriverMarker;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/didi/map/marker/DDriveDriverMarker$1;->this$0:Lcom/didi/map/marker/DDriveDriverMarker;

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
    iget-object v0, p0, Lcom/didi/map/marker/DDriveDriverMarker$1;->this$0:Lcom/didi/map/marker/DDriveDriverMarker;

    #getter for: Lcom/didi/map/marker/DDriveDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;
    invoke-static {v0}, Lcom/didi/map/marker/DDriveDriverMarker;->access$000(Lcom/didi/map/marker/DDriveDriverMarker;)Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 107
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/map/listener/MapListener;->getCurrentMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/DDriveDriverMarker$1;->this$0:Lcom/didi/map/marker/DDriveDriverMarker;

    iget-object v1, v1, Lcom/didi/map/marker/DDriveDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/didi/map/marker/DDriveDriverMarker$1;->this$0:Lcom/didi/map/marker/DDriveDriverMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/DDriveDriverMarker;->showInfoWindow()V

    goto :goto_0
.end method
