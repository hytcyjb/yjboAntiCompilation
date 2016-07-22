.class final Lcom/tencent/tencentmap/mapsdk/maps/a/gf$1;
.super Ljava/lang/Object;
.source "UiSettingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/gf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 63
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v2

    if-nez v2, :cond_0

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->t()Z

    move-result v0

    .line 70
    .local v0, boZoomInEnable:Z
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->u()Z

    move-result v1

    .line 71
    .local v1, boZoomOutEnable:Z
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)Landroid/widget/ZoomControls;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 72
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gf$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gf;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gf;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/gf;)Landroid/widget/ZoomControls;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    goto :goto_0
.end method
