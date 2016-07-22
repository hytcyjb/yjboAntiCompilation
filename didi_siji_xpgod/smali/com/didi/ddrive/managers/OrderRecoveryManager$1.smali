.class Lcom/didi/ddrive/managers/OrderRecoveryManager$1;
.super Ljava/lang/Object;
.source "OrderRecoveryManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/managers/OrderRecoveryManager;->queryLastOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener",
        "<",
        "Lcom/didi/ddrive/net/http/response/LastOrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/managers/OrderRecoveryManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/managers/OrderRecoveryManager;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$1;->this$0:Lcom/didi/ddrive/managers/OrderRecoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 90
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/OrderRecoveryEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/didi/ddrive/eventbus/event/OrderRecoveryEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/LastOrderResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 68
    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/model/DDriveOrder;

    .line 69
    .local v0, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-wide v2, p1, Lcom/didi/ddrive/net/http/response/LastOrderResponse;->did:J

    iput-wide v2, v0, Lcom/didi/ddrive/model/DDriveOrder;->did:J

    .line 70
    iget-wide v2, p1, Lcom/didi/ddrive/net/http/response/LastOrderResponse;->oid:J

    iput-wide v2, v0, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    .line 72
    iget v2, p1, Lcom/didi/ddrive/net/http/response/LastOrderResponse;->orderState:I

    invoke-static {v2}, Lcom/didi/ddrive/model/OrderState;->fromStateCode(I)Lcom/didi/ddrive/model/OrderState;

    move-result-object v1

    .line 73
    .local v1, state:Lcom/didi/ddrive/model/OrderState;
    sget-object v2, Lcom/didi/ddrive/managers/OrderRecoveryManager$3;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    invoke-virtual {v1}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/didi/ddrive/eventbus/event/OrderRecoveryEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/didi/ddrive/eventbus/event/OrderRecoveryEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v2, p0, Lcom/didi/ddrive/managers/OrderRecoveryManager$1;->this$0:Lcom/didi/ddrive/managers/OrderRecoveryManager;

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->queryOrderDetail()V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    check-cast p1, Lcom/didi/ddrive/net/http/response/LastOrderResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/managers/OrderRecoveryManager$1;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/LastOrderResponse;)V

    return-void
.end method
