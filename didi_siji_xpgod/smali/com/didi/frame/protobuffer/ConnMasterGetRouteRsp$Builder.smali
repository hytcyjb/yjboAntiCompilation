.class public final Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnMasterGetRouteRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public conn_svr:Lcom/didi/frame/protobuffer/Address;

.field public rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 61
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 63
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp;->conn_svr:Lcom/didi/frame/protobuffer/Address;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp$Builder;->conn_svr:Lcom/didi/frame/protobuffer/Address;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp$Builder;->checkRequiredFields()V

    .line 82
    new-instance v0, Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp;-><init>(Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp$Builder;Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp$Builder;->build()Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp;

    move-result-object v0

    return-object v0
.end method

.method public conn_svr(Lcom/didi/frame/protobuffer/Address;)Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp$Builder;
    .locals 0
    .parameter "conn_svr"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp$Builder;->conn_svr:Lcom/didi/frame/protobuffer/Address;

    .line 76
    return-object p0
.end method

.method public rsp_msg(Lcom/didi/frame/protobuffer/RspMsg;)Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp$Builder;
    .locals 0
    .parameter "rsp_msg"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnMasterGetRouteRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 68
    return-object p0
.end method
