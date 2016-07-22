.class public Lcom/didi/beatles/ui/activity/base/BtsWeakContainer;
.super Ljava/lang/Object;
.source "BtsWeakContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    .local p0, this:Lcom/didi/beatles/ui/activity/base/BtsWeakContainer;,"Lcom/didi/beatles/ui/activity/base/BtsWeakContainer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/base/BtsWeakContainer;->mDatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, this:Lcom/didi/beatles/ui/activity/base/BtsWeakContainer;,"Lcom/didi/beatles/ui/activity/base/BtsWeakContainer<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .local v0, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/base/BtsWeakContainer;->mDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, this:Lcom/didi/beatles/ui/activity/base/BtsWeakContainer;,"Lcom/didi/beatles/ui/activity/base/BtsWeakContainer<TT;>;"
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/base/BtsWeakContainer;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 18
    .local v0, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    if-nez v0, :cond_0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
