.class final Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;
.super Ljava/lang/Object;
.source "RTreeNodeMananger.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/hi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;Lcom/tencent/tencentmap/mapsdk/maps/a/bf;D)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/hi",
        "<",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/d",
        "<",
        "Ljava/lang/Double;",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/u;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:I

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/tencent/tencentmap/mapsdk/maps/a/ew;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ew;DILjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ew;

    iput-wide p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;->a:D

    iput p4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;->b:I

    iput-object p5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;->c:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6
    .parameter "x0"

    .prologue
    .line 73
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/d;

    .end local p1
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;->a:D

    div-double v1, v0, v2

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;

    invoke-direct {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/d;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/u;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->b()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->c()F

    move-result v0

    float-to-int v0, v0

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;->b:I

    rem-int v5, v4, v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;->b:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-double v4, v4

    iput-wide v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->a:D

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;->b:I

    rem-int v4, v0, v4

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;->b:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-double v4, v0

    iput-wide v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/eq;->b:D

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/et;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/et;

    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/et;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/eq;D)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->b()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->a(D)V

    goto :goto_0
.end method
