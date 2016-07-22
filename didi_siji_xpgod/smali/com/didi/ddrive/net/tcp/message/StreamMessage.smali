.class public Lcom/didi/ddrive/net/tcp/message/StreamMessage;
.super Lcom/didi/ddrive/net/tcp/message/BaseMessage;
.source "StreamMessage.java"


# instance fields
.field public btntxt:Ljava/lang/String;

.field public imgurl:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/message/BaseMessage;-><init>()V

    return-void
.end method
