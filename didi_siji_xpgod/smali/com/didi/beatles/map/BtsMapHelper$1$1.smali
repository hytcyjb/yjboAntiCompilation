.class Lcom/didi/beatles/map/BtsMapHelper$1$1;
.super Ljava/lang/Object;
.source "BtsMapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/map/BtsMapHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/map/BtsMapHelper$1;

.field final synthetic val$passindexs:[I

.field final synthetic val$tempLatlngs:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;


# direct methods
.method constructor <init>(Lcom/didi/beatles/map/BtsMapHelper$1;[I[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->this$0:Lcom/didi/beatles/map/BtsMapHelper$1;

    iput-object p2, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->val$passindexs:[I

    iput-object p3, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->val$tempLatlngs:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 143
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->this$0:Lcom/didi/beatles/map/BtsMapHelper$1;

    #getter for: Lcom/didi/beatles/map/BtsMapHelper$1;->polylineOption:Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;
    invoke-static {v3}, Lcom/didi/beatles/map/BtsMapHelper$1;->access$300(Lcom/didi/beatles/map/BtsMapHelper$1;)Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->addPolyline(Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/beatles/map/BtsMapHelper;->access$202(Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    .line 147
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$200()Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    :try_start_0
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$200()Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v2

    const-string v3, "color_texture"

    const-string v4, ""

    const/16 v5, 0xa

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->setCustomerColorTexture(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    iget-object v2, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->this$0:Lcom/didi/beatles/map/BtsMapHelper$1;

    iget-object v2, v2, Lcom/didi/beatles/map/BtsMapHelper$1;->val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v0, v2, [I

    .line 154
    .local v0, colors:[I
    array-length v2, v0

    if-le v2, v7, :cond_3

    .line 155
    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v0, v2

    .line 156
    const/4 v2, 0x1

    const/4 v3, 0x2

    aput v3, v0, v2

    .line 157
    const/4 v2, 0x3

    const/4 v3, 0x2

    aput v3, v0, v2

    .line 163
    :goto_1
    iget-object v2, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->this$0:Lcom/didi/beatles/map/BtsMapHelper$1;

    iget-object v2, v2, Lcom/didi/beatles/map/BtsMapHelper$1;->val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [I

    .line 164
    .local v1, indexs:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 165
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->val$passindexs:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    .line 166
    array-length v2, v1

    if-le v2, v7, :cond_2

    iget-object v2, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->val$passindexs:[I

    array-length v2, v2

    if-le v2, v6, :cond_2

    .line 167
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->val$passindexs:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 170
    :cond_2
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$200()Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0           #colors:[I
    .end local v1           #indexs:[I
    :goto_2
    iget-object v2, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->val$tempLatlngs:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v3, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->this$0:Lcom/didi/beatles/map/BtsMapHelper$1;

    iget v3, v3, Lcom/didi/beatles/map/BtsMapHelper$1;->val$top:I

    iget-object v4, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->this$0:Lcom/didi/beatles/map/BtsMapHelper$1;

    iget v4, v4, Lcom/didi/beatles/map/BtsMapHelper$1;->val$bottom:I

    #calls: Lcom/didi/beatles/map/BtsMapHelper;->zoomMapView([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;II)V
    invoke-static {v2, v3, v4}, Lcom/didi/beatles/map/BtsMapHelper;->access$400([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;II)V

    .line 176
    iget-object v2, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->this$0:Lcom/didi/beatles/map/BtsMapHelper$1;

    iget-object v2, v2, Lcom/didi/beatles/map/BtsMapHelper$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->this$0:Lcom/didi/beatles/map/BtsMapHelper$1;

    iget v3, v3, Lcom/didi/beatles/map/BtsMapHelper$1;->val$gender:I

    iget-object v4, p0, Lcom/didi/beatles/map/BtsMapHelper$1$1;->this$0:Lcom/didi/beatles/map/BtsMapHelper$1;

    iget-object v4, v4, Lcom/didi/beatles/map/BtsMapHelper$1;->val$points:[Lcom/didi/beatles/map/BtsRoutePoint;

    #calls: Lcom/didi/beatles/map/BtsMapHelper;->addBtsRoutePointArray(Landroid/content/Context;I[Lcom/didi/beatles/map/BtsRoutePoint;)V
    invoke-static {v2, v3, v4}, Lcom/didi/beatles/map/BtsMapHelper;->access$500(Landroid/content/Context;I[Lcom/didi/beatles/map/BtsRoutePoint;)V

    goto/16 :goto_0

    .line 159
    .restart local v0       #colors:[I
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    aput v3, v0, v2

    .line 160
    const/4 v2, 0x1

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 171
    .end local v0           #colors:[I
    :catch_0
    move-exception v2

    goto :goto_2
.end method
