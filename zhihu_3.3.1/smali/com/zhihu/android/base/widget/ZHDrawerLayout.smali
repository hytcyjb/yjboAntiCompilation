.class public Lcom/zhihu/android/base/widget/ZHDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "ZHDrawerLayout.java"

# interfaces
.implements Lcom/zhihu/android/base/view/b;


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhihu/android/base/widget/ZHDrawerLayout;->b:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhihu/android/base/widget/ZHDrawerLayout;->b:I

    .line 42
    invoke-static {p2}, Lcom/zhihu/android/base/view/c;->b(Landroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/base/widget/ZHDrawerLayout;->b:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/zhihu/android/base/widget/ZHDrawerLayout;->b:I

    .line 48
    invoke-static {p2}, Lcom/zhihu/android/base/view/c;->b(Landroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/base/widget/ZHDrawerLayout;->b:I

    .line 49
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/zhihu/android/base/widget/ZHDrawerLayout;->b:I

    .line 58
    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/zhihu/android/base/widget/ZHDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Lcom/zhihu/android/base/widget/ZHDrawerLayout;->b:I

    invoke-static {p0, v0, v1}, Lcom/zhihu/android/base/view/c;->a(Lcom/zhihu/android/base/view/b;Landroid/content/res/Resources$Theme;I)V

    .line 61
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 70
    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 79
    :goto_0
    return v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :goto_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setBackgroundId(I)V
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zhihu/android/base/widget/ZHDrawerLayout;->a(IZ)V

    .line 53
    return-void
.end method

.method public setTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/zhihu/android/base/widget/ZHDrawerLayout;->b:I

    invoke-static {p0, p1, v0}, Lcom/zhihu/android/base/view/c;->a(Lcom/zhihu/android/base/view/b;Landroid/content/res/Resources$Theme;I)V

    .line 66
    return-void
.end method
