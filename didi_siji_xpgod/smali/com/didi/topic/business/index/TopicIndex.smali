.class public Lcom/didi/topic/business/index/TopicIndex;
.super Lcom/didi/frame/business/redirector/Index;
.source "TopicIndex.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 15
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/didi/frame/business/redirector/Index;-><init>(Lcom/didi/frame/business/Business;[Ljava/lang/Class;)V

    .line 17
    return-void
.end method


# virtual methods
.method public addFragmentClass(ILjava/lang/Class;)V
    .locals 0
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-virtual {p0, p1, p2}, Lcom/didi/topic/business/index/TopicIndex;->add(ILjava/lang/Class;)V

    .line 52
    return-void
.end method

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
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragmentClass(Lcom/didi/frame/business/redirector/Index;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
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
    .line 66
    .local p2, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    const-class v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    return-object v0
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
    .line 47
    const/4 v0, 0x0

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
    .line 42
    invoke-virtual {p0}, Lcom/didi/topic/business/index/TopicIndex;->getActivityIndexConfirmFragmentClass()Ljava/lang/Class;

    move-result-object v0

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
    .line 33
    .local p1, lastFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p2, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    return-void
.end method

.method public resetIndex()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/didi/topic/business/index/TopicIndex;->clearIndexMap()V

    .line 56
    const/4 v0, 0x0

    const-class v1, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-virtual {p0, v0, v1}, Lcom/didi/topic/business/index/TopicIndex;->add(ILjava/lang/Class;)V

    .line 57
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
    return-void
.end method
