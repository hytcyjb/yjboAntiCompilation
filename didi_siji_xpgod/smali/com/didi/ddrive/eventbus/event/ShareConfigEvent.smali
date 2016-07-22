.class public Lcom/didi/ddrive/eventbus/event/ShareConfigEvent;
.super Ljava/lang/Object;
.source "ShareConfigEvent.java"


# instance fields
.field public shareConfig:Lcom/didi/ddrive/net/http/response/ShareConfig;


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/net/http/response/ShareConfig;)V
    .locals 0
    .parameter "shareConfig"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/didi/ddrive/eventbus/event/ShareConfigEvent;->shareConfig:Lcom/didi/ddrive/net/http/response/ShareConfig;

    .line 10
    return-void
.end method
