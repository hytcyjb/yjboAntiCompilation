.class public final Lcom/didi/frame/protobuffer/CollectSvrHeartbeatReq;
.super Lcom/squareup/wire/Message;
.source "CollectSvrHeartbeatReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/CollectSvrHeartbeatReq$1;,
        Lcom/didi/frame/protobuffer/CollectSvrHeartbeatReq$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 19
    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/CollectSvrHeartbeatReq$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/CollectSvrHeartbeatReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/CollectSvrHeartbeatReq$Builder;Lcom/didi/frame/protobuffer/CollectSvrHeartbeatReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/CollectSvrHeartbeatReq;-><init>(Lcom/didi/frame/protobuffer/CollectSvrHeartbeatReq$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 27
    instance-of v0, p1, Lcom/didi/frame/protobuffer/CollectSvrHeartbeatReq;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
