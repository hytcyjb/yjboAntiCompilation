.class Landroid/support/design/widget/n;
.super Landroid/support/v7/c/a/a;
.source "ShadowDrawableWrapper.java"


# static fields
.field static final a:D


# instance fields
.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field final d:Landroid/graphics/RectF;

.field e:F

.field f:Landroid/graphics/Path;

.field g:F

.field h:F

.field i:F

.field j:F

.field private k:Z

.field private final l:I

.field private final m:I

.field private final n:I

.field private o:Z

.field private p:F

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-wide v0, 0x4046800000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Landroid/support/design/widget/n;->a:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;FFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p2}, Landroid/support/v7/c/a/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iput-boolean v0, p0, Landroid/support/design/widget/n;->k:Z

    .line 72
    iput-boolean v0, p0, Landroid/support/design/widget/n;->o:Z

    .line 79
    iput-boolean v2, p0, Landroid/support/design/widget/n;->q:Z

    .line 85
    sget v0, Landroid/support/design/a$c;->design_fab_shadow_start_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/n;->l:I

    .line 86
    sget v0, Landroid/support/design/a$c;->design_fab_shadow_mid_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/n;->m:I

    .line 87
    sget v0, Landroid/support/design/a$c;->design_fab_shadow_end_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/n;->n:I

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/n;->b:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Landroid/support/design/widget/n;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/n;->e:F

    .line 92
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/n;->b:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/support/design/widget/n;->c:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Landroid/support/design/widget/n;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    invoke-virtual {p0, p4, p5}, Landroid/support/design/widget/n;->a(FF)V

    .line 96
    return-void
.end method

.method public static a(FFZ)F
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x3fc0

    .line 158
    if-eqz p2, :cond_0

    .line 159
    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    sget-wide v4, Landroid/support/design/widget/n;->a:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 161
    :goto_0
    return v0

    :cond_0
    mul-float/2addr v0, p0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 209
    iget v0, p0, Landroid/support/design/widget/n;->p:F

    iget-object v1, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 211
    iget v0, p0, Landroid/support/design/widget/n;->e:F

    neg-float v0, v0

    iget v1, p0, Landroid/support/design/widget/n;->i:F

    sub-float v2, v0, v1

    .line 212
    iget v9, p0, Landroid/support/design/widget/n;->e:F

    .line 213
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x4000

    mul-float/2addr v1, v9

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v6, v0

    .line 214
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x4000

    mul-float/2addr v1, v9

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    const/4 v0, 0x1

    move v7, v0

    .line 216
    :goto_1
    iget v0, p0, Landroid/support/design/widget/n;->j:F

    iget v1, p0, Landroid/support/design/widget/n;->j:F

    const/high16 v3, 0x3e80

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 217
    iget v1, p0, Landroid/support/design/widget/n;->j:F

    iget v3, p0, Landroid/support/design/widget/n;->j:F

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 218
    iget v3, p0, Landroid/support/design/widget/n;->j:F

    iget v4, p0, Landroid/support/design/widget/n;->j:F

    const/high16 v5, 0x3f80

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 220
    add-float/2addr v1, v9

    div-float v10, v9, v1

    .line 221
    add-float/2addr v0, v9

    div-float v11, v9, v0

    .line 222
    add-float v0, v9, v3

    div-float v12, v9, v0

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 226
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v9

    iget-object v1, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 227
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 228
    iget-object v0, p0, Landroid/support/design/widget/n;->f:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/widget/n;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 229
    if-eqz v6, :cond_0

    .line 231
    const/high16 v0, 0x3f80

    div-float/2addr v0, v10

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 232
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v3, 0x4000

    mul-float/2addr v3, v9

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/design/widget/n;->e:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/n;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    :cond_0
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 239
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v9

    iget-object v1, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 241
    const/high16 v0, 0x4334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 242
    iget-object v0, p0, Landroid/support/design/widget/n;->f:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/widget/n;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 243
    if-eqz v6, :cond_1

    .line 245
    const/high16 v0, 0x3f80

    div-float/2addr v0, v10

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 246
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v3, 0x4000

    mul-float/2addr v3, v9

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/design/widget/n;->e:F

    neg-float v0, v0

    iget v4, p0, Landroid/support/design/widget/n;->i:F

    add-float/2addr v4, v0

    iget-object v5, p0, Landroid/support/design/widget/n;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 250
    :cond_1
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 253
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v9

    iget-object v1, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 255
    const/high16 v0, 0x4387

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 256
    iget-object v0, p0, Landroid/support/design/widget/n;->f:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/widget/n;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 257
    if-eqz v7, :cond_2

    .line 259
    const/high16 v0, 0x3f80

    div-float/2addr v0, v12

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 260
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v3, 0x4000

    mul-float/2addr v3, v9

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/design/widget/n;->e:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/n;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 263
    :cond_2
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 266
    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v9

    iget-object v1, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 267
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 268
    const/high16 v0, 0x42b4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 269
    iget-object v0, p0, Landroid/support/design/widget/n;->f:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/design/widget/n;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 270
    if-eqz v7, :cond_3

    .line 272
    const/high16 v0, 0x3f80

    div-float/2addr v0, v11

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 273
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v3, 0x4000

    mul-float/2addr v3, v9

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/design/widget/n;->e:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/n;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 276
    :cond_3
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 278
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 279
    return-void

    .line 213
    :cond_4
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_0

    .line 214
    :cond_5
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_1
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 6
    .parameter

    .prologue
    .line 323
    iget v0, p0, Landroid/support/design/widget/n;->h:F

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    .line 324
    iget-object v1, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/n;->h:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/design/widget/n;->h:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float v0, v5, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 327
    invoke-virtual {p0}, Landroid/support/design/widget/n;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/design/widget/n;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 330
    invoke-direct {p0}, Landroid/support/design/widget/n;->c()V

    .line 331
    return-void
