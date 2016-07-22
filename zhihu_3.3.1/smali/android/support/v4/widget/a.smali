.class Landroid/support/v4/widget/a;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/animation/Animation$AnimationListener;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 54
    mul-float v0, p3, v1

    const/high16 v2, 0x4000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 55
    const/high16 v2, 0x3fe0

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 56
    const/4 v3, 0x0

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 58
    const/high16 v4, 0x4060

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v4/widget/a;->b:I

    .line 61
    invoke-direct {p0}, Landroid/support/v4/widget/a;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 63
    const/high16 v2, 0x4080

    mul-float/2addr v1, v2

    invoke-static {p0, v1}, Landroid/support/v4/view/ah;->g(Landroid/view/View;F)V

    .line 74
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void

    .line 65
    :cond_0
    new-instance v1, Landroid/support/v4/widget/a$a;

    iget v4, p0, Landroid/support/v4/widget/a;->b:I

    invoke-direct {v1, p0, v4, v0}, Landroid/support/v4/widget/a$a;-><init>(Landroid/support/v4/widget/a;II)V

    .line 66
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-static {p0, v1, v4}, Landroid/support/v4/view/ah;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v4, p0, Landroid/support/v4/widget/a;->b:I

    int-to-float v4, v4

    int-to-float v3, v3

    int-to-float v2, v2

    const/high16 v5, 0x1e00

    invoke-virtual {v1, v4, v3, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 70
    iget v1, p0, Landroid/support/v4/widget/a;->b:I

    .line 72
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/support/v4/widget/a;->setPadding(IIII)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/widget/a;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Landroid/support/v4/widget/a;->b:I

    return v0
.end method

.method static synthetic a(Landroid/support/v4/widget/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Landroid/support/v4/widget/a;->b:I

    return p1
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Landroid/support/v4/widget/a;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 93
    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 106
    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 98
    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/support/v4/widget/a;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 85
    invoke-direct {p0}, Landroid/support/v4/widget/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/a;->b:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/a;->b:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/a;->setMeasuredDimension(II)V

    .line 89
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    :cond_0
    return-void
.end method
