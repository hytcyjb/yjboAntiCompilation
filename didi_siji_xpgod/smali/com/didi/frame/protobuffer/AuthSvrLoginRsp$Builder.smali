.class public final Lcom/didi/frame/protobuffer/AuthSvrLoginRsp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AuthSvrLoginRsp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/AuthSvrLoginRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/AuthSvrLoginRsp;",
        ">;"
    }
.end annotation


# instance fields
.field public rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

.field public user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrLoginRsp;)V
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
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrLoginRsp;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 63
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrLoginRsp;->user_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginRsp$Builder;->user_id:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/AuthSvrLoginRsp;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/AuthSvrLoginRsp$Builder;->checkRequiredFields()V

    .line 79
    new-instance v0, Lcom/didi/frame/protobuffer/AuthSvrLoginRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/AuthSvrLoginRsp;-><init>(Lcom/didi/frame/protobuffer/AuthSvrLoginRsp$Builder;Lcom/didi/frame/protobuffer/AuthSvrLoginRsp$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/AuthSvrLoginRsp$Builder;->build()Lcom/didi/frame/protobuffer/AuthSvrLoginRsp;

    move-result-object v0

    return-object v0
.end method

.method public rsp_msg(Lcom/didi/frame/protobuffer/RspMsg;)Lcom/didi/frame/protobuffer/AuthSvrLoginRsp$Builder;
    .locals 0
    .parameter "rsp_msg"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginRsp$Builder;->rsp_msg:Lcom/didi/frame/protobuffer/RspMsg;

    .line 68
    return-object p0
.end method

.method public user_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/AuthSvrLoginRsp$Builder;
    .locals 0
    .parameter "user_id"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrLoginRsp$Builder;->user_id:Ljava/lang/Long;

    .line 73
    return-object p0
.end method
