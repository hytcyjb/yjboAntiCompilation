.class final Lcom/tencent/tencentmap/mapsdk/maps/a/dl$3;
.super Ljava/lang/Object;
.source "GLMarkerOverlay.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/dw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    .line 132
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 133
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->z:Z

    .line 135
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->z:Z

    .line 140
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->A:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dl$3;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/dl;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dl;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/dl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method
