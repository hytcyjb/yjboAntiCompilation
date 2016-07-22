.class public Lcom/didi/ddrive/eventbus/event/ShareContentEvent;
.super Ljava/lang/Object;
.source "ShareContentEvent.java"


# instance fields
.field public shareContent:Lcom/didi/ddrive/net/http/response/ShareContent;


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/net/http/response/ShareContent;)V
    .locals 0
    .parameter "shareContent"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/didi/ddrive/eventbus/event/ShareContentEvent;->shareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    .line 9
    return-void
.end method
