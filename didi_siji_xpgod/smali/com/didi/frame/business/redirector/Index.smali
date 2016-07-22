.class public abstract Lcom/didi/frame/business/redirector/Index;
.super Ljava/lang/Object;
.source "Index.java"


# instance fields
.field private business:Lcom/didi/frame/business/Business;

.field protected currentFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;"
        }
    .end annotation
.end field

.field private indexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private reverseIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/business/redirector/Index;->indexMap:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/business/redirector/Index;->reverseIndexMap:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method public varargs constructor <init>(Lcom/didi/frame/business/Business;[Ljava/lang/Class;)V
    .locals 2
    .parameter "business"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/Business;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, fragmentClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/didi/frame/business/redirector/Index;->indexMap:Ljava/util/HashMap;

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/didi/frame/business/redirector/Index;->reverseIndexMap:Ljava/util/HashMap;

    .line 44
    iput-object p1, p0, Lcom/didi/frame/business/redirector/Index;->business:Lcom/didi/frame/business/Business;

    .line 45
    invoke-static {p2}, Lcom/didi/common/util/CollectionUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    return-void

    .line 47
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 48
    aget-object v1, p2, v0

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/business/redirector/Index;->add(ILjava/lang/Class;)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private beforeChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V
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
    .line 297
    .local p1, lastFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p2, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-static {p1, p2, p0, p3}, Lcom/didi/frame/business/redirector/RedirectEngine;->notifyRedirecting(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V

    .line 298
    return-void
.end method

.method private getBookingFragmentClass()Ljava/lang/Class;
    .locals 4
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
    const/4 v3, 0x1

    .line 139
    iget-object v1, p0, Lcom/didi/frame/business/redirector/Index;->indexMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 140
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 141
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 143
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentFragmentClass()Ljava/lang/Class;
    .locals 2
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
    .line 152
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    .line 153
    .local v0, fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    if-nez v0, :cond_0

    .line 154
    const/4 v1, 0x0

    .line 155
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private getCurrentFragmentPosition()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getCurrentFragmentClass()Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v2

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/didi/frame/business/redirector/Index;->reverseIndexMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 98
    .local v1, index:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method private getHomeFragmentClass()Ljava/lang/Class;
    .locals 4
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
    const/4 v3, 0x0

    .line 116
    iget-object v1, p0, Lcom/didi/frame/business/redirector/Index;->indexMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 117
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 118
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 120
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNext(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .local p1, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    const/4 v4, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/didi/frame/business/redirector/Index;->getResendFragmentClass()Ljava/lang/Class;

    move-result-object v5

    if-ne p1, v5, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/didi/frame/business/redirector/Index;->getWaitForResponseFragmentClass()Ljava/lang/Class;

    move-result-object v4

    .line 492
    :cond_0
    :goto_0
    return-object v4

    .line 479
    :cond_1
    iget-object v5, p0, Lcom/didi/frame/business/redirector/Index;->reverseIndexMap:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    .line 482
    iget-object v5, p0, Lcom/didi/frame/business/redirector/Index;->reverseIndexMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 483
    .local v1, integer:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 485
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 486
    .local v0, index:I
    const/4 v2, 0x1

    .line 487
    .local v2, interval:I
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getBookingFragmentClass()Ljava/lang/Class;

    move-result-object v5

    if-ne p1, v5, :cond_2

    .line 488
    const/4 v2, 0x2

    .line 489
    :cond_2
    iget-object v5, p0, Lcom/didi/frame/business/redirector/Index;->indexMap:Ljava/util/HashMap;

    add-int v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 490
    .local v3, nextClassList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    invoke-static {v3}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 492
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    goto :goto_0
.end method

.method private getPrev(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .local p1, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    const/4 v5, 0x0

    .line 460
    iget-object v6, p0, Lcom/didi/frame/business/redirector/Index;->reverseIndexMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 461
    .local v2, integer:Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-object v5

    .line 463
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 464
    .local v1, index:I
    iget-object v6, p0, Lcom/didi/frame/business/redirector/Index;->indexMap:Ljava/util/HashMap;

    add-int/lit8 v7, v1, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 465
    .local v4, prevClassList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    invoke-static {v4}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 466
    iget-object v6, p0, Lcom/didi/frame/business/redirector/Index;->indexMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 467
    .local v0, classList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 468
    .local v3, position:I
    if-eqz v3, :cond_0

    .line 470
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    goto :goto_0

    .line 472
    .end local v0           #classList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    .end local v3           #position:I
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    goto :goto_0
.end method

.method private getTargetByOrderState(Lcom/didi/frame/business/redirector/Index;)Ljava/lang/Class;
    .locals 3
    .parameter "targetIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/redirector/Index;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/didi/frame/business/redirector/Index;->getWaitForResponseFragmentClass()Ljava/lang/Class;

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/didi/frame/business/redirector/Index;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->hasBeenSent(Lcom/didi/frame/business/Business;)Z

    move-result v0

    .line 82
    .local v0, hasBeenSent:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasBeenSent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 83
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/didi/frame/business/redirector/Index;->getResendFragmentClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/didi/frame/business/redirector/Index;->getConfirmFragmentClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private getTargetFragmentClassAt(I)Ljava/lang/Class;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lcom/didi/frame/business/redirector/Index;->indexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 105
    .local v0, targetClassList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    invoke-static {v0}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 107
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    goto :goto_0
.end method

.method private isLeftOf(Lcom/didi/frame/business/redirector/Index;)Z
    .locals 2
    .parameter "targetIndex"

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/didi/frame/business/redirector/Index;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/frame/business/redirector/Index;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/business/Business;->isMinorOf(Lcom/didi/frame/business/Business;)Z

    move-result v0

    return v0
.end method

.method private leftIn(Ljava/lang/Class;)V
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
    .line 164
    .local p1, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-static {p1}, Lcom/didi/frame/FragmentMgr;->leftIn(Ljava/lang/Class;)V

    .line 165
    return-void
.end method

.method private onChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V
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
    .line 309
    .local p1, lastFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p2, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    if-ne p3, p0, :cond_0

    .line 310
    iput-object p2, p0, Lcom/didi/frame/business/redirector/Index;->currentFragmentClass:Ljava/lang/Class;

    .line 313
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/frame/business/redirector/Index;->refreshBack(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 315
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/frame/business/redirector/Index;->refreshControlPanel(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 317
    invoke-virtual {p0, p1, p2, p3}, Lcom/didi/frame/business/redirector/Index;->refreshMap(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 319
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/business/redirector/Index;->refreshData(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 321
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/business/redirector/Index;->refreshConfirmButton(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 323
    return-void
.end method

.method private refreshConfirmButton(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V
    .locals 1
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
    .line 327
    .local p1, lastFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p2, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-virtual {p0}, Lcom/didi/frame/business/redirector/Index;->getWaitForResponseFragmentClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p3}, Lcom/didi/frame/business/redirector/Index;->getConfirmFragmentClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 328
    :cond_0
    const v0, 0x7f0b0284

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->setConfirmText(I)V

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 329
    :cond_2
    invoke-virtual {p3}, Lcom/didi/frame/business/redirector/Index;->getWaitForResponseFragmentClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    const v0, 0x7f0b0579

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->setConfirmText(I)V

    goto :goto_0
.end method

.method private refreshData(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V
    .locals 1
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
    .line 336
    .local p1, lastFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p2, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-direct {p3}, Lcom/didi/frame/business/redirector/Index;->getHomeFragmentClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 337
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 338
    :cond_0
    const-class v0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

    if-ne p1, v0, :cond_1

    .line 339
    const-class v0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    if-ne p2, v0, :cond_2

    .line 340
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->getTargetIndex(Lcom/didi/frame/business/Business;)Lcom/didi/frame/business/redirector/Index;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/didi/frame/business/redirector/Index;->setCurrentFragmentClass(Ljava/lang/Class;)V

    .line 345
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    const-class v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    if-ne p2, v0, :cond_1

    .line 342
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->getTargetIndex(Lcom/didi/frame/business/Business;)Lcom/didi/frame/business/redirector/Index;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/didi/frame/business/redirector/Index;->setCurrentFragmentClass(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private rightIn(Ljava/lang/Class;)V
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
    .line 173
    .local p1, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-static {p1}, Lcom/didi/frame/FragmentMgr;->rightIn(Ljava/lang/Class;)V

    .line 174
    return-void
.end method


# virtual methods
.method protected add(ILjava/lang/Class;)V
    .locals 3
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
    .line 450
    .local p2, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    iget-object v1, p0, Lcom/didi/frame/business/redirector/Index;->indexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 451
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    if-nez v0, :cond_0

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .restart local v0       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    iget-object v1, p0, Lcom/didi/frame/business/redirector/Index;->indexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v1, p0, Lcom/didi/frame/business/redirector/Index;->reverseIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    return-void
.end method

.method public booking()V
    .locals 2

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getCurrentFragmentClass()Ljava/lang/Class;

    move-result-object v0

    .line 268
    .local v0, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getBookingFragmentClass()Ljava/lang/Class;

    move-result-object v1

    .line 269
    .local v1, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-direct {p0, v0, v1, p0}, Lcom/didi/frame/business/redirector/Index;->beforeChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 273
    invoke-direct {p0, v1}, Lcom/didi/frame/business/redirector/Index;->leftIn(Ljava/lang/Class;)V

    .line 274
    invoke-direct {p0, v0, v1, p0}, Lcom/didi/frame/business/redirector/Index;->onChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    goto :goto_0
.end method

.method public clearIndexMap()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/didi/frame/business/redirector/Index;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 504
    iget-object v0, p0, Lcom/didi/frame/business/redirector/Index;->reverseIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 505
    return-void
.end method

.method public confirm()V
    .locals 2

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getCurrentFragmentClass()Ljava/lang/Class;

    move-result-object v0

    .line 279
    .local v0, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-virtual {p0}, Lcom/didi/frame/business/redirector/Index;->getConfirmFragmentClass()Ljava/lang/Class;

    move-result-object v1

    .line 280
    .local v1, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-direct {p0, v0, v1, p0}, Lcom/didi/frame/business/redirector/Index;->beforeChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 284
    invoke-direct {p0, v1}, Lcom/didi/frame/business/redirector/Index;->leftIn(Ljava/lang/Class;)V

    .line 285
    invoke-direct {p0, v0, v1, p0}, Lcom/didi/frame/business/redirector/Index;->onChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    goto :goto_0
.end method

.method protected getActivityIndexConfirmFragmentClass()Ljava/lang/Class;
    .locals 3
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
    .line 124
    iget-object v1, p0, Lcom/didi/frame/business/redirector/Index;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/didi/frame/business/redirector/Index;->indexMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 126
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 130
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBusiness()Lcom/didi/frame/business/Business;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/frame/business/redirector/Index;->business:Lcom/didi/frame/business/Business;

    return-object v0
.end method

.method public abstract getConfirmFragmentClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFragmentClass(Lcom/didi/frame/business/redirector/Index;Ljava/lang/Class;)Ljava/lang/Class;
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
.end method

.method public abstract getResendFragmentClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;"
        }
    .end annotation
.end method

.method protected getSwitchTarget(Lcom/didi/frame/business/redirector/Index;)Ljava/lang/Class;
    .locals 4
    .parameter "targetIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/redirector/Index;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getCurrentFragmentClass()Ljava/lang/Class;

    move-result-object v0

    .line 65
    .local v0, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    const/4 v2, 0x0

    .line 67
    .local v2, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-virtual {p0}, Lcom/didi/frame/business/redirector/Index;->getConfirmFragmentClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/didi/frame/business/redirector/Index;->getTargetByOrderState(Lcom/didi/frame/business/redirector/Index;)Ljava/lang/Class;

    move-result-object v2

    :goto_0
    move-object v3, v2

    .line 75
    :goto_1
    return-object v3

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/didi/frame/business/redirector/Index;->getWaitForResponseFragmentClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/didi/frame/business/redirector/Index;->getResendFragmentClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_2

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/didi/frame/business/redirector/Index;->getConfirmFragmentClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    .line 72
    :cond_2
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getCurrentFragmentPosition()I

    move-result v1

    .line 73
    .local v1, position:I
    invoke-direct {p1, v1}, Lcom/didi/frame/business/redirector/Index;->getTargetFragmentClassAt(I)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0
.end method

.method public abstract getWaitForResponseFragmentClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;"
        }
    .end annotation
.end method

.method public home()V
    .locals 2

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getCurrentFragmentClass()Ljava/lang/Class;

    move-result-object v0

    .line 243
    .local v0, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getHomeFragmentClass()Ljava/lang/Class;

    move-result-object v1

    .line 244
    .local v1, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-direct {p0, v0, v1, p0}, Lcom/didi/frame/business/redirector/Index;->beforeChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 248
    invoke-direct {p0, v1}, Lcom/didi/frame/business/redirector/Index;->leftIn(Ljava/lang/Class;)V

    .line 249
    invoke-direct {p0, v0, v1, p0}, Lcom/didi/frame/business/redirector/Index;->onChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    goto :goto_0
.end method

.method public homeInSelf()V
    .locals 2

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getHomeFragmentClass()Ljava/lang/Class;

    move-result-object v0

    .line 254
    .local v0, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getHomeFragmentClass()Ljava/lang/Class;

    move-result-object v1

    .line 255
    .local v1, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-direct {p0, v0, v1, p0}, Lcom/didi/frame/business/redirector/Index;->beforeChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 259
    invoke-direct {p0, v1}, Lcom/didi/frame/business/redirector/Index;->leftIn(Ljava/lang/Class;)V

    .line 260
    invoke-direct {p0, v0, v1, p0}, Lcom/didi/frame/business/redirector/Index;->onChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    goto :goto_0
.end method

.method public isHomeShown()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 496
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    .line 497
    .local v0, f:Lcom/didi/common/ui/fragment/SlideFragment;
    if-nez v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getHomeFragmentClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getCurrentFragmentClass()Ljava/lang/Class;

    move-result-object v0

    .line 222
    .local v0, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-direct {p0, v0}, Lcom/didi/frame/business/redirector/Index;->getNext(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 223
    .local v1, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-direct {p0, v0, v1, p0}, Lcom/didi/frame/business/redirector/Index;->beforeChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 224
    invoke-direct {p0, v1}, Lcom/didi/frame/business/redirector/Index;->rightIn(Ljava/lang/Class;)V

    .line 225
    invoke-direct {p0, v0, v1, p0}, Lcom/didi/frame/business/redirector/Index;->onChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 226
    return-void
.end method

.method public nextInner()V
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lcom/didi/frame/business/redirector/Index;->currentFragmentClass:Ljava/lang/Class;

    invoke-direct {p0, v1}, Lcom/didi/frame/business/redirector/Index;->getNext(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 233
    .local v0, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    iget-object v1, p0, Lcom/didi/frame/business/redirector/Index;->currentFragmentClass:Ljava/lang/Class;

    invoke-direct {p0, v1, v0, p0}, Lcom/didi/frame/business/redirector/Index;->beforeChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 234
    invoke-direct {p0, v0}, Lcom/didi/frame/business/redirector/Index;->rightIn(Ljava/lang/Class;)V

    .line 235
    iget-object v1, p0, Lcom/didi/frame/business/redirector/Index;->currentFragmentClass:Ljava/lang/Class;

    invoke-direct {p0, v1, v0, p0}, Lcom/didi/frame/business/redirector/Index;->onChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 236
    return-void
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getCurrentFragmentClass()Ljava/lang/Class;

    move-result-object v0

    .line 211
    .local v0, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-direct {p0, v0}, Lcom/didi/frame/business/redirector/Index;->getPrev(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 212
    .local v1, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-direct {p0, v0, v1, p0}, Lcom/didi/frame/business/redirector/Index;->beforeChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 213
    invoke-direct {p0, v1}, Lcom/didi/frame/business/redirector/Index;->leftIn(Ljava/lang/Class;)V

    .line 214
    invoke-direct {p0, v0, v1, p0}, Lcom/didi/frame/business/redirector/Index;->onChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 215
    return-void
.end method

.method protected refreshBack(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V
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
    .line 433
    .local p1, lastFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p2, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    return-void
.end method

.method protected refreshControlPanel(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V
    .locals 2
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
    .line 359
    .local p1, lastFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p2, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getBookingFragmentClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 360
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->setDefaultPanel()V

    .line 362
    :cond_0
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->reset()V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IndexHomelass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IndexHomelass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p3}, Lcom/didi/frame/business/redirector/Index;->getHomeFragmentClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IndexHomelass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/didi/frame/business/redirector/Index;->getWaitForResponseFragmentClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 366
    invoke-direct {p3}, Lcom/didi/frame/business/redirector/Index;->getHomeFragmentClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v0, :cond_6

    .line 367
    invoke-static {}, Lcom/didi/ddrive/helper/DriveAbilityHelper;->isDriveSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 368
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;)V

    .line 372
    :goto_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getOpenActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    sget-object v0, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;)V

    .line 375
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isTopicOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 376
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;)V

    .line 386
    :goto_1
    invoke-direct {p3}, Lcom/didi/frame/business/redirector/Index;->getHomeFragmentClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v0, :cond_7

    .line 387
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isOpenBeatles()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    sget-object v0, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/didi/frame/switcher/SwitcherHelper;->showBusiness(Lcom/didi/frame/business/Business;I)V

    .line 393
    :cond_2
    :goto_2
    invoke-direct {p3}, Lcom/didi/frame/business/redirector/Index;->getHomeFragmentClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v0, :cond_8

    .line 394
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hideDefaultContent()V

    .line 419
    :cond_3
    :goto_3
    return-void

    .line 370
    :cond_4
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 378
    :cond_5
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_1

    .line 381
    :cond_6
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 382
    sget-object v0, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 383
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_1

    .line 391
    :cond_7
    sget-object v0, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    goto :goto_2

    .line 397
    :cond_8
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showDefaultContent()V

    .line 398
    invoke-virtual {p3}, Lcom/didi/frame/business/redirector/Index;->getWaitForResponseFragmentClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v0, :cond_c

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isModified()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/didi/frame/business/redirector/Index;->getResendFragmentClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_c

    .line 400
    :cond_9
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDown()V

    .line 401
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    if-eq v0, v1, :cond_a

    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 403
    :cond_a
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarPriceLayout()V

    .line 414
    :cond_b
    :goto_4
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 415
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hide()V

    .line 416
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    goto :goto_3

    .line 405
    :cond_c
    invoke-virtual {p3}, Lcom/didi/frame/business/redirector/Index;->getConfirmFragmentClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p2, v0, :cond_d

    invoke-virtual {p3}, Lcom/didi/frame/business/redirector/Index;->getResendFragmentClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v0, :cond_b

    .line 407
    :cond_d
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmUpDelayed()V

    .line 408
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 409
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarModelLayout()V

    goto :goto_4

    .line 410
    :cond_e
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 411
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarPriceLayout()V

    goto :goto_4
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
    .line 447
    .local p1, lastragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    .local p2, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    return-void
.end method

.method public abstract setCurrentFragmentClass(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;)V"
        }
    .end annotation
.end method

.method public switchTo(Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V
    .locals 5
    .parameter "current"
    .parameter "target"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/didi/frame/business/redirector/Index;->getCurrentFragmentClass()Ljava/lang/Class;

    move-result-object v0

    .line 193
    .local v0, currentFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-virtual {p2, p1, v0}, Lcom/didi/frame/business/redirector/Index;->getFragmentClass(Lcom/didi/frame/business/redirector/Index;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 194
    .local v1, targetFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "targetFragmentClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentFragmentClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-ne v1, v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-direct {p0, v0, v1, p2}, Lcom/didi/frame/business/redirector/Index;->beforeChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    .line 199
    invoke-direct {p2, p0}, Lcom/didi/frame/business/redirector/Index;->isLeftOf(Lcom/didi/frame/business/redirector/Index;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    invoke-direct {p0, v1}, Lcom/didi/frame/business/redirector/Index;->leftIn(Ljava/lang/Class;)V

    .line 203
    :goto_1
    invoke-direct {p0, v0, v1, p2}, Lcom/didi/frame/business/redirector/Index;->onChange(Ljava/lang/Class;Ljava/lang/Class;Lcom/didi/frame/business/redirector/Index;)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-direct {p0, v1}, Lcom/didi/frame/business/redirector/Index;->rightIn(Ljava/lang/Class;)V

    goto :goto_1
.end method
