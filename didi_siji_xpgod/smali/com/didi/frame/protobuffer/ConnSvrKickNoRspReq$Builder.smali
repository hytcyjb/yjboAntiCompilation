.class public final Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnSvrKickNoRspReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq;",
        ">;"
    }
.end annotation


# instance fields
.field public timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 52
    if-nez p1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq$Builder;->timestamp:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq;-><init>(Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq$Builder;Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq$Builder;->build()Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq;

    move-result-object v0

    return-object v0
.end method

.method public timestamp(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq$Builder;
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrKickNoRspReq$Builder;->timestamp:Ljava/lang/Long;

    .line 62
    return-object p0
.end method
