.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/fd;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/fg;
.source "CircleManager.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fg;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 18
    check-cast p1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .end local p1
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 19
    return-void
.end method


# virtual methods
.method final a(Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fc;)Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;
    .locals 3
    .parameter "circleoptions"
    .parameter "contr"

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-object v1

    .line 31
    :cond_1
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-direct {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    .line 32
    .local v0, circleOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dj;
    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;)V

    .line 33
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->b()V

    .line 34
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/do;)Z

    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 38
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 39
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->D:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fc;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 23
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1
    .parameter "strId"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;)Z

    .line 50
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;D)V
    .locals 3
    .parameter "strId"
    .parameter "radius"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 113
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 114
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 116
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    if-nez v1, :cond_2

    .line 117
    monitor-exit v2

    goto :goto_0

    .line 119
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    .line 120
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->a(D)V

    .line 121
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;F)V
    .locals 3
    .parameter "strId"
    .parameter "width"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 159
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 160
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 167
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 162
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    if-nez v1, :cond_2

    .line 163
    monitor-exit v2

    goto :goto_0

    .line 165
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    .line 166
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->d(F)V

    .line 167
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

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
    .line 84
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 90
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 91
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 93
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    if-nez v1, :cond_2

    .line 94
    monitor-exit v2

    goto :goto_0

    .line 96
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    .line 97
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->b(I)V

    .line 98
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 6
    .parameter "strId"
    .parameter "latlng"

    .prologue
    .line 56
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v4, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    if-eqz p2, :cond_0

    .line 63
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v5, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v5

    .line 64
    :try_start_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v3

    .line 65
    .local v3, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v3, :cond_2

    .line 66
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 74
    .end local v3           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 68
    .restart local v3       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_2
    :try_start_1
    instance-of v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    if-nez v4, :cond_3

    .line 69
    monitor-exit v5

    goto :goto_0

    .line 71
    :cond_3
    move-object v0, v3

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    move-object v1, v0

    .line 72
    .local v1, circleOverlay:Lcom/tencent/tencentmap/mapsdk/maps/a/dj;
    invoke-static {p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v2

    .line 73
    .local v2, getCenter:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)V

    .line 74
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Z)V
    .locals 3
    .parameter "strId"
    .parameter "visible"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 182
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 183
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 190
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 185
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    if-nez v1, :cond_2

    .line 186
    monitor-exit v2

    goto :goto_0

    .line 188
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    .line 189
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->a(Z)V

    .line 190
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method final b()V
    .locals 5

    .prologue
    .line 210
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v4

    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 212
    .local v1, iSize:I
    const/4 v2, 0x0

    .line 213
    .local v2, overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 214
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    .line 215
    .restart local v2       #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-eqz v2, :cond_0

    .line 216
    instance-of v3, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;->c()V

    .line 223
    add-int/lit8 v0, v0, -0x1

    .line 224
    add-int/lit8 v1, v1, -0x1

    .line 213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 229
    return-void

    .line 226
    .end local v0           #i:I
    .end local v1           #iSize:I
    .end local v2           #overlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method final b(Ljava/lang/String;F)V
    .locals 1
    .parameter "strId"
    .parameter "zIndex"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Ljava/lang/String;F)V

    .line 204
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

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
    .line 130
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e:[B

    monitor-enter v2

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/do;

    move-result-object v0

    .line 136
    .local v0, glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    if-nez v0, :cond_1

    .line 137
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 139
    .restart local v0       #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    if-nez v1, :cond_2

    .line 140
    monitor-exit v2

    goto :goto_0

    .line 142
    :cond_2
    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;

    .line 143
    .end local v0           #glOverlay2:Lcom/tencent/tencentmap/mapsdk/maps/a/do;
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dj;->a(I)V

    .line 144
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fd;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method
