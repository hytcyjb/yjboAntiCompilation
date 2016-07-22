.class public final Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnSvrGetOnlineCountRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public count:Ljava/lang/Long;

.field public rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 67
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 69
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp;->count:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp$Builder;->count:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp$Builder;->checkRequiredFields()V

    .line 88
    new-instance v0, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp;-><init>(Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp$Builder;Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp$Builder;->build()Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp;

    move-result-object v0

    return-object v0
.end method

.method public count(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp$Builder;
    .locals 0
    .parameter "count"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp$Builder;->count:Ljava/lang/Long;

    .line 82
    return-object p0
.end method

.method public rsp_msg(Lcom/didi/frame/protobuffer/RspMsg;)Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp$Builder;
    .locals 0
    .parameter "rsp_msg"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrGetOnlineCountRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 74
    return-object p0
.end method
