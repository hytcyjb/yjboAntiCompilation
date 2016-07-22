.class public final Lcom/didi/frame/protobuffer/ConnSvrHeartbeatReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnSvrHeartbeatReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/ConnSvrHeartbeatReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/ConnSvrHeartbeatReq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/ConnSvrHeartbeatReq;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 37
    return-void
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/ConnSvrHeartbeatReq;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/didi/frame/protobuffer/ConnSvrHeartbeatReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/ConnSvrHeartbeatReq;-><init>(Lcom/didi/frame/protobuffer/ConnSvrHeartbeatReq$Builder;Lcom/didi/frame/protobuffer/ConnSvrHeartbeatReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnSvrHeartbeatReq$Builder;->build()Lcom/didi/frame/protobuffer/ConnSvrHeartbeatReq;

    move-result-object v0

    return-object v0
.end method
