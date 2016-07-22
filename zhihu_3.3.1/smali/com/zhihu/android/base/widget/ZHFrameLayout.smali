.class public Lcom/zhihu/android/base/widget/ZHFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ZHFrameLayout.java"

# interfaces
.implements Lcom/zhihu/android/base/view/b;


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private final d:Lcom/zhihu/android/base/view/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v0, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->a:I

    .line 39
    iput v0, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->b:I

    .line 41
    iput v2, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->c:F

    .line 43
    new-instance v0, Lcom/zhihu/android/base/view/a$a;

    invoke-direct {v0}, Lcom/zhihu/android/base/view/a$a;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->d:Lcom/zhihu/android/base/view/a$a;

    .line 56
    invoke-static {p2}, Lcom/zhihu/android/base/view/c;->b(Landroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->a:I

    .line 58
    invoke-static {p2}, Lcom/zhihu/android/base/view/c;->d(Landroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->b:I

    .line 60
    sget-object v0, Lcom/zhihu/android/base/a$e;->Layout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    sget v1, Lcom/zhihu/android/base/a$e;->Layout_aspectRatio:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->c:F

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->a:I

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->a:I

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/base/view/c;->a(Lcom/zhihu/android/base/view/b;Landroid/content/res/Resources$Theme;I)V

    .line 77
    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->b:I

    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->b:I

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/base/view/c;->b(Lcom/zhihu/android/base/view/b;Landroid/content/res/Resources$Theme;I)V

    .line 89
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 119
    return-object p0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->d:Lcom/zhihu/android/base/view/a$a;

    iput p1, v0, Lcom/zhihu/android/base/view/a$a;->a:I

    .line 102
    iget-object v0, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->d:Lcom/zhihu/android/base/view/a$a;

    iput p2, v0, Lcom/zhihu/android/base/view/a$a;->b:I

    .line 104
    iget-object v0, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->d:Lcom/zhihu/android/base/view/a$a;

    iget v1, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->c:F

    invoke-virtual {p0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zhihu/android/base/view/a;->a(Lcom/zhihu/android/base/view/a$a;FLandroid/view/ViewGroup$LayoutParams;II)V

    .line 106
    iget-object v0, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->d:Lcom/zhihu/android/base/view/a$a;

    iget v0, v0, Lcom/zhihu/android/base/view/a$a;->a:I

    iget-object v1, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->d:Lcom/zhihu/android/base/view/a$a;

    iget v1, v1, Lcom/zhihu/android/base/view/a$a;->b:I

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 107
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget v0, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 93
    iput p1, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->c:F

    .line 95
    invoke-virtual {p0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->requestLayout()V

    .line 97
    :cond_0
    return-void
.end method

.method public setBackgroundId(I)V
    .locals 1
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->a(IZ)V

    .line 69
    return-void
.end method

.method public setForegroundId(I)V
    .locals 1
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->b(IZ)V

    .line 81
    return-void
.end method

.method public setTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iget v0, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->a:I

    invoke-static {p0, p1, v0}, Lcom/zhihu/android/base/view/c;->a(Lcom/zhihu/android/base/view/b;Landroid/content/res/Resources$Theme;I)V

    .line 113
    iget v0, p0, Lcom/zhihu/android/base/widget/ZHFrameLayout;->b:I

    invoke-static {p0, p1, v0}, Lcom/zhihu/android/base/view/c;->b(Lcom/zhihu/android/base/view/b;Landroid/content/res/Resources$Theme;I)V

    .line 114
    return-void
.end method
