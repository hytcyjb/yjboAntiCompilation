.class Landroid/support/v7/widget/Toolbar$a;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/support/v7/view/menu/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/v7/view/menu/f;

.field b:Landroid/support/v7/view/menu/h;

.field final synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0
    .parameter

    .prologue
    .line 1940
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1940
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar$a;-><init>(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/f;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1947
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    .line 1948
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/f;->d(Landroid/support/v7/view/menu/h;)Z

    .line 1950
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/f;

    .line 1951
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 2059
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/f;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1993
    return-void
.end method

.method public a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1961
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    if-eqz v1, :cond_1

    .line 1964
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/f;

    if-eqz v1, :cond_0

    .line 1965
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/f;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/f;->size()I

    move-result v2

    move v1, v0

    .line 1966
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1967
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/f;

    invoke-virtual {v3, v1}, Landroid/support/v7/view/menu/f;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1968
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    if-ne v3, v4, :cond_2

    .line 1969
    const/4 v0, 0x1

    .line 1975
    :cond_0
    if-nez v0, :cond_1

    .line 1977
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/Toolbar$a;->b(Landroid/support/v7/view/menu/f;Landroid/support/v7/view/menu/h;)Z

    .line 1980
    :cond_1
    return-void

    .line 1966
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1997
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/f;Landroid/support/v7/view/menu/h;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2002
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/support/v7/widget/Toolbar;)V

    .line 2003
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_0

    .line 2004
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2006
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/h;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    .line 2007
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    .line 2008
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 2009
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->i()Landroid/support/v7/widget/Toolbar$b;

    move-result-object v0

    .line 2010
    const v1, 0x800003

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/support/v7/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    .line 2011
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$b;->b:I

    .line 2012
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2013
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2016
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->j()V

    .line 2017
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2018
    invoke-virtual {p2, v3}, Landroid/support/v7/view/menu/h;->e(Z)V

    .line 2020
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/view/c;

    if-eqz v0, :cond_2

    .line 2021
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/c;

    invoke-interface {v0}, Landroid/support/v7/view/c;->a()V

    .line 2024
    :cond_2
    return v3
.end method

.method public a(Landroid/support/v7/view/menu/p;)Z
    .locals 1
    .parameter

    .prologue
    .line 1988
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 2049
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/view/menu/f;Landroid/support/v7/view/menu/h;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2031
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/view/c;

    if-eqz v0, :cond_0

    .line 2032
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/c;

    invoke-interface {v0}, Landroid/support/v7/view/c;->b()V

    .line 2035
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2036
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2037
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iput-object v2, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    .line 2039
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->k()V

    .line 2040
    iput-object v2, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/view/menu/h;

    .line 2041
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2042
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/view/menu/h;->e(Z)V

    .line 2044
    const/4 v0, 0x1

    return v0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2054
    const/4 v0, 0x0

    return-object v0
.end method
