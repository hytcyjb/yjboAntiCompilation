.class public Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;
.super Ljava/lang/Object;
.source "BtsDriverNewOrderTip.java"


# instance fields
.field public order_list_type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;)Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;
    .locals 3
    .parameter "req"

    .prologue
    .line 10
    new-instance v0, Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;

    invoke-direct {v0}, Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;-><init>()V

    .line 12
    .local v0, tip:Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;
    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;->order_list_type:Ljava/lang/Integer;

    sget-object v2, Lcom/didi/frame/protobuffer/BeatlesDriverNewOrderTipReq;->DEFAULT_ORDER_LIST_TYPE:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;->order_list_type:Ljava/lang/Integer;

    .line 15
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 21
    const-string v0, "order_list_type: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/didi/beatles/model/pb/BtsDriverNewOrderTip;->order_list_type:Ljava/lang/Integer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
