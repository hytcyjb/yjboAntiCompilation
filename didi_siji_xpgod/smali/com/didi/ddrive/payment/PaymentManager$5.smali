.class Lcom/didi/ddrive/payment/PaymentManager$5;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/payment/PaymentManager;->queryPaymentSign()V
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
        "Lcom/didi/ddrive/net/http/response/PaySign;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/payment/PaymentManager;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/payment/PaymentManager;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/didi/ddrive/payment/PaymentManager$5;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 3
    .parameter "errorCode"

    .prologue
    const/4 v2, 0x0

    .line 318
    const v1, 0x30d91

    if-ne p1, v1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 322
    :cond_0
    const v1, 0x30d67

    if-ne p1, v1, :cond_1

    .line 323
    const-string v1, "PaymentManager"

    const-string v2, "need to refresh"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager$5;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/payment/PaymentManager;->notifyOrderChange(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_1
    const v1, 0x30d5e

    if-eq p1, v1, :cond_2

    const v1, 0x30d5f

    if-ne p1, v1, :cond_3

    .line 328
    :cond_2
    new-instance v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;-><init>()V

    .line 329
    .local v0, event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    iput-boolean v2, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    .line 330
    sget-object v1, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->state:Lcom/didi/ddrive/model/OrderState;

    .line 331
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->icon:Lcom/didi/common/ui/component/CommonDialog$IconType;

    .line 332
    const/high16 v1, 0x7f0b

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->msg:Ljava/lang/String;

    .line 333
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    :cond_3
    new-instance v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;-><init>()V

    .line 338
    .restart local v0       #event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    const v1, 0x7f0b0197

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->msg:Ljava/lang/String;

    .line 339
    iput-boolean v2, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    .line 340
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/PaySign;)V
    .locals 3
    .parameter "sign"

    .prologue
    const/4 v2, 0x1

    .line 304
    iget v1, p1, Lcom/didi/ddrive/net/http/response/PaySign;->payByVoucher:I

    if-ne v1, v2, :cond_0

    .line 305
    new-instance v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;-><init>()V

    .line 306
    .local v0, event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    iput-boolean v2, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    .line 307
    sget-object v1, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->state:Lcom/didi/ddrive/model/OrderState;

    .line 308
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 314
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager$5;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    #setter for: Lcom/didi/ddrive/payment/PaymentManager;->mSign:Lcom/didi/ddrive/net/http/response/PaySign;
    invoke-static {v1, p1}, Lcom/didi/ddrive/payment/PaymentManager;->access$402(Lcom/didi/ddrive/payment/PaymentManager;Lcom/didi/ddrive/net/http/response/PaySign;)Lcom/didi/ddrive/net/http/response/PaySign;

    .line 312
    new-instance v0, Lcom/didi/ddrive/eventbus/event/PaySignEvent;

    invoke-direct {v0, v2}, Lcom/didi/ddrive/eventbus/event/PaySignEvent;-><init>(Z)V

    .line 313
    .local v0, event:Lcom/didi/ddrive/eventbus/event/PaySignEvent;
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 301
    check-cast p1, Lcom/didi/ddrive/net/http/response/PaySign;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/payment/PaymentManager$5;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/PaySign;)V

    return-void
.end method
