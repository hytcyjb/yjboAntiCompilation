.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/o;
.super Ljava/lang/Object;
.source "SplitterQuadratic.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/s;
    .locals 8
    .parameter
    .parameter "groupMbr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/v;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v5, 0x0

    .line 68
    .local v5, minEntry:Lcom/tencent/tencentmap/mapsdk/maps/a/s;,"TT;"
    const/4 v4, 0x0

    .line 69
    .local v4, minArea:Ljava/lang/Double;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/s;

    .line 70
    .local v2, entry:Lcom/tencent/tencentmap/mapsdk/maps/a/s;,"TT;"
    invoke-interface {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/s;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v6

    invoke-interface {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->g()F

    move-result v6

    float-to-double v0, v6

    .line 71
    .local v0, area:D
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v6, v0, v6

    if-gez v6, :cond_0

    .line 72
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 73
    move-object v5, v2

    goto :goto_0

    .line 76
    .end local v0           #area:D
    .end local v2           #entry:Lcom/tencent/tencentmap/mapsdk/maps/a/s;,"TT;"
    :cond_2
    return-object v5
.end method

.method private static b(Ljava/util/List;)Lcom/tencent/tencentmap/mapsdk/maps/a/x;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/x",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .line 81
    .local v2, e1:Lcom/tencent/tencentmap/mapsdk/maps/a/s;,"TT;"
    const/4 v3, 0x0

    .line 83
    .local v3, e2:Lcom/tencent/tencentmap/mapsdk/maps/a/s;,"TT;"
    const/4 v8, 0x0

    .line 84
    .local v8, maxArea:Ljava/lang/Double;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/tencentmap/mapsdk/maps/a/s;

    .line 85
    .local v4, entry1:Lcom/tencent/tencentmap/mapsdk/maps/a/s;,"TT;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tencentmap/mapsdk/maps/a/s;

    .line 86
    .local v5, entry2:Lcom/tencent/tencentmap/mapsdk/maps/a/s;,"TT;"
    if-eq v4, v5, :cond_1

    .line 87
    invoke-interface {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/s;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v9

    invoke-interface {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v9

    invoke-interface {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/s;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v10

    invoke-interface {v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->g()F

    move-result v9

    float-to-double v0, v9

    .line 89
    .local v0, area:D
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpl-double v9, v0, v9

    if-lez v9, :cond_1

    .line 90
    :cond_2
    move-object v2, v4

    .line 91
    move-object v3, v5

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_0

    .line 98
    .end local v0           #area:D
    .end local v4           #entry1:Lcom/tencent/tencentmap/mapsdk/maps/a/s;,"TT;"
    .end local v5           #entry2:Lcom/tencent/tencentmap/mapsdk/maps/a/s;,"TT;"
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz v2, :cond_4

    .line 99
    new-instance v9, Lcom/tencent/tencentmap/mapsdk/maps/a/x;

    invoke-direct {v9, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    :goto_1
    return-object v9

    :cond_4
    new-instance v9, Lcom/tencent/tencentmap/mapsdk/maps/a/x;

    const/4 v10, 0x0

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/tencent/tencentmap/mapsdk/maps/a/t;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/t",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 16
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/o;->b(Ljava/util/List;)Lcom/tencent/tencentmap/mapsdk/maps/a/x;

    move-result-object v4

    .line 28
    .local v4, worstCombination:Lcom/tencent/tencentmap/mapsdk/maps/a/x;,"Lcom/tencent/tencentmap/mapsdk/maps/a/x<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, group1:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/x;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, group2:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/x;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    .local v3, remaining:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/x;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/x;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .line 40
    .local v2, minGroupSize:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 41
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/p;->a(Ljava/util/Collection;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v5

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/p;->a(Ljava/util/Collection;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v6

    invoke-static {v3, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/o;->a(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/s;

    move-result-object v7

    invoke-static {v3, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/o;->a(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/s;

    move-result-object v8

    invoke-interface {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/s;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v9

    invoke-interface {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->g()F

    move-result v5

    invoke-interface {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/s;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v9

    invoke-interface {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->g()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v6, v9

    add-int/lit8 v6, v6, -0x1

    if-ge v6, v2, :cond_2

    :cond_1
    if-nez v5, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    if-ne v5, v2, :cond_4

    :cond_2
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_5
    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/t;

    invoke-direct {v5, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/t;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v5
.end method
