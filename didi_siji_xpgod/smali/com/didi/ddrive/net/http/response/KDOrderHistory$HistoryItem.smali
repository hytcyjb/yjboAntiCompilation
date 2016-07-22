.class public Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;
.super Ljava/lang/Object;
.source "KDOrderHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/http/response/KDOrderHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryItem"
.end annotation


# instance fields
.field public endPoiName:Ljava/lang/String;

.field public oid:J

.field public orderState:I

.field public payState:I

.field public sendType:I

.field public star:I

.field public startPoiName:Ljava/lang/String;

.field public stime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toDDHistory(Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;)Lcom/didi/common/model/OrderHistory;
    .locals 13
    .parameter "item"

    .prologue
    const v12, 0x7f0b01ba

    const v11, 0x7f0b0181

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 57
    new-instance v1, Lcom/didi/common/model/OrderHistory;

    invoke-direct {v1}, Lcom/didi/common/model/OrderHistory;-><init>()V

    .line 58
    .local v1, history:Lcom/didi/common/model/OrderHistory;
    iget-object v6, p0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;->startPoiName:Ljava/lang/String;

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->from:Ljava/lang/String;

    .line 59
    iget-object v6, p0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;->endPoiName:Ljava/lang/String;

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->to:Ljava/lang/String;

    .line 60
    sget-object v6, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->business:Lcom/didi/frame/business/Business;

    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;->oid:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->oid:Ljava/lang/String;

    .line 62
    iget v6, p0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;->payState:I

    iput v6, v1, Lcom/didi/common/model/OrderHistory;->payState:I

    .line 64
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 65
    .local v5, sdf:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v6, p0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;->stime:J

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 66
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v5, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->time:Ljava/lang/String;

    .line 68
    iget v6, p0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;->orderState:I

    invoke-static {v6}, Lcom/didi/ddrive/model/OrderState;->fromStateCode(I)Lcom/didi/ddrive/model/OrderState;

    move-result-object v2

    .line 71
    .local v2, orderState:Lcom/didi/ddrive/model/OrderState;
    iget v4, p0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$HistoryItem;->payState:I

    .line 72
    .local v4, payStateCode:I
    sget-object v6, Lcom/didi/ddrive/model/PayState;->CLOSED:Lcom/didi/ddrive/model/PayState;

    iget v6, v6, Lcom/didi/ddrive/model/PayState;->code:I

    if-le v4, v6, :cond_0

    .line 73
    sget-object v6, Lcom/didi/ddrive/model/PayState;->Payed:Lcom/didi/ddrive/model/PayState;

    iget v4, v6, Lcom/didi/ddrive/model/PayState;->code:I

    .line 75
    :cond_0
    invoke-static {v4}, Lcom/didi/ddrive/model/PayState;->fromStateCode(I)Lcom/didi/ddrive/model/PayState;

    move-result-object v3

    .line 76
    .local v3, payState:Lcom/didi/ddrive/model/PayState;
    sget-object v6, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    invoke-virtual {v2}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 144
    :goto_0
    return-object v1

    .line 82
    :pswitch_0
    invoke-static {v12}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->status:Ljava/lang/String;

    .line 83
    iput-boolean v10, v1, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    .line 84
    iput v10, v1, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    goto :goto_0

    .line 87
    :pswitch_1
    sget-object v6, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$PayState:[I

    invoke-virtual {v3}, Lcom/didi/ddrive/model/PayState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 105
    invoke-static {v11}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->status:Ljava/lang/String;

    .line 106
    iput-boolean v9, v1, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    .line 107
    iput v9, v1, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-static {v12}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->status:Ljava/lang/String;

    .line 91
    iput-boolean v10, v1, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    .line 92
    iput v10, v1, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    goto :goto_0

    .line 95
    :pswitch_3
    invoke-static {v11}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->status:Ljava/lang/String;

    .line 96
    iput-boolean v9, v1, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    .line 97
    iput v9, v1, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    goto :goto_0

    .line 100
    :pswitch_4
    invoke-static {v11}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->status:Ljava/lang/String;

    .line 101
    iput-boolean v9, v1, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    .line 102
    iput v9, v1, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    goto :goto_0

    .line 113
    :pswitch_5
    sget-object v6, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$PayState:[I

    invoke-virtual {v3}, Lcom/didi/ddrive/model/PayState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 130
    :pswitch_6
    invoke-static {v11}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->status:Ljava/lang/String;

    .line 131
    iput-boolean v9, v1, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    .line 132
    iput v9, v1, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    goto :goto_0

    .line 115
    :pswitch_7
    invoke-static {v12}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->status:Ljava/lang/String;

    .line 116
    iput-boolean v10, v1, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    .line 117
    iput v10, v1, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    goto :goto_0

    .line 120
    :pswitch_8
    invoke-static {v11}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->status:Ljava/lang/String;

    .line 121
    iput-boolean v9, v1, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    .line 122
    iput v9, v1, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    goto :goto_0

    .line 125
    :pswitch_9
    invoke-static {v11}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->status:Ljava/lang/String;

    .line 126
    iput-boolean v9, v1, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    .line 127
    iput v9, v1, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    goto :goto_0

    .line 138
    :pswitch_a
    const v6, 0x7f0b0134

    invoke-static {v6}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/common/model/OrderHistory;->status:Ljava/lang/String;

    .line 139
    iput-boolean v9, v1, Lcom/didi/common/model/OrderHistory;->unfinished:Z

    .line 140
    iput v9, v1, Lcom/didi/common/model/OrderHistory;->orderStatus:I

    goto/16 :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_a
    .end packed-switch

    .line 87
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 113
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
