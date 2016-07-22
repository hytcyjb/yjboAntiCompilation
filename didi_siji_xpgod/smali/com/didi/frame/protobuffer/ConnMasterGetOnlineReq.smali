.class public final Lcom/didi/frame/protobuffer/ConnMasterGetOnlineReq;
.super Lcom/squareup/wire/Message;
.source "ConnMasterGetOnlineReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/ConnMasterGetOnlineReq$1;,
        Lcom/didi/frame/protobuffer/ConnMasterGetOnlineReq$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 13
    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/ConnMasterGetOnlineReq$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/ConnMasterGetOnlineReq$Builder;Lcom/didi/frame/protobuffer/ConnMasterGetOnlineReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineReq;-><init>(Lcom/didi/frame/protobuffer/ConnMasterGetOnlineReq$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 21
    instance-of v0, p1, Lcom/didi/frame/protobuffer/ConnMasterGetOnlineReq;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method
