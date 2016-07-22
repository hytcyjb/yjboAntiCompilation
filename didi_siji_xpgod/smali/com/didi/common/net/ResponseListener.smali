.class public abstract Lcom/didi/common/net/ResponseListener;
.super Ljava/lang/Object;
.source "ResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/didi/common/model/BaseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, this:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<TT;>;"
    .local p1, t:Lcom/didi/common/model/BaseObject;,"TT;"
    return-void
.end method

.method public onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<TT;>;"
    .local p1, t:Lcom/didi/common/model/BaseObject;,"TT;"
    return-void
.end method

.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<TT;>;"
    .local p1, t:Lcom/didi/common/model/BaseObject;,"TT;"
    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, this:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<TT;>;"
    .local p1, t:Lcom/didi/common/model/BaseObject;,"TT;"
    return-void
.end method
