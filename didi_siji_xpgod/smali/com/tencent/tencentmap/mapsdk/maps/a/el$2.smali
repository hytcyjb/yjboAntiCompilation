.class final Lcom/tencent/tencentmap/mapsdk/maps/a/el$2;
.super Ljava/lang/Object;
.source "VectorMapView.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/bv;


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
    .line 206
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->q:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCameraChangeListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$2;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
