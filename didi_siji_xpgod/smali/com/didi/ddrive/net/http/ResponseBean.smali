.class public Lcom/didi/ddrive/net/http/ResponseBean;
.super Ljava/lang/Object;
.source "ResponseBean.java"


# instance fields
.field protected cmd:I

.field protected code:I

.field protected msg:Ljava/lang/String;

.field protected ts:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getCmd()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/didi/ddrive/net/http/ResponseBean;->cmd:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/didi/ddrive/net/http/ResponseBean;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/ddrive/net/http/ResponseBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTs()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/ResponseBean;->ts:J

    return-wide v0
.end method

.method public setCmd(I)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 18
    iput p1, p0, Lcom/didi/ddrive/net/http/ResponseBean;->cmd:I

    .line 19
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 26
    iput p1, p0, Lcom/didi/ddrive/net/http/ResponseBean;->code:I

    .line 27
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/didi/ddrive/net/http/ResponseBean;->msg:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTs(J)V
    .locals 0
    .parameter "ts"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/ResponseBean;->ts:J

    .line 43
    return-void
.end method
