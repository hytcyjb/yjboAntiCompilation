.class Landroid/support/v7/widget/ae;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawable.java"


# instance fields
.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/Rect;

.field private e:F

.field private f:Z

.field private g:Z

.field private h:Landroid/graphics/PorterDuffColorFilter;

.field private i:Landroid/content/res/ColorStateList;

.field private j:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(IF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ae;->f:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ae;->g:Z

    .line 54
    iput p2, p0, Landroid/support/v7/widget/ae;->a:F

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/ae;->b:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/ae;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ae;->c:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ae;->d:Landroid/graphics/Rect;

    .line 59
    return-void
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 188
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 189
    :cond_0
    const/4 v0, 0x0

    .line 192
    :goto_0
    return-object v0

    .line 191
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ae;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 192
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 6
    .parameter

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/support/v7/widget/ae;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ae;->c:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    iget-object v0, p0, Landroid/support/v7/widget/ae;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 102
    iget-boolean v0, p0, Landroid/support/v7/widget/ae;->f:Z

    if-eqz v0, :cond_1

    .line 103
    iget v0, p0, Landroid/support/v7/widget/ae;->e:F

    iget v1, p0, Landroid/support/v7/widget/ae;->a:F

    iget-boolean v2, p0, Landroid/support/v7/widget/ae;->g:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/af;->a(FFZ)F

    move-result v0

    .line 104
    iget v1, p0, Landroid/support/v7/widget/ae;->e:F

    iget v2, p0, Landroid/support/v7/widget/ae;->a:F

    iget-boolean v3, p0, Landroid/support/v7/widget/ae;->g:Z

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/af;->b(FFZ)F

    move-result v1

    .line 105
    iget-object v2, p0, Landroid/support/v7/widget/ae;->d:Landroid/graphics/Rect;

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/ae;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/v7/widget/ae;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 109
    :cond_1
    return-void
.end method


# virtual methods
.method a()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Landroid/support/v7/widget/ae;->e:F

    return v0
.end method

.method a(F)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget v0, p0, Landroid/support/v7/widget/ae;->a:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/ae;->a:F

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ae;->a(Landroid/graphics/Rect;)V

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/widget/ae;->invalidateSelf()V

    goto :goto_0
.end method

.method a(FZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iget v0, p0, Landroid/support/v7/widget/ae;->e:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ae;->f:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ae;->g:Z

    if-ne v0, p3, :cond_0

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/ae;->e:F

    .line 67
    iput-boolean p2, p0, Landroid/support/v7/widget/ae;->f:Z

    .line 68
    iput-boolean p3, p0, Landroid/support/v7/widget/ae;->g:Z

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ae;->a(Landroid/graphics/Rect;)V

    .line 70
    invoke-virtual {p0}, Landroid/support/v7/widget/ae;->invalidateSelf()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/ae;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    invoke-virtual {p0}, Landroid/support/v7/widget/ae;->invalidateSelf()V

    .line 153
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/support/v7/widget/ae;->a:F

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    .line 79
    iget-object v1, p0, Landroid/support/v7/widget/ae;->b:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Landroid/support/v7/widget/ae;->h:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/ae;->h:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 84
    const/4 v0, 0x1

    .line 89
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/ae;->c:Landroid/graphics/RectF;

    iget v3, p0, Landroid/support/v7/widget/ae;->a:F

    iget v4, p0, Landroid/support/v7/widget/ae;->a:F

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 91
    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 94
    :cond_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/ae;->d:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/widget/ae;->a:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 120
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/ae;->i:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ae;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 114
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ae;->a(Landroid/graphics/Rect;)V

    .line 115
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/ae;->i:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ae;->j:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid/support/v7/widget/ae;->i:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/v7/widget/ae;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/ae;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ae;->h:Landroid/graphics/PorterDuffColorFilter;

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/v7/widget/ae;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/ae;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 139
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Landroid/support/v7/widget/ae;->i:Landroid/content/res/ColorStateList;

    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/ae;->i:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/v7/widget/ae;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/ae;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ae;->h:Landroid/graphics/PorterDuffColorFilter;

    .line 159
    invoke-virtual {p0}, Landroid/support/v7/widget/ae;->invalidateSelf()V

    .line 160
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Landroid/support/v7/widget/ae;->j:Landroid/graphics/PorterDuff$Mode;

    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/ae;->i:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/v7/widget/ae;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/ae;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ae;->h:Landroid/graphics/PorterDuffColorFilter;

    .line 166
    invoke-virtual {p0}, Landroid/support/v7/widget/ae;->invalidateSelf()V

    .line 167
    return-void
.end method
