.class synthetic Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;
.super Ljava/lang/Object;
.source "KDOrderHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/http/response/KDOrderHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$didi$ddrive$model$OrderState:[I

.field static final synthetic $SwitchMap$com$didi$ddrive$model$PayState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/didi/ddrive/model/OrderState;->values()[Lcom/didi/ddrive/model/OrderState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    :try_start_0
    sget-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->NEW:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->ACCEPT:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->ARRIVE:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->START_SERVICE:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->END_SERVICE:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->SUBMIT_CHARGE:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->TIMEOUT:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    .line 87
    :goto_7
    invoke-static {}, Lcom/didi/ddrive/model/PayState;->values()[Lcom/didi/ddrive/model/PayState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$PayState:[I

    :try_start_8
    sget-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$PayState:[I

    sget-object v1, Lcom/didi/ddrive/model/PayState;->UnPayed:Lcom/didi/ddrive/model/PayState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/PayState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$PayState:[I

    sget-object v1, Lcom/didi/ddrive/model/PayState;->NoFee:Lcom/didi/ddrive/model/PayState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/PayState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$PayState:[I

    sget-object v1, Lcom/didi/ddrive/model/PayState;->Payed:Lcom/didi/ddrive/model/PayState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/PayState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lcom/didi/ddrive/net/http/response/KDOrderHistory$1;->$SwitchMap$com$didi$ddrive$model$PayState:[I

    sget-object v1, Lcom/didi/ddrive/model/PayState;->CLOSED:Lcom/didi/ddrive/model/PayState;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/PayState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    .line 76
    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
