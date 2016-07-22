.class public abstract Lcom/didi/common/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 49
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 54
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 59
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/didi/common/base/BaseFragment;->resizeView(Landroid/view/View;)V

    .line 24
    invoke-static {p0, p1}, Lnet/tsz/afinal/FinalActivity;->initInjectedView(Ljava/lang/Object;Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public resizeView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 33
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 34
    return-void
.end method
