.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bo;
.super Ljava/lang/Object;
.source "MapElementManager.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/ck;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/ci;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/at;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->a:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bl;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 113
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->a:Ljava/util/ArrayList;

    monitor-enter v2

    .line 114
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    .local v0, elementsTmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/ck;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    return-void

    .line 113
    .end local v0           #elementsTmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/ck;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 116
    .restart local v0       #elementsTmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/ck;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ck;

    .line 117
    invoke-interface {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ck;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bl;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ck;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 40
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    monitor-exit v1

    .line 51
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "elementMgr addElement"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(FF)Z
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 128
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->a:Ljava/util/ArrayList;

    monitor-enter v3

    .line 129
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v0, elementsTmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/ck;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_1

    .line 139
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->f()Lcom/tencent/tencentmap/mapsdk/maps/a/bj;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bj;->a(FF)Lcom/tencent/map/lib/gl/JNI$c;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v3, v2, Lcom/tencent/map/lib/gl/JNI$c;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ci;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ci;

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cj;

    iget-object v4, v2, Lcom/tencent/map/lib/gl/JNI$c;->d:Ljava/lang/String;

    iget v5, v2, Lcom/tencent/map/lib/gl/JNI$c;->b:I

    iget v2, v2, Lcom/tencent/map/lib/gl/JNI$c;->c:I

    const-wide v6, 0x4066800000000000L

    int-to-float v2, v2

    const/high16 v8, 0x43b4

    mul-float/2addr v2, v8

    const/high16 v8, 0x4d80

    div-float/2addr v2, v8

    float-to-double v8, v2

    sub-double/2addr v6, v8

    int-to-float v2, v5

    const/high16 v5, 0x43b4

    mul-float/2addr v2, v5

    const/high16 v5, 0x4d80

    div-float/2addr v2, v5

    float-to-double v8, v2

    const-wide v10, 0x4066800000000000L

    sub-double/2addr v8, v10

    const-wide v10, 0x3f91df46a2529d39L

    mul-double v5, v6, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    const-wide v10, 0x3f81df46a2529d39L

    div-double/2addr v5, v10

    const-wide v10, 0x4056800000000000L

    sub-double/2addr v5, v10

    const-wide v10, 0x412e848000000000L

    mul-double v7, v8, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    const-wide v7, 0x412e848000000000L

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-direct {v6, v5, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    invoke-direct {v3, v4, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/cj;-><init>(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V

    :cond_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 128
    .end local v0           #elementsTmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/ck;>;"
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 133
    .restart local v0       #elementsTmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/ck;>;"
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ck;

    .line 134
    invoke-interface {v2, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ck;->a(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    const/4 v2, 0x1

    goto :goto_1

    .line 132
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 139
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/a/ck;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 98
    :try_start_0
    const-string v0, "elementMgr removeElement"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bo;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 97
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
