.class Lcom/didi/ddrive/payment/PaymentManager$4;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/payment/PaymentManager;->changeVoucher(Lcom/didi/ddrive/net/http/response/DriveVoucherList$Voucher;)V
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
        "Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/payment/PaymentManager;

.field final synthetic val$request:Lcom/didi/ddrive/net/http/request/ChangeVoucherRequest;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/payment/PaymentManager;Lcom/didi/ddrive/net/http/request/ChangeVoucherRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/didi/ddrive/payment/PaymentManager$4;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    iput-object p2, p0, Lcom/didi/ddrive/payment/PaymentManager$4;->val$request:Lcom/didi/ddrive/net/http/request/ChangeVoucherRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 269
    new-instance v0, Lcom/didi/ddrive/eventbus/event/ChangeVoucherEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/didi/ddrive/eventbus/event/ChangeVoucherEvent;-><init>(Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;)V

    .line 270
    .local v0, event:Lcom/didi/ddrive/eventbus/event/ChangeVoucherEvent;
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 257
    iget-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager$4;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    #getter for: Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;
    invoke-static {v1}, Lcom/didi/ddrive/payment/PaymentManager;->access$000(Lcom/didi/ddrive/payment/PaymentManager;)Lcom/didi/ddrive/net/http/response/OrderBill;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager$4;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    #getter for: Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;
    invoke-static {v1}, Lcom/didi/ddrive/payment/PaymentManager;->access$000(Lcom/didi/ddrive/payment/PaymentManager;)Lcom/didi/ddrive/net/http/response/OrderBill;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/payment/PaymentManager$4;->val$request:Lcom/didi/ddrive/net/http/request/ChangeVoucherRequest;

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/request/ChangeVoucherRequest;->voucherId:J

    iput-wide v2, v1, Lcom/didi/ddrive/net/http/response/OrderBill;->voucherId:J

    .line 260
    iget-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager$4;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    #getter for: Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;
    invoke-static {v1}, Lcom/didi/ddrive/payment/PaymentManager;->access$000(Lcom/didi/ddrive/payment/PaymentManager;)Lcom/didi/ddrive/net/http/response/OrderBill;

    move-result-object v1

    iget-wide v2, p1, Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;->shouldPay:D

    iput-wide v2, v1, Lcom/didi/ddrive/net/http/response/OrderBill;->shouldPayFee:D

    .line 261
    iget-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager$4;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    #getter for: Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;
    invoke-static {v1}, Lcom/didi/ddrive/payment/PaymentManager;->access$000(Lcom/didi/ddrive/payment/PaymentManager;)Lcom/didi/ddrive/net/http/response/OrderBill;

    move-result-object v1

    iget-wide v2, p1, Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;->voucherMoney:D

    iput-wide v2, v1, Lcom/didi/ddrive/net/http/response/OrderBill;->voucherAmount:D

    .line 263
    :cond_0
    new-instance v0, Lcom/didi/ddrive/eventbus/event/ChangeVoucherEvent;

    invoke-direct {v0, p1}, Lcom/didi/ddrive/eventbus/event/ChangeVoucherEvent;-><init>(Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;)V

    .line 264
    .local v0, event:Lcom/didi/ddrive/eventbus/event/ChangeVoucherEvent;
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 254
    check-cast p1, Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/payment/PaymentManager$4;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;)V

    return-void
.end method
