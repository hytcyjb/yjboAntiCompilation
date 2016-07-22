.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ff;
.super Ljava/lang/Object;
.source "HeatOverlayManager.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/en;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "map"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 12
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    .line 15
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .end local p1
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlay;
    .locals 3
    .parameter "options"

    .prologue
    const/4 v0, 0x0

    .line 28
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    if-eqz v1, :cond_2

    .line 32
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->D:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->a(Ljava/lang/String;)V

    .line 35
    :cond_2
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-direct {v1, v2, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    .line 36
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b()V

    .line 37
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/do;)Z

    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 43
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlay;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    iget-object v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->D:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlay;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;Lcom/tencent/tencentmap/mapsdk/maps/a/ff;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter "strId"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;)Z

    .line 51
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ff;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method
