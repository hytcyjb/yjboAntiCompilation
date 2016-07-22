.class Landroid/support/v7/app/m$c;
.super Landroid/support/v7/widget/ContentFrameLayout;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/m;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/m;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2037
    iput-object p1, p0, Landroid/support/v7/app/m$c;->a:Landroid/support/v7/app/m;

    .line 2038
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2039
    return-void
.end method

.method private a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x5

    .line 2067
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/m$c;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/m$c;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 2043
    iget-object v0, p0, Landroid/support/v7/app/m$c;->a:Landroid/support/v7/app/m;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 2049
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2050
    if-nez v0, :cond_0

    .line 2051
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2052
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2053
    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/m$c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2054
    iget-object v0, p0, Landroid/support/v7/app/m$c;->a:Landroid/support/v7/app/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/m;->d(Landroid/support/v7/app/m;I)V

    .line 2055
    const/4 v0, 0x1

    .line 2058
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .parameter

    .prologue
    .line 2063
    invoke-static {}, Landroid/support/v7/widget/h;->a()Landroid/support/v7/widget/h;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/m$c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/h;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/m$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2064
    return-void
.end method
