.class public final Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnMasterGetOnlineCountRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp;",
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
    .line 56
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp;)V
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
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 63
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp;->count:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp$Builder;->count:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp$Builder;->checkRequiredFields()V

    .line 79
    new-instance v0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp;-><init>(Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp$Builder;Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp$Builder;->build()Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp;

    move-result-object v0

    return-object v0
.end method

.method public count(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp$Builder;
    .locals 0
    .parameter "count"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp$Builder;->count:Ljava/lang/Long;

    .line 73
    return-object p0
.end method

.method public rsp_msg(Lcom/didi/frame/protobuffer/RspMsg;)Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp$Builder;
    .locals 0
    .parameter "rsp_msg"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineCountRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 68
    return-object p0
.end method
