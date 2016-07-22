.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ft;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/fi;
.source "MapManager.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fn;
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fp;
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/fu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;
    }
.end annotation


# static fields
.field private static c:Lcom/tencent/tencentmap/mapsdk/maps/a/ey;


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

.field private b:Landroid/content/Context;

.field private final d:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

.field private final e:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

.field private final f:Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;

.field private g:Lcom/tencent/tencentmap/mapsdk/maps/a/bm$a;

.field private h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ey;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "mCon"

    .prologue
    const/4 v0, 0x0

    .line 247
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 37
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 42
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    .line 52
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;

    .line 106
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$2;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bm$a;

    .line 169
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft$3;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    .line 248
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b:Landroid/content/Context;

    .line 250
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 252
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Landroid/content/Context;)V

    .line 254
    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    if-nez v0, :cond_1

    .line 255
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fu;)V

    .line 260
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ey;

    if-nez v0, :cond_2

    .line 261
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;-><init>()V

    .line 262
    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ey;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->b()V

    .line 263
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ey;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->c()V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->g:Lcom/tencent/tencentmap/mapsdk/maps/a/bm$a;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bm$a;)V

    .line 266
    return-void
.end method

.method private static a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    .locals 13
    .parameter "p"

    .prologue
    .line 1193
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x412e848000000000L

    div-double/2addr v7, v9

    const-wide v9, 0x3f91df46a2529d39L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide v9, -0x401000d1b71758e2L

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    const-wide v9, 0x3fefff2e48e8a71eL

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 1201
    .local v1, siny:D
    const-wide/high16 v7, 0x41a0

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x412e848000000000L

    div-double/2addr v9, v11

    const-wide v11, 0x4126c16c16c16c17L

    mul-double/2addr v9, v11

    add-double v3, v7, v9

    .line 1203
    .local v3, x:D
    const-wide/high16 v7, 0x41a0

    const-wide/high16 v9, 0x3ff0

    add-double/2addr v9, v1

    const-wide/high16 v11, 0x3ff0

    sub-double/2addr v11, v1

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    const-wide v11, 0x41845f306dc9c883L

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe0

    mul-double/2addr v9, v11

    add-double v5, v7, v9

    .line 1205
    .local v5, y:D
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>()V

    .line 1208
    .local v0, out:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a(DD)V

    .line 1209
    return-object v0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/el;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    return-object v0
.end method

