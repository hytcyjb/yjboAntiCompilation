.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bm;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/az;
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/bw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/bm$a;
    }
.end annotation


# static fields
.field private static c:I

.field private static d:I


# instance fields
.field public a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

.field public b:Lcom/tencent/tencentmap/mapsdk/maps/a/bq;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/av;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/map/lib/basemap/MapCenterChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/map/lib/gl/MapSurfaceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/ay;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/ax;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/az;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bv;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/map/lib/basemap/engine/MapModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/aw;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/map/lib/basemap/MapSkewListener;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/bu;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/tencent/tencentmap/mapsdk/maps/a/bi;

.field private r:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

.field private s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

.field private t:Lcom/tencent/tencentmap/mapsdk/maps/a/au;

.field private u:Landroid/graphics/Rect;

.field private v:Lcom/tencent/tencentmap/mapsdk/maps/a/bm$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const v0, 0x6eeb62f

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c:I

    const v0, 0x2621c3a

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d:I

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/at;)V
    .locals 3
    .parameter "mapContext"

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->o:Z

    .line 167
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->p:Ljava/util/Stack;

    .line 193
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->v:Lcom/tencent/tencentmap/mapsdk/maps/a/bm$a;

    .line 199
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    .line 200
    invoke-interface {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/bi;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bi;

    .line 202
    invoke-interface {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    .line 205
    invoke-interface {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->d()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/au;

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/au;

    .line 206
    invoke-interface {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/at;->g()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->u:Landroid/graphics/Rect;

    .line 207
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/be$a;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    .line 208
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/az;)V

    .line 211
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bv;)V

    .line 212
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;

    invoke-direct {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/at;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bq;

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h:Ljava/util/ArrayList;

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i:Ljava/util/ArrayList;

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->e:Ljava/util/List;

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->f:Ljava/util/List;

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->g:Ljava/util/List;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->l:Ljava/util/ArrayList;

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->m:Ljava/util/ArrayList;

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->n:Ljava/util/ArrayList;

    .line 225
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/bk;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 226
    .local v0, boundary:Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->u:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->d(F)V

    .line 227
    :cond_0
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 872
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a(F)F

    .line 873
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b(F)F

    .line 875
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->f(D)V

    .line 876
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->y()V

    .line 878
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->w()V

    .line 879
    return-void
.end method

.method private declared-synchronized B()V
    .locals 3

    .prologue
    .line 1652
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->e:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1653
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1652
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1658
    :try_start_2
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->w()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1659
    monitor-exit p0

    return-void

    .line 1653
    :cond_0
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/av;

    .line 1654
    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/av;->a_()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1652
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized C()V
    .locals 3

    .prologue
    .line 1668
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->f:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1669
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1670
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1668
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1674
    :try_start_2
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->B()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1675
    monitor-exit p0

    return-void

    .line 1669
    :cond_0
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1668
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 1759
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    if-ne p1, v0, :cond_0

    .line 1770
    :goto_0
    return-void

    .line 1763
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1764
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1763
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1769
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->w()V

    goto :goto_0

    .line 1764
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ay;

    .line 1765
    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ay;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1763
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 15
    .parameter "geoRect"
    .parameter "screenRect"

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->x()Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    move-result-object v5

    .line 573
    .local v5, mapParam:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    invoke-direct {v2, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    .line 574
    .local v2, centerGeoPoint:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v11

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b(II)Z

    .line 577
    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/a/au;

    iget-object v11, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/at;

    invoke-direct {v6, v5, v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/au;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bu;Lcom/tencent/tencentmap/mapsdk/maps/a/at;)V

    .line 579
    .local v6, projection:Lcom/tencent/tencentmap/mapsdk/maps/a/au;
    const/high16 v10, 0x3f80

    .line 582
    .local v10, targetScale:F
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {v4, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    .line 583
    .local v4, lt:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    new-instance v7, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {v7, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    .line 585
    .local v7, rb:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->o()F

    move-result v1

    .line 586
    .local v1, MIN_SCALE:F
    :goto_0
    cmpl-float v11, v10, v1

    if-gez v11, :cond_1

    .line 606
    :cond_0
    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 608
    return v11

    .line 587
    :cond_1
    invoke-virtual {v5, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c(F)Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    .line 589
    invoke-virtual {v6, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v8

    .line 590
    .local v8, sp1:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    invoke-virtual {v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v9

    .line 592
    .local v9, sp2:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 593
    .local v3, innerRect:Landroid/graphics/Rect;
    iget-wide v11, v8, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v13, v9, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    double-to-int v11, v11

    iput v11, v3, Landroid/graphics/Rect;->left:I

    .line 594
    iget-wide v11, v8, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v13, v9, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    double-to-int v11, v11

    iput v11, v3, Landroid/graphics/Rect;->right:I

    .line 595
    iget-wide v11, v8, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    iget-wide v13, v9, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    double-to-int v11, v11

    iput v11, v3, Landroid/graphics/Rect;->top:I

    .line 596
    iget-wide v11, v8, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    iget-wide v13, v9, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    double-to-int v11, v11

    iput v11, v3, Landroid/graphics/Rect;->bottom:I

    .line 598
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 599
    const v11, 0x3f8147ae

    div-float/2addr v10, v11

    goto :goto_0
.end method

.method private c(II)V
    .locals 1
    .parameter "latE6"
    .parameter "lonE6"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b(II)Z

    move-result v0

    .line 556
    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->C()V

    .line 560
    :cond_0
    return-void
.end method

.method private f(D)V
    .locals 3
    .parameter "angle"

    .prologue
    .line 417
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->m:Ljava/util/ArrayList;

    monitor-enter v1

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    monitor-exit v1

    return-void

    .line 418
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/aw;

    .line 419
    invoke-interface {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/aw;->a(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private g(D)V
    .locals 3
    .parameter "angle"

    .prologue
    .line 770
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 779
    :goto_0
    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f()F

    move-result v1

    double-to-float v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b(F)F

    .line 777
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->w()V

    .line 778
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->y()V

    goto :goto_0
.end method

.method private h(D)V
    .locals 4
    .parameter "angle"

    .prologue
    .line 804
    const-wide/16 v1, 0x0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_0

    .line 812
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b()F

    move-result v2

    double-to-float v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a(F)F

    move-result v0

    .line 810
    .local v0, rotateAngle:F
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->w()V

    .line 811
    float-to-double v1, v0

    invoke-direct {p0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->f(D)V

    goto :goto_0
.end method

.method private i(D)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 848
    double-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(F)V

    .line 849
    return-void
.end method

.method private v()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->u:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->u:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->u:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w()V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k:Ljava/util/ArrayList;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->d()V

    goto :goto_0

    .line 298
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bv;

    .line 299
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bv;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private x()Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    .locals 1

    .prologue
    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-object v0

    .line 386
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 390
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()V
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->n:Ljava/util/ArrayList;

    monitor-enter v1

    .line 451
    :try_start_0
    const-string v0, "skew notifySkew"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 453
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    monitor-exit v1

    return-void

    .line 452
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private z()V
    .locals 3

    .prologue
    .line 855
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k()I

    move-result v1

    .line 856
    .local v1, level:I
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->l()F

    move-result v0

    .line 857
    .local v0, glScale:F
    const v2, 0x3f4ccccd

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->m()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 858
    add-int/lit8 v1, v1, -0x1

    .line 863
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 864
    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(I)V

    .line 866
    :cond_1
    return-void

    .line 859
    :cond_2
    const v2, 0x3fcccccd

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->n()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 860
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 2826
    const-string v0, "mapController onStable"

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 2828
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->j:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    .line 2829
    :cond_0
    return-void

    .line 2828
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/az;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/az;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(D)V
    .locals 2
    .parameter "angle"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 796
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b(F)F

    .line 794
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->w()V

    .line 795
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->y()V

    goto :goto_0
.end method

.method public final a(DD)V
    .locals 21
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 729
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->e()D

    move-result-wide v9

    .line 730
    .local v9, skewCos:D
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->l()F

    move-result v4

    .line 732
    .local v4, glScale:F
    div-double p3, p3, v9

    .line 733
    float-to-double v11, v4

    div-double p1, p1, v11

    .line 734
    float-to-double v11, v4

    div-double p3, p3, v11

    .line 738
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->q()Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v3

    .line 740
    .local v3, centerPixels:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->d()D

    move-result-wide v5

    .line 741
    .local v5, rotateCos:D
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c()D

    move-result-wide v7

    .line 743
    .local v7, rotateSin:D
    iget-wide v11, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    mul-double v13, p1, v5

    mul-double v15, p3, v7

    add-double/2addr v13, v15

    sub-double/2addr v11, v13

    iput-wide v11, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    .line 744
    iget-wide v11, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-wide/from16 v0, p1

    neg-double v13, v0

    mul-double/2addr v13, v7

    mul-double v15, p3, v5

    add-double/2addr v13, v15

    add-double/2addr v11, v13

    iput-wide v11, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    .line 747
    iget-wide v11, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v13, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v15, v11, v12, v13, v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a(DD)V

    .line 750
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->g()I

    move-result v12

    shr-int/lit8 v12, v12, 0x1

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->h()D

    move-result-wide v13

    invoke-virtual {v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->i()D

    move-result-wide v15

    iget-wide v0, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-wide/from16 v17, v0

    int-to-double v0, v12

    move-wide/from16 v19, v0

    sub-double v17, v17, v19

    div-double v13, v17, v13

    const-wide v17, 0x4005bf0a8b145769L

    iget-wide v0, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-wide/from16 v19, v0

    int-to-double v11, v12

    sub-double v11, v19, v11

    const-wide/high16 v19, 0x3fe0

    div-double v11, v11, v19

    div-double/2addr v11, v15

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const-wide/high16 v15, 0x3ff0

    const-wide/high16 v17, 0x4000

    const-wide/high16 v19, 0x3ff0

    add-double v11, v11, v19

    div-double v11, v17, v11

    sub-double v11, v15, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v11

    const-wide v15, 0x4066800000000000L

    mul-double/2addr v11, v15

    const-wide v15, 0x400921fb54442d18L

    div-double/2addr v11, v15

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    const-wide v15, 0x412e848000000000L

    mul-double/2addr v11, v15

    double-to-int v11, v11

    const-wide v15, 0x412e848000000000L

    mul-double v12, v13, v15

    double-to-int v12, v12

    invoke-direct {v2, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    .line 751
    .local v2, centerGeoPoint:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v11

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(II)V

    .line 752
    return-void
.end method

.method public final a(DDDDD)V
    .locals 5
    .parameter "angle"
    .parameter "fx1"
    .parameter "fy1"
    .parameter "fx2"
    .parameter "fy2"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 970
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 977
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 970
    goto :goto_0

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->e()V

    .line 974
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    const/16 v3, 0x67

    const/4 v4, 0x5

    new-array v4, v4, [D

    .line 975
    aput-wide p1, v4, v1

    aput-wide p3, v4, v2

    const/4 v1, 0x2

    aput-wide p5, v4, v1

    const/4 v1, 0x3

    aput-wide p7, v4, v1

    const/4 v1, 0x4

    aput-wide p9, v4, v1

    invoke-direct {v0, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[D)V

    .line 974
    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    goto :goto_1
.end method

.method public final a(DDDDDLjava/lang/Runnable;)V
    .locals 6
    .parameter "scale"
    .parameter "fx1"
    .parameter "fy1"
    .parameter "fx2"
    .parameter "fy2"
    .parameter "afterAnim"

    .prologue
    .line 991
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->e()V

    .line 992
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    const/16 v3, 0x65

    const/4 v4, 0x5

    new-array v4, v4, [D

    const/4 v5, 0x0

    .line 993
    aput-wide p1, v4, v5

    const/4 v5, 0x1

    aput-wide p3, v4, v5

    const/4 v5, 0x2

    aput-wide p5, v4, v5

    const/4 v5, 0x3

    aput-wide p7, v4, v5

    const/4 v5, 0x4

    aput-wide p9, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[D)V

    .line 992
    invoke-virtual {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 996
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    move-object/from16 v0, p11

    invoke-direct {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(Ljava/lang/Runnable;)V

    .line 997
    .local v1, runnableAction:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->e:Z

    .line 998
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->c:J

    .line 999
    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 1000
    return-void
.end method

.method public final a(F)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 642
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->c(F)Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    move-result-object v0

    .line 643
    .local v0, scaleChangedType:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;
    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;)V

    .line 644
    return-void
.end method

.method public final a(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v2, 0x3f00

    .line 1591
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    sub-float v1, p1, v2

    sub-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a(FF)Z

    move-result v0

    .line 1592
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->r()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1594
    if-eqz v0, :cond_0

    .line 1595
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->w()V

    .line 1597
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b(I)Z

    move-result v0

    .line 513
    if-eqz v0, :cond_0

    .line 514
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;)V

    .line 516
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 0
    .parameter "latE6"
    .parameter "lonE6"

    .prologue
    .line 531
    invoke-direct {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(II)V

    .line 532
    return-void
.end method

.method public final a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bound"
    .parameter "screenPadding"

    .prologue
    .line 2345
    if-nez p1, :cond_1

    .line 2357
    :cond_0
    :goto_0
    return-void

    .line 2349
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 2350
    .local v0, targetLatE6:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 2353
    .local v1, targetLonE6:I
    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(II)V

    .line 2354
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gtz v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_0

    .line 2355
    :cond_2
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->u:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_3

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(F)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ai;)V
    .locals 1
    .parameter "gestureRule"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bq;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bq;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ai;)V

    .line 466
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/av;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 1858
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->e:Ljava/util/List;

    monitor-enter v1

    .line 1859
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1860
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1858
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

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/aw;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 397
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->m:Ljava/util/ArrayList;

    monitor-enter v1

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
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

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ax;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 1778
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1779
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1778
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/ay;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 1737
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1738
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1737
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

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/az;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->j:Ljava/util/ArrayList;

    .line 1815
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->j:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1816
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1817
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V
    .locals 11
    .parameter "action"

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 2819
    if-eqz p1, :cond_0

    .line 2820
    iget v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 2822
    :cond_0
    :goto_0
    return-void

    .line 2820
    :sswitch_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->q:Lcom/tencent/tencentmap/mapsdk/maps/a/bi;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bi;->a()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v0, v0, v10

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v2, v2, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(DD)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v0, v0, v10

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(D)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v0, v0, v10

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(F)V

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/tencent/map/lib/gl/a;->c:I

    int-to-double v0, v0

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v2, v2, v3

    sub-double/2addr v0, v2

    sget v2, Lcom/tencent/map/lib/gl/a;->d:I

    int-to-double v2, v2

    iget-object v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v4, v4, v5

    sub-double/2addr v2, v4

    iget-object v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v4, v4, v6

    sget v6, Lcom/tencent/map/lib/gl/a;->c:I

    int-to-double v6, v6

    sub-double/2addr v4, v6

    iget-object v6, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v6, v6, v8

    sget v8, Lcom/tencent/map/lib/gl/a;->d:I

    int-to-double v8, v8

    sub-double/2addr v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Debug ScaleFix innerPerform        before   center:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->p()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(DD)V

    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v0, v0, v10

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(D)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Debug ScaleFix innerPerform        after      center:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->p()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(DD)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Debug ScaleFix finally scale move by:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " curCenter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->p()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v0, v0, v10

    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h(D)V

    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v0, v0, v3

    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->g(D)V

    goto/16 :goto_0

    :sswitch_6
    sget v0, Lcom/tencent/map/lib/gl/a;->c:I

    int-to-double v0, v0

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v2, v2, v3

    sub-double/2addr v0, v2

    sget v2, Lcom/tencent/map/lib/gl/a;->d:I

    int-to-double v2, v2

    iget-object v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v4, v4, v5

    sub-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(DD)V

    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v0, v0, v10

    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h(D)V

    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v0, v0, v6

    sget v2, Lcom/tencent/map/lib/gl/a;->c:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v2, v2, v8

    sget v4, Lcom/tencent/map/lib/gl/a;->d:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(DD)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v0, v0, v10

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(D)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v0, v0, v10

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(D)V

    goto/16 :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->A()V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    array-length v0, v0

    if-le v0, v5, :cond_1

    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    :cond_1
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v0, v0, v10

    double-to-int v0, v0

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v1, v1, v3

    double-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(II)V

    goto/16 :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->z()V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v0, v0, v10

    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i(D)V

    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v0, v0, v3

    double-to-int v0, v0

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->b:[D

    aget-wide v1, v1, v5

    double-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(II)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->v:Lcom/tencent/tencentmap/mapsdk/maps/a/bm$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->v:Lcom/tencent/tencentmap/mapsdk/maps/a/bm$a;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$a;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_a
        0x6 -> :sswitch_d
        0x64 -> :sswitch_2
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x67 -> :sswitch_6
        0x68 -> :sswitch_9
        0x69 -> :sswitch_b
        0x6c -> :sswitch_3
        0x6d -> :sswitch_7
        0x6e -> :sswitch_8
        0x78 -> :sswitch_c
        0x2710 -> :sswitch_e
    .end sparse-switch
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bm$a;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 2931
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->v:Lcom/tencent/tencentmap/mapsdk/maps/a/bm$a;

    .line 2932
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bv;)V
    .locals 2
    .parameter "mapParamChangedListener"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k:Ljava/util/ArrayList;

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k:Ljava/util/ArrayList;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 13
    .parameter "afterAnim"

    .prologue
    const-wide/high16 v5, 0x4000

    const/16 v12, 0x10

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1007
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k()I

    move-result v0

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->n()I

    move-result v3

    if-ge v0, v3, :cond_2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->e()V

    new-array v9, v12, [[D

    move v0, v2

    move-wide v3, v5

    :goto_1
    if-lt v0, v12, :cond_3

    new-array v0, v2, [D

    aput-wide v3, v0, v1

    aput-object v0, v9, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2
    if-lt v0, v12, :cond_4

    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    invoke-direct {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(Ljava/lang/Runnable;)V

    iput-boolean v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->e:Z

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->c:J

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bc;

    invoke-direct {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bc;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 1008
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1007
    goto :goto_0

    :cond_3
    int-to-long v7, v0

    const-wide/16 v10, 0x14

    mul-long/2addr v7, v10

    invoke-static {v5, v6, v7, v8}, Lcom/tencent/map/lib/gl/a;->a(DJ)D

    move-result-wide v7

    div-double/2addr v3, v7

    rsub-int/lit8 v10, v0, 0x10

    new-array v11, v2, [D

    aput-wide v3, v11, v1

    aput-object v11, v9, v10

    add-int/lit8 v0, v0, 0x1

    move-wide v3, v7

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    const/16 v4, 0x64

    aget-object v5, v9, v0

    invoke-direct {v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[D)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final a(Z)V
    .locals 4
    .parameter "isOpen"

    .prologue
    .line 1614
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 1615
    .local v0, mode:I
    :goto_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->l:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->w()V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->d()V

    .line 1616
    :cond_0
    return-void

    .line 1614
    .end local v0           #mode:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1615
    .restart local v0       #mode:I
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final b()Lcom/tencent/tencentmap/mapsdk/maps/a/be;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a()V

    .line 245
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    return-object v0
.end method

.method public final b(D)V
    .locals 7
    .parameter "angle"

    .prologue
    const-wide v5, 0x4076800000000000L

    .line 820
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b()F

    move-result v1

    float-to-double v1, v1

    sub-double v1, p1, v1

    rem-double/2addr v1, v5

    const-wide v3, 0x4066800000000000L

    cmpl-double v3, v1, v3

    if-lez v3, :cond_1

    sub-double/2addr v1, v5

    .line 821
    :cond_0
    :goto_0
    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    .line 829
    :goto_1
    return-void

    .line 820
    :cond_1
    const-wide v3, -0x3f99800000000000L

    cmpg-double v3, v1, v3

    if-gez v3, :cond_0

    add-double/2addr v1, v5

    goto :goto_0

    .line 825
    :cond_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    double-to-float v2, p1

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a(F)F

    move-result v0

    .line 827
    .local v0, rotateAngle:F
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->w()V

    .line 828
    float-to-double v1, v0

    invoke-direct {p0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->f(D)V

    goto :goto_1
.end method

.method public final b(DD)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a(DD)V

    .line 889
    return-void
.end method

.method public final b(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2927
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(DD)V

    .line 2928
    return-void
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/a/av;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 1871
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->e:Ljava/util/List;

    monitor-enter v1

    .line 1872
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1871
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/a/ay;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 1750
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1751
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1750
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 897
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->e()V

    .line 898
    invoke-virtual {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 899
    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 12
    .parameter "afterAnim"

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->m()I

    move-result v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    sget v0, Lcom/tencent/map/lib/gl/a;->c:I

    sget v1, Lcom/tencent/map/lib/gl/a;->d:I

    int-to-float v5, v0

    int-to-float v6, v1

    const/16 v0, 0x10

    new-array v7, v0, [[D

    const-wide/high16 v1, 0x3fe0

    const/4 v0, 0x1

    :goto_1
    const/16 v3, 0x10

    if-lt v0, v3, :cond_4

    const/4 v0, 0x0

    const/4 v3, 0x5

    new-array v3, v3, [D

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    const/4 v1, 0x1

    float-to-double v8, v5

    aput-wide v8, v3, v1

    const/4 v1, 0x2

    float-to-double v8, v6

    aput-wide v8, v3, v1

    const/4 v1, 0x3

    float-to-double v4, v5

    aput-wide v4, v3, v1

    const/4 v1, 0x4

    float-to-double v4, v6

    aput-wide v4, v3, v1

    aput-object v3, v7, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x10

    if-lt v0, v2, :cond_5

    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    invoke-direct {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->e:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->c:J

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bc;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bc;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->e()V

    const/16 v0, 0x10

    new-array v5, v0, [[D

    const-wide/high16 v1, 0x3fe0

    const/4 v0, 0x1

    :goto_3
    const/16 v3, 0x10

    if-lt v0, v3, :cond_6

    const/4 v0, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [D

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    aput-object v3, v5, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x10

    if-lt v0, v2, :cond_7

    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->j:Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    invoke-direct {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->e:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;->c:J

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bc;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bc;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 1160
    :cond_2
    return-void

    .line 1159
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const-wide/high16 v3, 0x3fe0

    int-to-long v8, v0

    const-wide/16 v10, 0x14

    mul-long/2addr v8, v10

    invoke-static {v3, v4, v8, v9}, Lcom/tencent/map/lib/gl/a;->a(DJ)D

    move-result-wide v3

    div-double/2addr v1, v3

    rsub-int/lit8 v8, v0, 0x10

    const/4 v9, 0x5

    new-array v9, v9, [D

    const/4 v10, 0x0

    aput-wide v1, v9, v10

    const/4 v1, 0x1

    float-to-double v10, v5

    aput-wide v10, v9, v1

    const/4 v1, 0x2

    float-to-double v10, v6

    aput-wide v10, v9, v1

    const/4 v1, 0x3

    float-to-double v10, v5

    aput-wide v10, v9, v1

    const/4 v1, 0x4

    float-to-double v10, v6

    aput-wide v10, v9, v1

    aput-object v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    move-wide v1, v3

    goto/16 :goto_1

    :cond_5
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    const/16 v3, 0x65

    aget-object v4, v7, v0

    invoke-direct {v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[D)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_6
    const-wide/high16 v3, 0x3fe0

    int-to-long v6, v0

    const-wide/16 v8, 0x14

    mul-long/2addr v6, v8

    invoke-static {v3, v4, v6, v7}, Lcom/tencent/map/lib/gl/a;->a(DJ)D

    move-result-wide v3

    div-double/2addr v1, v3

    rsub-int/lit8 v6, v0, 0x10

    const/4 v7, 0x1

    new-array v7, v7, [D

    const/4 v8, 0x0

    aput-wide v1, v7, v8

    aput-object v7, v5, v6

    add-int/lit8 v0, v0, 0x1

    move-wide v1, v3

    goto/16 :goto_3

    :cond_7
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    const/16 v3, 0x64

    aget-object v4, v5, v0

    invoke-direct {v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[D)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->b()V

    .line 253
    return-void
.end method

.method public final c(D)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 837
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->j()F

    move-result v0

    .line 838
    .local v0, curScale:F
    double-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-double v1, v1

    double-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(F)V

    .line 839
    return-void
.end method

.method public final c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 2799
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->d()V

    .line 2790
    return-void
.end method

.method public final d(D)V
    .locals 6
    .parameter "angle"

    .prologue
    .line 907
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->e()V

    .line 908
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    const/16 v1, 0x66

    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    .line 909
    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    aput-wide p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[D)V

    .line 908
    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 911
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    .line 313
    .local v0, mapParam:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mapParam stack saveMapParam:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->p:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v0           #mapParam:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public final e(D)V
    .locals 4
    .parameter "scale"

    .prologue
    .line 954
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->e()V

    .line 955
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    const/16 v1, 0x6c

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    .line 956
    aput-wide p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(I[D)V

    .line 955
    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 958
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->p:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    .line 328
    .local v0, backMapParam:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 329
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    invoke-direct {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;)V

    .line 335
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->p()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->p()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->C()V

    .line 340
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b()F

    move-result v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 341
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b()F

    move-result v1

    float-to-double v1, v1

    invoke-direct {p0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->f(D)V

    .line 345
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f()F

    move-result v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 346
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f()F

    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->y()V

    .line 349
    :cond_3
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu;)V

    .line 350
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->w()V

    .line 356
    .end local v0           #backMapParam:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    :goto_1
    return-void

    .line 330
    .restart local v0       #backMapParam:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    :cond_4
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->j()F

    move-result v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->j()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 331
    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    invoke-direct {p0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    .end local v0           #backMapParam:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 472
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d:I

    sget v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    .line 475
    .local v0, centerGeoPoint:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v3

    .line 476
    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a(II)V

    .line 477
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->w()V

    .line 478
    return-void
.end method

.method public final h()F
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->j()F

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->k()I

    move-result v0

    return v0
.end method

.method public final j()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->p()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    return-object v0
.end method

.method public final k()F
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b()F

    move-result v0

    return v0
.end method

.method public final l()F
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f()F

    move-result v0

    return v0
.end method

.method public final m()F
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->l()F

    move-result v0

    return v0
.end method

.method public final n()V
    .locals 13

    .prologue
    const-wide v11, 0x3fb99999a0000000L

    const-wide v4, 0x4076800000000000L

    const-wide/16 v2, 0x0

    .line 1220
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->e()V

    .line 1221
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->b()F

    move-result v0

    float-to-double v0, v0

    sub-double v0, v2, v0

    rem-double v7, v0, v4

    const-wide v0, 0x4066800000000000L

    cmpl-double v0, v7, v0

    if-lez v0, :cond_3

    sub-double/2addr v7, v4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->f()F

    move-result v0

    float-to-double v0, v0

    sub-double v9, v2, v0

    cmpl-double v0, v7, v2

    if-nez v0, :cond_1

    cmpl-double v0, v9, v2

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postRotateAndSkew distance:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-double v0, v7, v11

    double-to-float v5, v0

    mul-double v0, v9, v11

    double-to-float v6, v0

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;

    const/4 v1, 0x4

    new-array v2, v1, [D

    fill-array-data v2, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bm;[DJFFDD)V

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 1222
    :cond_2
    return-void

    .line 1221
    :cond_3
    const-wide v0, -0x3f99800000000000L

    cmpg-double v0, v7, v0

    if-gez v0, :cond_0

    add-double/2addr v7, v4

    goto :goto_0

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bu;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized p()V
    .locals 3

    .prologue
    .line 1682
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->g:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1683
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1684
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1682
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 1683
    :cond_0
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1682
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final q()V
    .locals 3

    .prologue
    .line 1798
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1799
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1798
    monitor-exit v1

    return-void

    .line 1799
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ax;

    .line 1800
    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ax;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1798
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final r()Landroid/graphics/Rect;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 2741
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    sget v3, Lcom/tencent/map/lib/gl/a;->a:I

    int-to-double v3, v3

    sget v5, Lcom/tencent/map/lib/gl/a;->b:I

    int-to-double v5, v5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    .line 2742
    .local v1, p:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/au;

    invoke-virtual {v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v2

    .line 2746
    .local v2, rightBottom:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    invoke-virtual {v1, v7, v8, v7, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a(DD)V

    .line 2748
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/au;

    invoke-virtual {v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    .line 2750
    .local v0, leftTop:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v4

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v5

    .line 2751
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v6

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v7

    .line 2750
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->e()V

    .line 2806
    return-void
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 2842
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->o:Z

    return v0
.end method

.method final u()Z
    .locals 1

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/be;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/be;->f()Z

    move-result v0

    return v0
.end method
