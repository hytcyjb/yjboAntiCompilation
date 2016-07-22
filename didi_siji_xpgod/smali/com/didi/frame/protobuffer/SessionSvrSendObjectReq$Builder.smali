.class public final Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SessionSvrSendObjectReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq;",
        ">;"
    }
.end annotation


# instance fields
.field public fid:Ljava/lang/String;

.field public sid:Ljava/lang/Long;

.field public token:Ljava/lang/String;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 80
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq;->sid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;->sid:Ljava/lang/Long;

    .line 82
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;->type:Ljava/lang/Integer;

    .line 83
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq;->fid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;->fid:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;->token:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq;
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;->checkRequiredFields()V

    .line 110
    new-instance v0, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq;-><init>(Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;->build()Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq;

    move-result-object v0

    return-object v0
.end method

.method public fid(Ljava/lang/String;)Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;
    .locals 0
    .parameter "fid"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;->fid:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public sid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;
    .locals 0
    .parameter "sid"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;->sid:Ljava/lang/Long;

    .line 89
    return-object p0
.end method

.method public token(Ljava/lang/String;)Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;
    .locals 0
    .parameter "token"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;->token:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/didi/frame/protobuffer/SessionSvrSendObjectReq$Builder;->type:Ljava/lang/Integer;

    .line 94
    return-object p0
.end method
