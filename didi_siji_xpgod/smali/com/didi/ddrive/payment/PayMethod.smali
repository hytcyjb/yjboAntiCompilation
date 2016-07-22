.class public abstract Lcom/didi/ddrive/payment/PayMethod;
.super Ljava/lang/Object;
.source "PayMethod.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mCallBack:Lcom/didi/ddrive/payment/PayMethodCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/didi/ddrive/payment/PayMethod;->mActivity:Landroid/app/Activity;

    .line 18
    return-void
.end method


# virtual methods
.method protected callback(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/ddrive/payment/PayMethod;->mCallBack:Lcom/didi/ddrive/payment/PayMethodCallback;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/didi/ddrive/payment/PayMethod;->mCallBack:Lcom/didi/ddrive/payment/PayMethodCallback;

    invoke-interface {v0, p1}, Lcom/didi/ddrive/payment/PayMethodCallback;->onPayRequestSend(Ljava/lang/Object;)V

    .line 36
    :cond_0
    return-void
.end method

.method protected abstract onPay(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/net/http/response/PaySign;)V
.end method

.method public final pay(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/net/http/response/PaySign;)V
    .locals 0
    .parameter "bill"
    .parameter "sign"

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/didi/ddrive/payment/PayMethod;->onPay(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/net/http/response/PaySign;)V

    .line 30
    return-void
.end method

.method public setPayMethodCallback(Lcom/didi/ddrive/payment/PayMethodCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/didi/ddrive/payment/PayMethod;->mCallBack:Lcom/didi/ddrive/payment/PayMethodCallback;

    .line 22
    return-void
.end method
