.class public Lcom/didi/beatles/model/pb/BtsNormalOrderPush;
.super Ljava/lang/Object;
.source "BtsNormalOrderPush.java"


# instance fields
.field public order_id:Ljava/lang/String;

.field public push_text:Ljava/lang/String;

.field public route_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;)Lcom/didi/beatles/model/pb/BtsNormalOrderPush;
    .locals 3
    .parameter "req"

    .prologue
    .line 12
    new-instance v0, Lcom/didi/beatles/model/pb/BtsNormalOrderPush;

    invoke-direct {v0}, Lcom/didi/beatles/model/pb/BtsNormalOrderPush;-><init>()V

    .line 14
    .local v0, tip:Lcom/didi/beatles/model/pb/BtsNormalOrderPush;
    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;->order_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/pb/BtsNormalOrderPush;->order_id:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;->route_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/pb/BtsNormalOrderPush;->route_id:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesNormalOrderPushReq;->push_text:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/pb/BtsNormalOrderPush;->push_text:Ljava/lang/String;

    .line 22
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    const-string v0, "order_id: %s  route_id:%s  push_text:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/didi/beatles/model/pb/BtsNormalOrderPush;->order_id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/didi/beatles/model/pb/BtsNormalOrderPush;->route_id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/didi/beatles/model/pb/BtsNormalOrderPush;->push_text:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
