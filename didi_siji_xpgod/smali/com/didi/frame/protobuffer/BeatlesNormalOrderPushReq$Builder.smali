.class public final Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BeatlesNormalOrderPushReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;",
        ">;"
    }
.end annotation


# instance fields
.field public order_id:Ljava/lang/String;

.field public push_text:Ljava/lang/String;

.field public route_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 79
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;->order_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$Builder;->order_id:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;->route_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$Builder;->route_id:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;->push_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$Builder;->push_text:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$Builder;->checkRequiredFields()V

    .line 112
    new-instance v0, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;-><init>(Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$Builder;Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$Builder;->build()Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;

    move-result-object v0

    return-object v0
.end method

.method public order_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$Builder;
    .locals 0
    .parameter "order_id"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$Builder;->order_id:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public push_text(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$Builder;
    .locals 0
    .parameter "push_text"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$Builder;->push_text:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public route_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$Builder;
    .locals 0
    .parameter "route_id"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq$Builder;->route_id:Ljava/lang/String;

    .line 98
    return-object p0
.end method
