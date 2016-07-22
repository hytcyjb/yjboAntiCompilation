.class public final Lcom/didi/frame/protobuffer/AuthSvrSignReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AuthSvrSignReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/AuthSvrSignReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/AuthSvrSignReq;",
        ">;"
    }
.end annotation


# instance fields
.field public content:Lokio/ByteString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/AuthSvrSignReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 53
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/AuthSvrSignReq;->content:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/AuthSvrSignReq$Builder;->content:Lokio/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/AuthSvrSignReq;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/AuthSvrSignReq$Builder;->checkRequiredFields()V

    .line 68
    new-instance v0, Lcom/didi/frame/protobuffer/AuthSvrSignReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/AuthSvrSignReq;-><init>(Lcom/didi/frame/protobuffer/AuthSvrSignReq$Builder;Lcom/didi/frame/protobuffer/AuthSvrSignReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/AuthSvrSignReq$Builder;->build()Lcom/didi/frame/protobuffer/AuthSvrSignReq;

    move-result-object v0

    return-object v0
.end method

.method public content(Lokio/ByteString;)Lcom/didi/frame/protobuffer/AuthSvrSignReq$Builder;
    .locals 0
    .parameter "content"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/didi/frame/protobuffer/AuthSvrSignReq$Builder;->content:Lokio/ByteString;

    .line 62
    return-object p0
.end method
