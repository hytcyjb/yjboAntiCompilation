.class public final Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MessageSvrSendTextReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/MessageSvrSendTextReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/MessageSvrSendTextReq;",
        ">;"
    }
.end annotation


# instance fields
.field public request_id:Ljava/lang/Long;

.field public sid:Ljava/lang/Long;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrSendTextReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 74
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq;->sid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;->sid:Ljava/lang/Long;

    .line 76
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;->text:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq;->request_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;->request_id:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/MessageSvrSendTextReq;
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;->checkRequiredFields()V

    .line 101
    new-instance v0, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq;-><init>(Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;->build()Lcom/didi/frame/protobuffer/MessageSvrSendTextReq;

    move-result-object v0

    return-object v0
.end method

.method public request_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;
    .locals 0
    .parameter "request_id"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;->request_id:Ljava/lang/Long;

    .line 95
    return-object p0
.end method

.method public sid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;
    .locals 0
    .parameter "sid"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;->sid:Ljava/lang/Long;

    .line 82
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;
    .locals 0
    .parameter "text"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendTextReq$Builder;->text:Ljava/lang/String;

    .line 87
    return-object p0
.end method
