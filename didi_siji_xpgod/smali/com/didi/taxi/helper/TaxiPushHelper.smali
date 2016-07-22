.class public Lcom/didi/taxi/helper/TaxiPushHelper;
.super Ljava/lang/Object;
.source "TaxiPushHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;,
        Lcom/didi/taxi/helper/TaxiPushHelper$OnCurrentCostChangedListener;,
        Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;,
        Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;,
        Lcom/didi/taxi/helper/TaxiPushHelper$PaySuccessListener;,
        Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;,
        Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;,
        Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;
    }
.end annotation


# static fields
.field public static mInnerCostDetailListener:Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/didi/taxi/helper/TaxiPushHelper;->onTimelyRemindReceived(Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;[B)V

    return-void
.end method

.method public static onBusinessPaySucceed(Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;[B)V
    .locals 6
    .parameter "l"
    .parameter "data"

    .prologue
    .line 697
    const/4 v3, 0x0

    .line 699
    .local v3, req:Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;
    new-instance v4, Lcom/squareup/wire/Wire;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-direct {v4, v5}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 701
    .local v4, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v5, Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;

    invoke-virtual {v4, p1, v5}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    move-object v2, v3

    .line 709
    .local v2, freq:Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;
    new-instance v5, Lcom/didi/taxi/helper/TaxiPushHelper$16;

    invoke-direct {v5, p0, v2}, Lcom/didi/taxi/helper/TaxiPushHelper$16;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;)V

    invoke-static {v5}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 716
    return-void

    .line 702
    .end local v2           #freq:Lcom/didi/frame/protobuffer/TaxiPassengerBussinessCallbackReq;
    :catch_0
    move-exception v1

    .line 703
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static onCostDetailReceived(Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;Ljava/lang/String;[B)V
    .locals 13
    .parameter "l"
    .parameter "oid"
    .parameter "data"

    .prologue
    .line 273
    const/4 v7, 0x0

    .line 274
    .local v7, payReq:Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;
    new-instance v10, Lcom/squareup/wire/Wire;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-direct {v10, v11}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 276
    .local v10, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v11, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;

    invoke-virtual {v10, p2, v11}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;

    move-object v7, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    const/4 v2, 0x0

    .line 282
    .local v2, feeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;
    if-eqz v7, :cond_2

    iget-object v11, v7, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->order_id:Ljava/lang/String;

    const-string v12, ""

    invoke-static {v11, v12}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 285
    new-instance v2, Lcom/didi/taxi/model/TaxiFeeDetail;

    .end local v2           #feeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;
    invoke-direct {v2}, Lcom/didi/taxi/model/TaxiFeeDetail;-><init>()V

    .line 287
    .restart local v2       #feeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;
    iget-object v11, v7, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->total:Ljava/lang/Float;

    sget-object v12, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->DEFAULT_TOTAL:Ljava/lang/Float;

    invoke-static {v11, v12}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 288
    .local v9, totalF:F
    float-to-int v11, v9

    iput v11, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mTotal:I

    .line 290
    iget-object v11, v7, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->toast_content:Ljava/lang/String;

    const-string v12, ""

    invoke-static {v11, v12}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mToastContent:Ljava/lang/String;

    .line 293
    iget-object v11, v7, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->is_update:Ljava/lang/Boolean;

    sget-object v12, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->DEFAULT_IS_UPDATE:Ljava/lang/Boolean;

    invoke-static {v11, v12}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iput-boolean v11, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mIsUpdate:Z

    .line 296
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    .line 298
    iget-object v11, v7, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->detail:Ljava/util/List;

    sget-object v12, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->DEFAULT_DETAIL:Ljava/util/List;

    invoke-static {v11, v12}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;

    .line 301
    .local v5, item:Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;
    new-instance v8, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v2}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 303
    .local v8, taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    iget-object v11, v5, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->name:Ljava/lang/String;

    const-string v12, ""

    invoke-static {v11, v12}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v8, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    .line 306
    iget-object v11, v5, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->item_value:Ljava/lang/Float;

    sget-object v12, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;->DEFAULT_ITEM_VALUE:Ljava/lang/Float;

    invoke-static {v11, v12}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 309
    .local v6, itemValueF:F
    float-to-int v11, v6

    iput v11, v8, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    .line 311
    iget v11, v8, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    if-eqz v11, :cond_0

    .line 312
    iget-object v11, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    .end local v2           #feeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;
    .end local v6           #itemValueF:F
    .end local v8           #taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    .end local v9           #totalF:F
    :catch_0
    move-exception v1

    .line 278
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 319
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #feeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v9       #totalF:F
    :cond_1
    move-object v3, v2

    .line 320
    .local v3, ffeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;
    new-instance v11, Lcom/didi/taxi/helper/TaxiPushHelper$6;

    invoke-direct {v11, v3, p0}, Lcom/didi/taxi/helper/TaxiPushHelper$6;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;)V

    invoke-static {v11}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 342
    .end local v3           #ffeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #totalF:F
    :cond_2
    return-void
