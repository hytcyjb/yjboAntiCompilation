.class public Lcom/didi/common/ui/fragment/VersionIntroFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "VersionIntroFragment.java"


# instance fields
.field private fromSplash:Z

.field private mEnterListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/didi/common/ui/fragment/VersionIntroFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/VersionIntroFragment$1;-><init>(Lcom/didi/common/ui/fragment/VersionIntroFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/VersionIntroFragment;->mEnterListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public isFromSplash()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/VersionIntroFragment;->fromSplash:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 32
    const v2, 0x7f03010d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, view:Landroid/view/View;
    const v2, 0x7f08060f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    .line 34
    .local v0, enter:Lx/Button;
    iget-object v2, p0, Lcom/didi/common/ui/fragment/VersionIntroFragment;->mEnterListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 27
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 28
    return-void
.end method

.method public setFromSplash(Z)V
    .locals 0
    .parameter "fromSplash"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/didi/common/ui/fragment/VersionIntroFragment;->fromSplash:Z

    .line 50
    return-void
.end method
