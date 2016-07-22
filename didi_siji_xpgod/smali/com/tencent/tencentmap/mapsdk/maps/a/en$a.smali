.class final Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;
.super Ljava/lang/Object;
.source "GLHeatOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p2, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;>;"
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;->b:Ljava/util/List;

    .line 585
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Lcom/tencent/tencentmap/mapsdk/maps/a/em;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/em;->a()Z

    .line 590
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a$1;

    invoke-direct {v2, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;)V

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 598
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Lcom/tencent/tencentmap/mapsdk/maps/a/ev;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ev;->a(Ljava/util/List;)V

    .line 599
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Z

    .line 600
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->e()V

    .line 601
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;->onHeatMapReady()V

    .line 604
    :cond_0
    return-void
.end method
