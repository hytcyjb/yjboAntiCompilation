.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ew;
.super Ljava/lang/Object;
.source "RTreeNodeMananger.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/ev;


# static fields
.field static b:I


# instance fields
.field a:Lcom/tencent/tencentmap/mapsdk/maps/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/k",
            "<",
            "Ljava/lang/Double;",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/u;",
            ">;"
        }
    .end annotation
.end field

.field c:D

.field d:D

.field private e:Lcom/tencent/tencentmap/mapsdk/maps/a/en;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x4

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;Lcom/tencent/tencentmap/mapsdk/maps/a/bf;D)Ljava/util/List;
    .locals 22
    .parameter "leftTop"
    .parameter "rightBottom"
    .parameter "scale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bf;",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bf;",
            "D)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/et;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v11, retMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/tencent/tencentmap/mapsdk/maps/a/eq;Lcom/tencent/tencentmap/mapsdk/maps/a/et;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v12, retrievedNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/et;>;"
    const-wide/high16 v2, 0x4024

    div-double v2, v2, p3

    double-to-int v10, v2

    .line 56
    .local v10, bucketDelta:I
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    neg-double v2, v2

    const-wide/high16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double v19, v2, v4

    .line 59
    .local v19, zoomScale:D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->d:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->c:D

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4034

    div-double v17, v2, v4

    .line 62
    .local v17, slope:D
    sget v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->b:I

    int-to-double v2, v2

    move-wide/from16 v0, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4035

    sget v6, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->b:I

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide v4, 0x3fc999999999999aL

    sub-double/2addr v2, v4

    .line 64
    mul-double v2, v2, v17

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->c:D

    add-double v15, v2, v4

    .line 65
    .local v15, scaleFactor0:D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->c:D

    cmpg-double v2, v15, v2

    if-gez v2, :cond_0

    .line 66
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->c:D

    .line 68
    :cond_0
    move-wide v13, v15

    .line 70
    .local v13, scaleFactor:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/k;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-static/range {v2 .. v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->a(DDDD)Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/v;)Lcom/tencent/tencentmap/mapsdk/maps/a/gz;

    move-result-object v9

    .line 73
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;

    move-object/from16 v3, p0

    move-wide v4, v13

    move v6, v10

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/ew$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ew;DILjava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gz;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/hi;)V

    .line 106
    return-object v12
.end method

.method public final a(Ljava/util/List;)V
    .locals 20
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
    .line 111
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;>;"
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/k;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/k;

    .line 112
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->c:D

    .line 114
    const/16 v14, 0x100

    const/16 v15, 0x100

    filled-new-array {v14, v15}, [I

    move-result-object v14

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 115
    .local v2, buckets:[[F
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;

    .line 118
    .local v5, heatNode:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;
    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;->getPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v9

    .line 120
    .local v9, latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-wide v14, v9, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    const-wide v16, 0x412e848000000000L

    mul-double v14, v14, v16

    double-to-int v14, v14

    iget-wide v15, v9, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    const-wide v17, 0x412e848000000000L

    mul-double v15, v15, v17

    double-to-int v15, v15

    invoke-direct {v4, v14, v15}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    .line 124
    .local v4, geoPoint:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/en;

    invoke-virtual {v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/ep;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v10

    .line 125
    .local v10, point:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;->getValue()D

    move-result-wide v12

    .line 127
    .local v12, value:D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/k;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    iget-wide v0, v10, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-wide/from16 v16, v0

    iget-wide v0, v10, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lcom/tencent/tencentmap/mapsdk/maps/a/u;->a(DD)Lcom/tencent/tencentmap/mapsdk/maps/a/u;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/tencent/tencentmap/mapsdk/maps/a/k;->a(Ljava/lang/Object;Lcom/tencent/tencentmap/mapsdk/maps/a/q;)Lcom/tencent/tencentmap/mapsdk/maps/a/k;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/k;

    .line 129
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->c:D

    cmpl-double v14, v12, v14

    if-lez v14, :cond_0

    .line 130
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->c:D

    .line 134
    :cond_0
    iget-wide v14, v10, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    const-wide/high16 v16, 0x4130

    div-double v14, v14, v16

    double-to-int v3, v14

    .line 135
    .local v3, col:I
    iget-wide v14, v10, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    const-wide/high16 v16, 0x4130

    div-double v14, v14, v16

    double-to-int v11, v14

    .line 137
    .local v11, row:I
    aget-object v14, v2, v3

    aget v15, v14, v11

    float-to-double v15, v15

    add-double/2addr v15, v12

    double-to-float v15, v15

    aput v15, v14, v11

    goto :goto_0

    .line 140
    .end local v3           #col:I
    .end local v4           #geoPoint:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .end local v5           #heatNode:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;
    .end local v9           #latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .end local v10           #point:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .end local v11           #row:I
    .end local v12           #value:D
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    const/16 v14, 0x100

    if-ge v6, v14, :cond_4

    .line 141
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    const/16 v14, 0x100

    if-ge v8, v14, :cond_3

    .line 142
    aget-object v14, v2, v6

    aget v14, v14, v8

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->d:D

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    .line 143
    aget-object v14, v2, v6

    aget v14, v14, v8

    float-to-double v14, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;->d:D

    .line 141
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 140
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 147
    .end local v8           #j:I
    :cond_4
    return-void
.end method
