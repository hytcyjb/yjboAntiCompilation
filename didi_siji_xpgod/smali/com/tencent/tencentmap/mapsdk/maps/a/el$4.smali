.class final Lcom/tencent/tencentmap/mapsdk/maps/a/el$4;
.super Ljava/lang/Object;
.source "VectorMapView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 241
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->g(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/a/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bp;->l()V

    .line 248
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->h(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$4;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->h(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    return-void
.end method
