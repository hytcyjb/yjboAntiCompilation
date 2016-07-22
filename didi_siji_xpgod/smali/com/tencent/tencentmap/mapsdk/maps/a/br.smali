.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/br;
.super Ljava/lang/Object;
.source "MapGestureDetector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;
    }
.end annotation


# static fields
.field private static final a:F


# instance fields
.field private b:Z

.field private c:Z

.field private d:I

.field private e:Landroid/graphics/PointF;

.field private f:Landroid/graphics/PointF;

.field private g:Landroid/graphics/PointF;

.field private h:Landroid/graphics/PointF;

.field private i:Landroid/graphics/PointF;

.field private j:Landroid/graphics/PointF;

.field private k:Landroid/graphics/PointF;

.field private l:J

.field private m:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

.field private n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

.field private o:Ljava/lang/reflect/Method;

.field private p:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-wide v0, 0x3f5c98710add7e36L

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a:F

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    .line 91
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    .line 93
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    .line 95
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    .line 97
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->i:Landroid/graphics/PointF;

    .line 99
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->j:Landroid/graphics/PointF;

    .line 104
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->k:Landroid/graphics/PointF;

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->l:J

    .line 119
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/br$a;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/br;B)V

    invoke-direct {v0, p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;-><init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    .line 120
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bt;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    return-object v0
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "p1"
    .parameter "p2"
    .parameter "event"

    .prologue
    .line 487
    :try_start_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->o:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 488
    const-class v4, Landroid/view/MotionEvent;

    const-string v5, "getX"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->o:Ljava/lang/reflect/Method;

    .line 489
    const-class v4, Landroid/view/MotionEvent;

    const-string v5, "getY"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->p:Ljava/lang/reflect/Method;

    .line 491
    :cond_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->o:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 492
    .local v0, x0:F
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->o:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 493
    .local v1, x1:F
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->p:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 494
    .local v2, y0:F
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->p:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 495
    .local v3, y1:F
    invoke-virtual {p1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 496
    invoke-virtual {p2, v1, v3}, Landroid/graphics/PointF;->set(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v0           #x0:F
    .end local v1           #x1:F
    .end local v2           #y0:F
    .end local v3           #y1:F
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method static synthetic a(FF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 456
    invoke-static {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->b(FF)Z

    move-result v0

    return v0
.end method

.method private static b(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x4040

    .line 444
    sget v2, Lcom/tencent/map/lib/gl/a;->a:I

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 445
    .local v0, xBuf:F
    sget v2, Lcom/tencent/map/lib/gl/a;->b:I

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 446
    .local v1, yBuf:F
    sget v2, Lcom/tencent/map/lib/gl/a;->c:I

    int-to-float v2, v2

    sub-float v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    .line 447
    sget v2, Lcom/tencent/map/lib/gl/a;->d:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 446
    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/br;)Lcom/tencent/tencentmap/mapsdk/maps/a/bh;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V

    .line 127
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/bs;)V

    .line 136
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 27
    .parameter "v"
    .parameter "event"

    .prologue
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->b:Z

    if-nez v2, :cond_1

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->m:Lcom/tencent/tencentmap/mapsdk/maps/a/bh;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->a(Landroid/view/MotionEvent;)Z

    .line 197
    :cond_1
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 151
    :pswitch_1
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->l:J

    .line 152
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->b:Z

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->j(FF)Z

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->l:J

    .line 158
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    .line 159
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->b:Z

    .line 161
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->c:Z

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->b()Z

    .line 164
    const/4 v2, 0x1

    goto :goto_1

    .line 167
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->l:J

    sub-long v9, v2, v4

    .line 168
    .local v9, dt:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-lez v2, :cond_2

    const-wide/16 v2, 0xc8

    cmp-long v2, v9, v2

    if-gez v2, :cond_2

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v2

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    const-wide v4, 0x40a3880000000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_2

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a()Z

    .line 172
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->k(FF)Z

    goto/16 :goto_0

    .line 169
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 177
    .end local v9           #dt:J
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->c:Z

    if-nez v2, :cond_0

    .line 178
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->c:Z

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->c()Z

    .line 180
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 186
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->b:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->c:Z

    if-nez v2, :cond_1b

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v14, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_9

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    if-nez v2, :cond_7

    const/16 v2, 0x18

    :goto_3
    int-to-double v5, v2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v7, v2

    cmpl-double v2, v7, v5

    if-gtz v2, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v7, v2

    cmpl-double v2, v7, v5

    if-gtz v2, :cond_5

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v7, v2

    cmpl-double v2, v7, v5

    if-gtz v2, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v7, v2

    cmpl-double v2, v7, v5

    if-lez v2, :cond_9

    :cond_5
    mul-float v2, v3, v4

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v5, v2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v7, v2

    const-wide v11, 0x3ff3333333333333L

    mul-double/2addr v7, v11

    cmpl-double v2, v5, v7

    if-lez v2, :cond_9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v5, v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v7, v2

    const-wide v11, 0x3ff3333333333333L

    mul-double/2addr v7, v11

    cmpl-double v2, v5, v7

    if-lez v2, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_8

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a(F)Z

    .line 189
    :cond_6
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 188
    :cond_7
    const/16 v2, 0x8

    goto/16 :goto_3

    :cond_8
    move v2, v4

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v5

    float-to-double v15, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v5

    float-to-double v0, v2

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v5

    float-to-double v0, v2

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v5

    float-to-double v0, v2

    move-wide/from16 v21, v0

    mul-double v5, v15, v15

    mul-double v7, v17, v17

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v7, v19, v19

    mul-double v11, v21, v21

    add-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    const/4 v11, 0x2

    if-ne v2, v11, :cond_12

    :cond_a
    mul-double v11, v5, v7

    const-wide/16 v23, 0x0

    cmpl-double v2, v11, v23

    if-lez v2, :cond_12

    mul-double v11, v15, v19

    mul-double v23, v17, v21

    add-double v11, v11, v23

    mul-double v23, v5, v7

    div-double v11, v11, v23

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    sget v2, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->a:F

    float-to-double v0, v2

    move-wide/from16 v23, v0

    cmpg-double v2, v11, v23

    if-gez v2, :cond_12

    const-wide v11, 0x4066800000000000L

    mul-double v23, v15, v19

    mul-double v25, v17, v21

    add-double v23, v23, v25

    mul-double v25, v5, v7

    div-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->acos(D)D

    move-result-wide v23

    mul-double v11, v11, v23

    const-wide v23, 0x400921fb54442d18L

    div-double v11, v11, v23

    mul-double v15, v15, v21

    mul-double v17, v17, v19

    sub-double v15, v15, v17

    const-wide/16 v17, 0x0

    cmpg-double v2, v15, v17

    if-gez v2, :cond_b

    neg-double v11, v11

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    if-nez v2, :cond_d

    const/4 v2, 0x5

    :goto_6
    int-to-double v15, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    cmpl-double v2, v17, v15

    if-lez v2, :cond_12

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_c

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_e

    :cond_c
    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_10

    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->k:Landroid/graphics/PointF;

    sget v3, Lcom/tencent/map/lib/gl/a;->c:I

    int-to-float v3, v3

    sget v4, Lcom/tencent/map/lib/gl/a;->d:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->k:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->k:Landroid/graphics/PointF;

    double-to-float v5, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Z

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_5

    :cond_d
    const/4 v2, 0x1

    goto :goto_6

    :cond_e
    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    iget v7, v5, Landroid/graphics/PointF;->y:F

    iget v8, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v13, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v13

    div-float/2addr v7, v8

    cmpl-float v8, v6, v7

    if-nez v8, :cond_f

    const/4 v2, 0x0

    goto :goto_7

    :cond_f
    iget v8, v2, Landroid/graphics/PointF;->y:F

    iget v13, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v8, v13

    iget v13, v3, Landroid/graphics/PointF;->y:F

    iget v14, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v13, v14

    sub-float/2addr v8, v13

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v3, v2

    div-float v2, v8, v2

    iget v3, v4, Landroid/graphics/PointF;->y:F

    iget v8, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget v13, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v8, v13

    sub-float/2addr v3, v8

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v5, v4

    div-float/2addr v3, v4

    sub-float v2, v3, v2

    sub-float v4, v6, v7

    div-float v4, v2, v4

    mul-float v2, v7, v4

    add-float/2addr v3, v2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_7

    :cond_10
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->b(FF)Z

    move-result v2

    goto/16 :goto_8

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->i:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->j:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->i:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->j:Landroid/graphics/PointF;

    double-to-float v5, v11

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Z

    goto/16 :goto_9

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    const/4 v11, 0x3

    if-ne v2, v11, :cond_17

    :cond_13
    const-wide/16 v11, 0x0

    cmpl-double v2, v5, v11

    if-lez v2, :cond_17

    div-double v15, v7, v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    if-nez v2, :cond_14

    const-wide v11, 0x3fb999999999999aL

    :goto_a
    const-wide/high16 v17, 0x3ff0

    sub-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    cmpl-double v2, v15, v11

    if-lez v2, :cond_17

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->b(FF)Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->b(FF)Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->b(FF)Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->k:Landroid/graphics/PointF;

    sget v3, Lcom/tencent/map/lib/gl/a;->c:I

    int-to-float v3, v3

    sget v4, Lcom/tencent/map/lib/gl/a;->d:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->k:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->k:Landroid/graphics/PointF;

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;DD)Z

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_5

    :cond_14
    const-wide v11, 0x3fa999999999999aL

    goto/16 :goto_a

    :cond_15
    const/4 v2, 0x1

    goto :goto_b

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->i:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v11

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->j:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v11

    const/high16 v11, 0x4000

    div-float/2addr v4, v11

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->i:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->j:Landroid/graphics/PointF;

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;DD)Z

    goto/16 :goto_c

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_6

    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    if-nez v2, :cond_1a

    const/16 v2, 0x50

    :goto_d
    int-to-double v5, v2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v7, v2

    cmpl-double v2, v7, v5

    if-gtz v2, :cond_19

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v7, v2

    cmpl-double v2, v7, v5

    if-gtz v2, :cond_19

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v7, v2

    cmpl-double v2, v7, v5

    if-gtz v2, :cond_19

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v7, v2

    cmpl-double v2, v7, v5

    if-lez v2, :cond_6

    :cond_19
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->d:I

    add-float v2, v13, v14

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    invoke-virtual {v4, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->c(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->g:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->e:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->h:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_5

    :cond_1a
    const/16 v2, 0x8

    goto :goto_d

    .line 191
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/br;->n:Lcom/tencent/tencentmap/mapsdk/maps/a/bt;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bt;->b(FF)Z

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
