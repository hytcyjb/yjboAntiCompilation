.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/m;
.super Ljava/lang/Object;
.source "SelectorMinimalAreaIncrease.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/q;Ljava/util/List;)Lcom/tencent/tencentmap/mapsdk/maps/a/g;
    .locals 3
    .parameter "g"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
            ">(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
            "Ljava/util/List",
            "<+",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;>;)",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/g",
            "<TT;TS;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, nodes:Ljava/util/List;,"Ljava/util/List<+Lcom/tencent/tencentmap/mapsdk/maps/a/g<TT;TS;>;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Comparator;

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/b;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Ljava/util/Comparator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/b;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Ljava/util/Comparator;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/b;->a([Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/g;

    return-object v0
.end method
