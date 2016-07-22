.class public Lcom/facebook/drawee/drawable/m;
.super Lcom/facebook/drawee/drawable/g;
.source "ScaleTypeDrawable.java"


# instance fields
.field a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field c:Landroid/graphics/PointF;

.field d:I

.field e:I

.field f:Landroid/graphics/Matrix;

.field private g:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/facebook/drawee/drawable/g;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/drawable/m;->c:Landroid/graphics/PointF;

    .line 36
    iput v1, p0, Lcom/facebook/drawee/drawable/m;->d:I

    .line 37
    iput v1, p0, Lcom/facebook/drawee/drawable/m;->e:I

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/m;->g:Landroid/graphics/Matrix;

    .line 52
    iput-object p2, p0, Lcom/facebook/drawee/drawable/m;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 53
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/facebook/drawee/drawable/m;->d:I

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/m;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/drawee/drawable/m;->e:I

    .line 119
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/m;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/m;->b()V

    .line 122
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/drawable/m;->b(Landroid/graphics/Matrix;)V

    .line 180
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/m;->c()V

    .line 181
    iget-object v0, p0, Lcom/facebook/drawee/drawable/m;->f:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/facebook/drawee/drawable/m;->f:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 184
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/PointF;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/drawee/drawable/m;->c:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/m;->c:Landroid/graphics/PointF;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/m;->c:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 93
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/m;->b()V

    .line 94
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/m;->invalidateSelf()V

    .line 95
    return-void
.end method

.method public a(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/drawee/drawable/m;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 69
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/m;->b()V

    .line 70
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/m;->invalidateSelf()V

    .line 71
    return-void
.end method

.method b()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v5, 0x3f00

    const/4 v7, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/m;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 133
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/facebook/drawee/drawable/m;->d:I

    .line 134
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/facebook/drawee/drawable/m;->e:I

    .line 137
    if-lez v2, :cond_0

    if-gtz v3, :cond_1

    .line 138
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 139
    iput-object v7, p0, Lcom/facebook/drawee/drawable/m;->f:Landroid/graphics/Matrix;

    .line 169
    :goto_0
    return-void

    .line 144
    :cond_1
    if-ne v2, v4, :cond_2

    if-ne v3, v6, :cond_2

    .line 145
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 146
    iput-object v7, p0, Lcom/facebook/drawee/drawable/m;->f:Landroid/graphics/Matrix;

    goto :goto_0

    .line 152
    :cond_2
    iget-object v4, p0, Lcom/facebook/drawee/drawable/m;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sget-object v6, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-ne v4, v6, :cond_3

    .line 153
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 154
    iput-object v7, p0, Lcom/facebook/drawee/drawable/m;->f:Landroid/graphics/Matrix;

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {v0, v8, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    iget-object v0, p0, Lcom/facebook/drawee/drawable/m;->g:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/facebook/drawee/drawable/m;->c:Landroid/graphics/PointF;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/facebook/drawee/drawable/m;->c:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    :goto_1
    iget-object v6, p0, Lcom/facebook/drawee/drawable/m;->c:Landroid/graphics/PointF;

    if-eqz v6, :cond_4

    iget-object v5, p0, Lcom/facebook/drawee/drawable/m;->c:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    :cond_4
    iget-object v6, p0, Lcom/facebook/drawee/drawable/m;->a:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static/range {v0 .. v6}, Lcom/facebook/drawee/drawable/ScalingUtils;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFLcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Landroid/graphics/Matrix;

    .line 168
    iget-object v0, p0, Lcom/facebook/drawee/drawable/m;->g:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/facebook/drawee/drawable/m;->f:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_5
    move v4, v5

    .line 160
    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/m;->c()V

    .line 100
    iget-object v0, p0, Lcom/facebook/drawee/drawable/m;->f:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 102
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 103
    iget-object v1, p0, Lcom/facebook/drawee/drawable/m;->f:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 104
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/g;->draw(Landroid/graphics/Canvas;)V

    .line 105
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/g;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/m;->b()V

    .line 115
    return-void
.end method
