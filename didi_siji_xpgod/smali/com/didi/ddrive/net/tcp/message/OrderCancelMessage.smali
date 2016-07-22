.class public Lcom/didi/ddrive/net/tcp/message/OrderCancelMessage;
.super Lcom/didi/ddrive/net/tcp/message/BaseMessage;
.source "OrderCancelMessage.java"


# instance fields
.field public cancelReason:Ljava/lang/String;

.field public did:J

.field public oid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/message/BaseMessage;-><init>()V

    return-void
.end method
