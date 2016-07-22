.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/be;
.super Ljava/lang/Object;
.source "MapActionController.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/bv;
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/bw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bb;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bb;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;

.field private e:I

.field private f:Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;

.field private g:J

.field private h:Z

.field private i:Lcom/tencent/tencentmap/mapsdk/maps/a/az;

.field private j:Z

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;)V
    .locals 2
    .parameter "actionExecutor"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->b:Ljava/util/ArrayList;

    .line 54
    const/16 v0, 0x3c

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->e:I

    .line 92
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;

    .line 93
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->c:Ljava/util/LinkedList;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->k:Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/as;->a(J)V

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)J
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->g:J

    return-wide v0
.end method

.method static synthetic e(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->h:Z

    return-void
.end method

.method static synthetic f(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Lcom/tencent/tencentmap/mapsdk/maps/a/az;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/az;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->j:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/tencentmap/mapsdk/maps/a/be;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->k:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/be;B)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;

    .line 103
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->start()V

    .line 104
    return-void
.end method

.method public final a(DD)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v5, 0x3

    .line 214
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    monitor-enter v2

    .line 216
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    iget v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->a:I

    if-eq v1, v5, :cond_1

    .line 222
    :cond_0
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    .line 223
    aput-wide p1, v4, v5

    const/4 v5, 0x1

    aput-wide p3, v4, v5

    invoke-direct {v1, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[D)V

    .line 222
    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 214
    monitor-exit v2

    return-void

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    .line 219
    .local v0, lastMoveAction:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    add-double/2addr p1, v3

    .line 220
    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    const/4 v3, 0x1

    aget-wide v3, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-double/2addr p3, v3

    goto :goto_0

    .line 214
    .end local v0           #lastMoveAction:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/az;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->i:Lcom/tencent/tencentmap/mapsdk/maps/a/az;

    .line 180
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-le v0, v2, :cond_0

    .line 190
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->d()V

    .line 196
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;->destroy()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/be$b;

    .line 115
    :cond_0
    return-void
.end method

.method public final c()J
    .locals 6

    .prologue
    .line 165
    const-wide/16 v2, 0x3e8

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->e:I

    int-to-long v4, v4

    div-long v0, v2, v4

    .line 166
    .local v0, delayed:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 167
    const-wide/16 v0, 0x1

    .line 170
    :cond_0
    return-wide v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->c:Ljava/util/LinkedList;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->c:Ljava/util/LinkedList;

    sget-object v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 202
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()V
    .locals 6

    .prologue
    .line 233
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    monitor-enter v4

    .line 234
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 235
    const/4 v1, 0x0

    .line 237
    .local v1, shouldBackup:Z
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 247
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 249
    if-eqz v1, :cond_0

    .line 251
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    .line 252
    .local v2, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/bb;>;"
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->b:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    .line 253
    iput-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->b:Ljava/util/ArrayList;

    .line 233
    .end local v2           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/bb;>;"
    :cond_0
    monitor-exit v4

    return-void

    .line 237
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    .line 238
    .local v0, a:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
    iget-boolean v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->e:Z

    if-eqz v5, :cond_2

    .line 239
    const/4 v1, 0x1

    .line 240
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 233
    .end local v0           #a:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
    .end local v1           #shouldBackup:Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 242
    .restart local v0       #a:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
    .restart local v1       #shouldBackup:Z
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final f()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 277
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    monitor-enter v4

    .line 278
    :try_start_0
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 279
    monitor-exit v4

    .line 299
    :cond_0
    :goto_0
    return v3

    .line 281
    :cond_1
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    .line 277
    .local v0, action:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    if-eqz v0, :cond_2

    .line 285
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;

    invoke-virtual {v0, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;)Z

    move-result v4

    .line 286
    const/4 v1, 0x0

    .local v1, canbeRemoved:Z
    if-eqz v4, :cond_2

    .line 287
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->c()V

    .line 288
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    monitor-enter v4

    .line 289
    :try_start_1
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    .end local v1           #canbeRemoved:Z
    :cond_2
    const/4 v2, 0x0

    .line 295
    .local v2, isEmpty:Z
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    monitor-enter v4

    .line 296
    :try_start_2
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 295
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 299
    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 277
    .end local v0           #action:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
    .end local v2           #isEmpty:Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 288
    .restart local v0       #action:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
    .restart local v1       #canbeRemoved:Z
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 295
    .end local v1           #canbeRemoved:Z
    .restart local v2       #isEmpty:Z
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->h:Z

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->g:J

    .line 323
    return-void
.end method
