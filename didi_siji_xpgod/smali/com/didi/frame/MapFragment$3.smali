.class Lcom/didi/frame/MapFragment$3;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "MapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MapFragment;->getBtsConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/BtsConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/MapFragment;


# direct methods
.method constructor <init>(Lcom/didi/frame/MapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/didi/frame/MapFragment$3;->this$0:Lcom/didi/frame/MapFragment;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 323
    check-cast p1, Lcom/didi/beatles/model/BtsConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/MapFragment$3;->onSuccess(Lcom/didi/beatles/model/BtsConfig;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/beatles/model/BtsConfig;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 326
    invoke-super {p0, p1}, Lcom/didi/beatles/net/BtsResponseListener;->onSuccess(Lcom/didi/beatles/model/BtsBaseObject;)V

    .line 327
    if-nez p1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-static {}, Lcom/didi/beatles/listener/BtsListenerHub;->notifyConfig()V

    goto :goto_0
.end method
