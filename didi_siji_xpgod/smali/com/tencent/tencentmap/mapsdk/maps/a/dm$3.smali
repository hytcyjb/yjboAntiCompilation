.class final Lcom/tencent/tencentmap/mapsdk/maps/a/dm$3;
.super Ljava/lang/Object;
.source "GLMarkerOverlay3.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dm;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->d()V

    .line 119
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/dm;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->y:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dm$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dm;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dm;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/dm;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method
