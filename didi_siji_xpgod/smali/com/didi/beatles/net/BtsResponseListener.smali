.class public abstract Lcom/didi/beatles/net/BtsResponseListener;
.super Ljava/lang/Object;
.source "BtsResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/didi/beatles/model/BtsBaseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, this:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<TT;>;"
    .local p1, t:Lcom/didi/beatles/model/BtsBaseObject;,"TT;"
    return-void
.end method

.method public onFail(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<TT;>;"
    .local p1, t:Lcom/didi/beatles/model/BtsBaseObject;,"TT;"
    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<TT;>;"
    .local p1, t:Lcom/didi/beatles/model/BtsBaseObject;,"TT;"
    return-void
.end method

.method public onPre()V
    .locals 0

    .prologue
    .line 15
    .local p0, this:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<TT;>;"
    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<TT;>;"
    .local p1, t:Lcom/didi/beatles/model/BtsBaseObject;,"TT;"
    return-void
.end method
