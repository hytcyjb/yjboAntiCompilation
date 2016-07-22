.class public Lcom/didi/ddrive/business/index/DDriveIndex;
.super Lcom/didi/frame/business/redirector/Index;
.source "DDriveIndex.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 22
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/business/redirector/Index;-><init>(Lcom/didi/frame/business/Business;[Ljava/lang/Class;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getConfirmFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const-class v0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    return-object v0
.end method

.method public getFragmentClass(Lcom/didi/frame/business/redirector/Index;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .parameter "currentIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/redirector/Index;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;)",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-virtual {p1}, Lcom/didi/frame/business/redirector/Index;->getConfirmFragmentClass()Ljava/lang/Class;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 68
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v1

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->NEW:Lcom/didi/ddrive/model/OrderState;

    if-ne v1, v2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/didi/ddrive/business/index/DDriveIndex;->getWaitForResponseFragmentClass()Ljava/lang/Class;

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/didi/ddrive/business/index/DDriveIndex;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->hasBeenSent(Lcom/didi/frame/business/Business;)Z

    move-result v0

    .line 72
    .local v0, hasBeenSent:Z
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/didi/ddrive/business/index/DDriveIndex;->getResendFragmentClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/didi/ddrive/business/index/DDriveIndex;->getConfirmFragmentClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 75
    .end local v0           #hasBeenSent:Z
    :cond_2
    invoke-virtual {p1}, Lcom/didi/frame/business/redirector/Index;->getWaitForResponseFragmentClass()Ljava/lang/Class;

    move-result-object v1

    if-eq p2, v1, :cond_3

    invoke-virtual {p1}, Lcom/didi/frame/business/redirector/Index;->getResendFragmentClass()Ljava/lang/Class;

    move-result-object v1

    if-ne p2, v1, :cond_4

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/didi/ddrive/business/index/DDriveIndex;->getConfirmFragmentClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_4
    const-class v1, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    goto :goto_0
.end method

.method public getResendFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const-class v0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;

    return-object v0
.end method

.method public getWaitForResponseFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const-class v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    return-object v0
.end method

.method protected refreshMap(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V
    .locals 0
    .parameter
    .parameter
    .parameter "targetIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;",
            "Lcom/didi/frame/business/redirector/Index;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, lastFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p2, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    return-void
.end method

.method public setCurrentFragmentClass(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, cfClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    iput-object p1, p0, Lcom/didi/ddrive/business/index/DDriveIndex;->currentFragmentClass:Ljava/lang/Class;

    .line 63
    return-void
.end method
