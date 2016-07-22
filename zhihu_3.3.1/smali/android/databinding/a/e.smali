.class public Landroid/databinding/a/e;
.super Ljava/lang/Object;
.source "ViewBindingAdapter.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput v0, Landroid/databinding/a/e;->a:I

    .line 60
    const/4 v0, 0x1

    sput v0, Landroid/databinding/a/e;->b:I

    .line 61
    const/4 v0, 0x2

    sput v0, Landroid/databinding/a/e;->c:I

    return-void
.end method

.method private static a(F)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 220
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-int v0, v0

    .line 221
    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return v0

    .line 223
    :cond_0
    cmpl-float v0, p0, v1

    if-nez v0, :cond_1

    .line 224
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_2

    .line 226
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {p1}, Landroid/databinding/a/e;->a(F)I

    move-result v0

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 74
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 210
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
