.class public final Lcom/didi/frame/protobuffer/RspMsg$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RspMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/RspMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/RspMsg;",
        ">;"
    }
.end annotation


# instance fields
.field public rsp_code:Ljava/lang/Integer;

.field public rsp_msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/RspMsg;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 73
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/RspMsg;->rsp_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/RspMsg$Builder;->rsp_code:Ljava/lang/Integer;

    .line 75
    iget-object v0, p1, Lcom/didi/frame/protobuffer/RspMsg;->rsp_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/RspMsg$Builder;->rsp_msg:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/RspMsg;
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/RspMsg$Builder;->checkRequiredFields()V

    .line 97
    new-instance v0, Lcom/didi/frame/protobuffer/RspMsg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/RspMsg;-><init>(Lcom/didi/frame/protobuffer/RspMsg$Builder;Lcom/didi/frame/protobuffer/RspMsg$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/RspMsg$Builder;->build()Lcom/didi/frame/protobuffer/RspMsg;

    move-result-object v0

    return-object v0
.end method

.method public rsp_code(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/RspMsg$Builder;
    .locals 0
    .parameter "rsp_code"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/didi/frame/protobuffer/RspMsg$Builder;->rsp_code:Ljava/lang/Integer;

    .line 83
    return-object p0
.end method

.method public rsp_msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/RspMsg$Builder;
    .locals 0
    .parameter "rsp_msg"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/frame/protobuffer/RspMsg$Builder;->rsp_msg:Ljava/lang/String;

    .line 91
    return-object p0
.end method
