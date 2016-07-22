.class public final Lcom/didi/frame/protobuffer/PushMsg$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PushMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PushMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PushMsg;",
        ">;"
    }
.end annotation


# instance fields
.field public msg_id:Lokio/ByteString;

.field public need_rsp:Ljava/lang/Boolean;

.field public payload:Lokio/ByteString;

.field public product:Ljava/lang/Integer;

.field public task_id:Ljava/lang/Long;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PushMsg;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 120
    if-nez p1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushMsg;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushMsg$Builder;->type:Ljava/lang/Integer;

    .line 122
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushMsg;->payload:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushMsg$Builder;->payload:Lokio/ByteString;

    .line 123
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushMsg;->task_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushMsg$Builder;->task_id:Ljava/lang/Long;

    .line 124
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushMsg;->msg_id:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushMsg$Builder;->msg_id:Lokio/ByteString;

    .line 125
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushMsg;->need_rsp:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushMsg$Builder;->need_rsp:Ljava/lang/Boolean;

    .line 126
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushMsg;->product:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushMsg$Builder;->product:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PushMsg;
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushMsg$Builder;->checkRequiredFields()V

    .line 184
    new-instance v0, Lcom/didi/frame/protobuffer/PushMsg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PushMsg;-><init>(Lcom/didi/frame/protobuffer/PushMsg$Builder;Lcom/didi/frame/protobuffer/PushMsg$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushMsg$Builder;->build()Lcom/didi/frame/protobuffer/PushMsg;

    move-result-object v0

    return-object v0
.end method

.method public msg_id(Lokio/ByteString;)Lcom/didi/frame/protobuffer/PushMsg$Builder;
    .locals 0
    .parameter "msg_id"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushMsg$Builder;->msg_id:Lokio/ByteString;

    .line 162
    return-object p0
.end method

.method public need_rsp(Ljava/lang/Boolean;)Lcom/didi/frame/protobuffer/PushMsg$Builder;
    .locals 0
    .parameter "need_rsp"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushMsg$Builder;->need_rsp:Ljava/lang/Boolean;

    .line 170
    return-object p0
.end method

.method public payload(Lokio/ByteString;)Lcom/didi/frame/protobuffer/PushMsg$Builder;
    .locals 0
    .parameter "payload"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushMsg$Builder;->payload:Lokio/ByteString;

    .line 142
    return-object p0
.end method

.method public product(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushMsg$Builder;
    .locals 0
    .parameter "product"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushMsg$Builder;->product:Ljava/lang/Integer;

    .line 178
    return-object p0
.end method

.method public task_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/PushMsg$Builder;
    .locals 0
    .parameter "task_id"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushMsg$Builder;->task_id:Ljava/lang/Long;

    .line 154
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushMsg$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushMsg$Builder;->type:Ljava/lang/Integer;

    .line 134
    return-object p0
.end method
