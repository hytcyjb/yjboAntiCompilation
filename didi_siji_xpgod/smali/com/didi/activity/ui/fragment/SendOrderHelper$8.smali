.class Lcom/didi/activity/ui/fragment/SendOrderHelper$8;
.super Lcom/didi/common/net/ResponseListener;
.source "SendOrderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendTaxiRealtimeOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/taxi/model/TaxiOrder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;


# direct methods
.method constructor <init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$8;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 505
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper$8;->onError(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onError(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$8;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$1000(Lcom/didi/activity/ui/fragment/SendOrderHelper;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 523
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 505
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper$8;->onFail(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onFail(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$8;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$1000(Lcom/didi/activity/ui/fragment/SendOrderHelper;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 519
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 505
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper$8;->onSuccess(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taxiOrderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(Ljava/lang/String;)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$8;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->onRealtimeOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$900(Lcom/didi/activity/ui/fragment/SendOrderHelper;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 513
    invoke-static {}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onCustEvent3()V

    .line 514
    return-void
.end method