.end method

.method public static b(FFZ)F
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    if-eqz p2, :cond_0

    .line 168
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0

    sget-wide v4, Landroid/support/design/widget/n;->a:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    .line 170
    :cond_0
    return p0
.end method

.method private c()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 282
    new-instance v7, Landroid/graphics/RectF;

    iget v0, p0, Landroid/support/design/widget/n;->e:F

    neg-float v0, v0

    iget v2, p0, Landroid/support/design/widget/n;->e:F

    neg-float v2, v2

    iget v3, p0, Landroid/support/design/widget/n;->e:F

    iget v4, p0, Landroid/support/design/widget/n;->e:F

    invoke-direct {v7, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 283
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 284
    iget v0, p0, Landroid/support/design/widget/n;->i:F

    neg-float v0, v0

    iget v2, p0, Landroid/support/design/widget/n;->i:F

    neg-float v2, v2

    invoke-virtual {v8, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 286
    iget-object v0, p0, Landroid/support/design/widget/n;->f:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 287
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/n;->f:Landroid/graphics/Path;

    .line 291
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/n;->f:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 292
    iget-object v0, p0, Landroid/support/design/widget/n;->f:Landroid/graphics/Path;

    iget v2, p0, Landroid/support/design/widget/n;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 293
    iget-object v0, p0, Landroid/support/design/widget/n;->f:Landroid/graphics/Path;

    iget v2, p0, Landroid/support/design/widget/n;->i:F

    neg-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 295
    iget-object v0, p0, Landroid/support/design/widget/n;->f:Landroid/graphics/Path;

    const/high16 v2, 0x4334

    const/high16 v3, 0x42b4

    invoke-virtual {v0, v8, v2, v3, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 297
    iget-object v0, p0, Landroid/support/design/widget/n;->f:Landroid/graphics/Path;

    const/high16 v2, 0x4387

    const/high16 v3, -0x3d4c

    invoke-virtual {v0, v7, v2, v3, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 298
    iget-object v0, p0, Landroid/support/design/widget/n;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 300
    iget v0, v8, Landroid/graphics/RectF;->top:F

    neg-float v3, v0

    .line 301
    cmpl-float v0, v3, v1

    if-lez v0, :cond_0

    .line 302
    iget v0, p0, Landroid/support/design/widget/n;->e:F

    div-float v2, v0, v3

    .line 303
    const/high16 v0, 0x3f80

    sub-float/2addr v0, v2

    const/high16 v4, 0x4000

    div-float/2addr v0, v4

    add-float v6, v2, v0

    .line 304
    iget-object v9, p0, Landroid/support/design/widget/n;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v4, 0x4

    new-array v4, v4, [I

    aput v10, v4, v10

    iget v5, p0, Landroid/support/design/widget/n;->l:I

    aput v5, v4, v12

    iget v5, p0, Landroid/support/design/widget/n;->m:I

    aput v5, v4, v13

    iget v5, p0, Landroid/support/design/widget/n;->n:I

    aput v5, v4, v11

    const/4 v5, 0x4

    new-array v5, v5, [F

    aput v1, v5, v10

    aput v2, v5, v12

    aput v6, v5, v13

    const/high16 v2, 0x3f80

    aput v2, v5, v11

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 313
    :cond_0
    iget-object v9, p0, Landroid/support/design/widget/n;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, v7, Landroid/graphics/RectF;->top:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    new-array v5, v11, [I

    iget v3, p0, Landroid/support/design/widget/n;->l:I

    aput v3, v5, v10

    iget v3, p0, Landroid/support/design/widget/n;->m:I

    aput v3, v5, v12

    iget v3, p0, Landroid/support/design/widget/n;->n:I

    aput v3, v5, v13

    new-array v6, v11, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 316
    iget-object v0, p0, Landroid/support/design/widget/n;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 317
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/n;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    .line 313
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private static d(F)I
    .locals 3
    .parameter

    .prologue
    .line 102
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 103
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Landroid/support/design/widget/n;->j:F

    return v0
.end method

.method final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iget v0, p0, Landroid/support/design/widget/n;->p:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 202
    iput p1, p0, Landroid/support/design/widget/n;->p:F

    .line 203
    invoke-virtual {p0}, Landroid/support/design/widget/n;->invalidateSelf()V

    .line 205
    :cond_0
    return-void
.end method

.method a(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 124
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid shadow size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    invoke-static {p1}, Landroid/support/design/widget/n;->d(F)I

    move-result v0

    int-to-float v0, v0

    .line 128
    invoke-static {p2}, Landroid/support/design/widget/n;->d(F)I

    move-result v1

    int-to-float v1, v1

    .line 129
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    .line 131
    iget-boolean v0, p0, Landroid/support/design/widget/n;->q:Z

    if-nez v0, :cond_2

    .line 132
    iput-boolean v3, p0, Landroid/support/design/widget/n;->q:Z

    :cond_2
    move v0, v1

    .line 135
    :cond_3
    iget v2, p0, Landroid/support/design/widget/n;->j:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_4

    iget v2, p0, Landroid/support/design/widget/n;->h:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_4

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_4
    iput v0, p0, Landroid/support/design/widget/n;->j:F

    .line 139
    iput v1, p0, Landroid/support/design/widget/n;->h:F

    .line 140
    const/high16 v2, 0x3fc0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/n;->i:F

    .line 141
    iput v1, p0, Landroid/support/design/widget/n;->g:F

    .line 142
    iput-boolean v3, p0, Landroid/support/design/widget/n;->k:Z

    .line 143
    invoke-virtual {p0}, Landroid/support/design/widget/n;->invalidateSelf()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-boolean p1, p0, Landroid/support/design/widget/n;->o:Z

    .line 108
    invoke-virtual {p0}, Landroid/support/design/widget/n;->invalidateSelf()V

    .line 109
    return-void
.end method

.method public b(F)V
    .locals 1
    .parameter

    .prologue
    .line 338
    iget v0, p0, Landroid/support/design/widget/n;->h:F

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/n;->a(FF)V

    .line 339
    return-void
.end method

.method public c(F)V
    .locals 1
    .parameter

    .prologue
    .line 342
    iget v0, p0, Landroid/support/design/widget/n;->j:F

    invoke-virtual {p0, v0, p1}, Landroid/support/design/widget/n;->a(FF)V

    .line 343
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-boolean v0, p0, Landroid/support/design/widget/n;->k:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/support/design/widget/n;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/n;->a(Landroid/graphics/Rect;)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/n;->k:Z

    .line 195
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/n;->a(Landroid/graphics/Canvas;)V

    .line 197
    invoke-super {p0, p1}, Landroid/support/v7/c/a/a;->draw(Landroid/graphics/Canvas;)V

    .line 198
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .parameter

    .prologue
    .line 148
    iget v0, p0, Landroid/support/design/widget/n;->h:F

    iget v1, p0, Landroid/support/design/widget/n;->e:F

    iget-boolean v2, p0, Landroid/support/design/widget/n;->o:Z

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/n;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 150
    iget v1, p0, Landroid/support/design/widget/n;->h:F

    iget v2, p0, Landroid/support/design/widget/n;->e:F

    iget-boolean v3, p0, Landroid/support/design/widget/n;->o:Z

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/n;->b(FFZ)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 152
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/n;->k:Z

    .line 121
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v7/c/a/a;->setAlpha(I)V

    .line 114
    iget-object v0, p0, Landroid/support/design/widget/n;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    iget-object v0, p0, Landroid/support/design/widget/n;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    return-void
.end method
