.class public final Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MessageSvrSendObjectReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;",
        ">;"
    }
.end annotation


# instance fields
.field public fid:Ljava/lang/String;

.field public meta:Lokio/ByteString;

.field public request_id:Ljava/lang/Long;

.field public sid:Ljava/lang/Long;

.field public token:Ljava/lang/String;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 101
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->sid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->sid:Ljava/lang/Long;

    .line 103
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->type:Ljava/lang/Integer;

    .line 104
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->fid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->fid:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->token:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->request_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->request_id:Ljava/lang/Long;

    .line 107
    iget-object v0, p1, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;->meta:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->meta:Lokio/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->checkRequiredFields()V

    .line 146
    new-instance v0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;-><init>(Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->build()Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq;

    move-result-object v0

    return-object v0
.end method

.method public fid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;
    .locals 0
    .parameter "fid"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->fid:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public meta(Lokio/ByteString;)Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;
    .locals 0
    .parameter "meta"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->meta:Lokio/ByteString;

    .line 140
    return-object p0
.end method

.method public request_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;
    .locals 0
    .parameter "request_id"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->request_id:Ljava/lang/Long;

    .line 135
    return-object p0
.end method

.method public sid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;
    .locals 0
    .parameter "sid"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->sid:Ljava/lang/Long;

    .line 112
    return-object p0
.end method

.method public token(Ljava/lang/String;)Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;
    .locals 0
    .parameter "token"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->token:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/didi/frame/protobuffer/MessageSvrSendObjectReq$Builder;->type:Ljava/lang/Integer;

    .line 117
    return-object p0
.end method
