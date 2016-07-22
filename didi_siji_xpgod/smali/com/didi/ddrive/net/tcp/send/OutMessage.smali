.class public Lcom/didi/ddrive/net/tcp/send/OutMessage;
.super Lcom/didi/ddrive/net/tcp/message/BaseMessage;
.source "OutMessage.java"


# instance fields
.field public cmd:I

.field public freq:I

.field public hk:Ljava/lang/String;

.field public idx:J

.field public msg:Ljava/lang/String;

.field public rct:J

.field public sid:J

.field public st:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/message/BaseMessage;-><init>()V

    .line 33
    const-string v0, "P"

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/send/OutMessage;->st:Ljava/lang/String;

    .line 34
    return-void
.end method
