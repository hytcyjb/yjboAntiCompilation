.class public abstract Lcom/zhihu/android/app/ui/fragment/preference/c;
.super Lcom/zhihu/android/app/ui/fragment/preference/b;
.source "BaseRefreshablePreferenceFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zhihu/android/app/ui/fragment/preference/b;",
        "Landroid/support/v4/widget/SwipeRefreshLayout$a;"
    }
.end annotation


# instance fields
.field protected c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Lcom/zhihu/android/api/util/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;-><init>()V

    .line 35
    new-instance v0, Lcom/zhihu/android/api/util/a;

    invoke-direct {v0}, Lcom/zhihu/android/api/util/a;-><init>()V

    iput-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->d:Lcom/zhihu/android/api/util/a;

    return-void
.end method


# virtual methods
.method protected a(Lcom/zhihu/android/bumblebee/http/e;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->d:Lcom/zhihu/android/api/util/a;

    invoke-virtual {v0, p1}, Lcom/zhihu/android/api/util/a;->a(Lcom/zhihu/android/bumblebee/http/e;)V

    .line 113
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/c;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/c;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 99
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const v1, 0x7f09027b

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const v1, 0x7f09027a

    new-instance v2, Lcom/zhihu/android/app/ui/fragment/preference/c$2;

    invoke-direct {v2, p0}, Lcom/zhihu/android/app/ui/fragment/preference/c$2;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->a(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 109
    :cond_0
    return-void
.end method

.method protected abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/c;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 68
    iput-object p1, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->c:Ljava/lang/Object;

    .line 69
    invoke-virtual {p0, p1}, Lcom/zhihu/android/app/ui/fragment/preference/c;->b(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 72
    :cond_0
    return-void
.end method

.method protected c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 119
    :cond_0
    return-void
.end method

.method protected l()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected o()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 55
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/zhihu/android/app/ui/fragment/preference/c$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/ui/fragment/preference/c$1;-><init>(Lcom/zhihu/android/app/ui/fragment/preference/c;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 62
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/c;->a()V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->onDetach()V

    .line 93
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->d:Lcom/zhihu/android/api/util/a;

    invoke-virtual {v0}, Lcom/zhihu/android/api/util/a;->b()V

    .line 94
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/zhihu/android/app/ui/fragment/preference/b;->onPause()V

    .line 85
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/zhihu/android/app/ui/fragment/preference/c;->a(Ljava/lang/Object;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/zhihu/android/app/ui/fragment/preference/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 43
    iget-object v0, p0, Lcom/zhihu/android/app/ui/fragment/preference/c;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$a;)V

    .line 44
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/c;->o()V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/android/app/ui/fragment/preference/c;->l()V

    .line 48
    return-void
.end method
