.class public Lcom/facebook/imagepipeline/animated/base/b;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedDrawable.java"

# interfaces
.implements Lcom/facebook/b/a/a;
.implements Lcom/facebook/imagepipeline/animated/base/a;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Z

.field private C:J

.field private final D:Ljava/lang/Runnable;

.field private final E:Ljava/lang/Runnable;

.field private final F:Ljava/lang/Runnable;

.field private final G:Ljava/lang/Runnable;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lcom/facebook/imagepipeline/animated/base/e;

.field private final d:Lcom/facebook/common/time/b;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Rect;

.field private final j:Landroid/graphics/Paint;

.field private volatile k:Ljava/lang/String;

.field private l:Lcom/facebook/imagepipeline/animated/base/d;

.field private m:J

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:J

.field private w:Z

.field private x:Z

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/imagepipeline/animated/base/b;

    sput-object v0, Lcom/facebook/imagepipeline/animated/base/b;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/imagepipeline/animated/base/d;Lcom/facebook/imagepipeline/animated/base/e;Lcom/facebook/common/time/b;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    const/high16 v2, 0x3f80

    .line 137
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->h:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->i:Landroid/graphics/Rect;

    .line 81
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->r:I

    .line 84
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->s:I

    .line 90
    iput-wide v4, p0, Lcom/facebook/imagepipeline/animated/base/b;->v:J

    .line 95
    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->y:F

    .line 96
    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->z:F

    .line 99
    iput-wide v4, p0, Lcom/facebook/imagepipeline/animated/base/b;->C:J

    .line 101
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/b$1;-><init>(Lcom/facebook/imagepipeline/animated/base/b;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->D:Ljava/lang/Runnable;

    .line 108
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/b$2;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/b$2;-><init>(Lcom/facebook/imagepipeline/animated/base/b;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->E:Ljava/lang/Runnable;

    .line 116
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/b$3;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/b$3;-><init>(Lcom/facebook/imagepipeline/animated/base/b;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->F:Ljava/lang/Runnable;

    .line 125
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/b$4;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/b$4;-><init>(Lcom/facebook/imagepipeline/animated/base/b;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->G:Ljava/lang/Runnable;

    .line 138
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 139
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    .line 140
    iput-object p3, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    .line 141
    iput-object p4, p0, Lcom/facebook/imagepipeline/animated/base/b;->d:Lcom/facebook/common/time/b;

    .line 142
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->b()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->e:I

    .line 143
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->c()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->f:I

    .line 144
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/animated/base/e;->a(Lcom/facebook/imagepipeline/animated/base/d;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->d()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->g:I

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->j:Landroid/graphics/Paint;

    .line 147
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->j:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/b;->c()V

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/animated/base/b;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/b;->d()V

    return-void
.end method

.method private a(Z)V
    .locals 8
    .parameter

    .prologue
    .line 254
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->e:I

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->d:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v2

    .line 258
    iget-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->m:J

    sub-long v0, v2, v0

    iget v4, p0, Lcom/facebook/imagepipeline/animated/base/b;->e:I

    int-to-long v4, v4

    div-long/2addr v0, v4

    long-to-int v1, v0

    .line 259
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->g:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->g:I

    if-ge v1, v0, :cond_0

    .line 263
    :cond_2
    iget-wide v4, p0, Lcom/facebook/imagepipeline/animated/base/b;->m:J

    sub-long v4, v2, v4

    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->e:I

    int-to-long v6, v0

    rem-long/2addr v4, v6

    long-to-int v4, v4

    .line 264
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0, v4}, Lcom/facebook/imagepipeline/animated/base/d;->b(I)I

    move-result v5

    .line 265
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    if-eq v0, v5, :cond_3

    const/4 v0, 0x1

    .line 266
    :goto_1
    iput v5, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    .line 267
    iget v6, p0, Lcom/facebook/imagepipeline/animated/base/b;->f:I

    mul-int/2addr v1, v6

    add-int/2addr v1, v5

    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->o:I

    .line 269
    if-eqz p1, :cond_0

    .line 275
    if-eqz v0, :cond_4

    .line 276
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/b;->h()V

    goto :goto_0

    .line 265
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    iget v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/animated/base/d;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    iget v5, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    .line 279
    invoke-interface {v1, v5}, Lcom/facebook/imagepipeline/animated/base/d;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v4

    .line 281
    iget v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lcom/facebook/imagepipeline/animated/base/b;->f:I

    rem-int/2addr v1, v4

    .line 282
    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 283
    iget-wide v4, p0, Lcom/facebook/imagepipeline/animated/base/b;->C:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    iget-wide v4, p0, Lcom/facebook/imagepipeline/animated/base/b;->C:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 284
    :cond_5
    sget-object v4, Lcom/facebook/imagepipeline/animated/base/b;->a:Ljava/lang/Class;

    const-string v5, "(%s) Next frame (%d) in %d ms"

    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/base/b;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5, v6, v1, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/animated/base/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 286
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/imagepipeline/animated/base/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 287
    iput-wide v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->C:J

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Canvas;II)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 435
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    .line 436
    invoke-interface {v0, p2}, Lcom/facebook/imagepipeline/animated/base/d;->g(I)Lcom/facebook/common/references/a;

    move-result-object v2

    .line 437
    if-eqz v2, :cond_2

    .line 438
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 439
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 443
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->w:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->s:I

    if-le p3, v0, :cond_1

    .line 444
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->s:I

    sub-int v0, p3, v0

    add-int/lit8 v0, v0, -0x1

    .line 445
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    invoke-interface {v3, v1}, Lcom/facebook/imagepipeline/animated/base/e;->b(I)V

    .line 446
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    invoke-interface {v3, v0}, Lcom/facebook/imagepipeline/animated/base/e;->a(I)V

    .line 447
    if-lez v0, :cond_1

    .line 448
    sget-object v3, Lcom/facebook/imagepipeline/animated/base/b;->a:Ljava/lang/Class;

    const-string v4, "(%s) Dropped %d frames"

    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/base/b;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v4, v5, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 451
    :cond_1
    iput-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    .line 452
    iput p2, p0, Lcom/facebook/imagepipeline/animated/base/b;->r:I

    .line 453
    iput p3, p0, Lcom/facebook/imagepipeline/animated/base/b;->s:I

    .line 454
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/b;->a:Ljava/lang/Class;

    const-string v2, "(%s) Drew frame %d"

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->k:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    .line 457
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/animated/base/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/b;->B:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/b;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/animated/base/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 155
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->i()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    .line 156
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->o:I

    .line 157
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->p:I

    .line 158
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->q:I

    .line 159
    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/animated/base/b;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/b;->e()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->w:Z

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/e;->a()V

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->d:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->m:J

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->o:I

    .line 228
    iget-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->m:J

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/animated/base/d;->d(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 229
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/imagepipeline/animated/base/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 230
    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->C:J

    .line 231
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/b;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/e;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/e;->b()V

    throw v0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/animated/base/b;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/b;->h()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 238
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->C:J

    .line 239
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->w:Z

    if-nez v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->e:I

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/e;->c()V

    .line 247
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/animated/base/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/e;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/e;->d()V

    throw v0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/animated/base/b;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/b;->g()V

    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->B:Z

    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->B:Z

    .line 411
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->F:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/imagepipeline/animated/base/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private g()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 466
    iput-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->x:Z

    .line 467
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->w:Z

    if-nez v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->d:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v4

    .line 473
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->u:Z

    if-eqz v0, :cond_3

    iget-wide v6, p0, Lcom/facebook/imagepipeline/animated/base/b;->v:J

    sub-long v6, v4, v6

    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    move v0, v1

    .line 477
    :goto_1
    iget-wide v6, p0, Lcom/facebook/imagepipeline/animated/base/b;->C:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    iget-wide v6, p0, Lcom/facebook/imagepipeline/animated/base/b;->C:J

    sub-long/2addr v4, v6

    cmp-long v3, v4, v10

    if-lez v3, :cond_1

    move v2, v1

    .line 480
    :cond_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_4

    .line 481
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/b;->a()V

    .line 482
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/b;->h()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 473
    goto :goto_1

    .line 484
    :cond_4
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->G:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 488
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->x:Z

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->u:Z

    .line 494
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->d:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->v:J

    .line 495
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/b;->invalidateSelf()V

    .line 496
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 588
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/b;->a:Ljava/lang/Class;

    const-string v1, "(%s) Dropping caches"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    .line 592
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->r:I

    .line 593
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->s:I

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->k()V

    .line 596
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v7, -0x1

    .line 294
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/animated/base/e;->e()V

    .line 296
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->u:Z

    .line 297
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->w:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->x:Z

    if-nez v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->G:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 302
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->x:Z

    .line 305
    :cond_0
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->A:Z

    if-eqz v2, :cond_2

    .line 306
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 307
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 308
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->i:Landroid/graphics/Rect;

    .line 309
    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/animated/base/d;->b(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v2

    .line 310
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    if-eq v2, v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/d;->k()V

    .line 312
    iput-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    .line 313
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    invoke-interface {v3, v2}, Lcom/facebook/imagepipeline/animated/base/e;->a(Lcom/facebook/imagepipeline/animated/base/d;)V

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/d;->g()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->y:F

    .line 316
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/d;->h()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->z:F

    .line 317
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->A:Z

    .line 321
    :cond_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 399
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/e;->f()V

    .line 401
    :goto_0
    return-void

    .line 326
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 327
    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->y:F

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->z:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 331
    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->p:I

    if-eq v2, v7, :cond_4

    .line 333
    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->p:I

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->q:I

    .line 334
    invoke-direct {p0, p1, v2, v3}, Lcom/facebook/imagepipeline/animated/base/b;->a(Landroid/graphics/Canvas;II)Z

    move-result v2

    .line 335
    or-int/2addr v0, v2

    .line 336
    if-eqz v2, :cond_a

    .line 337
    sget-object v2, Lcom/facebook/imagepipeline/animated/base/b;->a:Ljava/lang/Class;

    const-string v3, "(%s) Rendered pending frame %d"

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/b;->k:Ljava/lang/String;

    iget v5, p0, Lcom/facebook/imagepipeline/animated/base/b;->p:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    const/4 v2, -0x1

    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->p:I

    .line 339
    const/4 v2, -0x1

    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->q:I

    .line 347
    :cond_4
    :goto_1
    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->p:I

    if-ne v2, v7, :cond_6

    .line 349
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->w:Z

    if-eqz v2, :cond_5

    .line 350
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/animated/base/b;->a(Z)V

    .line 352
    :cond_5
    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->o:I

    invoke-direct {p0, p1, v2, v3}, Lcom/facebook/imagepipeline/animated/base/b;->a(Landroid/graphics/Canvas;II)Z

    move-result v2

    .line 356
    or-int/2addr v0, v2

    .line 357
    if-eqz v2, :cond_b

    .line 358
    sget-object v2, Lcom/facebook/imagepipeline/animated/base/b;->a:Ljava/lang/Class;

    const-string v3, "(%s) Rendered current frame %d"

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/b;->k:Ljava/lang/String;

    iget v5, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->w:Z

    if-eqz v2, :cond_6

    .line 360
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/animated/base/b;->a(Z)V

    .line 370
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 371
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    if-eqz v2, :cond_7

    .line 372
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 374
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/b;->a:Ljava/lang/Class;

    const-string v2, "(%s) Rendered last known frame %d"

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->k:Ljava/lang/String;

    iget v4, p0, Lcom/facebook/imagepipeline/animated/base/b;->r:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    .line 378
    :cond_7
    if-nez v0, :cond_8

    .line 380
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    .line 381
    invoke-interface {v2}, Lcom/facebook/imagepipeline/animated/base/d;->l()Lcom/facebook/common/references/a;

    move-result-object v2

    .line 382
    if-eqz v2, :cond_8

    .line 383
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/base/b;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 384
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->close()V

    .line 385
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/b;->a:Ljava/lang/Class;

    const-string v2, "(%s) Rendered preview frame"

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/b;->k:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 390
    :cond_8
    if-nez v0, :cond_9

    .line 392
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/base/b;->j:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 393
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/b;->a:Ljava/lang/Class;

    const-string v1, "(%s) Failed to draw a frame"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 397
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->i:Landroid/graphics/Rect;

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/base/e;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/e;->f()V

    goto/16 :goto_0

    .line 342
    :cond_a
    :try_start_2
    sget-object v2, Lcom/facebook/imagepipeline/animated/base/b;->a:Ljava/lang/Class;

    const-string v3, "(%s) Trying again later for pending %d"

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/b;->k:Ljava/lang/String;

    iget v5, p0, Lcom/facebook/imagepipeline/animated/base/b;->p:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/b;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 399
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->c:Lcom/facebook/imagepipeline/animated/base/e;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/e;->f()V

    throw v0

    .line 363
    :cond_b
    :try_start_3
    sget-object v2, Lcom/facebook/imagepipeline/animated/base/b;->a:Ljava/lang/Class;

    const-string v3, "(%s) Trying again later for current %d"

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/b;->k:Ljava/lang/String;

    iget v5, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/common/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->p:I

    .line 365
    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->o:I

    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->q:I

    .line 366
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/b;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 164
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    .line 168
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->f()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->e()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->w:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 208
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->A:Z

    .line 210
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    invoke-virtual {v0}, Lcom/facebook/common/references/a;->close()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->t:Lcom/facebook/common/references/a;

    .line 214
    :cond_0
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->r:I

    .line 215
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->s:I

    .line 216
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/d;->k()V

    .line 217
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 534
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->w:Z

    if-eqz v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v0

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->l:Lcom/facebook/imagepipeline/animated/base/d;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/animated/base/d;->b(I)I

    move-result v1

    .line 540
    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    if-eq v1, v2, :cond_0

    .line 545
    :try_start_0
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->n:I

    .line 546
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->o:I

    .line 547
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/b;->h()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    const/4 v0, 0x1

    goto :goto_0

    .line 549
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 192
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/b;->h()V

    .line 193
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 198
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/b;->h()V

    .line 199
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 515
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->f:I

    if-gt v0, v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->w:Z

    .line 519
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->D:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/b;->d:Lcom/facebook/common/time/b;

    invoke-interface {v1}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/imagepipeline/animated/base/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/b;->w:Z

    .line 525
    return-void
.end method
