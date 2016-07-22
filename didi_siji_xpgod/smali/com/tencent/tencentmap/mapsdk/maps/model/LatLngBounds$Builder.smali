.class public final Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;
.super Ljava/lang/Object;
.source "LatLngBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x7ff8

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/high16 v0, 0x7ff0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->a:D

    .line 46
    const-wide/high16 v0, -0x10

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->b:D

    .line 47
    iput-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->c:D

    .line 48
    iput-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->d:D

    .line 49
    return-void
.end method


# virtual methods
.method public final build()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;
    .locals 7

    .prologue
    .line 41
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->a:D

    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->c:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->b:D

    iget-wide v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->d:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    return-object v0
.end method

.method public final include(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;
    .locals 8
    .parameter "latlng"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 19
    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->a:D

    iget-wide v6, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->a:D

    .line 20
    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->b:D

    iget-wide v6, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->b:D

    .line 21
    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    .line 22
    .local v0, d1:D
    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 23
    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->c:D

    .line 29
    :cond_0
    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->d:D

    .line 30
    :cond_1
    :goto_0
    return-object p0

    .line 25
    :cond_2
    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->c:D

    iget-wide v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->d:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_5

    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->c:D

    cmpg-double v4, v4, v0

    if-gtz v4, :cond_4

    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->d:D

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_4

    :cond_3
    :goto_1
    if-nez v2, :cond_1

    .line 26
    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->c:D

    invoke-static {v2, v3, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->a(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->d:D

    invoke-static {v4, v5, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->b(DD)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 27
    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->c:D

    goto :goto_0

    :cond_4
    move v2, v3

    .line 25
    goto :goto_1

    :cond_5
    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->c:D

    cmpg-double v4, v4, v0

    if-lez v4, :cond_3

    iget-wide v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->d:D

    cmpg-double v4, v0, v4

    if-lez v4, :cond_3

    move v2, v3

    goto :goto_1
.end method
