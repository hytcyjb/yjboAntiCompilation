.class public final Lcom/didi/frame/protobuffer/ConnMasterKickReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnMasterKickReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/ConnMasterKickReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/ConnMasterKickReq;",
        ">;"
    }
.end annotation


# instance fields
.field public user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/ConnMasterKickReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 49
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnMasterKickReq;->user_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnMasterKickReq$Builder;->user_id:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/ConnMasterKickReq;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnMasterKickReq$Builder;->checkRequiredFields()V

    .line 61
    new-instance v0, Lcom/didi/frame/protobuffer/ConnMasterKickReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/ConnMasterKickReq;-><init>(Lcom/didi/frame/protobuffer/ConnMasterKickReq$Builder;Lcom/didi/frame/protobuffer/ConnMasterKickReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnMasterKickReq$Builder;->build()Lcom/didi/frame/protobuffer/ConnMasterKickReq;

    move-result-object v0

    return-object v0
.end method

.method public user_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/ConnMasterKickReq$Builder;
    .locals 0
    .parameter "user_id"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnMasterKickReq$Builder;->user_id:Ljava/lang/Long;

    .line 55
    return-object p0
.end method
