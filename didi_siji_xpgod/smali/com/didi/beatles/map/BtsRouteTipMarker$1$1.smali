.class Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;
.super Ljava/lang/Object;
.source "BtsRouteTipMarker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/map/BtsRouteTipMarker$1;->onFinishLayout(Landroid/view/View;Lcom/didi/beatles/map/BtsRoutePoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/beatles/map/BtsRouteTipMarker$1;

.field final synthetic val$point:Lcom/didi/beatles/map/BtsRoutePoint;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/didi/beatles/map/BtsRouteTipMarker$1;Landroid/view/View;Lcom/didi/beatles/map/BtsRoutePoint;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;->this$1:Lcom/didi/beatles/map/BtsRouteTipMarker$1;

    iput-object p2, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;->val$point:Lcom/didi/beatles/map/BtsRoutePoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 81
    iget-object v6, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;->val$view:Landroid/view/View;

    if-nez v6, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v6, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 85
    .local v5, width:I
    iget-object v6, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 87
    .local v2, height:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .local v0, bmpInfoWindow:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 90
    iget-object v6, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 92
    const/16 v6, 0x2d

    invoke-static {v6}, Lcom/didi/common/util/WindowUtil;->computeScaledSize(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float v3, v6, v7

    .line 94
    .local v3, l:F
    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->anchor(FF)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v6

    new-instance v7, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v8, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;->val$point:Lcom/didi/beatles/map/BtsRoutePoint;

    iget-wide v8, v8, Lcom/didi/beatles/map/BtsRoutePoint;->lat:D

    iget-object v10, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;->val$point:Lcom/didi/beatles/map/BtsRoutePoint;

    iget-wide v10, v10, Lcom/didi/beatles/map/BtsRoutePoint;->lng:D

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;->val$point:Lcom/didi/beatles/map/BtsRoutePoint;

    iget-object v7, v7, Lcom/didi/beatles/map/BtsRoutePoint;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v6

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v4

    .line 99
    .local v4, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    iget-object v6, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;->this$1:Lcom/didi/beatles/map/BtsRouteTipMarker$1;

    iget-object v6, v6, Lcom/didi/beatles/map/BtsRouteTipMarker$1;->this$0:Lcom/didi/beatles/map/BtsRouteTipMarker;

    #calls: Lcom/didi/beatles/map/BtsRouteTipMarker;->showWithoutAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V
    invoke-static {v6, v4}, Lcom/didi/beatles/map/BtsRouteTipMarker;->access$000(Lcom/didi/beatles/map/BtsRouteTipMarker;Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V

    .line 103
    iget-object v6, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;->this$1:Lcom/didi/beatles/map/BtsRouteTipMarker$1;

    iget-object v6, v6, Lcom/didi/beatles/map/BtsRouteTipMarker$1;->this$0:Lcom/didi/beatles/map/BtsRouteTipMarker;

    #getter for: Lcom/didi/beatles/map/BtsRouteTipMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-static {v6}, Lcom/didi/beatles/map/BtsRouteTipMarker;->access$100(Lcom/didi/beatles/map/BtsRouteTipMarker;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 104
    iget-object v6, p0, Lcom/didi/beatles/map/BtsRouteTipMarker$1$1;->this$1:Lcom/didi/beatles/map/BtsRouteTipMarker$1;

    iget-object v6, v6, Lcom/didi/beatles/map/BtsRouteTipMarker$1;->this$0:Lcom/didi/beatles/map/BtsRouteTipMarker;

    #getter for: Lcom/didi/beatles/map/BtsRouteTipMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-static {v6}, Lcom/didi/beatles/map/BtsRouteTipMarker;->access$200(Lcom/didi/beatles/map/BtsRouteTipMarker;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setInfoWindowEnable(Z)V

    goto :goto_0
.end method
