.class public Lcom/facebook/drawee/drawable/k;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "RoundedBitmapDrawable.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/j;
.implements Lcom/facebook/drawee/drawable/n;


# instance fields
.field final a:[F

.field final b:Landroid/graphics/RectF;

.field final c:Landroid/graphics/RectF;

.field final d:Landroid/graphics/RectF;

.field final e:Landroid/graphics/RectF;

.field final f:Landroid/graphics/Matrix;

.field final g:Landroid/graphics/Matrix;

.field final h:Landroid/graphics/Matrix;

.field final i:Landroid/graphics/Matrix;

.field final j:Landroid/graphics/Matrix;

.field final k:Landroid/graphics/Matrix;

.field private l:Z

.field private m:Z

.field private final n:[F

.field private o:F

.field private p:I

.field private q:F

.field private final r:Landroid/graphics/Path;

.field private final s:Landroid/graphics/Path;

.field private t:Z

.field private final u:Landroid/graphics/Paint;

.field private final v:Landroid/graphics/Paint;

.field private w:Z

.field private x:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/facebook/drawee/drawable/o;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 38
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/k;->l:Z

    .line 39
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/k;->m:Z

    .line 40
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->n:[F

    .line 41
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->a:[F

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->c:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->d:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->e:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->f:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->g:Landroid/graphics/Matrix;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->i:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->j:Landroid/graphics/Matrix;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->k:Landroid/graphics/Matrix;

    .line 56
    iput v3, p0, Lcom/facebook/drawee/drawable/k;->o:F

    .line 57
    iput v2, p0, Lcom/facebook/drawee/drawable/k;->p:I

    .line 58
    iput v3, p0, Lcom/facebook/drawee/drawable/k;->q:F

    .line 60
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->r:Landroid/graphics/Path;

    .line 61
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->s:Landroid/graphics/Path;

    .line 62
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/k;->t:Z

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->u:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/k;->v:Landroid/graphics/Paint;

    .line 65
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/k;->w:Z

    .line 76
    if-eqz p3, :cond_0

    .line 77
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 81
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    return-void
.end method

.method public static a(Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;)Lcom/facebook/drawee/drawable/k;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 93
    new-instance v0, Lcom/facebook/drawee/drawable/k;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/drawee/drawable/k;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->y:Lcom/facebook/drawee/drawable/o;

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->y:Lcom/facebook/drawee/drawable/o;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/o;->a(Landroid/graphics/Matrix;)V

    .line 257
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->y:Lcom/facebook/drawee/drawable/o;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/o;->a(Landroid/graphics/RectF;)V

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 264
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 265
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/k;->e:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 267
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->g:Landroid/graphics/Matrix;

    .line 268
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    :cond_0
    iput-boolean v4, p0, Lcom/facebook/drawee/drawable/k;->w:Z

    .line 270
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 271
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->k:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 272
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->k:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 273
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->i:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 274
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    iput-boolean v4, p0, Lcom/facebook/drawee/drawable/k;->t:Z

    .line 279
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 281
    :cond_2
    return-void

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 260
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x4000

    .line 284
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->t:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->s:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 286
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->o:F

    div-float/2addr v2, v6

    iget v3, p0, Lcom/facebook/drawee/drawable/k;->o:F

    div-float/2addr v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 287
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->l:Z

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v6

    .line 289
    iget-object v2, p0, Lcom/facebook/drawee/drawable/k;->s:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    .line 290
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 289
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->o:F

    neg-float v2, v2

    div-float/2addr v2, v6

    iget v3, p0, Lcom/facebook/drawee/drawable/k;->o:F

    neg-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 299
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 300
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->q:F

    iget v3, p0, Lcom/facebook/drawee/drawable/k;->q:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 301
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->l:Z

    if-eqz v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->r:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    .line 303
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    .line 304
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    .line 305
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 302
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 310
    :goto_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->q:F

    neg-float v2, v2

    iget v3, p0, Lcom/facebook/drawee/drawable/k;->q:F

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 311
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->r:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 312
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/k;->t:Z

    .line 314
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 292
    :goto_2
    iget-object v2, p0, Lcom/facebook/drawee/drawable/k;->a:[F

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/facebook/drawee/drawable/k;->a:[F

    iget-object v3, p0, Lcom/facebook/drawee/drawable/k;->n:[F

    aget v3, v3, v0

    iget v4, p0, Lcom/facebook/drawee/drawable/k;->q:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/facebook/drawee/drawable/k;->o:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    aput v3, v2, v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->s:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/k;->a:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->r:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/k;->b:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/k;->n:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_1
.end method

.method private d()V
    .locals 5

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->x:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 319
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/facebook/drawee/drawable/k;->x:Ljava/lang/ref/WeakReference;

    .line 320
    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->u:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->w:Z

    .line 323
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->w:Z

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->u:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->w:Z

    .line 327
    :cond_2
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->q:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 191
    iput p1, p0, Lcom/facebook/drawee/drawable/k;->q:F

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->t:Z

    .line 193
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->invalidateSelf()V

    .line 195
    :cond_0
    return-void
.end method

.method public a(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    iget v0, p0, Lcom/facebook/drawee/drawable/k;->p:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/drawee/drawable/k;->o:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    iput p1, p0, Lcom/facebook/drawee/drawable/k;->p:I

    .line 166
    iput p2, p0, Lcom/facebook/drawee/drawable/k;->o:F

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->t:Z

    .line 168
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->invalidateSelf()V

    .line 170
    :cond_1
    return-void
.end method

.method public a(Lcom/facebook/drawee/drawable/o;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/facebook/drawee/drawable/k;->y:Lcom/facebook/drawee/drawable/o;

    .line 209
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/k;->l:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->t:Z

    .line 105
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->invalidateSelf()V

    .line 106
    return-void
.end method

.method public a([F)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    if-nez p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->n:[F

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 138
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/k;->m:Z

    .line 147
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/k;->t:Z

    .line 148
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->invalidateSelf()V

    .line 149
    return-void

    .line 140
    :cond_1
    array-length v0, p1

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "radii should have exactly 8 values"

    invoke-static {v0, v3}, Lcom/facebook/common/internal/g;->a(ZLjava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->n:[F

    invoke-static {p1, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/k;->m:Z

    move v3, v2

    .line 143
    :goto_1
    if-ge v3, v5, :cond_0

    .line 144
    iget-boolean v4, p0, Lcom/facebook/drawee/drawable/k;->m:Z

    aget v0, p1, v3

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    or-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->m:Z

    .line 143
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 140
    goto :goto_0

    :cond_3
    move v0, v2

    .line 144
    goto :goto_2
.end method

.method a()Z
    .locals 2

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/k;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/drawee/drawable/k;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 244
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/k;->b()V

    .line 233
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/k;->c()V

    .line 234
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/k;->d()V

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 237
    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->r:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/k;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 238
    iget v1, p0, Lcom/facebook/drawee/drawable/k;->o:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->v:Landroid/graphics/Paint;

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->o:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 240
    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->v:Landroid/graphics/Paint;

    iget v2, p0, Lcom/facebook/drawee/drawable/k;->p:I

    iget-object v3, p0, Lcom/facebook/drawee/drawable/k;->u:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, Lcom/facebook/drawee/drawable/e;->a(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    iget-object v1, p0, Lcom/facebook/drawee/drawable/k;->s:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/k;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 243
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->u:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 215
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/k;->invalidateSelf()V

    .line 217
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/drawee/drawable/k;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 222
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 223
    return-void
.end method
