.class public Landroid/support/v7/widget/Toolbar$b;
.super Landroid/support/v7/app/a$a;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1864
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/a$a;-><init>(II)V

    .line 1857
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 1865
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->a:I

    .line 1866
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1860
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/a$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1857
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 1861
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/a$a;)V
    .locals 1
    .parameter

    .prologue
    .line 1884
    invoke-direct {p0, p1}, Landroid/support/v7/app/a$a;-><init>(Landroid/support/v7/app/a$a;)V

    .line 1857
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 1885
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar$b;)V
    .locals 1
    .parameter

    .prologue
    .line 1878
    invoke-direct {p0, p1}, Landroid/support/v7/app/a$a;-><init>(Landroid/support/v7/app/a$a;)V

    .line 1857
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 1880
    iget v0, p1, Landroid/support/v7/widget/Toolbar$b;->b:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 1881
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 1895
    invoke-direct {p0, p1}, Landroid/support/v7/app/a$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1857
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 1896
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 1888
    invoke-direct {p0, p1}, Landroid/support/v7/app/a$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1857
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 1891
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar$b;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1892
    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter

    .prologue
    .line 1899
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->leftMargin:I

    .line 1900
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->topMargin:I

    .line 1901
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->rightMargin:I

    .line 1902
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$b;->bottomMargin:I

    .line 1903
    return-void
.end method
