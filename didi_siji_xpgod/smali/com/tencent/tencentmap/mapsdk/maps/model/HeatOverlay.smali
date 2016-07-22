.class public Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlay;
.super Ljava/lang/Object;
.source "HeatOverlay.java"


# instance fields
.field a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

.field b:Lcom/tencent/tencentmap/mapsdk/maps/a/ff;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;Lcom/tencent/tencentmap/mapsdk/maps/a/ff;Ljava/lang/String;)V
    .locals 0
    .parameter "heatOverlayDelegate"
    .parameter "mananger"
    .parameter "id"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlay;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    .line 17
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlay;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ff;

    .line 18
    iput-object p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlay;->c:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public remove()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlay;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ff;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlay;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->a(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
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
    .line 22
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlay;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Ljava/util/List;)V

    .line 23
    return-void
.end method
