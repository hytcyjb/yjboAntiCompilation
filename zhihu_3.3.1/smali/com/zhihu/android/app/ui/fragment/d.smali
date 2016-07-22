.class public abstract Lcom/zhihu/android/app/ui/fragment/d;
.super Lcom/trello/rxlifecycle/a/a/a;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/android/app/ui/fragment/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/trello/rxlifecycle/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 72
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/activity/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    return-void
.end method

.method public a(Lcom/zhihu/android/app/ui/fragment/d$a;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    if-eqz v1, :cond_0

    .line 140
    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-interface {p1, v0}, Lcom/zhihu/android/app/ui/fragment/d$a;->a(Lcom/zhihu/android/app/ui/activity/a;)V

    .line 142
    :cond_0
    return-void
.end method

.method public a(Lcom/zhihu/android/app/util/bb;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhihu/android/app/ui/activity/a;->a(Lcom/zhihu/android/app/util/bb;)V

    .line 89
    return-void
.end method

.method public a(Lcom/zhihu/android/app/util/bb;Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->p()Lcom/zhihu/android/app/ui/activity/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhihu/android/app/ui/activity/a;->a(Lcom/zhihu/android/app/util/bb;Landroid/support/v4/app/Fragment;I)V

    .line 93
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 132
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/trello/rxlifecycle/a/a/a;->onDestroy()V

    .line 112
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/zhihu/android/base/util/SystemUtils;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0}, Lcom/zhihu/android/app/ZhihuApplication;->a(Landroid/content/Context;)Lcom/squareup/a/b;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/trello/rxlifecycle/a/a/a;->onDestroyView()V

    .line 61
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/trello/rxlifecycle/a/a/a;->onHiddenChanged(Z)V

    .line 53
    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->c()V

    .line 56
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/trello/rxlifecycle/a/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->c()V

    .line 48
    return-void
.end method

.method public p()Lcom/zhihu/android/app/ui/activity/a;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/ui/activity/a;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/a;

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be added to BaseActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected q()Landroid/view/animation/Animation;
    .locals 12

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v5, 0x1

    const/high16 v1, 0x3f90

    const/high16 v6, 0x3f00

    const/high16 v2, 0x3f80

    .line 97
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 98
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 99
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x4020

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 100
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 101
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 102
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 103
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc0

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 104
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 105
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 106
    return-object v9
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0, p0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->b(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/d;->getActivity()Landroid/support/v4/app/l;

    move-result-object v0

    check-cast v0, Lcom/zhihu/android/app/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/zhihu/android/app/ui/activity/MainActivity;->w()V

    .line 156
    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/zhihu/android/app/ui/fragment/d$1;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/ui/fragment/d$1;-><init>(Lcom/zhihu/android/app/ui/fragment/d;)V

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/d;->a(Lcom/zhihu/android/app/ui/fragment/d$a;)V

    .line 166
    return-void
.end method