.end method

.method protected static onCurrentCostChanged([BLcom/didi/taxi/helper/TaxiPushHelper$OnCurrentCostChangedListener;Ljava/lang/String;)V
    .locals 8
    .parameter "data"
    .parameter "l"
    .parameter "oid"

    .prologue
    .line 649
    const/4 v3, 0x0

    .line 650
    .local v3, pcr:Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;
    new-instance v5, Lcom/squareup/wire/Wire;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-direct {v5, v6}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 652
    .local v5, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v6, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;

    invoke-virtual {v5, p0, v6}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :goto_0
    if-eqz v3, :cond_0

    iget-object v6, v3, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->oid:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 670
    :cond_0
    :goto_1
    return-void

    .line 653
    :catch_0
    move-exception v2

    .line 654
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 661
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    iget-object v6, v3, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->price:Ljava/lang/Float;

    sget-object v7, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->DEFAULT_PRICE:Ljava/lang/Float;

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 662
    .local v4, price:F
    iget-object v6, v3, Lcom/didi/frame/protobuffer/TypeTaxiPassengerChargeReq;->desc:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 663
    .local v1, desc:Ljava/lang/String;
    new-instance v6, Lcom/didi/taxi/helper/TaxiPushHelper$14;

    invoke-direct {v6, p1, v4, v1}, Lcom/didi/taxi/helper/TaxiPushHelper$14;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$OnCurrentCostChangedListener;FLjava/lang/String;)V

    invoke-static {v6}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public static onPaySucceed(Lcom/didi/taxi/helper/TaxiPushHelper$PaySuccessListener;Ljava/lang/String;[B)V
    .locals 7
    .parameter "l"
    .parameter "oid"
    .parameter "data"

    .prologue
    .line 388
    const/4 v3, 0x0

    .line 390
    .local v3, req:Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;
    new-instance v4, Lcom/squareup/wire/Wire;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-direct {v4, v5}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 392
    .local v4, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v5, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;

    invoke-virtual {v4, p2, v5}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    iget-object v5, v3, Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;->order_id:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 410
    :goto_1
    return-void

    .line 393
    :catch_0
    move-exception v1

    .line 394
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 402
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    move-object v2, v3

    .line 403
    .local v2, freq:Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;
    new-instance v5, Lcom/didi/taxi/helper/TaxiPushHelper$8;

    invoke-direct {v5, p0, v2}, Lcom/didi/taxi/helper/TaxiPushHelper$8;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$PaySuccessListener;Lcom/didi/frame/protobuffer/TaxiDriverHasGetCashReq;)V

    invoke-static {v5}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public static onReceiveLocateMsg([BLcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;Ljava/lang/String;)V
    .locals 12
    .parameter "buf"
    .parameter "l"
    .parameter "oid"

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, cdntDown:Lcom/didi/frame/protobuffer/CdntSvrDownReq;
    new-instance v8, Lcom/squareup/wire/Wire;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-direct {v8, v9}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 137
    .local v8, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v9, Lcom/didi/frame/protobuffer/CdntSvrDownReq;

    invoke-virtual {v8, p0, v9}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/didi/frame/protobuffer/CdntSvrDownReq;

    move-object v1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    if-nez v1, :cond_1

    .line 190
    :cond_0
    :goto_1
    return-void

    .line 138
    :catch_0
    move-exception v4

    .line 139
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v4           #e:Ljava/io/IOException;
    :cond_1
    new-instance v6, Lcom/didi/taxi/model/TaxiOrderState;

    invoke-direct {v6}, Lcom/didi/taxi/model/TaxiOrderState;-><init>()V

    .line 147
    .local v6, orderState:Lcom/didi/taxi/model/TaxiOrderState;
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 149
    iget-object v9, v1, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->peer_coordinate_infos:Ljava/util/List;

    sget-object v10, Lcom/didi/frame/protobuffer/CdntSvrDownReq;->DEFAULT_PEER_COORDINATE_INFOS:Ljava/util/List;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;

    .line 152
    .local v7, pcooinfo:Lcom/didi/frame/protobuffer/PeerCoordinateInfo;
    iget-object v9, v7, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->local_id:Ljava/lang/String;

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 155
    iget-object v9, v7, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->is_arrived_limited:Ljava/lang/Boolean;

    sget-object v10, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->DEFAULT_IS_ARRIVED_LIMITED:Ljava/lang/Boolean;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v6, Lcom/didi/taxi/model/TaxiOrderState;->isArrieved:Z

    .line 158
    new-instance v9, Lcom/didi/taxi/model/TaxiPosition;

    invoke-direct {v9}, Lcom/didi/taxi/model/TaxiPosition;-><init>()V

    iput-object v9, v6, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    .line 160
    iget-object v10, v6, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    iget-object v9, v7, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->wait_time:Ljava/lang/Integer;

    sget-object v11, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->DEFAULT_WAIT_TIME:Ljava/lang/Integer;

    invoke-static {v9, v11}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v10, Lcom/didi/taxi/model/TaxiPosition;->arrivedTime:I

    .line 163
    new-instance v10, Ljava/math/BigDecimal;

    iget-object v9, v7, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->distance:Ljava/lang/Integer;

    sget-object v11, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->DEFAULT_DISTANCE:Ljava/lang/Integer;

    invoke-static {v9, v11}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v9, Ljava/math/BigDecimal;

    const/16 v11, 0x3e8

    invoke-direct {v9, v11}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v10, v9}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    .line 169
    .local v3, distance:F
    iget-object v9, v6, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/didi/taxi/model/TaxiPosition;->distance:Ljava/lang/String;

    .line 171
    iget-object v9, v7, Lcom/didi/frame/protobuffer/PeerCoordinateInfo;->coordinate:Lcom/didi/frame/protobuffer/Coordinate;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/frame/protobuffer/Coordinate;

    .line 172
    .local v2, coor:Lcom/didi/frame/protobuffer/Coordinate;
    if-eqz v2, :cond_3

    .line 173
    iget-object v9, v6, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    iget-object v10, v2, Lcom/didi/frame/protobuffer/Coordinate;->y:Ljava/lang/Double;

    sget-object v11, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_Y:Ljava/lang/Double;

    invoke-static {v10, v11}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/didi/taxi/model/TaxiPosition;->lat:Ljava/lang/String;

    .line 174
    iget-object v9, v6, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    iget-object v10, v2, Lcom/didi/frame/protobuffer/Coordinate;->x:Ljava/lang/Double;

    sget-object v11, Lcom/didi/frame/protobuffer/Coordinate;->DEFAULT_X:Ljava/lang/Double;

    invoke-static {v10, v11}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/didi/taxi/model/TaxiPosition;->lng:Ljava/lang/String;

    .line 181
    .end local v2           #coor:Lcom/didi/frame/protobuffer/Coordinate;
    .end local v3           #distance:F
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #pcooinfo:Lcom/didi/frame/protobuffer/PeerCoordinateInfo;
    :cond_3
    if-eqz p1, :cond_0

    .line 182
    new-instance v9, Lcom/didi/taxi/helper/TaxiPushHelper$2;

    invoke-direct {v9, p1, v6}, Lcom/didi/taxi/helper/TaxiPushHelper$2;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;Lcom/didi/taxi/model/TaxiOrderState;)V

    invoke-static {v9}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method public static onShareTripCostDetailReceived(Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;Ljava/lang/String;[B)V
    .locals 13
    .parameter "l"
    .parameter "oid"
    .parameter "data"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 485
    const/4 v6, 0x0

    .line 486
    .local v6, payReq:Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;
    new-instance v8, Lcom/squareup/wire/Wire;

    new-array v9, v12, [Ljava/lang/Class;

    invoke-direct {v8, v9}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 488
    .local v8, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v9, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;

    invoke-virtual {v8, p2, v9}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;

    move-object v6, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    if-eqz v6, :cond_0

    iget-object v9, v6, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->order_id:Ljava/lang/String;

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 623
    :cond_0
    :goto_1
    return-void

    .line 489
    :catch_0
    move-exception v1

    .line 490
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 498
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    new-instance v2, Lcom/didi/taxi/model/TaxiFeeDetail;

    invoke-direct {v2}, Lcom/didi/taxi/model/TaxiFeeDetail;-><init>()V

    .line 500
    .local v2, feeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;
    iget-object v9, v6, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->trip_total:Ljava/lang/Integer;

    sget-object v10, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_TRIP_TOTAL:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mTotal:I

    .line 503
    const v9, 0x7f0b0449

    iget v10, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mTotal:I

    invoke-static {v10}, Lcom/didi/common/util/NumberUtil;->changeF2Y(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mToastContent:Ljava/lang/String;

    .line 506
    iput-boolean v12, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mIsUpdate:Z

    .line 507
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    .line 509
    const/4 v7, 0x0

    .line 511
    .local v7, taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    iget-object v9, v6, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_total:Ljava/lang/Integer;

    sget-object v10, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_SELF_TRIP_TOTAL:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_2

    .line 514
    new-instance v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    .end local v7           #taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v2}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 515
    .restart local v7       #taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    iput v11, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->isTitle:I

    .line 517
    const v9, 0x7f0b052f

    invoke-static {v9}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    .line 520
    iget-object v9, v6, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_total:Ljava/lang/Integer;

    sget-object v10, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_SELF_TRIP_TOTAL:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    .line 523
    iget-object v9, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_2
    iget-object v9, v6, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->self_trip_items:Ljava/util/List;

    sget-object v10, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_SELF_TRIP_ITEMS:Ljava/util/List;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;

    .line 529
    .local v5, item:Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;
    new-instance v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    .end local v7           #taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v2}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 531
    .restart local v7       #taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    iget-object v9, v5, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->name:Ljava/lang/String;

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    .line 534
    iget-object v9, v5, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->item_value:Ljava/lang/Integer;

    sget-object v10, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->DEFAULT_ITEM_VALUE:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    .line 537
    iget v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    if-eqz v9, :cond_3

    .line 538
    iget-object v9, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 542
    .end local v5           #item:Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;
    :cond_4
    iget-object v9, v6, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_total:Ljava/lang/Integer;

    sget-object v10, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_COMMON_TRIP_TOTAL:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_5

    .line 545
    new-instance v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    .end local v7           #taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v2}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 546
    .restart local v7       #taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    iput v11, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->isTitle:I

    .line 548
    const v9, 0x7f0b052d

    invoke-static {v9}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    .line 551
    iget-object v9, v6, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_total:Ljava/lang/Integer;

    sget-object v10, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_COMMON_TRIP_TOTAL:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    .line 554
    iget-object v9, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_5
    iget-object v9, v6, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->common_trip_items:Ljava/util/List;

    sget-object v10, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_COMMON_TRIP_ITEMS:Ljava/util/List;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;

    .line 560
    .restart local v5       #item:Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;
    new-instance v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    .end local v7           #taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v2}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 562
    .restart local v7       #taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    iget-object v9, v5, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->name:Ljava/lang/String;

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    .line 565
    iget-object v9, v5, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->item_value:Ljava/lang/Integer;

    sget-object v10, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;->DEFAULT_ITEM_VALUE:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    .line 568
    iget v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    if-eqz v9, :cond_6

    .line 569
    iget-object v9, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 573
    .end local v5           #item:Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq$Item;
    :cond_7
    iget-object v9, v6, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->tip:Ljava/lang/Integer;

    sget-object v10, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_TIP:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_8

    .line 575
    new-instance v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    .end local v7           #taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v2}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 576
    .restart local v7       #taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    iput v11, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->isTitle:I

    .line 578
    const v9, 0x7f0b0530

    invoke-static {v9}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    .line 581
    iget-object v9, v6, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->tip:Ljava/lang/Integer;

    sget-object v10, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_TIP:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    .line 584
    iget-object v9, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_8
    iget-object v9, v6, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->other_fee:Ljava/lang/Integer;

    sget-object v10, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_OTHER_FEE:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_9

    .line 588
    new-instance v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    .end local v7           #taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v2}, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 589
    .restart local v7       #taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    iput v11, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->isTitle:I

    .line 591
    const v9, 0x7f0b052e

    invoke-static {v9}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    .line 594
    iget-object v9, v6, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->other_fee:Ljava/lang/Integer;

    sget-object v10, Lcom/didi/frame/protobuffer/TaxiDriverShareTripLetPayReq;->DEFAULT_OTHER_FEE:Ljava/lang/Integer;

    invoke-static {v9, v10}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    .line 597
    iget-object v9, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_9
    move-object v3, v2

    .line 601
    .local v3, ffeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;
    new-instance v9, Lcom/didi/taxi/helper/TaxiPushHelper$12;

    invoke-direct {v9, v3, p0}, Lcom/didi/taxi/helper/TaxiPushHelper$12;-><init>(Lcom/didi/taxi/model/TaxiFeeDetail;Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;)V

    invoke-static {v9}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method protected static onTerminateOrderNoticed([BLcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;Ljava/lang/String;)V
    .locals 7
    .parameter "data"
    .parameter "l"
    .parameter "oid"

    .prologue
    .line 436
    const/4 v3, 0x0

    .line 437
    .local v3, ntf:Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderNoticeTripFriendReq;
    new-instance v4, Lcom/squareup/wire/Wire;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-direct {v4, v5}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 439
    .local v4, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v5, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderNoticeTripFriendReq;

    invoke-virtual {v4, p0, v5}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderNoticeTripFriendReq;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderNoticeTripFriendReq;->order_id:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 459
    :cond_0
    :goto_1
    return-void

    .line 440
    :catch_0
    move-exception v2

    .line 441
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 449
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    iget-object v5, v3, Lcom/didi/frame/protobuffer/TaxiPassengerTerminateOrderNoticeTripFriendReq;->content:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 452
    .local v1, content:Ljava/lang/String;
    new-instance v5, Lcom/didi/taxi/helper/TaxiPushHelper$10;

    invoke-direct {v5, p1, v1}, Lcom/didi/taxi/helper/TaxiPushHelper$10;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static onTimelyRemindReceived(Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;[B)V
    .locals 8
    .parameter "l"
    .parameter "data"

    .prologue
    .line 215
    const-string v6, "onTimelyRemindReceived "

    invoke-static {v6}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 217
    const/4 v3, 0x0

    .line 218
    .local v3, remindReq:Lcom/didi/frame/protobuffer/TimelyRemindReq;
    new-instance v5, Lcom/squareup/wire/Wire;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-direct {v5, v6}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 221
    .local v5, wire:Lcom/squareup/wire/Wire;
    :try_start_0
    const-class v6, Lcom/didi/frame/protobuffer/TimelyRemindReq;

    invoke-virtual {v5, p1, v6}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/didi/frame/protobuffer/TimelyRemindReq;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    new-instance v4, Lcom/didi/taxi/model/TaxiServiceMessage;

    invoke-direct {v4}, Lcom/didi/taxi/model/TaxiServiceMessage;-><init>()V

    .line 229
    .local v4, taxiServiceMsg:Lcom/didi/taxi/model/TaxiServiceMessage;
    iget-object v6, v3, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_id:Ljava/lang/Integer;

    sget-object v7, Lcom/didi/frame/protobuffer/TimelyRemindReq;->DEFAULT_MSG_ID:Ljava/lang/Integer;

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/didi/taxi/model/TaxiServiceMessage;->setMsgId(I)V

    .line 230
    iget-object v6, v3, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_type:Ljava/lang/Integer;

    sget-object v7, Lcom/didi/frame/protobuffer/TimelyRemindReq;->DEFAULT_MSG_TYPE:Ljava/lang/Integer;

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/didi/taxi/model/TaxiServiceMessage;->setMsgType(I)V

    .line 231
    iget-object v6, v3, Lcom/didi/frame/protobuffer/TimelyRemindReq;->msg_value:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/didi/taxi/model/TaxiServiceMessage;->setMsgValue(Ljava/lang/String;)V

    .line 232
    iget-object v6, v3, Lcom/didi/frame/protobuffer/TimelyRemindReq;->order_id:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/didi/taxi/model/TaxiServiceMessage;->setOrderId(Ljava/lang/String;)V

    .line 233
    iget-object v6, v3, Lcom/didi/frame/protobuffer/TimelyRemindReq;->title:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/didi/taxi/model/TaxiServiceMessage;->setTitle(Ljava/lang/String;)V

    .line 234
    iget-object v6, v3, Lcom/didi/frame/protobuffer/TimelyRemindReq;->content:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/didi/taxi/model/TaxiServiceMessage;->setContent(Ljava/lang/String;)V

    .line 235
    iget-object v6, v3, Lcom/didi/frame/protobuffer/TimelyRemindReq;->confirm_btn_text:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/didi/taxi/model/TaxiServiceMessage;->setConfirmBtnText(Ljava/lang/String;)V

    .line 236
    iget-object v6, v3, Lcom/didi/frame/protobuffer/TimelyRemindReq;->cancel_btn_text:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/squareup/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/didi/taxi/model/TaxiServiceMessage;->setCancelBtnText(Ljava/lang/String;)V

    .line 238
    move-object v2, v4

    .line 239
    .local v2, ftaxiServiceMsg:Lcom/didi/taxi/model/TaxiServiceMessage;
    new-instance v6, Lcom/didi/taxi/helper/TaxiPushHelper$4;

    invoke-direct {v6, p0, v2}, Lcom/didi/taxi/helper/TaxiPushHelper$4;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;Lcom/didi/taxi/model/TaxiServiceMessage;)V

    invoke-static {v6}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 247
    .end local v2           #ftaxiServiceMsg:Lcom/didi/taxi/model/TaxiServiceMessage;
    .end local v4           #taxiServiceMsg:Lcom/didi/taxi/model/TaxiServiceMessage;
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerBusinessPaySuccessListener(Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 686
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTaxiPassengerBussinessCallbackReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 687
    .local v0, msgType:I
    new-instance v1, Lcom/didi/taxi/helper/TaxiPushHelper$15;

    invoke-direct {v1, p0}, Lcom/didi/taxi/helper/TaxiPushHelper$15;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 694
    return-void
.end method

.method public static registerCostDetailListener(Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;Ljava/lang/String;)V
    .locals 2
    .parameter "l"
    .parameter "oid"

    .prologue
    .line 261
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTaxiDriverLetPayReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 262
    .local v0, msgType:I
    new-instance v1, Lcom/didi/taxi/helper/TaxiPushHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/didi/taxi/helper/TaxiPushHelper$5;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 269
    return-void
.end method

.method public static registerInnerCostDetailListener(Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 360
    sput-object p0, Lcom/didi/taxi/helper/TaxiPushHelper;->mInnerCostDetailListener:Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;

    .line 361
    return-void
.end method

.method public static registerOnCurrentCostChangedListener(Lcom/didi/taxi/helper/TaxiPushHelper$OnCurrentCostChangedListener;Ljava/lang/String;)V
    .locals 2
    .parameter "l"
    .parameter "oid"

    .prologue
    .line 638
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTaxiPassengerChargeReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 639
    .local v0, msgType:I
    new-instance v1, Lcom/didi/taxi/helper/TaxiPushHelper$13;

    invoke-direct {v1, p0, p1}, Lcom/didi/taxi/helper/TaxiPushHelper$13;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$OnCurrentCostChangedListener;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 646
    return-void
.end method

.method public static registerPaySuccessListener(Lcom/didi/taxi/helper/TaxiPushHelper$PaySuccessListener;Ljava/lang/String;)V
    .locals 2
    .parameter "l"
    .parameter "oid"

    .prologue
    .line 377
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTaxiDriverHasGetCashReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 378
    .local v0, msgType:I
    new-instance v1, Lcom/didi/taxi/helper/TaxiPushHelper$7;

    invoke-direct {v1, p0, p1}, Lcom/didi/taxi/helper/TaxiPushHelper$7;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$PaySuccessListener;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 385
    return-void
.end method

.method public static registerPositionPushListener(Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;Ljava/lang/String;)V
    .locals 2
    .parameter "l"
    .parameter "oid"

    .prologue
    .line 122
    sget-object v1, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeCdntSvrDownReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    .line 123
    .local v0, msgType:I
    new-instance v1, Lcom/didi/taxi/helper/TaxiPushHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/didi/taxi/helper/TaxiPushHelper$1;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 130
    return-void
.end method

.method public static registerShareTripCostDetailListener(Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;Ljava/lang/String;)V
    .locals 2
    .parameter "l"
    .parameter "oid"

    .prologue
    .line 473
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTaxiDriverShareTripLetPayReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 474
    .local v0, msgType:I
    new-instance v1, Lcom/didi/taxi/helper/TaxiPushHelper$11;

    invoke-direct {v1, p0, p1}, Lcom/didi/taxi/helper/TaxiPushHelper$11;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 481
    return-void
.end method

.method public static registerTerminateOrderNoticeListener(Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;Ljava/lang/String;)V
    .locals 2
    .parameter "l"
    .parameter "oid"

    .prologue
    .line 425
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTaxiPassengerTerminateOrderNoticeTripFriendReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 426
    .local v0, msgType:I
    new-instance v1, Lcom/didi/taxi/helper/TaxiPushHelper$9;

    invoke-direct {v1, p0, p1}, Lcom/didi/taxi/helper/TaxiPushHelper$9;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 433
    return-void
.end method

.method public static registerTimelyRemindListener(Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 204
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTimelyRemindReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 205
    .local v0, msgType:I
    new-instance v1, Lcom/didi/taxi/helper/TaxiPushHelper$3;

    invoke-direct {v1, p0}, Lcom/didi/taxi/helper/TaxiPushHelper$3;-><init>(Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->registerPushMessageReveiveListener(ILcom/didi/frame/push/Push$OnPushMessageReceivedListener;)V

    .line 212
    return-void
.end method

.method public static sendLocation(Z)V
    .locals 1
    .parameter "pull"

    .prologue
    .line 56
    sget-object v0, Lcom/didi/frame/protobuffer/PassengerState;->PassengerStateNormal:Lcom/didi/frame/protobuffer/PassengerState;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/PassengerState;->getValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/didi/taxi/helper/TaxiPushHelper;->sendLocation(ZI)V

    .line 57
    return-void
.end method

.method public static sendLocation(ZI)V
    .locals 17
    .parameter "pull"
    .parameter "state"

    .prologue
    .line 64
    const-wide/16 v4, 0x0

    .line 65
    .local v4, lat:D
    const-wide/16 v6, 0x0

    .line 68
    .local v6, lng:D
    :try_start_0
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v12

    .line 69
    .local v12, strLat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v13

    .line 70
    .local v13, strLng:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 71
    invoke-static {v13}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 78
    sget-object v14, Lcom/didi/frame/protobuffer/CollectSvrMessageType;->kCollectSvrMessageTypeCollectSvrCoordinateReq:Lcom/didi/frame/protobuffer/CollectSvrMessageType;

    invoke-virtual {v14}, Lcom/didi/frame/protobuffer/CollectSvrMessageType;->getValue()I

    move-result v10

    .line 80
    .local v10, payloadType:I
    new-instance v2, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    invoke-direct {v2}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;-><init>()V

    .line 81
    .local v2, cdntUpBuilder:Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->phone(Ljava/lang/String;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 82
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->lat(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 83
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->lng(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 84
    sget-object v14, Lcom/didi/frame/protobuffer/CoordinateType;->GCJ_02:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual {v2, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->type(Lcom/didi/frame/protobuffer/CoordinateType;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 85
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pull_peer(Ljava/lang/Boolean;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 86
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->state(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 87
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/soso/location/LocationController;->getAccuracy()F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->accuracy(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 88
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/soso/location/LocationController;->getProvider()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->gps_source(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 89
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/soso/location/LocationController;->getSpeed()F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->speed(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 90
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/soso/location/LocationController;->getBearing()F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->direction(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 92
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 93
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v14

    invoke-interface {v14}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pre_lng(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 94
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v14

    invoke-interface {v14}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->pre_lat(Ljava/lang/Double;)Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;

    .line 97
    :cond_0
    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;->build()Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;

    move-result-object v1

    .line 99
    .local v1, cdntUp:Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sending----- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 101
    sget-object v14, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeCollectSvrNoRspReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v14}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v9

    .line 102
    .local v9, msgType:I
    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;->toByteArray()[B

    move-result-object v0

    .line 104
    .local v0, byteStr:[B
    new-instance v8, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    invoke-direct {v8}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;-><init>()V

    .line 105
    .local v8, msgBuilder:Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 106
    const/4 v14, 0x0

    array-length v15, v0

    invoke-static {v0, v14, v15}, Lokio/ByteString;->of([BII)Lokio/ByteString;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->payload(Lokio/ByteString;)Lcom/didi/frame/protobuffer/BinaryMsg$Builder;

    .line 108
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v11

    .line 109
    .local v11, pushContext:Lcom/didi/frame/push/Push;
    if-eqz v11, :cond_1

    .line 110
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v8}, Lcom/didi/frame/protobuffer/BinaryMsg$Builder;->build()Lcom/didi/frame/protobuffer/BinaryMsg;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/didi/frame/protobuffer/BinaryMsg;->toByteArray()[B

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v14}, Lcom/didi/frame/push/Push;->doSendPushMessage([Ljava/lang/Object;)V

    .line 112
    .end local v0           #byteStr:[B
    .end local v1           #cdntUp:Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq;
    .end local v2           #cdntUpBuilder:Lcom/didi/frame/protobuffer/CollectSvrCoordinateReq$Builder;
    .end local v8           #msgBuilder:Lcom/didi/frame/protobuffer/BinaryMsg$Builder;
    .end local v9           #msgType:I
    .end local v10           #payloadType:I
    .end local v11           #pushContext:Lcom/didi/frame/push/Push;
    .end local v12           #strLat:Ljava/lang/String;
    .end local v13           #strLng:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v3

    .line 74
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static unregisterBusinessPaySuccessListener()V
    .locals 2

    .prologue
    .line 719
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTaxiPassengerBussinessCallbackReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 720
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 721
    return-void
.end method

.method public static unregisterCostDetailListener()V
    .locals 2

    .prologue
    .line 345
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTaxiDriverLetPayReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 346
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 347
    return-void
.end method

.method public static unregisterInnerCostDetailListener()V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/taxi/helper/TaxiPushHelper;->mInnerCostDetailListener:Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;

    .line 365
    return-void
.end method

.method public static unregisterOnCurrentCostChangedListener()V
    .locals 2

    .prologue
    .line 673
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTaxiPassengerChargeReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 674
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 675
    return-void
.end method

.method public static unregisterPaySuccessListener()V
    .locals 2

    .prologue
    .line 413
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTaxiDriverHasGetCashReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 414
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 415
    return-void
.end method

.method public static unregisterPostionPushListener()V
    .locals 2

    .prologue
    .line 193
    sget-object v1, Lcom/didi/frame/protobuffer/MsgType;->kMsgTypeCdntSvrDownReq:Lcom/didi/frame/protobuffer/MsgType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/MsgType;->getValue()I

    move-result v0

    .line 194
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 195
    return-void
.end method

.method public static unregisterShareTripCostDetailListener()V
    .locals 2

    .prologue
    .line 626
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTaxiDriverShareTripLetPayReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 627
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 628
    return-void
.end method

.method public static unregisterTerminateOrderNoticeListener()V
    .locals 2

    .prologue
    .line 462
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTaxiPassengerTerminateOrderNoticeTripFriendReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 463
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 464
    return-void
.end method

.method public static unregisterTimelyRemindListener()V
    .locals 2

    .prologue
    .line 250
    sget-object v1, Lcom/didi/frame/protobuffer/PushMessageType;->kPushMessageTypeTimelyRemindReq:Lcom/didi/frame/protobuffer/PushMessageType;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PushMessageType;->getValue()I

    move-result v0

    .line 251
    .local v0, msgType:I
    invoke-static {v0}, Lcom/didi/frame/push/Push;->unregisterPushMessageReceiveListener(I)V

    .line 252
    return-void
.end method
