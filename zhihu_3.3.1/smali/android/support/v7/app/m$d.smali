.class final Landroid/support/v7/app/m$d;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/view/ViewGroup;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroid/support/v7/view/menu/f;

.field k:Landroid/support/v7/view/menu/e;

.field l:Landroid/content/Context;

.field m:Z

.field n:Z

.field o:Z

.field public p:Z

.field q:Z

.field r:Z

.field s:Landroid/os/Bundle;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 1878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1879
    iput p1, p0, Landroid/support/v7/app/m$d;->a:I

    .line 1881
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/m$d;->q:Z

    .line 1882
    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/view/menu/l$a;)Landroid/support/v7/view/menu/m;
    .locals 3
    .parameter

    .prologue
    .line 1946
    iget-object v0, p0, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1957
    :goto_0
    return-object v0

    .line 1948
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/m$d;->k:Landroid/support/v7/view/menu/e;

    if-nez v0, :cond_1

    .line 1949
    new-instance v0, Landroid/support/v7/view/menu/e;

    iget-object v1, p0, Landroid/support/v7/app/m$d;->l:Landroid/content/Context;

    sget v2, Landroid/support/v7/a/a$h;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/view/menu/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/app/m$d;->k:Landroid/support/v7/view/menu/e;

    .line 1951
    iget-object v0, p0, Landroid/support/v7/app/m$d;->k:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/e;->a(Landroid/support/v7/view/menu/l$a;)V

    .line 1952
    iget-object v0, p0, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/app/m$d;->k:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/l;)V

    .line 1955
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/m$d;->k:Landroid/support/v7/view/menu/e;

    iget-object v1, p0, Landroid/support/v7/app/m$d;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/e;->a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/m;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1902
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1903
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 1904
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1907
    sget v2, Landroid/support/v7/a/a$a;->actionBarPopupTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1908
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 1909
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1913
    :cond_0
    sget v2, Landroid/support/v7/a/a$a;->panelMenuListTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1914
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 1915
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1920
    :goto_0
    new-instance v0, Landroid/support/v7/view/d;

    invoke-direct {v0, p1, v4}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    .line 1921
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1923
    iput-object v0, p0, Landroid/support/v7/app/m$d;->l:Landroid/content/Context;

    .line 1925
    sget-object v1, Landroid/support/v7/a/a$k;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1926
    sget v1, Landroid/support/v7/a/a$k;->AppCompatTheme_panelBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/m$d;->b:I

    .line 1928
    sget v1, Landroid/support/v7/a/a$k;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/m$d;->f:I

    .line 1930
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1931
    return-void

    .line 1917
    :cond_1
    sget v0, Landroid/support/v7/a/a$j;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method a(Landroid/support/v7/view/menu/f;)V
    .locals 2
    .parameter

    .prologue
    .line 1934
    iget-object v0, p0, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    if-ne p1, v0, :cond_1

    .line 1943
    :cond_0
    :goto_0
    return-void

    .line 1936
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    if-eqz v0, :cond_2

    .line 1937
    iget-object v0, p0, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/app/m$d;->k:Landroid/support/v7/view/menu/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/f;->b(Landroid/support/v7/view/menu/l;)V

    .line 1939
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/m$d;->j:Landroid/support/v7/view/menu/f;

    .line 1940
    if-eqz p1, :cond_0

    .line 1941
    iget-object v0, p0, Landroid/support/v7/app/m$d;->k:Landroid/support/v7/view/menu/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/m$d;->k:Landroid/support/v7/view/menu/e;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/f;->a(Landroid/support/v7/view/menu/l;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1885
    iget-object v2, p0, Landroid/support/v7/app/m$d;->h:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 1888
    :cond_0
    :goto_0
    return v0

    .line 1886
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/m$d;->i:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1888
    iget-object v2, p0, Landroid/support/v7/app/m$d;->k:Landroid/support/v7/view/menu/e;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/e;->d()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
