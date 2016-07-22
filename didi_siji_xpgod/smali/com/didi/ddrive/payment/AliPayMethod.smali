.class public Lcom/didi/ddrive/payment/AliPayMethod;
.super Lcom/didi/ddrive/payment/PayMethod;
.source "AliPayMethod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/payment/AliPayMethod$PayResult;
    }
.end annotation


# instance fields
.field private mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

.field private mSign:Lcom/didi/ddrive/net/http/response/PaySign;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/didi/ddrive/payment/PayMethod;-><init>(Landroid/app/Activity;)V

    .line 26
    return-void
.end method

.method private notifyPaymentResult(Z)V
    .locals 4
    .parameter "ret"

    .prologue
    .line 68
    new-instance v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;-><init>()V

    .line 69
    .local v0, result:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    iput-boolean p1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    .line 70
    if-nez p1, :cond_0

    .line 71
    const v1, 0x7f0b0197

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->msg:Ljava/lang/String;

    .line 73
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->type:I

    .line 74
    const-string v1, "PaymentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pay channel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pay result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onPay(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/net/http/response/PaySign;)V
    .locals 1
    .parameter "bill"
    .parameter "sign"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/didi/ddrive/payment/AliPayMethod;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    .line 31
    iput-object p2, p0, Lcom/didi/ddrive/payment/AliPayMethod;->mSign:Lcom/didi/ddrive/net/http/response/PaySign;

    .line 32
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 37
    iget-object v5, p0, Lcom/didi/ddrive/payment/AliPayMethod;->mSign:Lcom/didi/ddrive/net/http/response/PaySign;

    iget-object v5, v5, Lcom/didi/ddrive/net/http/response/PaySign;->orderString:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/didi/ddrive/payment/AliPayMethod;->notifyPaymentResult(Z)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v5, p0, Lcom/didi/ddrive/payment/AliPayMethod;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 44
    .local v0, alipay:Lcom/alipay/sdk/app/PayTask;
    iget-object v5, p0, Lcom/didi/ddrive/payment/AliPayMethod;->mSign:Lcom/didi/ddrive/net/http/response/PaySign;

    iget-object v5, v5, Lcom/didi/ddrive/net/http/response/PaySign;->orderString:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, result:Ljava/lang/String;
    new-instance v1, Lcom/didi/ddrive/payment/AliPayMethod$PayResult;

    invoke-direct {v1, v2}, Lcom/didi/ddrive/payment/AliPayMethod$PayResult;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, payResult:Lcom/didi/ddrive/payment/AliPayMethod$PayResult;
    invoke-virtual {v1}, Lcom/didi/ddrive/payment/AliPayMethod$PayResult;->getResult()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, resultInfo:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/didi/ddrive/payment/AliPayMethod$PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, resultStatus:Ljava/lang/String;
    const-string v5, "9000"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 54
    const-string v5, "PaymentManager"

    const-string v6, "ali pay success"

    invoke-static {v5, v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/didi/ddrive/payment/AliPayMethod;->notifyPaymentResult(Z)V

    goto :goto_0

    .line 56
    :cond_2
    const-string v5, "60001"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 57
    const-string v5, "PaymentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ali pay fail "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_3
    const-string v5, "8000"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0
.end method
