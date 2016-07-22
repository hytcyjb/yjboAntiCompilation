.class public Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;
.super Ljava/lang/Object;
.source "NetworkStateDispatcher.java"

# interfaces
.implements Lcom/didi/ddrive/net/tcp/network/NetworkObservable;


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/tcp/network/NetworkObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dispatchNetworkChanged(Z)V
    .locals 3
    .parameter "connected"

    .prologue
    .line 27
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/net/tcp/network/NetworkObserver;

    .line 28
    .local v1, observer:Lcom/didi/ddrive/net/tcp/network/NetworkObserver;
    invoke-interface {v1, p1}, Lcom/didi/ddrive/net/tcp/network/NetworkObserver;->onNetworkChanged(Z)V

    goto :goto_0

    .line 30
    .end local v1           #observer:Lcom/didi/ddrive/net/tcp/network/NetworkObserver;
    :cond_0
    return-void
.end method

.method public register(Lcom/didi/ddrive/net/tcp/network/NetworkObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    return-void
.end method

.method public unregister(Lcom/didi/ddrive/net/tcp/network/NetworkObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    return-void
.end method
