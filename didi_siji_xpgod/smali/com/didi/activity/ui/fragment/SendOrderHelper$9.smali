.class Lcom/didi/activity/ui/fragment/SendOrderHelper$9;
.super Lcom/didi/common/net/ResponseListener;
.source "SendOrderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendTaxiBookingOrder()V
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
    .line 529
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$9;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 529
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper$9;->onError(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onError(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrder;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$9;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$1000(Lcom/didi/activity/ui/fragment/SendOrderHelper;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 544
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 529
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper$9;->onFail(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onFail(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrder;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$9;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$1000(Lcom/didi/activity/ui/fragment/SendOrderHelper;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 539
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 529
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper$9;->onSuccess(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 1
    .parameter "order"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$9;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->onRealtimeOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$900(Lcom/didi/activity/ui/fragment/SendOrderHelper;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 533
    invoke-static {}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onCustEvent3()V

    .line 534
    return-void
.end method
