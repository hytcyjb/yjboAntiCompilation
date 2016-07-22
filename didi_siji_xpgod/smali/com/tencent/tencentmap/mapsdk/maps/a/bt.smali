.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bt;
.super Ljava/lang/Object;
.source "MapGestureListenerList.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/bs;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 20
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_0
    monitor-exit p0

    return-void

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 144
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 139
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 140
    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->a()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    const/4 v1, 0x1

    goto :goto_1

    .line 138
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(F)Z
    .locals 2
    .parameter "distanceY"

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 166
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 161
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 162
    invoke-interface {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->a(F)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    const/4 v1, 0x1

    goto :goto_1

    .line 160
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(FF)Z
    .locals 2
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 78
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 73
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 74
    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->a(FF)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const/4 v1, 0x1

    goto :goto_1

    .line 72
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Landroid/graphics/PointF;Landroid/graphics/PointF;DD)Z
    .locals 8
    .parameter "preCenter"
    .parameter "postCenter"
    .parameter "preVector"
    .parameter "postVector"

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, i:I
    :goto_0
    if-gez v7, :cond_0

    .line 211
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return v0

    .line 206
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 207
    invoke-interface/range {v0 .. v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;DD)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    const/4 v0, 0x1

    goto :goto_1

    .line 205
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .end local v7           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Z
    .locals 2
    .parameter "preCenter"
    .parameter "postCenter"
    .parameter "angle"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 199
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 194
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 195
    invoke-interface {v1, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    const/4 v1, 0x1

    goto :goto_1

    .line 193
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized b(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 2

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 155
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 150
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 151
    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const/4 v1, 0x1

    goto :goto_1

    .line 149
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final b(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 238
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 244
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 240
    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->b(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const/4 v1, 0x1

    goto :goto_1

    .line 238
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final declared-synchronized c()Z
    .locals 2

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 188
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 183
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 184
    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const/4 v1, 0x1

    goto :goto_1

    .line 182
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized c(FF)Z
    .locals 2
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 89
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 84
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 85
    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->c(FF)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x1

    goto :goto_1

    .line 83
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 68
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 66
    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->d()V

    .line 64
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final declared-synchronized d(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 37
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 32
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 33
    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->d(FF)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const/4 v1, 0x1

    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized e(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 49
    const-string v1, "notify onSingleTap"

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-gez v0, :cond_2

    .line 57
    const/4 v1, 0x0

    :goto_2
    monitor-exit p0

    return v1

    .line 43
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 44
    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->e(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    const/4 v1, 0x1

    goto :goto_2

    .line 42
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 54
    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 42
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized f(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 100
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 95
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 96
    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->f(FF)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const/4 v1, 0x1

    goto :goto_1

    .line 94
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized g(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 111
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 106
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 107
    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->g(FF)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const/4 v1, 0x1

    goto :goto_1

    .line 105
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized h(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 122
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 117
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 118
    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->h(FF)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const/4 v1, 0x1

    goto :goto_1

    .line 116
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized i(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 133
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 128
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 129
    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->i(FF)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    const/4 v1, 0x1

    goto :goto_1

    .line 127
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized j(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 222
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 217
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 218
    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->j(FF)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    const/4 v1, 0x1

    goto :goto_1

    .line 216
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized k(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 233
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    .line 228
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;

    .line 229
    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bs;->k(FF)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    const/4 v1, 0x1

    goto :goto_1

    .line 227
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
