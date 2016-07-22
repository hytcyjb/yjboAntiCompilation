.class public final Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnSvrConnectChallenge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;",
        ">;"
    }
.end annotation


# instance fields
.field public random_msg:Lokio/ByteString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 56
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;->random_msg:Lokio/ByteString;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$Builder;->random_msg:Lokio/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$Builder;->checkRequiredFields()V

    .line 71
    new-instance v0, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;-><init>(Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$Builder;Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$Builder;->build()Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge;

    move-result-object v0

    return-object v0
.end method

.method public random_msg(Lokio/ByteString;)Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$Builder;
    .locals 0
    .parameter "random_msg"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnSvrConnectChallenge$Builder;->random_msg:Lokio/ByteString;

    .line 65
    return-object p0
.end method
