.class public Lcom/didi/frame/titlebar/TitleBarFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "TitleBarFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 21
    new-instance v0, Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {p0}, Lcom/didi/frame/titlebar/TitleBarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, v:Lcom/didi/frame/titlebar/TitleBar;
    invoke-static {v0}, Lcom/didi/frame/titlebar/TitleBarHelper;->setTitleBar(Lcom/didi/frame/titlebar/TitleBar;)V

    .line 23
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 29
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 30
    return-void
.end method
