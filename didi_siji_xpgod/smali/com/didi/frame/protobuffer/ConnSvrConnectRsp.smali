.class public final Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;
.super Lcom/squareup/wire/Message;
.source "ConnSvrConnectRsp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$1;,
        Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$Builder;
    }
.end annotation


# instance fields
.field public final rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 20
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    invoke-direct {p0, v0}, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;-><init>(Lcom/didi/frame/protobuffer/RspMsg;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$Builder;Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;-><init>(Lcom/didi/frame/protobuffer/ConnSvrConnectRsp$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/RspMsg;)V
    .locals 0
    .parameter "rsp_msg"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 26
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 28
    .end local p1
    :goto_0
    return v0

    .line 27
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    check-cast p1, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;

    .end local p1
    iget-object v1, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;->hashCode:I

    .line 34
    .local v0, result:I
    if-eqz v0, :cond_0

    .end local v0           #result:I
    :goto_0
    return v0

    .restart local v0       #result:I
    :cond_0
    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/RspMsg;->hashCode()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectRsp;->hashCode:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
