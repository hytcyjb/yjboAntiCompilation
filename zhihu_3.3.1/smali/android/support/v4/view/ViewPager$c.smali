.class public Landroid/support/v4/view/ViewPager$c;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field c:F

.field d:Z

.field e:I

.field f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 3026
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3007
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager$c;->c:F

    .line 3027
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3030
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3007
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager$c;->c:F

    .line 3032
    invoke-static {}, Landroid/support/v4/view/ViewPager;->j()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3033
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager$c;->b:I

    .line 3034
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3035
    return-void
.end method
