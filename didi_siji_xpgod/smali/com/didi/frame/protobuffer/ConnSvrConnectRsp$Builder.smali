.class public final Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnSvrConnectRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 46
    if-nez p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$Builder;->checkRequiredFields()V

    .line 58
    new-instance v0, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;-><init>(Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$Builder;Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$Builder;->build()Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;

    move-result-object v0

    return-object v0
.end method

.method public rsp_msg(Lcom/didi/frame/protobuffer/RspMsg;)Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$Builder;
    .locals 0
    .parameter "rsp_msg"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 52
    return-object p0
.end method
