.class public Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;
.super Ljava/lang/Object;
.source "BtsOrderDataChangedTip.java"


# instance fields
.field public change_text:Ljava/lang/String;

.field public list_text:Ljava/lang/String;

.field public order_id:Ljava/lang/String;

.field public order_list_type:Ljava/lang/Integer;

.field public show:Ljava/lang/Integer;

.field public status:Ljava/lang/Integer;

.field public sub_status:Ljava/lang/Integer;

.field public user_role:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;)Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;
    .locals 3
    .parameter "req"

    .prologue
    .line 17
    new-instance v0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;

    invoke-direct {v0}, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;-><init>()V

    .line 19
    .local v0, tip:Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;
    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->order_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->order_id:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->user_role:Ljava/lang/Integer;

    sget-object v2, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->DEFAULT_USER_ROLE:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->user_role:Ljava/lang/Integer;

    .line 21
    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->order_list_type:Ljava/lang/Integer;

    sget-object v2, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->DEFAULT_ORDER_LIST_TYPE:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->order_list_type:Ljava/lang/Integer;

    .line 23
    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->status:Ljava/lang/Integer;

    sget-object v2, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->DEFAULT_STATUS:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->status:Ljava/lang/Integer;

    .line 24
    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->sub_status:Ljava/lang/Integer;

    sget-object v2, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->DEFAULT_SUB_STATUS:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->sub_status:Ljava/lang/Integer;

    .line 25
    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->change_text:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->change_text:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->show:Ljava/lang/Integer;

    sget-object v2, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->DEFAULT_SHOW:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->show:Ljava/lang/Integer;

    .line 27
    iget-object v1, p0, Lcom/didi/frame/protobuffer/BeatlesOrderDataChangedTipReq;->list_text:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->list_text:Ljava/lang/String;

    .line 29
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    const-string v0, "order_id: %s  user_role:%s  order_list_type:%s status:%s sub_status:%s change_text:%s show:%s list_text:%s"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->order_id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->user_role:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->order_list_type:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->status:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->sub_status:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->change_text:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->show:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;->list_text:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
