.class Landroid/support/v7/widget/af;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawableWithShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/af$a;
    }
.end annotation


# static fields
.field static final a:D

.field static c:Landroid/support/v7/widget/af$a;


# instance fields
.field final b:I

.field d:Landroid/graphics/Paint;

.field e:Landroid/graphics/Paint;

.field f:Landroid/graphics/Paint;

.field final g:Landroid/graphics/RectF;

.field h:F

.field i:Landroid/graphics/Path;

.field j:F

.field k:F

.field l:F

.field m:F

.field private n:Z

.field private final o:I

.field private final p:I

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-wide v0, 0x4046800000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Landroid/support/v7/widget/af;->a:D

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;IFFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 75
    iput-boolean v0, p0, Landroid/support/v7/widget/af;->n:Z

    .line 81
    iput-boolean v0, p0, Landroid/support/v7/widget/af;->q:Z

    .line 86
    iput-boolean v2, p0, Landroid/support/v7/widget/af;->r:Z

    .line 90
    sget v0, Landroid/support/v7/b/a$a;->cardview_shadow_start_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/af;->o:I

    .line 91
    sget v0, Landroid/support/v7/b/a$a;->cardview_shadow_end_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/af;->p:I

    .line 92
    sget v0, Landroid/support/v7/b/a$b;->cardview_compat_inset_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/af;->b:I

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/af;->d:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/af;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/af;->e:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/af;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    const/high16 v0, 0x3f00

    add-float/2addr v0, p3

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/af;->h:F

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/af;->e:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/support/v7/widget/af;->f:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/af;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    invoke-virtual {p0, p4, p5}, Landroid/support/v7/widget/af;->a(FF)V

    .line 102
    return-void
.end method

.method static a(FFZ)F
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x3fc0

    .line 173
    if-eqz p2, :cond_0

    .line 174
    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    sget-wide v4, Landroid/support/v7/widget/af;->a:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 176
    :goto_0
    return v0

    :cond_0
    mul-float/2addr v0, p0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/high16 v10, 0x4000

    .line 226
    iget v2, p0, Landroid/support/v7/widget/af;->h:F

    neg-float v2, v2

    iget v4, p0, Landroid/support/v7/widget/af;->l:F

    sub-float/2addr v2, v4

    .line 227
    iget v4, p0, Landroid/support/v7/widget/af;->h:F

    iget v5, p0, Landroid/support/v7/widget/af;->b:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/af;->m:F

    div-float/2addr v5, v10

    add-float v8, v4, v5

    .line 228
    iget-object v4, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v10, v8

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_4

    move v6, v0

    .line 229
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v10, v8

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_5

    move v7, v0

    .line 231
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 232
    iget-object v0, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v3, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 233
    iget-object v0, p0, Landroid/support/v7/widget/af;->i:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/af;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 234
    if-eqz v6, :cond_0

    .line 235
    iget-object v0, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/af;->h:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/af;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 239
    :cond_0
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    iget-object v3, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 243
    const/high16 v0, 0x4334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 244
    iget-object v0, p0, Landroid/support/v7/widget/af;->i:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/af;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 245
    if-eqz v6, :cond_1

    .line 246
    iget-object v0, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/af;->h:F

    neg-float v0, v0

    iget v4, p0, Landroid/support/v7/widget/af;->l:F

    add-float/2addr v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/af;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 250
    :cond_1
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 253
    iget-object v0, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v3, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    const/high16 v0, 0x4387

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 255
    iget-object v0, p0, Landroid/support/v7/widget/af;->i:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/af;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 256
    if-eqz v7, :cond_2

    .line 257
    iget-object v0, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/af;->h:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/af;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 260
    :cond_2
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    iget-object v3, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 264
    const/high16 v0, 0x42b4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 265
    iget-object v0, p0, Landroid/support/v7/widget/af;->i:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/af;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 266
    if-eqz v7, :cond_3

    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/af;->h:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/af;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 270
    :cond_3
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 271
    return-void

    :cond_4
    move v6, v3

    .line 228
    goto/16 :goto_0

    :cond_5
    move v7, v3

    .line 229
    goto/16 :goto_1
.end method

.method static b(FFZ)F
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    if-eqz p2, :cond_0

    .line 183
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0

    sget-wide v4, Landroid/support/v7/widget/af;->a:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    .line 185
    :cond_0
    return p0
.end method

.method private b(Landroid/graphics/Rect;)V
    .locals 6
    .parameter

    .prologue
    .line 311
    iget v0, p0, Landroid/support/v7/widget/af;->k:F

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    .line 312
    iget-object v1, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v7/widget/af;->k:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v7/widget/af;->k:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float v0, v5, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 314
    invoke-direct {p0}, Landroid/support/v7/widget/af;->f()V

    .line 315
    return-void
