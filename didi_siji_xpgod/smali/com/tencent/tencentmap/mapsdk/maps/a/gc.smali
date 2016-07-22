.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gc;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/fm;
.source "PolylineManager.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fm;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 19
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .end local p1
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 20
    return-void
.end method


# virtual methods
.method final a(Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/gb;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
    .locals 3
    .parameter "opts"
    .parameter "contr"

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v2, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-object v1

    .line 34
    :cond_1
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-direct {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    .line 35
    .local v0, polylineOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dq;
    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;)V

    .line 36
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b()V

    .line 37
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/do;)Z

    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 42
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 43
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->D:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/gb;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a()V
    .locals 5

    .prologue
    .line 162
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 163
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 164
    .local v1, iSize:I
    const/4 v2, 0x0

    .line 165
    .local v2, overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 166
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    .line 167
    .restart local v2       #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-eqz v2, :cond_0

    .line 168
    instance-of v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    if-eqz v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->c()V

    .line 175
    add-int/lit8 v0, v0, -0x1

    .line 176
    add-int/lit8 v1, v1, -0x1

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 181
    return-void

    .line 178
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
    .line 50
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;)Z

    .line 54
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;F)V
    .locals 5
    .parameter "strId"
    .parameter "width"

    .prologue
    .line 128
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_0

    .line 146
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 133
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 134
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_1

    .line 135
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 143
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 137
    .restart local v1       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    if-nez v3, :cond_2

    .line 138
    monitor-exit v4

    goto :goto_0

    .line 140
    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    move-object v2, v0

    .line 141
    .local v2, polylineOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dq;
    invoke-virtual {v2, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->d(F)V

    .line 142
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b()V

    .line 143
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;I)V
    .locals 3
    .parameter "strId"
    .parameter "color"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

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

    .line 71
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 69
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->a(I)V

    .line 70
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->b()V

    .line 71
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;II)V
    .locals 5
    .parameter "strId"
    .parameter "index"
    .parameter "length"

    .prologue
    .line 234
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_0

    .line 253
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 239
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 240
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_1

    .line 241
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 249
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 243
    .restart local v1       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    if-nez v3, :cond_2

    .line 244
    monitor-exit v4

    goto :goto_0

    .line 246
    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    move-object v2, v0

    .line 247
    .local v2, polylineOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dq;
    invoke-virtual {v2, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a(II)V

    .line 248
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b()V

    .line 249
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "strId"
    .parameter "strTextureName"
    .parameter "strTextureCapName"
    .parameter "rowCount"

    .prologue
    .line 283
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_0

    .line 302
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 288
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 289
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_1

    .line 290
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 298
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 292
    .restart local v1       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    if-nez v3, :cond_2

    .line 293
    monitor-exit v4

    goto :goto_0

    .line 295
    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    move-object v2, v0

    .line 296
    .local v2, polylineOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dq;
    invoke-virtual {v2, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 297
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b()V

    .line 298
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
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
    .line 85
    .local p2, points:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_0

    .line 104
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 90
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 91
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_1

    .line 92
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 94
    .restart local v1       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    if-nez v3, :cond_2

    .line 95
    monitor-exit v4

    goto :goto_0

    .line 97
    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    move-object v2, v0

    .line 98
    .local v2, polylineOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dq;
    invoke-virtual {v2, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a(Ljava/util/List;)V

    .line 99
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b()V

    .line 100
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Z)V
    .locals 3
    .parameter "strId"
    .parameter "visible"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 115
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 116
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 118
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->a(Z)V

    .line 119
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->b()V

    .line 120
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;[I[I)V
    .locals 5
    .parameter "strId"
    .parameter "colors"
    .parameter "indexs"

    .prologue
    .line 210
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_0

    .line 229
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 215
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 216
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_1

    .line 217
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 225
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 219
    .restart local v1       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    if-nez v3, :cond_2

    .line 220
    monitor-exit v4

    goto :goto_0

    .line 222
    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    move-object v2, v0

    .line 223
    .local v2, polylineOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dq;
    invoke-virtual {v2, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->a([I[I)V

    .line 224
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b()V

    .line 225
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 24
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 5
    .parameter "strId"

    .prologue
    .line 258
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_0

    .line 277
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 263
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 264
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_1

    .line 265
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 273
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 267
    .restart local v1       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    if-nez v3, :cond_2

    .line 268
    monitor-exit v4

    goto :goto_0

    .line 270
    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    move-object v2, v0

    .line 271
    .local v2, polylineOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dq;
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->d()V

    .line 272
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b()V

    .line 273
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final b(Ljava/lang/String;F)V
    .locals 1
    .parameter "strId"
    .parameter "zIndex"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;F)V

    .line 156
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final b(Ljava/lang/String;Z)V
    .locals 5
    .parameter "strId"
    .parameter "arrow"

    .prologue
    .line 186
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_0

    .line 205
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 191
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v1

    .line 192
    .local v1, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v1, :cond_1

    .line 193
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 201
    .end local v1           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 195
    .restart local v1       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    if-nez v3, :cond_2

    .line 196
    monitor-exit v4

    goto :goto_0

    .line 198
    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;

    move-object v2, v0

    .line 199
    .local v2, polylineOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dq;
    invoke-virtual {v2, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b(Z)V

    .line 200
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dq;->b()V

    .line 201
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gc;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method
