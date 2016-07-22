.class public abstract Lcom/didi/game/download/RequestCallBack;
.super Lnet/tsz/afinal/http/AjaxCallBack;
.source "RequestCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/tsz/afinal/http/AjaxCallBack",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field private userTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 9
    .local p0, this:Lcom/didi/game/download/RequestCallBack;,"Lcom/didi/game/download/RequestCallBack<TT;>;"
    invoke-direct {p0}, Lnet/tsz/afinal/http/AjaxCallBack;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/didi/game/download/RequestCallBack;->key:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getUserTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    .local p0, this:Lcom/didi/game/download/RequestCallBack;,"Lcom/didi/game/download/RequestCallBack<TT;>;"
    iget-object v0, p0, Lcom/didi/game/download/RequestCallBack;->userTag:Ljava/lang/Object;

    return-object v0
.end method

.method public setUserTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "userTag"

    .prologue
    .line 19
    .local p0, this:Lcom/didi/game/download/RequestCallBack;,"Lcom/didi/game/download/RequestCallBack<TT;>;"
    iput-object p1, p0, Lcom/didi/game/download/RequestCallBack;->userTag:Ljava/lang/Object;

    .line 20
    return-void
.end method
