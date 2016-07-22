.class final Lcom/tencent/tencentmap/mapsdk/maps/a/el$7;
.super Ljava/lang/Object;
.source "VectorMapView.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/az;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/el;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V
    .locals 0
    .parameter

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$7;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$7;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$7;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;->onMapStable()V

    .line 1456
    :cond_0
    return-void
.end method
