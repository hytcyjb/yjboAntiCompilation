.class public abstract Lcom/zhihu/android/app/ui/fragment/e;
.super Lcom/zhihu/android/app/ui/fragment/o;
.source "BaseTabsFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field protected a:Lcom/zhihu/android/a/as;

.field protected b:Landroid/support/design/widget/TabLayout;

.field protected c:Lcom/zhihu/android/app/ui/widget/adapter/ab;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const v0, 0x7f04006d

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/e;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/m;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/a/as;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->a:Lcom/zhihu/android/a/as;

    .line 60
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->a:Lcom/zhihu/android/a/as;

    invoke-virtual {v0}, Lcom/zhihu/android/a/as;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zhihu/android/app/ui/widget/adapter/ab$b;",
            ">;"
        }
    .end annotation
.end method

.method public a(J)V
    .locals 7
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->d:I

    int-to-long v0, v0

    neg-long v2, p1

    iget v4, p0, Lcom/zhihu/android/app/ui/fragment/e;->d:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    .line 106
    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/e;->b:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TabLayout;->setTranslationY(F)V

    .line 108
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->b:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->b:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/o;->a(Lcom/zhihu/android/app/ui/widget/SystemBar;Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/zhihu/android/app/ui/fragment/e;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040105

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->b:Landroid/support/design/widget/TabLayout;

    .line 69
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->b:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1, v0}, Lcom/zhihu/android/app/ui/widget/SystemBar;->a(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->d:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/zhihu/android/app/ui/fragment/o;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/e;->d(Z)V

    .line 53
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->b:Landroid/support/design/widget/TabLayout;

    if-ne p1, v0, :cond_0

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->d:I

    .line 120
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zhihu/android/app/ui/fragment/e;->a(J)V

    .line 122
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/o;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    new-instance v0, Lcom/zhihu/android/app/ui/widget/adapter/ab;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/widget/adapter/ab;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->c:Lcom/zhihu/android/app/ui/widget/adapter/ab;

    .line 78
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/e;->a()Ljava/util/List;

    move-result-object v2

    .line 80
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->c:Lcom/zhihu/android/app/ui/widget/adapter/ab;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/zhihu/android/app/ui/widget/adapter/ab;->a(Ljava/util/List;Z)V

    .line 82
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->a:Lcom/zhihu/android/a/as;

    iget-object v0, v0, Lcom/zhihu/android/a/as;->d:Lcom/zhihu/android/base/widget/ZHViewPager;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/e;->c:Lcom/zhihu/android/app/ui/widget/adapter/ab;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHViewPager;->setAdapter(Landroid/support/v4/view/ac;)V

    .line 84
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->b:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/zhihu/android/app/ui/fragment/e;->a:Lcom/zhihu/android/a/as;

    iget-object v1, v1, Lcom/zhihu/android/a/as;->d:Lcom/zhihu/android/base/widget/ZHViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 85
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->b:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 87
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 88
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;->d()I

    move-result v3

    .line 89
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/adapter/ab$b;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    if-eqz v3, :cond_1

    .line 91
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->b:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$d;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$d;->c(I)Landroid/support/design/widget/TabLayout$d;

    .line 87
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
    :cond_1
    if-eqz v0, :cond_0

    .line 93
    iget-object v3, p0, Lcom/zhihu/android/app/ui/fragment/e;->b:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3, v1}, Landroid/support/design/widget/TabLayout;->a(I)Landroid/support/design/widget/TabLayout$d;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/design/widget/TabLayout$d;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$d;

    goto :goto_1

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/e;->b:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTranslationY(F)V

    .line 98
    return-void
.end method
