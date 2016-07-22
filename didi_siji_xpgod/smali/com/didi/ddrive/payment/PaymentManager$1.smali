.class Lcom/didi/ddrive/payment/PaymentManager$1;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/payment/PaymentManager;->queryOrderBill(Ljava/lang/String;)V
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
        "Lcom/didi/ddrive/net/http/response/OrderBill;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/payment/PaymentManager;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/payment/PaymentManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/didi/ddrive/payment/PaymentManager$1;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    iput-object p2, p0, Lcom/didi/ddrive/payment/PaymentManager$1;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 184
    new-instance v0, Lcom/didi/ddrive/eventbus/event/OrderBillEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/didi/ddrive/eventbus/event/OrderBillEvent;-><init>(Z)V

    .line 185
    .local v0, event:Lcom/didi/ddrive/eventbus/event/OrderBillEvent;
    iget-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager$1;->val$tag:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/OrderBillEvent;->tag:Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 187
    iget-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager$1;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    invoke-static {v1}, Lcom/didi/ddrive/payment/PaymentManager;->access$108(Lcom/didi/ddrive/payment/PaymentManager;)I

    .line 188
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderBill;)V
    .locals 3
    .parameter "bill"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager$1;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    #setter for: Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;
    invoke-static {v1, p1}, Lcom/didi/ddrive/payment/PaymentManager;->access$002(Lcom/didi/ddrive/payment/PaymentManager;Lcom/didi/ddrive/net/http/response/OrderBill;)Lcom/didi/ddrive/net/http/response/OrderBill;

    .line 174
    new-instance v0, Lcom/didi/ddrive/eventbus/event/OrderBillEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/didi/ddrive/eventbus/event/OrderBillEvent;-><init>(Z)V

    .line 175
    .local v0, event:Lcom/didi/ddrive/eventbus/event/OrderBillEvent;
    iget-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager$1;->val$tag:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/OrderBillEvent;->tag:Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 178
    iget-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager$1;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    const/4 v2, 0x0

    #setter for: Lcom/didi/ddrive/payment/PaymentManager;->mRetryTime:I
    invoke-static {v1, v2}, Lcom/didi/ddrive/payment/PaymentManager;->access$102(Lcom/didi/ddrive/payment/PaymentManager;I)I

    .line 179
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 170
    check-cast p1, Lcom/didi/ddrive/net/http/response/OrderBill;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/payment/PaymentManager$1;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/OrderBill;)V

    return-void
.end method
