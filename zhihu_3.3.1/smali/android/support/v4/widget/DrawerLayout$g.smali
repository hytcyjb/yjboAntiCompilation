.class public Landroid/support/v4/widget/DrawerLayout$g;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:I

.field private b:F

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2172
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2158
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    .line 2173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2164
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2158
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    .line 2166
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->d()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2167
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    .line 2168
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2169
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout$g;)V
    .locals 1
    .parameter

    .prologue
    .line 2181
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2158
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    .line 2182
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    .line 2183
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 2186
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2158
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    .line 2187
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 2190
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2158
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$g;->a:I

    .line 2191
    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout$g;)F
    .locals 1
    .parameter

    .prologue
    .line 2153
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$g;->b:F

    return v0
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout$g;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2153
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$g;->b:F

    return p1
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout$g;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2153
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout$g;->d:I

    return p1
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout$g;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2153
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout$g;->c:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v4/widget/DrawerLayout$g;)I
    .locals 1
    .parameter

    .prologue
    .line 2153
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$g;->d:I

    return v0
.end method

.method static synthetic b(Landroid/support/v4/widget/DrawerLayout$g;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2153
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$g;->d:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout$g;->d:I

    return v0
.end method

.method static synthetic c(Landroid/support/v4/widget/DrawerLayout$g;)Z
    .locals 1
    .parameter

    .prologue
    .line 2153
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout$g;->c:Z

    return v0
.end method
