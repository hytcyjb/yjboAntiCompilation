.class public Lcom/didi/frame/switcher/SwitcherFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "SwitcherFragment.java"


# instance fields
.field private mSwitcherView:Lcom/didi/frame/switcher/SwitcherView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    return-void
.end method

.method private initAllBusiness()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->init()Lcom/didi/frame/business/redirector/RedirectEngine;

    move-result-object v0

    .line 37
    .local v0, redirectEngine:Lcom/didi/frame/business/redirector/RedirectEngine;
    iget-object v1, p0, Lcom/didi/frame/switcher/SwitcherFragment;->mSwitcherView:Lcom/didi/frame/switcher/SwitcherView;

    invoke-virtual {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->getAllBusiness()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/switcher/SwitcherView;->addBusiness(Ljava/util/List;)V

    .line 38
    iget-object v1, p0, Lcom/didi/frame/switcher/SwitcherFragment;->mSwitcherView:Lcom/didi/frame/switcher/SwitcherView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/frame/switcher/SwitcherView;->setContentHeight(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 22
    new-instance v0, Lcom/didi/frame/switcher/SwitcherView;

    invoke-virtual {p0}, Lcom/didi/frame/switcher/SwitcherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/frame/switcher/SwitcherView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/switcher/SwitcherFragment;->mSwitcherView:Lcom/didi/frame/switcher/SwitcherView;

    .line 24
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherFragment;->mSwitcherView:Lcom/didi/frame/switcher/SwitcherView;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 30
    iget-object v0, p0, Lcom/didi/frame/switcher/SwitcherFragment;->mSwitcherView:Lcom/didi/frame/switcher/SwitcherView;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 32
    invoke-direct {p0}, Lcom/didi/frame/switcher/SwitcherFragment;->initAllBusiness()V

    .line 33
    return-void
.end method
