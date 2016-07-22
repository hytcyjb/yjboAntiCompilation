.class public Lcom/didi/map/marker/HotMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "HotMarker.java"


# instance fields
.field public mHotName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/map/marker/HotMarker;->mHotName:Ljava/lang/String;

    return-void
.end method

.method public static convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 55
    if-eqz p0, :cond_0

    .line 56
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bm"

    .prologue
    .line 68
    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/aa.png"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 73
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 74
    .local v2, out:Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 75
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 76
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    .end local v2           #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onInfoWindowClickLocation(IIII)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 117
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 1
    .parameter "marker"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public setMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 28
    iget-object v3, p0, Lcom/didi/map/marker/HotMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v3, :cond_1

    .line 30
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/base/DidiApp;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300bf

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 31
    .local v2, view:Landroid/view/View;
    const v3, 0x7f080429

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    .local v1, txtView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/didi/map/marker/HotMarker;->mHotName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v3

    invoke-static {v2}, Lcom/didi/map/marker/HotMarker;->convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 38
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/high16 v3, 0x42c4

    invoke-virtual {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->zIndex(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 39
    const v3, 0x3e051eb8

    const v4, 0x3f666666

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->anchor(FF)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 43
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 52
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .end local v1           #txtView:Landroid/widget/TextView;
    .end local v2           #view:Landroid/view/View;
    :goto_0
    return-void

    .line 45
    .restart local v0       #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .restart local v1       #txtView:Landroid/widget/TextView;
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->addMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/map/marker/HotMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 46
    invoke-virtual {p0}, Lcom/didi/map/marker/HotMarker;->addListener()V

    .line 47
    iget-object v3, p0, Lcom/didi/map/marker/HotMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setInfoWindowEnable(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/didi/map/marker/HotMarker;->showInfoWindow()V

    goto :goto_0

    .line 50
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .end local v1           #txtView:Landroid/widget/TextView;
    .end local v2           #view:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/didi/map/marker/HotMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 122
    return-void
.end method

.method public setMarkerType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 111
    return-void
.end method

.method protected showInfoWindow()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public updateMarker(DD)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/didi/map/marker/HotMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/HotMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public updateMarkerAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/didi/map/marker/HotMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/HotMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setRotateAngle(F)V

    goto :goto_0
.end method
