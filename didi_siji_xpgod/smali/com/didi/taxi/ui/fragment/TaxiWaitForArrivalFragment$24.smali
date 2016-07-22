.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$24;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onPushConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/taxi/model/TaxiHistoryOrder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2083
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$24;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2083
    check-cast p1, Lcom/didi/taxi/model/TaxiHistoryOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$24;->onFinish(Lcom/didi/taxi/model/TaxiHistoryOrder;)V

    return-void
.end method

.method public onFinish(Lcom/didi/taxi/model/TaxiHistoryOrder;)V
    .locals 4
    .parameter "t"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2087
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiHistoryOrder;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2088
    iget v2, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->isOrderFinished:I

    if-ne v2, v0, :cond_2

    .line 2089
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$24;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    iget v3, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->isVip:I

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onOffLinePaySucceed(Z)V

    .line 2094
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 2089
    goto :goto_0

    .line 2091
    :cond_2
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$24;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    invoke-virtual {v0, v2, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onCostDetailFromDriverReceived(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V

    goto :goto_1
.end method
