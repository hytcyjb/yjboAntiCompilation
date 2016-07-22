.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ga;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/fl;
.source "PolygonManager.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fl;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 22
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .end local p1
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 23
    return-void
.end method


# virtual methods
.method final a(Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fz;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;
    .locals 3
    .parameter "options"
    .parameter "contr"

    .prologue
    const/4 v1, 0x0

    .line 32
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-object v1

    .line 36
    :cond_1
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;-><init>()V

    .line 37
    .local v0, polygonOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dp;
    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;)V

    .line 38
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->b()V

    .line 39
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/do;)Z

    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 43
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 44
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->D:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Polygon;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/PolygonOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fz;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a()V
    .locals 5

    .prologue
    .line 196
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 197
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 198
    .local v1, iSize:I
    const/4 v2, 0x0

    .line 199
    .local v2, overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 200
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    .line 201
    .restart local v2       #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-eqz v2, :cond_0

    .line 202
    instance-of v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;

    if-eqz v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->c()V

    .line 209
    add-int/lit8 v0, v0, -0x1

    .line 210
    add-int/lit8 v1, v1, -0x1

    .line 199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 215
    return-void

    .line 212
    .end local v0           #i:I
    .end local v1           #iSize:I
    .end local v2           #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method final a(Ljava/lang/String;)V
    .locals 1
    .parameter "strId"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;)Z

    .line 55
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;F)V
    .locals 3
    .parameter "strId"
    .parameter "width"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 130
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 131
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 134
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 133
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->d(F)V

    .line 134
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;I)V
    .locals 3
    .parameter "strId"
    .parameter "color"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 66
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 67
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 69
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->b(I)V

    .line 70
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .parameter "strId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, points:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    const/4 v2, 0x0

    .line 84
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v6, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v6

    .line 85
    :try_start_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 86
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_0

    .line 87
    monitor-exit v6

    .line 101
    :goto_0
    return-void

    .line 89
    :cond_0
    instance-of v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;

    if-nez v4, :cond_1

    .line 90
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .line 92
    .restart local v1       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;

    move-object v3, v0

    .line 94
    .local v3, polygonOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dp;
    if-nez p2, :cond_3

    .line 95
    .local v2, listGeos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/bg;>;"
    :cond_2
    invoke-virtual {v3, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->a(Ljava/util/List;)V

    .line 96
    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dp;->b()V

    .line 97
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0

    .line 94
    .end local v2           #listGeos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/bg;>;"
    :cond_3
    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1
.end method

.method final a(Ljava/lang/String;Z)V
    .locals 3
    .parameter "strId"
    .parameter "visible"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 148
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 149
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 151
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->a(Z)V

    .line 152
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 27
    return-void
.end method

.method final b(Ljava/lang/String;F)V
    .locals 1
    .parameter "strId"
    .parameter "zIndex"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;F)V

    .line 165
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final b(Ljava/lang/String;I)V
    .locals 3
    .parameter "strId"
    .parameter "color"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 112
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 113
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 115
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->a(I)V

    .line 116
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ga;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method
