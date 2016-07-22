.class public Lcom/facebook/drawee/drawable/h;
.super Lcom/facebook/drawee/drawable/g;
.source "MatrixDrawable.java"


# instance fields
.field private a:Landroid/graphics/Matrix;

.field private c:Landroid/graphics/Matrix;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/facebook/drawee/drawable/g;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 33
    iput v1, p0, Lcom/facebook/drawee/drawable/h;->d:I

    .line 34
    iput v1, p0, Lcom/facebook/drawee/drawable/h;->e:I

    .line 43
    iput-object p2, p0, Lcom/facebook/drawee/drawable/h;->a:Landroid/graphics/Matrix;

    .line 44
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/facebook/drawee/drawable/h;->d:I

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/drawee/drawable/h;->e:I

    .line 87
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/h;->c()V

    .line 90
    :cond_1
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/h;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/facebook/drawee/drawable/h;->d:I

    .line 99
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/facebook/drawee/drawable/h;->e:I

    .line 104
    if-lez v2, :cond_0

    if-gtz v3, :cond_1

    .line 105
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/drawable/h;->c:Landroid/graphics/Matrix;

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    iget-object v0, p0, Lcom/facebook/drawee/drawable/h;->a:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/facebook/drawee/drawable/h;->c:Landroid/graphics/Matrix;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/g;->a(Landroid/graphics/Matrix;)V

    .line 120
    iget-object v0, p0, Lcom/facebook/drawee/drawable/h;->c:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/facebook/drawee/drawable/h;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 123
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/h;->b()V

    .line 67
    iget-object v0, p0, Lcom/facebook/drawee/drawable/h;->c:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/h;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 70
    iget-object v1, p0, Lcom/facebook/drawee/drawable/h;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 71
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/g;->draw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/g;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/facebook/drawee/drawable/g;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 82
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/h;->c()V

    .line 83
    return-void
.end method
