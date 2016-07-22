.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/en;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/do;
.source "GLHeatOverlay.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/av;
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/aw;
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/ay;
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/es$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/en$c;
    }
.end annotation


# static fields
.field public static a:I

.field private static final g:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private volatile A:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/es;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/es;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[F>;"
        }
    .end annotation
.end field

.field e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[I>;"
        }
    .end annotation
.end field

.field f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/io/ByteArrayOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/tencent/tencentmap/mapsdk/maps/a/eo;

.field private volatile i:Ljavax/microedition/khronos/opengles/GL10;

.field private volatile j:Z

.field private k:I

.field private final l:I

.field private m:[F

.field private n:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

.field private o:Lcom/tencent/tencentmap/mapsdk/maps/a/ep;

.field private p:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;

.field private q:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;

.field private r:Lcom/tencent/tencentmap/mapsdk/maps/a/ev;

.field private s:Lcom/tencent/tencentmap/mapsdk/maps/a/em;

.field private final t:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final v:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/concurrent/ThreadPoolExecutor;

.field private x:Ljava/util/Timer;

.field private volatile y:Z

.field private volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->g:Ljava/util/concurrent/TimeUnit;

    .line 69
    const/4 v0, 0x1

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;)V
    .locals 11
    .parameter "mapView"
    .parameter "options"

    .prologue
    const-wide/16 v9, 0x50

    const-wide/16 v3, 0x1e

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 118
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/do;-><init>()V

    .line 63
    iput-boolean v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->j:Z

    .line 71
    const/16 v0, 0x50

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->l:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->c:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->t:Ljava/util/concurrent/BlockingQueue;

    .line 92
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->v:Ljava/util/concurrent/BlockingQueue;

    .line 103
    iput-boolean v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->y:Z

    .line 108
    iput-boolean v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->z:Z

    .line 113
    iput v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->A:I

    .line 473
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->d:Ljava/lang/ThreadLocal;

    .line 474
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->e:Ljava/lang/ThreadLocal;

    .line 475
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->f:Ljava/lang/ThreadLocal;

    .line 119
    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->getOnHeatMapReadyListener()Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->p:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;

    .line 120
    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->getRadius()I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    .line 121
    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->getColorMapper()Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eu;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eu;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->q:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;

    .line 127
    :goto_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/em;

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/em;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/em;

    .line 128
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;

    invoke-direct {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/ep;

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eo;

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ew;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/ev;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->g:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->t:Ljava/util/concurrent/BlockingQueue;

    new-instance v7, Lcom/tencent/tencentmap/mapsdk/maps/a/en$1;

    invoke-direct {v7, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->g:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->v:Ljava/util/concurrent/BlockingQueue;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->w:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->g()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->x:Ljava/util/Timer;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->x:Ljava/util/Timer;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;

    invoke-direct {v1, p0, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/en$b;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;B)V

    move-wide v2, v9

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/av;)V

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ay;)V

    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/aw;)V

    .line 129
    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->getNodes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Ljava/util/List;)V

    .line 130
    return-void

    .line 125
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions;->getColorMapper()Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->q:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;

    goto :goto_0
.end method

.method private static a(DDDD)D
    .locals 4
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 454
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .locals 2
    .parameter "screenPoint"

    .prologue
    .line 462
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    .line 464
    .local v0, leftTopGeo:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/ep;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bu;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/au;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Lcom/tencent/tencentmap/mapsdk/maps/a/em;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/em;

    return-object v0
.end method

