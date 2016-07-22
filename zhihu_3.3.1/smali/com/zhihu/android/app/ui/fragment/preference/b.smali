.class public abstract Lcom/zhihu/android/app/ui/fragment/preference/b;
.super Landroid/support/v7/preference/d;
.source "BasePreferenceFragment.java"


# instance fields
.field protected a:Landroid/support/v4/widget/SwipeRefreshLayout;

.field protected b:Lcom/zhihu/android/app/ui/widget/SystemBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v7/preference/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    const v0, 0x7f0400af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 139
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->f()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 140
    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->m()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->k()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->b(I)V

    .line 116
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->j()V

    .line 117
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Lcom/zhihu/android/app/ui/fragment/d$a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    if-eqz v1, :cond_0

    .line 149
    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-interface {p2, v0}, Lcom/zhihu/android/app/ui/fragment/d$a;->a(Lcom/zhihu/android/app/ui/activity/a;)V

    .line 151
    :cond_0
    return-void
.end method

.method public a(Lcom/zhihu/android/app/util/bb;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ui/activity/a;->a(Landroid/content/Context;)Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/activity/a;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 125
    return-void
.end method

.method protected a(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected c(I)Landroid/support/v7/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f09005d

    return v0
.end method

.method protected abstract j()V
.end method

.method protected abstract k()I
.end method

.method public m()Lcom/zhihu/android/app/ui/activity/a;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/ui/activity/a;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/a;

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be added to BaseActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/preference/b$2;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/preference/b$2;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/b;)V

    invoke-virtual {p0, p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->a(Landroid/support/v4/app/Fragment;Lcom/zhihu/android/app/ui/fragment/d$a;)V

    .line 161
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/support/v7/preference/d;->onDestroy()V

    .line 130
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/zhihu/android/base/util/SystemUtils;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ZhihuApplication;->a(Landroid/content/Context;)Lcom/squareup/a/b;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f10001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/b;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 76
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/b;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/b;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 80
    :cond_0
    const v0, 0x7f100020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/widget/SystemBar;

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/b;->b:Lcom/zhihu/android/app/ui/widget/SystemBar;

    .line 81
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/b;->b:Lcom/zhihu/android/app/ui/widget/SystemBar;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/b;->b:Lcom/zhihu/android/app/ui/widget/SystemBar;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/widget/SystemBar;->getToolbar()Lcom/zhihu/android/base/widget/ZHToolBar;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 84
    const v1, 0x7f020147

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 85
    new-instance v1, Lcom/zhihu/android/app/ui/fragment/preference/b$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/preference/b$1;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/b;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-void
.end method