.method private a(DDFZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 14
    .parameter "dlat"
    .parameter "dlong"
    .parameter "zoom"
    .parameter "boAnimate"
    .parameter "cancelback"

    .prologue
    .line 513
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v8, :cond_0

    .line 537
    :goto_0
    return-void

    .line 516
    :cond_0
    const-wide v8, 0x412e848000000000L

    mul-double/2addr v8, p1

    double-to-int v6, v8

    .line 517
    .local v6, late6:I
    const-wide v8, 0x412e848000000000L

    mul-double v8, v8, p3

    double-to-int v7, v8

    .line 519
    .local v7, lnge6:I
    if-nez p6, :cond_2

    .line 520
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->c()I

    move-result v5

    .line 521
    .local v5, imaxlevel:I
    int-to-float v8, v5

    cmpl-float v8, p5, v8

    if-ltz v8, :cond_1

    .line 522
    int-to-float v0, v5

    move/from16 p5, v0

    .line 524
    :cond_1
    int-to-float v8, v5

    sub-float v4, v8, p5

    .line 525
    .local v4, fLevelSpan:F
    const-wide/high16 v8, 0x3ff0

    const-wide/high16 v10, 0x4000

    float-to-double v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double v2, v8, v10

    .line 526
    .local v2, dTargetRate:D
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(II)V

    .line 527
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v8

    double-to-float v9, v2

    invoke-virtual {v8, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(F)V

    goto :goto_0

    .line 529
    .end local v2           #dTargetRate:D
    .end local v4           #fLevelSpan:F
    .end local v5           #imaxlevel:I
    :cond_2
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 530
    .local v1, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    invoke-virtual {v1, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->c(II)V

    .line 531
    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(F)V

    .line 532
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-virtual {v1, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 533
    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 534
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    goto :goto_0
.end method

.method private a(DDZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 7
    .parameter "dlat"
    .parameter "dlong"
    .parameter "boAnimate"
    .parameter "cancelback"

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 541
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_0

    .line 556
    :goto_0
    return-void

    .line 544
    :cond_0
    mul-double v3, p1, v5

    double-to-int v1, v3

    .line 545
    .local v1, late6:I
    mul-double v3, p3, v5

    double-to-int v2, v3

    .line 547
    .local v2, lnge6:I
    if-nez p5, :cond_1

    .line 548
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(II)V

    goto :goto_0

    .line 550
    :cond_1
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 551
    .local v0, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->c(II)V

    .line 552
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-virtual {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 553
    invoke-virtual {v0, p6}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 554
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    goto :goto_0
.end method

.method private a(FFFZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 16
    .parameter "fZoom"
    .parameter "x"
    .parameter "y"
    .parameter "boAnimate"
    .parameter "cancelBack"

    .prologue
    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    .line 451
    if-nez p4, :cond_3

    .line 452
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 454
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 455
    const-wide/high16 v1, 0x3ff0

    const-wide/high16 v3, 0x4000

    move/from16 v0, p1

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v15, v1

    .line 460
    .local v15, fSpanRate:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h()F

    move-result v1

    .line 461
    mul-float v14, v1, v15

    .line 463
    .local v14, fNewTarget:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    float-to-double v2, v14

    move/from16 v0, p2

    float-to-double v4, v0

    move/from16 v0, p3

    float-to-double v6, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v8, v8, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    div-int/lit8 v8, v8, 0x2

    int-to-double v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v10, v10, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    div-int/lit8 v10, v10, 0x2

    int-to-double v10, v10

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(DDDDDLjava/lang/Runnable;)V

    goto :goto_0

    .line 457
    .end local v14           #fNewTarget:F
    .end local v15           #fSpanRate:F
    :cond_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 458
    const-wide/high16 v1, 0x3ff0

    const-wide/high16 v3, 0x3fe0

    move/from16 v0, p1

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v15, v1

    .restart local v15       #fSpanRate:F
    goto :goto_1

    .line 465
    .end local v15           #fSpanRate:F
    :cond_3
    new-instance v13, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 466
    .local v13, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    move/from16 v0, p2

    float-to-int v1, v0

    move/from16 v0, p3

    float-to-int v2, v0

    invoke-virtual {v13, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->b(II)V

    .line 467
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->b(F)V

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-virtual {v13, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 469
    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    goto/16 :goto_0
.end method

.method private a(FFZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 4
    .parameter "ixPixel"
    .parameter "iyPixel"
    .parameter "boAnimation"
    .parameter "cancelback"

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    cmpl-float v1, p1, v2

    if-nez v1, :cond_2

    cmpl-float v1, p2, v2

    if-eqz v1, :cond_0

    .line 379
    :cond_2
    if-nez p3, :cond_3

    .line 380
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(II)V

    goto :goto_0

    .line 382
    :cond_3
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 383
    .local v0, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(II)V

    .line 384
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 385
    invoke-virtual {v0, p4}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 386
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    goto :goto_0
.end method

.method private a(FZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 11
    .parameter "fZoom"
    .parameter "boAnimate"
    .parameter "cancelback"

    .prologue
    .line 392
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v5, :cond_0

    .line 410
    :goto_0
    return-void

    .line 395
    :cond_0
    if-nez p2, :cond_2

    .line 396
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->c()I

    move-result v4

    .line 397
    .local v4, imaxlevel:I
    int-to-float v5, v4

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    .line 398
    int-to-float p1, v4

    .line 400
    :cond_1
    int-to-float v5, v4

    sub-float v3, v5, p1

    .line 401
    .local v3, fLevelSpan:F
    const-wide/high16 v5, 0x3ff0

    const-wide/high16 v7, 0x4000

    float-to-double v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double v1, v5, v7

    .line 402
    .local v1, dTargetRate:D
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v5

    double-to-float v6, v1

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->e(D)V

    goto :goto_0

    .line 404
    .end local v1           #dTargetRate:D
    .end local v3           #fLevelSpan:F
    .end local v4           #imaxlevel:I
    :cond_2
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 405
    .local v0, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(F)V

    .line 406
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-virtual {v0, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 407
    invoke-virtual {v0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 408
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    goto :goto_0
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;ZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 14
    .parameter "cameraPosition"
    .parameter "boAnimate"
    .parameter "callback"

    .prologue
    .line 476
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v8, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    if-eqz p1, :cond_0

    .line 482
    iget-object v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->target:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-static {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v6

    .line 484
    .local v6, geoCenter:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    if-nez p2, :cond_3

    .line 485
    iget v5, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->zoom:F

    .line 486
    .local v5, fZoom:F
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->c()I

    move-result v7

    .line 487
    .local v7, imaxlevel:I
    int-to-float v8, v7

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_2

    .line 488
    int-to-float v5, v7

    .line 490
    :cond_2
    int-to-float v8, v7

    sub-float v4, v8, v5

    .line 491
    .local v4, fLevelSpan:F
    const-wide/high16 v8, 0x3ff0

    const-wide/high16 v10, 0x4000

    float-to-double v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double v2, v8, v10

    .line 492
    .local v2, dTargetRate:D
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v8

    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v9

    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(II)V

    .line 493
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v8

    double-to-float v9, v2

    invoke-virtual {v8, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(F)V

    .line 494
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v8

    iget v9, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->bearing:F

    float-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(D)V

    .line 495
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v8

    iget v9, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->tilt:F

    float-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(D)V

    goto :goto_0

    .line 497
    .end local v2           #dTargetRate:D
    .end local v4           #fLevelSpan:F
    .end local v5           #fZoom:F
    .end local v7           #imaxlevel:I
    :cond_3
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 498
    .local v1, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    if-eqz v6, :cond_4

    .line 499
    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v8

    invoke-virtual {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->c(II)V

    .line 502
    :cond_4
    iget v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->zoom:F

    invoke-virtual {v1, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(F)V

    .line 503
    iget v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->bearing:F

    invoke-virtual {v1, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->c(F)V

    .line 504
    iget v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->tilt:F

    invoke-virtual {v1, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->d(F)V

    .line 505
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-virtual {v1, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 506
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 507
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;IIIIZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 13
    .parameter "bounds"
    .parameter "ipadLeft"
    .parameter "ipadRight"
    .parameter "ipadTop"
    .parameter "ipadBom"
    .parameter "boAnimate"
    .parameter "callback"

    .prologue
    .line 619
    if-nez p1, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    if-nez v1, :cond_3

    .line 627
    :cond_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iput-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->u:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 628
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iput-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 631
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iput p2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->x:I

    .line 632
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move/from16 v0, p3

    iput v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->y:I

    .line 633
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move/from16 v0, p4

    iput v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->z:I

    .line 634
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move/from16 v0, p5

    iput v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->A:I

    .line 636
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->D:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    .line 638
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;)V

    goto :goto_0

    .line 642
    :cond_3
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;)V

    .line 644
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-direct {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>()V

    .line 645
    .local v8, geoNew:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    iget-object v6, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v7, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-object v1, p0

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)F

    move-result v10

    .line 648
    .local v10, fZoomlevel:F
    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v11

    .line 649
    .local v11, late6:I
    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v12

    .line 650
    .local v12, lnge6:I
    if-nez p6, :cond_4

    .line 651
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(II)V

    .line 652
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v10, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(FZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 653
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(D)V

    .line 654
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(D)V

    goto/16 :goto_0

    .line 656
    :cond_4
    new-instance v9, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 657
    .local v9, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->c(F)V

    .line 658
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->d(F)V

    .line 659
    invoke-virtual {v9, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->c(II)V

    .line 660
    invoke-virtual {v9, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(F)V

    .line 661
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-virtual {v9, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 662
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 663
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;IZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 13
    .parameter "bounds"
    .parameter "padding"
    .parameter "boAnimate"
    .parameter "callback"

    .prologue
    .line 560
    if-nez p1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    if-nez v1, :cond_3

    .line 568
    :cond_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iput-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->u:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 569
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iput-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 570
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iput p2, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->w:I

    .line 571
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-object/from16 v0, p4

    iput-object v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->D:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    .line 573
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;)V

    goto :goto_0

    .line 577
    :cond_3
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/ft$a;)V

    .line 579
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-direct {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>()V

    .line 580
    .local v8, geoNew:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    iget-object v6, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v7, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-object v1, p0

    move v2, p2

    move v3, p2

    move v4, p2

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)F

    move-result v10

    .line 582
    .local v10, fZoomlevel:F
    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v11

    .line 583
    .local v11, late6:I
    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v12

    .line 584
    .local v12, lnge6:I
    if-nez p3, :cond_4

    .line 585
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(II)V

    .line 586
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v10, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(FZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 587
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(D)V

    .line 588
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(D)V

    goto :goto_0

    .line 590
    :cond_4
    new-instance v9, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 591
    .local v9, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->c(F)V

    .line 592
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->d(F)V

    .line 593
    invoke-virtual {v9, v11, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->c(II)V

    .line 594
    invoke-virtual {v9, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(F)V

    .line 595
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-virtual {v9, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 596
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 597
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    goto/16 :goto_0
.end method

.method private a(ZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 3
    .parameter "boAnimati"
    .parameter "callback"

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i()I

    move-result v1

    .line 344
    .local v1, icurlevel:I
    add-int/lit8 v1, v1, 0x1

    .line 345
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(I)V

    .line 354
    .end local v1           #icurlevel:I
    :goto_0
    return-void

    .line 347
    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 348
    .local v0, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->b(F)V

    .line 349
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 350
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 351
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/ft;)Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    return-object v0
.end method

.method private b(FFZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 4
    .parameter "rotate"
    .parameter "skew"
    .parameter "aniamte"
    .parameter "callback"

    .prologue
    .line 603
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 604
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 605
    .local v0, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->c(F)V

    .line 606
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->d(F)V

    .line 607
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 608
    invoke-virtual {v0, p4}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 609
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 614
    .end local v0           #animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->b(D)V

    .line 612
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    float-to-double v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(D)V

    goto :goto_0
.end method

.method private b(FZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 9
    .parameter "fZoom"
    .parameter "boAminate"
    .parameter "cancelBack"

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v7, 0x3ff0

    .line 414
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    cmpl-float v3, p1, v4

    if-eqz v3, :cond_0

    .line 421
    if-nez p2, :cond_3

    .line 422
    cmpg-float v3, p1, v4

    if-gez v3, :cond_2

    .line 424
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 425
    const-wide/high16 v3, 0x4000

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double v3, v7, v3

    double-to-float v2, v3

    .line 430
    .local v2, fSpanRate:F
    :goto_1
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->h()F

    move-result v3

    .line 431
    mul-float v1, v3, v2

    .line 432
    .local v1, fNewTarget:F
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->e(D)V

    goto :goto_0

    .line 427
    .end local v1           #fNewTarget:F
    .end local v2           #fSpanRate:F
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 428
    const-wide/high16 v3, 0x3fe0

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double v3, v7, v3

    double-to-float v2, v3

    .restart local v2       #fSpanRate:F
    goto :goto_1

    .line 434
    .end local v2           #fSpanRate:F
    :cond_3
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 435
    .local v0, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->b(F)V

    .line 436
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-virtual {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 437
    invoke-virtual {v0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 438
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    goto :goto_0
.end method

.method private b(ZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 3
    .parameter "animation"
    .parameter "cancelback"

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 358
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i()I

    move-result v1

    .line 359
    .local v1, icurlevel:I
    add-int/lit8 v1, v1, -0x1

    .line 360
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(I)V

    .line 368
    .end local v1           #icurlevel:I
    :goto_0
    return-void

    .line 362
    :cond_0
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 363
    .local v0, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    const/high16 v2, -0x4080

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->b(F)V

    .line 364
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 365
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    .line 366
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)F
    .locals 45
    .parameter "ipadleft"
    .parameter "ipadright"
    .parameter "ipadtop"
    .parameter "ipadbom"
    .parameter "latlngLeftDown"
    .parameter "latlngRightUp"
    .parameter "geoCenter"

    .prologue
    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    move/from16 v28, v0

    .line 1326
    .local v28, iMapViewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    move/from16 v27, v0

    .line 1328
    .local v27, iMapViewHeight:I
    if-eqz v28, :cond_0

    if-eqz v27, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_2

    .line 1331
    :cond_0
    const/16 v18, 0x0

    .line 1394
    :cond_1
    :goto_0
    return v18

    .line 1333
    :cond_2
    invoke-static/range {p5 .. p5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v23

    .line 1334
    .local v23, geoLeftDown:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    invoke-static/range {p6 .. p6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v24

    .line 1336
    .local v24, geoRightUp:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    invoke-static/range {v23 .. v23}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v33

    .line 1339
    .local v33, ptLeftUp:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    invoke-static/range {v24 .. v24}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v34

    .line 1342
    .local v34, ptRightDown:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-wide/from16 v35, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-wide/from16 v37, v0

    sub-double v21, v35, v37

    .line 1343
    .local v21, fWidthDist:D
    const-wide/16 v35, 0x0

    cmpg-double v35, v21, v35

    if-gez v35, :cond_3

    .line 1344
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    .line 1346
    :cond_3
    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-wide/from16 v35, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-wide/from16 v37, v0

    sub-double v19, v35, v37

    .line 1347
    .local v19, fHighDist:D
    const-wide/16 v35, 0x0

    cmpg-double v35, v19, v35

    if-gez v35, :cond_4

    .line 1348
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    .line 1351
    :cond_4
    const-wide/high16 v35, 0x3ff0

    mul-double v21, v21, v35

    .line 1354
    const-wide/high16 v35, 0x3ff0

    mul-double v19, v19, v35

    .line 1356
    sub-int v35, v28, p1

    sub-int v30, v35, p2

    .line 1357
    .local v30, iScreenWidth:I
    sub-int v35, v27, p3

    sub-int v29, v35, p4

    .line 1359
    .local v29, iScreenHigh:I
    if-gtz v30, :cond_5

    .line 1360
    const/16 v30, 0x1

    .line 1362
    :cond_5
    if-gtz v29, :cond_6

    .line 1363
    const/16 v29, 0x1

    .line 1365
    :cond_6
    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v35, v21, v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->log(D)D

    move-result-wide v35

    const-wide/high16 v37, 0x4000

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->log(D)D

    move-result-wide v37

    div-double v10, v35, v37

    .line 1366
    .local v10, dXRate:D
    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v35, v19, v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->log(D)D

    move-result-wide v35

    const-wide/high16 v37, 0x4000

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->log(D)D

    move-result-wide v37

    div-double v12, v35, v37

    .line 1368
    .local v12, dYRate:D
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 1370
    .local v6, dRate:D
    const-wide/high16 v35, 0x4034

    sub-double v35, v35, v6

    move-wide/from16 v0, v35

    double-to-float v0, v0

    move/from16 v18, v0

    .line 1373
    .local v18, fDestiLevel:F
    if-eqz p7, :cond_1

    .line 1374
    move-object/from16 v0, p5

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    move-wide/from16 v35, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    move-wide/from16 v37, v0

    add-double v35, v35, v37

    const-wide/high16 v37, 0x4000

    div-double v14, v35, v37

    .line 1375
    .local v14, dlat:D
    move-object/from16 v0, p5

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    move-wide/from16 v35, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    move-wide/from16 v37, v0

    add-double v35, v35, v37

    const-wide/high16 v37, 0x4000

    div-double v16, v35, v37

    .line 1376
    .local v16, dlong:D
    new-instance v32, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-object/from16 v0, v32

    move-wide/from16 v1, v16

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 1378
    .local v32, mlatlngOrignal:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    sub-int v31, p2, p1

    .line 1379
    .local v31, iWidthPixelTran:I
    sub-int v26, p3, p4

    .line 1381
    .local v26, iHighPixelTran:I
    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v35, v0

    const-wide/high16 v37, 0x4000

    move-wide/from16 v0, v37

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v37

    mul-double v35, v35, v37

    const-wide/high16 v37, 0x4000

    div-double v8, v35, v37

    .line 1382
    .local v8, dWidthDistTran:D
    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v35, v0

    const-wide/high16 v37, 0x4000

    move-wide/from16 v0, v37

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v37

    mul-double v35, v35, v37

    const-wide/high16 v37, 0x4000

    div-double v3, v35, v37

    .line 1384
    .local v3, dHighDistTran:D
    invoke-static/range {v32 .. v32}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v35

    .line 1385
    invoke-static/range {v35 .. v35}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v5

    .line 1386
    .local v5, dPtPixel:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    iget-wide v0, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-wide/from16 v35, v0

    add-double v35, v35, v8

    move-wide/from16 v0, v35

    iput-wide v0, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    .line 1387
    iget-wide v0, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-wide/from16 v35, v0

    add-double v35, v35, v3

    move-wide/from16 v0, v35

    iput-wide v0, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    .line 1388
    iget-wide v0, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    move-wide/from16 v35, v0

    const-wide/high16 v37, 0x41a0

    sub-double v35, v35, v37

    const-wide v37, 0x4126c16c16c16c17L

    div-double v35, v35, v37

    const-wide v37, 0x4005bf0a8b145769L

    iget-wide v0, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    move-wide/from16 v39, v0

    const-wide/high16 v41, 0x41a0

    sub-double v39, v39, v41

    const-wide/high16 v41, 0x3fe0

    div-double v39, v39, v41

    const-wide v41, 0x41845f306dc9c883L

    div-double v39, v39, v41

    invoke-static/range {v37 .. v40}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v37

    const-wide/high16 v39, 0x3ff0

    const-wide/high16 v41, 0x4000

    const-wide/high16 v43, 0x3ff0

    add-double v37, v37, v43

    div-double v37, v41, v37

    sub-double v37, v39, v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->asin(D)D

    move-result-wide v37

    const-wide v39, 0x4066800000000000L

    mul-double v37, v37, v39

    const-wide v39, 0x400921fb54442d18L

    div-double v37, v37, v39

    new-instance v25, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    const-wide v39, 0x412e848000000000L

    mul-double v37, v37, v39

    move-wide/from16 v0, v37

    double-to-int v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a(I)V

    const-wide v37, 0x412e848000000000L

    mul-double v35, v35, v37

    move-wide/from16 v0, v35

    double-to-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b(I)V

    .line 1390
    .local v25, geoTemCenter:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    invoke-virtual/range {v25 .. v25}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v35

    move-object/from16 v0, p7

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a(I)V

    .line 1391
    invoke-virtual/range {v25 .. v25}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v35

    move-object/from16 v0, p7

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b(I)V

    goto/16 :goto_0
.end method

.method final a(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F
    .locals 10
    .parameter "ipadleft"
    .parameter "ipadright"
    .parameter "ipadtop"
    .parameter "ipadbom"
    .parameter "latlngLeftDown"
    .parameter "latlngRightUp"
    .parameter "mapCenter"

    .prologue
    .line 1452
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    invoke-direct {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>()V

    .local v8, geoNewCenter:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    .line 1453
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)F

    move-result v9

    .line 1456
    .local v9, fzoomLevel:F
    if-eqz p7, :cond_0

    .line 1457
    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->a()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x412e848000000000L

    div-double/2addr v1, v3

    move-object/from16 v0, p7

    iput-wide v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    .line 1458
    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;->b()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x412e848000000000L

    div-double/2addr v1, v3

    move-object/from16 v0, p7

    iput-wide v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    .line 1461
    :cond_0
    return v9
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F
    .locals 6
    .parameter "leftUpper"
    .parameter "rightDown"

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 1023
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-wide v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-wide v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    .line 1025
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    iget-wide v1, p2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-wide v2, p2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bg;-><init>(II)V

    .line 1031
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    const/4 v0, 0x0

    return v0
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;FIZ)F
    .locals 13
    .parameter "bound"
    .parameter "skewangle"
    .parameter "topPadding"
    .parameter "bo3d"

    .prologue
    .line 1425
    if-nez p1, :cond_0

    .line 1426
    const/4 v2, 0x0

    .line 1444
    :goto_0
    return v2

    .line 1430
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_4

    .line 1432
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->z()I

    move-result v1

    .line 1436
    .local v1, inavifiy:I
    :goto_1
    if-nez p4, :cond_1

    .line 1437
    const/4 p2, 0x0

    .line 1440
    :cond_1
    if-gez v1, :cond_2

    .line 1441
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    div-int/lit8 v1, v2, 0x2

    .line 1444
    :cond_2
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    sub-int v7, v2, v1

    iget-object v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v3, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v8, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    if-eqz v4, :cond_3

    if-eqz v8, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_5

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1434
    .end local v1           #inavifiy:I
    :cond_4
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->x()I

    move-result v1

    .restart local v1       #inavifiy:I
    goto :goto_1

    .line 1444
    :cond_5
    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v2

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v3

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v5

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v6

    iget-wide v2, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget-wide v9, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    sub-double/2addr v2, v9

    const-wide/16 v9, 0x0

    cmpg-double v9, v2, v9

    if-gez v9, :cond_6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    :cond_6
    iget-wide v9, v6, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    iget-wide v5, v5, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    sub-double v5, v9, v5

    const-wide/16 v9, 0x0

    cmpg-double v9, v5, v9

    if-gez v9, :cond_7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    :cond_7
    const-wide/high16 v9, 0x3ff0

    mul-double/2addr v9, v2

    const-wide/high16 v2, 0x3ff0

    mul-double v11, v5, v2

    sub-int v2, v8, p3

    sub-int v3, v2, v7

    const/high16 v2, 0x42b4

    cmpl-float v2, p2, v2

    if-nez v2, :cond_c

    const/high16 v2, 0x42b2

    :goto_2
    int-to-double v5, v3

    float-to-double v2, v2

    const-wide v7, 0x400921fb54442d18L

    mul-double/2addr v2, v7

    const-wide v7, 0x4066800000000000L

    div-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double v2, v5, v2

    double-to-int v2, v2

    if-gtz v4, :cond_b

    const/4 v3, 0x1

    :goto_3
    if-gtz v2, :cond_8

    const/4 v2, 0x1

    :cond_8
    int-to-double v3, v3

    div-double v3, v9, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double v4, v3, v5

    int-to-double v2, v2

    div-double v2, v11, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4000

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_9

    const-wide/16 v4, 0x0

    :cond_9
    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_a

    const-wide/16 v2, 0x0

    :cond_a
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4034

    sub-double v2, v4, v2

    double-to-float v2, v2

    goto/16 :goto_0

    :cond_b
    move v3, v4

    goto :goto_3

    :cond_c
    move v2, p2

    goto :goto_2
.end method

.method public final a()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;
    .locals 6

    .prologue
    const/high16 v5, 0x43b4

    .line 671
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->j()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v4

    .line 672
    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    .line 673
    .local v3, mLatlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k()F

    move-result v0

    .line 674
    .local v0, fRotate:F
    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 675
    rem-float v4, v0, v5

    .line 676
    add-float v0, v4, v5

    .line 678
    :cond_0
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->l()F

    move-result v1

    .line 679
    .local v1, fSkew:F
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->o()F

    move-result v2

    .line 680
    .local v2, fZoom:F
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->builder()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->zoom(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->target(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->bearing(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->tilt(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->build()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v4

    return-object v4
.end method

.method public final a(Landroid/graphics/Point;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 5
    .parameter "f"

    .prologue
    .line 284
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;-><init>(DD)V

    .line 286
    .local v0, doublePt:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bf;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v1

    .line 287
    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    return-object v1
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Ljava/lang/String;
    .locals 2
    .parameter "mlatlng"

    .prologue
    .line 1076
    if-nez p1, :cond_0

    .line 1077
    const/4 v1, 0x0

    .line 1081
    :goto_0
    return-object v1

    .line 1079
    :cond_0
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v0

    .line 1081
    .local v0, geoLoc:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method final a(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 1133
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v2, :cond_0

    .line 1155
    :goto_0
    return-void

    .line 1136
    :cond_0
    cmpg-float v2, p1, v3

    if-gez v2, :cond_3

    .line 1137
    const/4 p1, 0x0

    .line 1141
    :cond_1
    :goto_1
    cmpg-float v2, p2, v3

    if-gez v2, :cond_4

    .line 1142
    const/4 p2, 0x0

    .line 1149
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    .line 1150
    .local v0, ix:I
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v1, v2

    .line 1152
    .local v1, iy:I
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(II)V

    .line 1153
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iput p1, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->G:F

    .line 1154
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iput p2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->H:F

    goto :goto_0

    .line 1138
    .end local v0           #ix:I
    .end local v1           #iy:I
    :cond_3
    cmpl-float v2, p1, v4

    if-lez v2, :cond_1

    .line 1139
    const/high16 p1, 0x3f80

    goto :goto_1

    .line 1143
    :cond_4
    cmpl-float v2, p2, v4

    if-lez v2, :cond_2

    .line 1144
    const/high16 p2, 0x3f80

    goto :goto_2
.end method

.method public final a(I)V
    .locals 3
    .parameter "iMapType"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 868
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Z)V

    .line 870
    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Z)V

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    if-ne p1, v1, :cond_0

    .line 873
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(Z)V

    .line 874
    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Z)V

    goto :goto_0
.end method

.method final a(IF)V
    .locals 2
    .parameter "itype"
    .parameter "frate"

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->a(IFLandroid/content/Context;)V

    .line 1118
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 1
    .parameter "width"
    .parameter "heigh"

    .prologue
    .line 1039
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method final a(Landroid/os/Handler;Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .parameter "handler"
    .parameter "config"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Landroid/os/Handler;Landroid/graphics/Bitmap$Config;)V

    .line 1052
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V
    .locals 24
    .parameter "cameraupdate"

    .prologue
    .line 699
    if-nez p1, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;->getParams()Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    move-result-object v23

    .line 703
    .local v23, mcamerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    if-eqz v23, :cond_0

    .line 707
    move-object/from16 v0, v23

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 709
    :pswitch_0
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(ZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 712
    :pswitch_1
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b(ZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 715
    :pswitch_2
    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->o:F

    move/from16 v21, v0

    .line 716
    .local v21, ixpixel:F
    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->p:F

    move/from16 v22, v0

    .line 717
    .local v22, iypixel:F
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(FFZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 720
    .end local v21           #ixpixel:F
    .end local v22           #iypixel:F
    :pswitch_3
    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->q:F

    move/from16 v20, v0

    .line 721
    .local v20, fZoomLevel:F
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v3, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(FZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 724
    .end local v20           #fZoomLevel:F
    :pswitch_4
    move-object/from16 v0, v23

    iget v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->r:F

    .line 725
    .local v4, fZoom:F
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b(FZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 728
    .end local v4           #fZoom:F
    :pswitch_5
    move-object/from16 v0, v23

    iget v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->s:F

    .line 729
    .restart local v4       #fZoom:F
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->t:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v3

    .line 730
    .local v5, iX:F
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->t:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v3

    .line 731
    .local v6, iY:F
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(FFFZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 734
    .end local v4           #fZoom:F
    .end local v5           #iX:F
    .end local v6           #iY:F
    :pswitch_6
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->u:Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;ZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 738
    :pswitch_7
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    .line 739
    .local v8, dlat:D
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v10, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    .line 740
    .local v10, dlong:D
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(DDZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto/16 :goto_0

    .line 743
    .end local v8           #dlat:D
    .end local v10           #dlong:D
    :pswitch_8
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->w:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    .line 744
    .restart local v8       #dlat:D
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->w:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v10, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    .line 745
    .restart local v10       #dlong:D
    move-object/from16 v0, v23

    iget v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->x:F

    .line 747
    .restart local v4       #fZoom:F
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move v12, v4

    invoke-direct/range {v7 .. v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(DDFZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto/16 :goto_0

    .line 750
    .end local v4           #fZoom:F
    .end local v8           #dlat:D
    .end local v10           #dlong:D
    :pswitch_9
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->y:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    move-object/from16 v0, v23

    iget v7, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->z:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v12, v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;IZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto/16 :goto_0

    .line 755
    :pswitch_a
    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->A:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    move-object/from16 v0, v23

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->D:I

    move-object/from16 v0, v23

    iget v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->D:I

    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->D:I

    move/from16 v16, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->D:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v19}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;IIIIZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto/16 :goto_0

    .line 763
    :pswitch_b
    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->A:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    move-object/from16 v0, v23

    iget v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->E:I

    move-object/from16 v0, v23

    iget v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->F:I

    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->G:I

    move/from16 v16, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->H:I

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v19}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;IIIIZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto/16 :goto_0

    .line 771
    :pswitch_c
    move-object/from16 v0, v23

    iget v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->I:F

    move-object/from16 v0, v23

    iget v7, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->J:F

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v12, v13}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b(FFZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto/16 :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 25
    .parameter "cameraupdate"
    .parameter "callback"

    .prologue
    .line 781
    if-nez p1, :cond_1

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;->getParams()Lcom/tencent/tencentmap/mapsdk/maps/a/fb;

    move-result-object v24

    .line 785
    .local v24, mcamerPara:Lcom/tencent/tencentmap/mapsdk/maps/a/fb;
    if-eqz v24, :cond_0

    .line 789
    move-object/from16 v0, v24

    iget v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->n:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 791
    :pswitch_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(ZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 794
    :pswitch_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b(ZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 797
    :pswitch_2
    move-object/from16 v0, v24

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->o:F

    move/from16 v22, v0

    .line 798
    .local v22, ixpixel:F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->p:F

    move/from16 v23, v0

    .line 799
    .local v23, iypixel:F
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(FFZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 802
    .end local v22           #ixpixel:F
    .end local v23           #iypixel:F
    :pswitch_3
    move-object/from16 v0, v24

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->q:F

    move/from16 v21, v0

    .line 803
    .local v21, fZoomLevel:F
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(FZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 806
    .end local v21           #fZoomLevel:F
    :pswitch_4
    move-object/from16 v0, v24

    iget v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->r:F

    .line 807
    .local v5, fZoom:F
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v4, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b(FZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 810
    .end local v5           #fZoom:F
    :pswitch_5
    move-object/from16 v0, v24

    iget v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->s:F

    .line 811
    .restart local v5       #fZoom:F
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->t:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v4

    .line 812
    .local v6, iX:F
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->t:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v4

    .line 813
    .local v7, iY:F
    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(FFFZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 816
    .end local v5           #fZoom:F
    .end local v6           #iX:F
    .end local v7           #iY:F
    :pswitch_6
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->u:Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v8, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;ZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0

    .line 820
    :pswitch_7
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v9, v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    .line 821
    .local v9, dlat:D
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->v:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v11, v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    .line 823
    .local v11, dlong:D
    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v14, p2

    invoke-direct/range {v8 .. v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(DDZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto/16 :goto_0

    .line 826
    .end local v9           #dlat:D
    .end local v11           #dlong:D
    :pswitch_8
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->w:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v9, v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    .line 827
    .restart local v9       #dlat:D
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->w:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v11, v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    .line 828
    .restart local v11       #dlong:D
    move-object/from16 v0, v24

    iget v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->x:F

    .line 830
    .restart local v5       #fZoom:F
    const/4 v14, 0x1

    move-object/from16 v8, p0

    move v13, v5

    move-object/from16 v15, p2

    invoke-direct/range {v8 .. v15}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(DDFZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto/16 :goto_0

    .line 833
    .end local v5           #fZoom:F
    .end local v9           #dlat:D
    .end local v11           #dlong:D
    :pswitch_9
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->y:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    move-object/from16 v0, v24

    iget v8, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->z:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;IZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto/16 :goto_0

    .line 837
    :pswitch_a
    move-object/from16 v0, v24

    iget-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->A:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    move-object/from16 v0, v24

    iget v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->D:I

    move-object/from16 v0, v24

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->D:I

    move/from16 v16, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->D:I

    move/from16 v17, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->D:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v13, p0

    move-object/from16 v20, p2

    invoke-direct/range {v13 .. v20}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;IIIIZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto/16 :goto_0

    .line 845
    :pswitch_b
    move-object/from16 v0, v24

    iget-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->A:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    move-object/from16 v0, v24

    iget v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->E:I

    move-object/from16 v0, v24

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->F:I

    move/from16 v16, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->G:I

    move/from16 v17, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->H:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v13, p0

    move-object/from16 v20, p2

    invoke-direct/range {v13 .. v20}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;IIIIZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto/16 :goto_0

    .line 853
    :pswitch_c
    move-object/from16 v0, v24

    iget v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->I:F

    move-object/from16 v0, v24

    iget v8, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/fb;->J:F

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v8, v13, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b(FFZLcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto/16 :goto_0

    .line 789
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCameraChangeListener;)V
    .locals 2
    .parameter "oncamerachangelistener"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iput-object p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->q:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCameraChangeListener;

    .line 976
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f(Z)V

    .line 977
    return-void

    .line 976
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCompassClickedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iput-object p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->F:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCompassClickedListener;

    .line 1190
    :cond_0
    return-void
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;)V
    .locals 1
    .parameter "oninfowindowclicklistener"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iput-object p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->p:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;

    .line 970
    return-void
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;)V
    .locals 1
    .parameter "onmapclicklistener"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iput-object p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->m:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;

    .line 951
    return-void
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapLongClickListener;)V
    .locals 1
    .parameter "onmaplongclicklistener"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iput-object p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->r:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapLongClickListener;

    .line 957
    return-void
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;)V
    .locals 1
    .parameter "onmarkerclicklistener"

    .prologue
    .line 962
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iput-object p1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->o:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;

    .line 963
    return-void
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FF)V
    .locals 6
    .parameter "mLocation"
    .parameter "fRotate"
    .parameter "fTitle"

    .prologue
    .line 987
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FFFZ)V

    .line 988
    return-void
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FFFZ)V
    .locals 6
    .parameter "mLocation"
    .parameter "fRotate"
    .parameter "fTitle"
    .parameter "fDestLevel"
    .parameter "bo3D"

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 994
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;-><init>()V

    .line 995
    .local v0, animateAct:Lcom/tencent/tencentmap/mapsdk/maps/a/eb;
    iget-wide v1, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-wide v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->c(II)V

    .line 996
    invoke-virtual {v0, p4}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(F)V

    .line 997
    invoke-virtual {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->c(F)V

    .line 998
    invoke-virtual {v0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->d(F)V

    .line 999
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->h:Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/eb$a;)V

    .line 1000
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->t()V

    .line 1001
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->s()V

    .line 1003
    const/4 v1, 0x1

    if-ne p5, v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->y()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->z()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->b(II)V

    .line 1009
    :goto_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s()V

    .line 1010
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/bb;)V

    .line 1012
    return-void

    .line 1006
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->w()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->x()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/eb;->b(II)V

    goto :goto_0
.end method

.method final a(Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;)V
    .locals 1
    .parameter "listner"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 1100
    :goto_0
    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .parameter "boTrafficEnable"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->a(Z)V

    .line 894
    return-void
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->c()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final b(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Landroid/graphics/Point;
    .locals 5
    .parameter "latlng"

    .prologue
    .line 293
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v3, :cond_0

    .line 294
    const/4 v2, 0x0

    .line 302
    :goto_0
    return-object v2

    .line 296
    :cond_0
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v1

    .line 298
    .local v1, geoPt:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/ba;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ba;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/a/bf;

    move-result-object v0

    .line 299
    .local v0, asPixel:Lcom/tencent/tencentmap/mapsdk/maps/a/bf;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 300
    .local v2, pt:Landroid/graphics/Point;
    iget-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 301
    iget-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method final b(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 1467
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v2, :cond_0

    .line 1488
    :goto_0
    return-void

    .line 1470
    :cond_0
    cmpg-float v2, p1, v3

    if-gez v2, :cond_3

    .line 1471
    const/4 p1, 0x0

    .line 1475
    :cond_1
    :goto_1
    cmpg-float v2, p2, v3

    if-gez v2, :cond_4

    .line 1476
    const/4 p2, 0x0

    .line 1481
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    .line 1482
    .local v0, ix:I
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v1, v2

    .line 1484
    .local v1, iy:I
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c(II)V

    .line 1485
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iput p1, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->I:F

    .line 1486
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iput p2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->J:F

    goto :goto_0

    .line 1472
    .end local v0           #ix:I
    .end local v1           #iy:I
    :cond_3
    cmpl-float v2, p1, v4

    if-lez v2, :cond_1

    .line 1473
    const/high16 p1, 0x3f80

    goto :goto_1

    .line 1477
    :cond_4
    cmpl-float v2, p2, v4

    if-lez v2, :cond_2

    .line 1478
    const/high16 p2, 0x3f80

    goto :goto_2
.end method

.method public final b(I)V
    .locals 1
    .parameter "ianchor"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->a(I)V

    .line 1058
    return-void
.end method

.method final b(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 1091
    :goto_0
    return-void

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->g(Z)V

    goto :goto_0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->b()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method final c(I)F
    .locals 1
    .parameter "itype"

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    if-nez v0, :cond_1

    .line 1125
    :cond_0
    const/4 v0, 0x0

    .line 1127
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->b(I)F

    move-result v0

    goto :goto_0
.end method

.method final c(FF)V
    .locals 1
    .parameter "xratio"
    .parameter "yratio"

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 1497
    :goto_0
    return-void

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->a(FF)V

    goto :goto_0
.end method

.method final c(Z)V
    .locals 1
    .parameter "boVisible"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 1109
    :goto_0
    return-void

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->h(Z)V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->s()V

    .line 863
    return-void
.end method

.method final d(I)V
    .locals 2
    .parameter "iPixels"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->a(ILandroid/content/Context;)V

    .line 1064
    return-void
.end method

.method public final d(Z)V
    .locals 1
    .parameter "isOnTop"

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->setZOrderMediaOverlay(Z)V

    .line 1501
    return-void
.end method

.method public final e()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 882
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->o()Z

    move-result v1

    .line 883
    if-ne v1, v0, :cond_0

    .line 884
    const/4 v0, 0x2

    .line 886
    :cond_0
    return v0
.end method

.method final e(I)V
    .locals 2
    .parameter "iPixels"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s:Lcom/tencent/tencentmap/mapsdk/maps/a/fs;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fs;->b(ILandroid/content/Context;)V

    .line 1070
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->d()V

    .line 1071
    return-void
.end method

.method final f(I)V
    .locals 1
    .parameter "padding"

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-nez v0, :cond_0

    .line 1164
    :goto_0
    return-void

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(I)V

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->e()Lcom/tencent/tencentmap/mapsdk/maps/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/aj;->e()Z

    move-result v0

    return v0
.end method

.method final g()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->onResume()V

    .line 920
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ey;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->b()V

    .line 921
    return-void
.end method

.method final h()V
    .locals 1

    .prologue
    .line 943
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ey;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->d()V

    .line 944
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->r()V

    .line 945
    return-void
.end method

.method final i()V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->onPause()V

    .line 937
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ey;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ey;->a()V

    .line 938
    return-void
.end method

.method final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1169
    const-string v0, "2.0.31"

    return-object v0
.end method

.method public final k()Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 316
    new-instance v8, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    invoke-direct {v8, v11, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 317
    .local v8, ptNearLeft:Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    iget-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v10, v10, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->C:I

    invoke-direct {v9, v0, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 319
    .local v9, ptNearRight:Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 320
    .local v6, ptFarLeft:Landroid/graphics/Point;
    new-instance v7, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->B:I

    invoke-direct {v7, v0, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 322
    .local v7, ptFarRight:Landroid/graphics/Point;
    invoke-virtual {p0, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Landroid/graphics/Point;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    .line 323
    .local v1, geoNearLeft:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-virtual {p0, v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Landroid/graphics/Point;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v2

    .line 324
    .local v2, geoNearRight:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-virtual {p0, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Landroid/graphics/Point;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    .line 325
    .local v3, geoFarLeft:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-virtual {p0, v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a(Landroid/graphics/Point;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v4

    .line 327
    .local v4, geoFarRight:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->builder()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->include(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->include(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->include(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->include(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->build()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    move-result-object v5

    .line 331
    .local v5, geoBounds:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;)V

    return-object v0
.end method

.method public final l()Landroid/view/View;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    return-object v0
.end method

.method public final m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->s()V

    .line 271
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 274
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b:Landroid/content/Context;

    .line 276
    :cond_1
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    if-eqz v0, :cond_2

    .line 277
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->t:Lcom/tencent/tencentmap/mapsdk/maps/a/ez;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ez;->a()V

    .line 279
    :cond_2
    return-void
.end method

.method public final n()Landroid/content/Context;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final o()F
    .locals 9

    .prologue
    .line 1416
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i()I

    move-result v3

    int-to-float v2, v3

    .line 1417
    .local v2, fZoom:F
    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ft;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->m()F

    move-result v3

    float-to-double v0, v3

    .line 1418
    .local v0, dglScale:D
    float-to-double v3, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    .line 1419
    return v3
.end method