.method private static a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;I)Lcom/tencent/tencentmap/mapsdk/maps/a/es;
    .locals 6
    .parameter "p"
    .parameter "scaleLevel"

    .prologue
    const-wide/high16 v4, 0x4070

    .line 468
    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 469
    .local v0, x:I
    iget-wide v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 470
    .local v1, y:I
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    invoke-direct {v2, v0, v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;-><init>(III)V

    return-object v2
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/en;Lcom/tencent/tencentmap/mapsdk/maps/a/es;)V
    .locals 22
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->f()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/em;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/em;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/es;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x100

    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a:I

    div-int v4, v2, v3

    const/16 v2, 0x100

    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a:I

    div-int v5, v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->i()Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->j()Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v2

    const-wide/high16 v7, 0x3ff0

    const-wide/high16 v9, 0x4000

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->e()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x14

    int-to-double v11, v3

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    div-double/2addr v7, v9

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-wide v9, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    int-to-double v11, v11

    div-double/2addr v11, v7

    sub-double/2addr v9, v11

    iget-wide v11, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    int-to-double v13, v13

    div-double/2addr v13, v7

    add-double/2addr v11, v13

    invoke-direct {v3, v9, v10, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    new-instance v9, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget-wide v10, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-object/from16 v0, p0

    iget v12, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    int-to-double v12, v12

    div-double/2addr v12, v7

    add-double/2addr v10, v12

    iget-wide v12, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    int-to-double v14, v2

    div-double/2addr v14, v7

    sub-double/2addr v12, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/ev;

    invoke-interface {v2, v3, v9, v7, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/ev;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;Lcom/tencent/tencentmap/mapsdk/maps/a/bf;D)Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x100

    sget v7, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a:I

    div-int/2addr v3, v7

    mul-int/lit16 v3, v3, 0x100

    sget v7, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a:I

    div-int/2addr v3, v7

    new-array v7, v3, [I

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x100

    sget v8, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a:I

    div-int/2addr v3, v8

    mul-int/lit16 v3, v3, 0x100

    sget v8, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a:I

    div-int/2addr v3, v8

    new-array v8, v3, [F

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/et;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/et;->b()D

    move-result-wide v10

    iget-wide v12, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v14, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    sub-double/2addr v12, v14

    iget-wide v14, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    iget-wide v2, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    sub-double v2, v14, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/ep;

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->e()I

    move-result v14

    invoke-static {v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->a(I)D

    move-result-wide v14

    mul-double/2addr v12, v14

    mul-double/2addr v14, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v10, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    if-ge v3, v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v16, v12, v16

    int-to-double v0, v2

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    sget v17, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a:I

    div-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v17, v14, v17

    int-to-double v0, v3

    move-wide/from16 v19, v0

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    sget v18, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a:I

    div-int v17, v17, v18

    if-ltz v17, :cond_1

    if-ltz v16, :cond_1

    move/from16 v0, v17

    if-ge v0, v4, :cond_1

    move/from16 v0, v16

    if-ge v0, v5, :cond_1

    mul-int v17, v17, v5

    add-int v16, v16, v17

    aget v17, v8, v16

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->m:[F

    move-object/from16 v19, v0

    mul-int/lit8 v20, v3, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v20, v20, v2

    aget v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    mul-double v19, v19, v10

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    aput v17, v8, v16

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_2
    mul-int v3, v5, v4

    if-ge v2, v3, :cond_5

    aget v3, v8, v2

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->q:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;

    aget v6, v8, v2

    float-to-double v9, v6

    invoke-interface {v3, v9, v10}, Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$IColorMapper;->colorForValue(D)I

    move-result v3

    aput v3, v7, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v5, v4, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/em;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/em;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/es;Landroid/graphics/Bitmap;)Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->y:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/en;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/es;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/es;>;"
    if-nez p1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    .line 327
    .local v1, tile:Lcom/tencent/tencentmap/mapsdk/maps/a/es;
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eo;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->a(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->b()V

    goto :goto_1

    .line 330
    .end local v1           #tile:Lcom/tencent/tencentmap/mapsdk/maps/a/es;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;Ljava/util/ArrayList;)V
    .locals 27
    .parameter "gl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/opengles/GL10;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/es;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p2, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/es;>;"
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_4

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->m()F

    move-result v7

    .line 219
    .local v7, glScale:F
    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->e()I

    move-result v9

    .line 220
    .local v9, lastZoom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i()I

    move-result v21

    .line 221
    sub-int v4, v21, v9

    .line 222
    .local v4, ZoomDiff:I
    const-wide/high16 v21, 0x4000

    int-to-double v0, v4

    move-wide/from16 v23, v0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    float-to-double v0, v7

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v14, v0

    .line 224
    .local v14, scaleD:F
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 226
    const/high16 v21, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v14, v14, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 228
    const/4 v5, 0x0

    .line 229
    .local v5, fTile:Lcom/tencent/tencentmap/mapsdk/maps/a/es;
    const/16 v18, 0x0

    .local v18, x0:F
    const/16 v20, 0x0

    .line 230
    .local v20, y0:F
    const/4 v6, 0x1

    .line 232
    .local v6, flag:Z
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    .line 233
    .local v16, tile:Lcom/tencent/tencentmap/mapsdk/maps/a/es;
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->f()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 235
    if-eqz v6, :cond_2

    .line 236
    const/4 v6, 0x0

    .line 237
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c()I

    move-result v21

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000

    int-to-double v0, v4

    move-wide/from16 v25, v0

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    mul-double v10, v21, v23

    .line 239
    .local v10, px:D
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d()I

    move-result v21

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4000

    int-to-double v0, v4

    move-wide/from16 v25, v0

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    mul-double v12, v21, v23

    .line 242
    .local v12, py:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/ep;

    move-object/from16 v21, v0

    new-instance v22, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-object/from16 v0, v22

    invoke-direct {v0, v10, v11, v12, v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    invoke-virtual/range {v21 .. v22}, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v15

    .line 246
    .local v15, screenPoint:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    iget-wide v0, v15, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-wide/from16 v21, v0

    sget v23, Lcom/tencent/map/lib/gl/a;->c:I

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    sub-double v21, v21, v23

    const-wide/high16 v23, 0x4000

    int-to-double v0, v4

    move-wide/from16 v25, v0

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    div-double v21, v21, v23

    const-wide/high16 v23, 0x4060

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v17, v0

    .line 248
    .local v17, x:F
    sget v21, Lcom/tencent/map/lib/gl/a;->d:I

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    iget-wide v0, v15, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-wide/from16 v23, v0

    sub-double v21, v21, v23

    const-wide/high16 v23, 0x4000

    int-to-double v0, v4

    move-wide/from16 v25, v0

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    div-double v21, v21, v23

    const-wide/high16 v23, 0x4060

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v19, v0

    .line 251
    .local v19, y:F
    move/from16 v18, v17

    .line 252
    move/from16 v20, v19

    .line 253
    move-object/from16 v5, v16

    .line 261
    .end local v10           #px:D
    .end local v12           #py:D
    .end local v15           #screenPoint:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 262
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 263
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 264
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->y:Z

    .line 266
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0

    .line 255
    .end local v17           #x:F
    .end local v19           #y:F
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c()I

    move-result v21

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v17, v21, v18

    .line 257
    .restart local v17       #x:F
    invoke-virtual/range {v16 .. v16}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d()I

    move-result v21

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v19, v21, v20

    .restart local v19       #y:F
    goto :goto_1

    .line 270
    .end local v16           #tile:Lcom/tencent/tencentmap/mapsdk/maps/a/es;
    .end local v17           #x:F
    .end local v19           #y:F
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 272
    .end local v4           #ZoomDiff:I
    .end local v5           #fTile:Lcom/tencent/tencentmap/mapsdk/maps/a/es;
    .end local v6           #flag:Z
    .end local v7           #glScale:F
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #lastZoom:I
    .end local v14           #scaleD:F
    .end local v18           #x0:F
    .end local v20           #y0:F
    :cond_4
    return-void
.end method

.method private static b(DDDD)D
    .locals 4
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 458
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Lcom/tencent/tencentmap/mapsdk/maps/a/ev;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->r:Lcom/tencent/tencentmap/mapsdk/maps/a/ev;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->j:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->p:Lcom/tencent/tencentmap/mapsdk/maps/model/HeatOverlayOptions$OnHeatMapReadyListener;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->y:Z

    return v0
.end method

.method private g()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4024

    .line 179
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    mul-int/2addr v4, v5

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->m:[F

    .line 181
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    mul-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_2

    .line 182
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    mul-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_1

    .line 183
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    sub-int v5, v1, v5

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    sub-int v6, v2, v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 187
    .local v0, distance:F
    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    int-to-float v5, v5

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    .line 188
    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 189
    const/4 v3, 0x0

    .line 194
    .local v3, scaleFactor:F
    :goto_2
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->m:[F

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    aput v3, v4, v5

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    .end local v3           #scaleFactor:F
    :cond_0
    neg-float v4, v0

    float-to-double v4, v4

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->k:I

    neg-int v6, v6

    int-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v3, v4

    .restart local v3       #scaleFactor:F
    goto :goto_2

    .line 181
    .end local v0           #distance:F
    .end local v3           #scaleFactor:F
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v2           #j:I
    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->y:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->z:Z

    return v0
.end method

.method static synthetic i(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->A:I

    return v0
.end method

.method static synthetic j(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->A:I

    return v0
.end method

.method static synthetic k(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->z:Z

    return v0
.end method

.method static synthetic l(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)V
    .locals 20
    .parameter "x0"

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->i:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->getWidth()I

    move-result v3

    if-lez v2, :cond_0

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i()I

    move-result v10

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->e()I

    move-result v2

    :cond_2
    sub-int/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/es$a;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b:Ljava/util/ArrayList;

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v14

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    const-wide/16 v3, 0x0

    sget v5, Lcom/tencent/map/lib/gl/a;->b:I

    int-to-double v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v15

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    sget v3, Lcom/tencent/map/lib/gl/a;->a:I

    int-to-double v3, v3

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v16

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    sget v3, Lcom/tencent/map/lib/gl/a;->a:I

    int-to-double v3, v3

    sget v5, Lcom/tencent/map/lib/gl/a;->b:I

    int-to-double v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v17

    new-instance v18, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-direct/range {v18 .. v18}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>()V

    iget-wide v2, v14, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v4, v15, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    invoke-static/range {v2 .. v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b(DDDD)D

    move-result-wide v2

    move-object/from16 v0, v18

    iput-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v2, v14, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    iget-wide v4, v15, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-static/range {v2 .. v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(DDDD)D

    move-result-wide v2

    move-object/from16 v0, v18

    iput-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    new-instance v19, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-direct/range {v19 .. v19}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>()V

    iget-wide v2, v14, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v4, v15, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    invoke-static/range {v2 .. v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(DDDD)D

    move-result-wide v2

    move-object/from16 v0, v19

    iput-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v2, v14, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    iget-wide v4, v15, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-static/range {v2 .. v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b(DDDD)D

    move-result-wide v2

    move-object/from16 v0, v19

    iput-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;I)Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;I)Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    move-result-object v6

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c()I

    move-result v2

    move v3, v2

    :goto_3
    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c()I

    move-result v2

    if-gt v3, v2, :cond_9

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d()I

    move-result v2

    move v4, v2

    :goto_4
    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d()I

    move-result v2

    if-lt v4, v2, :cond_8

    new-instance v7, Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    invoke-direct {v7, v3, v4, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;-><init>(III)V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-virtual {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c()I

    move-result v8

    mul-int/lit16 v8, v8, 0x100

    int-to-double v8, v8

    invoke-virtual {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    mul-int/lit16 v14, v14, 0x100

    int-to-double v14, v14

    invoke-direct {v2, v8, v9, v14, v15}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/ep;

    invoke-virtual {v8, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v2

    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-virtual {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->c()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    mul-int/lit16 v9, v9, 0x100

    int-to-double v14, v9

    invoke-virtual {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->d()I

    move-result v9

    mul-int/lit16 v9, v9, 0x100

    int-to-double v0, v9

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v8, v14, v15, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/ep;

    invoke-virtual {v9, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/ep;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v8

    invoke-virtual {v7, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)V

    invoke-virtual {v7, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->h()Lcom/tencent/tencentmap/mapsdk/maps/a/er;

    move-result-object v8

    if-nez v8, :cond_7

    :cond_6
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->g()F

    move-result v8

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->h()Lcom/tencent/tencentmap/mapsdk/maps/a/er;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/es;->a(FLcom/tencent/tencentmap/mapsdk/maps/a/er;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->t:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :try_start_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/es;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/a/en$c;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/en$c;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;Lcom/tencent/tencentmap/mapsdk/maps/a/es;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method static synthetic m(Lcom/tencent/tencentmap/mapsdk/maps/a/en;)Lcom/tencent/tencentmap/mapsdk/maps/a/eo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eo;

    return-object v0
.end method


# virtual methods
.method public final a(D)V
    .locals 2
    .parameter "angle"

    .prologue
    .line 650
    const-wide/high16 v0, 0x3ff0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/high16 v0, -0x4010

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b()V

    .line 653
    :cond_1
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 643
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/bu$b;

    if-eq p1, v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b()V

    .line 646
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/es;)V
    .locals 3
    .parameter "tileFadedOut"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/a/en$2;

    invoke-direct {v2, p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/en$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;Lcom/tencent/tencentmap/mapsdk/maps/a/es;)V

    invoke-direct {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bb;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 666
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
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
    .line 167
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/HeatDataNode;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->v:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->w:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/en$a;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/en;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->i:Ljavax/microedition/khronos/opengles/GL10;

    .line 204
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->j:Z

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b()V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->c:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Ljavax/microedition/khronos/opengles/GL10;Ljava/util/ArrayList;)V

    .line 210
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Ljavax/microedition/khronos/opengles/GL10;Ljava/util/ArrayList;)V

    .line 212
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eo;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public final a(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public final a_()V
    .locals 0

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b()V

    .line 639
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->z:Z

    .line 348
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->A:I

    .line 349
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->j:Z

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->x:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/av;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/ay;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->t:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->t:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->v:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->v:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->w:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->w:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eo;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->i:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eo;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/em;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/em;->a()Z

    invoke-static {}, Ljava/lang/System;->gc()V

    .line 341
    return-void
.end method

.method public final d()Lcom/tencent/tencentmap/mapsdk/maps/a/eo;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eo;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->y:Z

    .line 353
    return-void
.end method

.method public final f()Lcom/tencent/tencentmap/mapsdk/maps/a/ep;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/en;->o:Lcom/tencent/tencentmap/mapsdk/maps/a/ep;

    return-object v0
.end method
