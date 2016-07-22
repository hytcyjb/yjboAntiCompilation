.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/p;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public static a(Ljava/util/Collection;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
            ">;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/v;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, items:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/tencent/tencentmap/mapsdk/maps/a/s;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 45
    :cond_0
    const v3, 0x7f7fffff

    .line 46
    .local v3, minX1:F
    const v4, 0x7f7fffff

    .line 47
    .local v4, minY1:F
    const/4 v1, 0x1

    .line 48
    .local v1, maxX2:F
    const/4 v2, 0x1

    .line 49
    .local v2, maxY2:F
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tencentmap/mapsdk/maps/a/s;

    .line 50
    invoke-interface {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/s;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v6

    invoke-interface {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v5

    .line 51
    .local v5, r:Lcom/tencent/tencentmap/mapsdk/maps/a/v;
    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c()F

    move-result v6

    cmpg-float v6, v6, v3

    if-gez v6, :cond_2

    .line 52
    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->c()F

    move-result v3

    .line 53
    :cond_2
    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d()F

    move-result v6

    cmpg-float v6, v6, v4

    if-gez v6, :cond_3

    .line 54
    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->d()F

    move-result v4

    .line 55
    :cond_3
    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->e()F

    move-result v6

    cmpl-float v6, v6, v1

    if-lez v6, :cond_4

    .line 56
    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->e()F

    move-result v1

    .line 57
    :cond_4
    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->f()F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_1

    .line 58
    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->f()F

    move-result v2

    goto :goto_0

    .line 60
    .end local v5           #r:Lcom/tencent/tencentmap/mapsdk/maps/a/v;
    :cond_5
    invoke-static {v3, v4, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a(FFFF)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v6

    return-object v6
.end method
