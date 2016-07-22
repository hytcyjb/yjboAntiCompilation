.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/bh;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/bh$a;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/bh$d;
    }
.end annotation


# static fields
.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private final j:Landroid/os/Handler;

.field private final k:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;

.field private l:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/view/MotionEvent;

.field private s:Landroid/view/MotionEvent;

.field private t:Z

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Z

.field private z:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->a()I

    move-result v0

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->f:I

    .line 193
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->b()I

    move-result v0

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->g:I

    .line 194
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->c()I

    move-result v0

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->h:I

    .line 195
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->d()I

    move-result v0

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->i:I

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;-><init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;B)V

    .line 321
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;B)V
    .locals 5
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$a;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$a;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    .line 341
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;

    .line 342
    instance-of v0, p2, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

    if-eqz v0, :cond_0

    .line 343
    check-cast p2, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

    .end local p2
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->y:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->e()I

    move-result v2

    const/16 v0, 0x8

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->h()I

    move-result v1

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->j()I

    move-result v3

    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->d:I

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->l()I

    move-result v3

    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->e:I

    :goto_0
    mul-int/2addr v2, v2

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->a:I

    mul-int/2addr v0, v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->b:I

    mul-int v0, v1, v1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->c:I

    .line 346
    return-void

    .line 345
    :cond_2
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->a(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/a/cc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->f()I

    move-result v2

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->g()I

    move-result v0

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->i()I

    move-result v1

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->k()I

    move-result v4

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->d:I

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/cc;->m()I

    move-result v3

    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->e:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)Landroid/view/MotionEvent;
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->r:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)V
    .locals 2
    .parameter

    .prologue
    .line 660
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->o:Z

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->r:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;->c(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)Z
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->m:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/tencentmap/mapsdk/maps/a/bh;)V
    .locals 1
    .parameter

    .prologue
    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->n:Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0
    .parameter "isLongpressEnabled"

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->y:Z

    .line 417
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 38
    .parameter "ev"

    .prologue
    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 437
    .local v3, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    if-nez v32, :cond_0

    .line 438
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    .line 440
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 443
    and-int/lit16 v0, v3, 0xff

    move/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    const/16 v18, 0x1

    .line 444
    .local v18, pointerUp:Z
    :goto_0
    if-eqz v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    .line 447
    .local v21, skipIndex:I
    :goto_1
    const/16 v22, 0x0

    .local v22, sumX:F
    const/16 v23, 0x0

    .line 448
    .local v23, sumY:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 449
    .local v4, count:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    if-lt v14, v4, :cond_4

    .line 454
    if-eqz v18, :cond_6

    add-int/lit8 v9, v4, -0x1

    .line 455
    .local v9, div:I
    :goto_3
    int-to-float v0, v9

    move/from16 v32, v0

    div-float v10, v22, v32

    .line 456
    .local v10, focusX:F
    int-to-float v0, v9

    move/from16 v32, v0

    div-float v11, v23, v32

    .line 458
    .local v11, focusY:F
    const/4 v13, 0x0

    .line 460
    .local v13, handled:Z
    and-int/lit16 v0, v3, 0xff

    move/from16 v32, v0

    packed-switch v32, :pswitch_data_0

    .line 612
    :cond_1
    :goto_4
    :pswitch_0
    return v13

    .line 443
    .end local v4           #count:I
    .end local v9           #div:I
    .end local v10           #focusX:F
    .end local v11           #focusY:F
    .end local v13           #handled:Z
    .end local v14           #i:I
    .end local v18           #pointerUp:Z
    .end local v21           #skipIndex:I
    .end local v22           #sumX:F
    .end local v23           #sumY:F
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 444
    .restart local v18       #pointerUp:Z
    :cond_3
    const/16 v21, -0x1

    goto :goto_1

    .line 450
    .restart local v4       #count:I
    .restart local v14       #i:I
    .restart local v21       #skipIndex:I
    .restart local v22       #sumX:F
    .restart local v23       #sumY:F
    :cond_4
    move/from16 v0, v21

    if-eq v0, v14, :cond_5

    .line 451
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v32

    add-float v22, v22, v32

    .line 452
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v32

    add-float v23, v23, v32

    .line 449
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_6
    move v9, v4

    .line 454
    goto :goto_3

    .line 462
    .restart local v9       #div:I
    .restart local v10       #focusX:F
    .restart local v11       #focusY:F
    .restart local v13       #handled:Z
    :pswitch_1
    move-object/from16 v0, p0

    iput v10, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->u:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->w:F

    .line 463
    move-object/from16 v0, p0

    iput v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->v:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->x:F

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x3

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->t:Z

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->p:Z

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->q:Z

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->n:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->o:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->o:Z

    goto/16 :goto_4

    .line 469
    :pswitch_2
    move-object/from16 v0, p0

    iput v10, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->u:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->w:F

    .line 470
    move-object/from16 v0, p0

    iput v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->v:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->x:F

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    const/16 v33, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->e:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v32 .. v34}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v24

    .line 476
    .local v24, upIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 477
    .local v15, id1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v29

    .line 478
    .local v29, x1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v31

    .line 479
    .local v31, y1:F
    const/4 v14, 0x0

    :goto_5
    if-ge v14, v4, :cond_1

    .line 480
    move/from16 v0, v24

    if-eq v14, v0, :cond_7

    .line 482
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    .line 483
    .local v16, id2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v32

    mul-float v28, v29, v32

    .line 484
    .local v28, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v32

    mul-float v30, v31, v32

    .line 486
    .local v30, y:F
    add-float v32, v28, v30

    .line 487
    const/16 v33, 0x0

    cmpg-float v32, v32, v33

    if-gez v32, :cond_7

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_4

    .line 479
    .end local v16           #id2:I
    .end local v28           #x:F
    .end local v30           #y:F
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 495
    .end local v15           #id1:I
    .end local v24           #upIndex:I
    .end local v29           #x1:F
    .end local v31           #y1:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

    move-object/from16 v32, v0

    if-eqz v32, :cond_a

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x3

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    .line 497
    .local v12, hadTapMessage:Z
    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x3

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    .line 498
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->r:Landroid/view/MotionEvent;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->s:Landroid/view/MotionEvent;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f

    if-eqz v12, :cond_f

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->r:Landroid/view/MotionEvent;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->s:Landroid/view/MotionEvent;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->q:Z

    move/from16 v34, v0

    if-eqz v34, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v34

    invoke-virtual/range {v33 .. v33}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v36

    sub-long v33, v34, v36

    sget v35, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->h:I

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v35, v0

    cmp-long v35, v33, v35

    if-gtz v35, :cond_9

    sget v35, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->i:I

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v35, v0

    cmp-long v33, v33, v35

    if-gez v33, :cond_d

    :cond_9
    const/16 v32, 0x0

    :goto_6
    if-eqz v32, :cond_f

    .line 501
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->t:Z

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->r:Landroid/view/MotionEvent;

    move-object/from16 v32, v0

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;->b(Landroid/view/MotionEvent;)Z

    move-result v32

    or-int/lit8 v13, v32, 0x0

    .line 512
    .end local v12           #hadTapMessage:Z
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iput v10, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->u:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->w:F

    .line 513
    move-object/from16 v0, p0

    iput v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->v:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->x:F

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->r:Landroid/view/MotionEvent;

    move-object/from16 v32, v0

    if-eqz v32, :cond_b

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->r:Landroid/view/MotionEvent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/MotionEvent;->recycle()V

    .line 517
    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->r:Landroid/view/MotionEvent;

    .line 518
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->p:Z

    .line 519
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->q:Z

    .line 520
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->m:Z

    .line 521
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->o:Z

    .line 522
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->n:Z

    .line 524
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->y:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->r:Landroid/view/MotionEvent;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v34

    .line 527
    sget v36, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->g:I

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    add-long v34, v34, v36

    sget v36, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->f:I

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    add-long v34, v34, v36

    .line 526
    invoke-virtual/range {v32 .. v35}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 529
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->r:Landroid/view/MotionEvent;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v34

    sget v36, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->g:I

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    add-long v34, v34, v36

    invoke-virtual/range {v32 .. v35}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;

    move-object/from16 v32, v0

    or-int/lit8 v13, v13, 0x0

    .line 531
    goto/16 :goto_4

    .line 499
    .restart local v12       #hadTapMessage:Z
    :cond_d
    invoke-virtual/range {v32 .. v32}, Landroid/view/MotionEvent;->getX()F

    move-result v33

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    sub-int v33, v33, v34

    invoke-virtual/range {v32 .. v32}, Landroid/view/MotionEvent;->getY()F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    sub-int v32, v32, v34

    mul-int v33, v33, v33

    mul-int v32, v32, v32

    add-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->c:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    const/16 v32, 0x1

    goto/16 :goto_6

    :cond_e
    const/16 v32, 0x0

    goto/16 :goto_6

    .line 508
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x3

    sget v34, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->h:I

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-virtual/range {v32 .. v35}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 534
    .end local v12           #hadTapMessage:Z
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->u:F

    move/from16 v32, v0

    sub-float v19, v32, v10

    .line 535
    .local v19, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->v:F

    move/from16 v32, v0

    sub-float v20, v32, v11

    .line 536
    .local v20, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->t:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;->b(Landroid/view/MotionEvent;)Z

    move-result v32

    or-int/lit8 v13, v32, 0x0

    .line 539
    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->p:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 540
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->w:F

    move/from16 v32, v0

    sub-float v32, v10, v32

    move/from16 v0, v32

    float-to-int v6, v0

    .line 541
    .local v6, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->x:F

    move/from16 v32, v0

    sub-float v32, v11, v32

    move/from16 v0, v32

    float-to-int v7, v0

    .line 542
    .local v7, deltaY:I
    mul-int v32, v6, v6

    mul-int v33, v7, v7

    add-int v8, v32, v33

    .line 543
    .local v8, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->a:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-le v8, v0, :cond_11

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->r:Landroid/view/MotionEvent;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;->a(FF)Z

    move-result v13

    .line 545
    move-object/from16 v0, p0

    iput v10, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->u:F

    .line 546
    move-object/from16 v0, p0

    iput v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->v:F

    .line 547
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->p:Z

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x3

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->b:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-le v8, v0, :cond_1

    .line 553
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->q:Z

    goto/16 :goto_4

    .line 555
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v8           #distance:I
    :cond_12
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v32

    const/high16 v33, 0x3f80

    cmpl-float v32, v32, v33

    if-gez v32, :cond_13

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v32

    const/high16 v33, 0x3f80

    cmpl-float v32, v32, v33

    if-ltz v32, :cond_1

    .line 556
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->r:Landroid/view/MotionEvent;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;->a(FF)Z

    move-result v13

    .line 557
    move-object/from16 v0, p0

    iput v10, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->u:F

    .line 558
    move-object/from16 v0, p0

    iput v11, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->v:F

    goto/16 :goto_4

    .line 563
    .end local v19           #scrollX:F
    .end local v20           #scrollY:F
    :pswitch_5
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->m:Z

    .line 564
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 565
    .local v5, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->t:Z

    move/from16 v32, v0

    if-eqz v32, :cond_17

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;->b(Landroid/view/MotionEvent;)Z

    move-result v32

    or-int/lit8 v13, v32, 0x0

    .line 590
    :cond_14
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->s:Landroid/view/MotionEvent;

    move-object/from16 v32, v0

    if-eqz v32, :cond_15

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->s:Landroid/view/MotionEvent;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/MotionEvent;->recycle()V

    .line 594
    :cond_15
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->s:Landroid/view/MotionEvent;

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    if-eqz v32, :cond_16

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/VelocityTracker;->recycle()V

    .line 599
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    .line 601
    :cond_16
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->t:Z

    .line 602
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->n:Z

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_4

    .line 568
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->o:Z

    move/from16 v32, v0

    if-eqz v32, :cond_18

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x3

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    .line 570
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->o:Z

    goto :goto_8

    .line 571
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->p:Z

    move/from16 v32, v0

    if-eqz v32, :cond_19

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;

    move-object/from16 v32, v0

    const/4 v13, 0x0

    .line 573
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->n:Z

    move/from16 v32, v0

    if-eqz v32, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

    move-object/from16 v32, v0

    if-eqz v32, :cond_14

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->l:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$b;->a(Landroid/view/MotionEvent;)Z

    goto/16 :goto_8

    .line 579
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    .line 580
    .local v25, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 581
    .local v17, pointerId:I
    const/16 v32, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->e:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 582
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v27

    .line 583
    .local v27, velocityY:F
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v26

    .line 585
    .local v26, velocityX:F
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->d:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    cmpl-float v32, v32, v33

    if-gtz v32, :cond_1a

    .line 586
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->d:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_14

    .line 587
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->k:Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->r:Landroid/view/MotionEvent;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bh$c;->b(FF)Z

    move-result v13

    goto/16 :goto_8

    .line 608
    .end local v5           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v17           #pointerId:I
    .end local v25           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v26           #velocityX:F
    .end local v27           #velocityY:F
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->j:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x3

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->z:Landroid/view/VelocityTracker;

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->t:Z

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->m:Z

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->p:Z

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->q:Z

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->n:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->o:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/bh;->o:Z

    goto/16 :goto_4

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
