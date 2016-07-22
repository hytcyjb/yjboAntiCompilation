.class public Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;
.super Lcom/zhihu/android/base/widget/ZHFrameLayout;
.source "RevealFrameLayout.java"

# interfaces
.implements Lcom/zhihu/android/app/ui/widget/reveal/a/a;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Path;

.field private final d:Landroid/graphics/Rect;

.field private e:Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;

.field private f:Z

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/zhihu/android/base/widget/ZHFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->d:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->c:Landroid/graphics/Path;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->a:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 44
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->f:Z

    .line 49
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->e:Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;

    .line 94
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->f:Z

    .line 54
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 55
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->b()V

    .line 60
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->f:Z

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->e:Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;->a()Landroid/view/View;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->e:Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;

    iget-boolean v0, v0, Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;->a:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 114
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    invoke-super {p0, v2, p2, p3, p4}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 116
    iget-object v3, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->e:Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;

    iget v3, v3, Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;->b:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->e:Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;

    iget v4, v4, Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;->c:I

    int-to-float v4, v4

    iget v5, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->g:F

    iget-object v6, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 117
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 122
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 123
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->c:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->e:Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;

    iget v2, v2, Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->e:Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;

    iget v3, v3, Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;->c:I

    int-to-float v3, v3

    iget v4, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->g:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 125
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 129
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method public getRevealInfo()Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRevealRadius()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->g:F

    return v0
.end method

.method public setRevealRadius(F)V
    .locals 2
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->g:F

    .line 70
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->e:Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/reveal/a/a$b;->a()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 71
    iget-object v0, p0, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/widget/reveal/widget/RevealFrameLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 72
    return-void
.end method
