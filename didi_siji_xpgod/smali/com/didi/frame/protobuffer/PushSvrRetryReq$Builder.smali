.class public final Lcom/didi/frame/protobuffer/PushSvrRetryReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PushSvrRetryReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PushSvrRetryReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PushSvrRetryReq;",
        ">;"
    }
.end annotation


# instance fields
.field public message_id:Ljava/lang/Long;

.field public msg:Lcom/didi/frame/protobuffer/PushSvrReq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PushSvrRetryReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 66
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrRetryReq;->msg:Lcom/didi/frame/protobuffer/PushSvrReq;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrRetryReq$Builder;->msg:Lcom/didi/frame/protobuffer/PushSvrReq;

    .line 68
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrRetryReq;->message_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrRetryReq$Builder;->message_id:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PushSvrRetryReq;
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushSvrRetryReq$Builder;->checkRequiredFields()V

    .line 84
    new-instance v0, Lcom/didi/frame/protobuffer/PushSvrRetryReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PushSvrRetryReq;-><init>(Lcom/didi/frame/protobuffer/PushSvrRetryReq$Builder;Lcom/didi/frame/protobuffer/PushSvrRetryReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushSvrRetryReq$Builder;->build()Lcom/didi/frame/protobuffer/PushSvrRetryReq;

    move-result-object v0

    return-object v0
.end method

.method public message_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/PushSvrRetryReq$Builder;
    .locals 0
    .parameter "message_id"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrRetryReq$Builder;->message_id:Ljava/lang/Long;

    .line 78
    return-object p0
.end method

.method public msg(Lcom/didi/frame/protobuffer/PushSvrReq;)Lcom/didi/frame/protobuffer/PushSvrRetryReq$Builder;
    .locals 0
    .parameter "msg"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrRetryReq$Builder;->msg:Lcom/didi/frame/protobuffer/PushSvrReq;

    .line 73
    return-object p0
.end method
