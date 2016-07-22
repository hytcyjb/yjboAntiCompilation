.class public Lcom/didi/ddrive/eventbus/event/StreamMessageEvent;
.super Ljava/lang/Object;
.source "StreamMessageEvent.java"


# instance fields
.field public message:Lcom/didi/ddrive/net/tcp/message/StreamMessage;


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/net/tcp/message/StreamMessage;)V
    .locals 0
    .parameter "streamMessage"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/didi/ddrive/eventbus/event/StreamMessageEvent;->message:Lcom/didi/ddrive/net/tcp/message/StreamMessage;

    .line 14
    return-void
.end method
