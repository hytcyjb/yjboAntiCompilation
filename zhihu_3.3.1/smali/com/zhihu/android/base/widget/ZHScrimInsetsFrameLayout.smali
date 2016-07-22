.class public Lcom/zhihu/android/base/widget/ZHScrimInsetsFrameLayout;
.super Lcom/zhihu/android/base/widget/ZHFrameLayout;
.source "ZHScrimInsetsFrameLayout.java"

# interfaces
.implements Lcom/zhihu/android/base/view/b;


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zhihu/android/base/widget/ZHScrimInsetsFrameLayout;->a:[I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/zhihu/android/base/widget/ZHFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zhihu/android/base/widget/ZHScrimInsetsFrameLayout;->a:[I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/zhihu/android/base/widget/ZHFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zhihu/android/base/widget/ZHScrimInsetsFrameLayout;->a:[I

    .line 42
    return-void
.end method


# virtual methods
.method protected final fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/zhihu/android/base/widget/ZHScrimInsetsFrameLayout;->a:[I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    aput v1, v0, v3

    .line 58
    iget-object v0, p0, Lcom/zhihu/android/base/widget/ZHScrimInsetsFrameLayout;->a:[I

    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    aput v2, v0, v1

    .line 59
    iget-object v0, p0, Lcom/zhihu/android/base/widget/ZHScrimInsetsFrameLayout;->a:[I

    const/4 v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    aput v2, v0, v1

    .line 61
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 62
    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 63
    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/zhihu/android/base/widget/ZHFrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 46
    return-object p0
.end method
