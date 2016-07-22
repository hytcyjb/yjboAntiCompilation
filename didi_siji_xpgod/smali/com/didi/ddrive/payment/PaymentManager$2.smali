.class Lcom/didi/ddrive/payment/PaymentManager$2;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/payment/PaymentManager;->queryPayedDetail()V
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
        "Lcom/didi/ddrive/net/http/response/PayedDetail;",
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
    .line 202
    iput-object p1, p0, Lcom/didi/ddrive/payment/PaymentManager$2;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKDHttpRequestFailure(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 212
    new-instance v0, Lcom/didi/ddrive/eventbus/event/PayedDetailEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/didi/ddrive/eventbus/event/PayedDetailEvent;-><init>(Z)V

    .line 213
    .local v0, event:Lcom/didi/ddrive/eventbus/event/PayedDetailEvent;
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/PayedDetail;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager$2;->this$0:Lcom/didi/ddrive/payment/PaymentManager;

    #setter for: Lcom/didi/ddrive/payment/PaymentManager;->mPayedDetail:Lcom/didi/ddrive/net/http/response/PayedDetail;
    invoke-static {v1, p1}, Lcom/didi/ddrive/payment/PaymentManager;->access$202(Lcom/didi/ddrive/payment/PaymentManager;Lcom/didi/ddrive/net/http/response/PayedDetail;)Lcom/didi/ddrive/net/http/response/PayedDetail;

    .line 206
    new-instance v0, Lcom/didi/ddrive/eventbus/event/PayedDetailEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/didi/ddrive/eventbus/event/PayedDetailEvent;-><init>(Z)V

    .line 207
    .local v0, event:Lcom/didi/ddrive/eventbus/event/PayedDetailEvent;
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public bridge synthetic onKDHttpRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 202
    check-cast p1, Lcom/didi/ddrive/net/http/response/PayedDetail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/payment/PaymentManager$2;->onKDHttpRequestSuccess(Lcom/didi/ddrive/net/http/response/PayedDetail;)V

    return-void
.end method