.end method

.method private d(F)I
    .locals 3
    .parameter

    .prologue
    .line 108
    const/high16 v0, 0x3f00

    add-float/2addr v0, p1

    float-to-int v0, v0

    .line 109
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 110
    add-int/lit8 v0, v0, -0x1

    .line 112
    :cond_0
    return v0
.end method

.method private f()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 274
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Landroid/support/v7/widget/af;->h:F

    neg-float v2, v2

    iget v3, p0, Landroid/support/v7/widget/af;->h:F

    neg-float v3, v3

    iget v4, p0, Landroid/support/v7/widget/af;->h:F

    iget v5, p0, Landroid/support/v7/widget/af;->h:F

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 275
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 276
    iget v3, p0, Landroid/support/v7/widget/af;->l:F

    neg-float v3, v3

    iget v4, p0, Landroid/support/v7/widget/af;->l:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 278
    iget-object v3, p0, Landroid/support/v7/widget/af;->i:Landroid/graphics/Path;

    if-nez v3, :cond_0

    .line 279
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/support/v7/widget/af;->i:Landroid/graphics/Path;

    .line 283
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/af;->i:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 284
    iget-object v3, p0, Landroid/support/v7/widget/af;->i:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v7/widget/af;->h:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 285
    iget-object v3, p0, Landroid/support/v7/widget/af;->i:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v7/widget/af;->l:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 287
    iget-object v3, p0, Landroid/support/v7/widget/af;->i:Landroid/graphics/Path;

    const/high16 v4, 0x4334

    const/high16 v5, 0x42b4

    invoke-virtual {v3, v2, v4, v5, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 289
    iget-object v2, p0, Landroid/support/v7/widget/af;->i:Landroid/graphics/Path;

    const/high16 v3, 0x4387

    const/high16 v4, -0x3d4c

    invoke-virtual {v2, v0, v3, v4, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 290
    iget-object v0, p0, Landroid/support/v7/widget/af;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 291
    iget v0, p0, Landroid/support/v7/widget/af;->h:F

    iget v2, p0, Landroid/support/v7/widget/af;->h:F

    iget v3, p0, Landroid/support/v7/widget/af;->l:F

    add-float/2addr v2, v3

    div-float v2, v0, v2

    .line 292
    iget-object v7, p0, Landroid/support/v7/widget/af;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    iget v3, p0, Landroid/support/v7/widget/af;->h:F

    iget v4, p0, Landroid/support/v7/widget/af;->l:F

    add-float/2addr v3, v4

    new-array v4, v10, [I

    iget v5, p0, Landroid/support/v7/widget/af;->o:I

    aput v5, v4, v9

    iget v5, p0, Landroid/support/v7/widget/af;->o:I

    aput v5, v4, v11

    iget v5, p0, Landroid/support/v7/widget/af;->p:I

    aput v5, v4, v12

    new-array v5, v10, [F

    aput v1, v5, v9

    aput v2, v5, v11

    const/high16 v2, 0x3f80

    aput v2, v5, v12

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 300
    iget-object v8, p0, Landroid/support/v7/widget/af;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Landroid/support/v7/widget/af;->h:F

    neg-float v2, v2

    iget v3, p0, Landroid/support/v7/widget/af;->l:F

    add-float/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/af;->h:F

    neg-float v3, v3

    iget v4, p0, Landroid/support/v7/widget/af;->l:F

    sub-float v4, v3, v4

    new-array v5, v10, [I

    iget v3, p0, Landroid/support/v7/widget/af;->o:I

    aput v3, v5, v9

    iget v3, p0, Landroid/support/v7/widget/af;->o:I

    aput v3, v5, v11

    iget v3, p0, Landroid/support/v7/widget/af;->p:I

    aput v3, v5, v12

    new-array v6, v10, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/af;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 305
    return-void

    .line 281
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/af;->i:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    .line 300
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method a()F
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Landroid/support/v7/widget/af;->h:F

    return v0
.end method

.method a(F)V
    .locals 3
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radius "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Must be >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    const/high16 v0, 0x3f00

    add-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 205
    iget v1, p0, Landroid/support/v7/widget/af;->h:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_1
    iput v0, p0, Landroid/support/v7/widget/af;->h:F

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/af;->n:Z

    .line 210
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->invalidateSelf()V

    goto :goto_0
.end method

.method a(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 134
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid shadow size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Must be >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid max shadow size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Must be >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/af;->d(F)I

    move-result v0

    int-to-float v0, v0

    .line 143
    invoke-direct {p0, p2}, Landroid/support/v7/widget/af;->d(F)I

    move-result v1

    int-to-float v1, v1

    .line 144
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    .line 146
    iget-boolean v0, p0, Landroid/support/v7/widget/af;->r:Z

    if-nez v0, :cond_2

    .line 147
    iput-boolean v3, p0, Landroid/support/v7/widget/af;->r:Z

    :cond_2
    move v0, v1

    .line 150
    :cond_3
    iget v2, p0, Landroid/support/v7/widget/af;->m:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_4

    iget v2, p0, Landroid/support/v7/widget/af;->k:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_4

    .line 159
    :goto_0
    return-void

    .line 153
    :cond_4
    iput v0, p0, Landroid/support/v7/widget/af;->m:F

    .line 154
    iput v1, p0, Landroid/support/v7/widget/af;->k:F

    .line 155
    const/high16 v2, 0x3fc0

    mul-float/2addr v0, v2

    iget v2, p0, Landroid/support/v7/widget/af;->b:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f00

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/af;->l:F

    .line 156
    iget v0, p0, Landroid/support/v7/widget/af;->b:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/af;->j:F

    .line 157
    iput-boolean v3, p0, Landroid/support/v7/widget/af;->n:Z

    .line 158
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->invalidateSelf()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/af;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->invalidateSelf()V

    .line 356
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->getPadding(Landroid/graphics/Rect;)Z

    .line 323
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/support/v7/widget/af;->q:Z

    .line 117
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->invalidateSelf()V

    .line 118
    return-void
.end method

.method b()F
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Landroid/support/v7/widget/af;->m:F

    return v0
.end method

.method b(F)V
    .locals 1
    .parameter

    .prologue
    .line 326
    iget v0, p0, Landroid/support/v7/widget/af;->k:F

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/af;->a(FF)V

    .line 327
    return-void
.end method

.method c()F
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Landroid/support/v7/widget/af;->k:F

    return v0
.end method

.method c(F)V
    .locals 1
    .parameter

    .prologue
    .line 330
    iget v0, p0, Landroid/support/v7/widget/af;->m:F

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/af;->a(FF)V

    .line 331
    return-void
.end method

.method d()F
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 342
    iget v0, p0, Landroid/support/v7/widget/af;->k:F

    iget v1, p0, Landroid/support/v7/widget/af;->h:F

    iget v2, p0, Landroid/support/v7/widget/af;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/af;->k:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    .line 344
    iget v1, p0, Landroid/support/v7/widget/af;->k:F

    iget v2, p0, Landroid/support/v7/widget/af;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/4 v1, 0x0

    .line 215
    iget-boolean v0, p0, Landroid/support/v7/widget/af;->n:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/af;->b(Landroid/graphics/Rect;)V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/af;->n:Z

    .line 219
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/af;->m:F

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 220
    invoke-direct {p0, p1}, Landroid/support/v7/widget/af;->a(Landroid/graphics/Canvas;)V

    .line 221
    iget v0, p0, Landroid/support/v7/widget/af;->m:F

    neg-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 222
    sget-object v0, Landroid/support/v7/widget/af;->c:Landroid/support/v7/widget/af$a;

    iget-object v1, p0, Landroid/support/v7/widget/af;->g:Landroid/graphics/RectF;

    iget v2, p0, Landroid/support/v7/widget/af;->h:F

    iget-object v3, p0, Landroid/support/v7/widget/af;->d:Landroid/graphics/Paint;

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/support/v7/widget/af$a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 223
    return-void
.end method

.method e()F
    .locals 5

    .prologue
    const/high16 v4, 0x3fc0

    const/high16 v3, 0x4000

    .line 348
    iget v0, p0, Landroid/support/v7/widget/af;->k:F

    iget v1, p0, Landroid/support/v7/widget/af;->h:F

    iget v2, p0, Landroid/support/v7/widget/af;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/af;->k:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    .line 350
    iget v1, p0, Landroid/support/v7/widget/af;->k:F

    mul-float/2addr v1, v4

    iget v2, p0, Landroid/support/v7/widget/af;->b:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .parameter

    .prologue
    .line 163
    iget v0, p0, Landroid/support/v7/widget/af;->k:F

    iget v1, p0, Landroid/support/v7/widget/af;->h:F

    iget-boolean v2, p0, Landroid/support/v7/widget/af;->q:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/af;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 165
    iget v1, p0, Landroid/support/v7/widget/af;->k:F

    iget v2, p0, Landroid/support/v7/widget/af;->h:F

    iget-boolean v3, p0, Landroid/support/v7/widget/af;->q:Z

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/af;->b(FFZ)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 167
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/af;->n:Z

    .line 131
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/af;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/af;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/af;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/af;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 192
    return-void
.end method
