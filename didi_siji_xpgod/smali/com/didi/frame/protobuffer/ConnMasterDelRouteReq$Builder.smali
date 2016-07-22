.class public final Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnMasterDelRouteReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq;",
        ">;"
    }
.end annotation


# instance fields
.field public timestamp:Ljava/lang/Long;

.field public user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 69
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq;->user_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq$Builder;->user_id:Ljava/lang/Long;

    .line 71
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq$Builder;->timestamp:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq$Builder;->checkRequiredFields()V

    .line 90
    new-instance v0, Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq;-><init>(Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq$Builder;Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq$Builder;->build()Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq;

    move-result-object v0

    return-object v0
.end method

.method public timestamp(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq$Builder;
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq$Builder;->timestamp:Ljava/lang/Long;

    .line 84
    return-object p0
.end method

.method public user_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq$Builder;
    .locals 0
    .parameter "user_id"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConnMasterDelRouteReq$Builder;->user_id:Ljava/lang/Long;

    .line 76
    return-object p0
.end method
