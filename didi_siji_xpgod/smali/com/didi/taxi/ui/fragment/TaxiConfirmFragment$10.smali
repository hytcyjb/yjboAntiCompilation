.class Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$10;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiConfirmFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->sendRealtimeOrder()V
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
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$10;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 483
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$10;->onError(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onError(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taxiconfirm click  It\'s realtime order create error ,errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errmsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$10;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$1200(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 510
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 483
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$10;->onFail(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onFail(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taxiconfirm click  It\'s realtime order create failed ,errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errmsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$10;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$1200(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 503
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 483
    check-cast p1, Lcom/didi/taxi/model/TaxiOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$10;->onSuccess(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 487
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

    .line 488
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(Ljava/lang/String;)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$10;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->onRealtimeOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v0, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$1100(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Lcom/didi/taxi/model/TaxiOrder;)V

    .line 491
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setIsFirstUseCarPool(Z)V

    .line 492
    invoke-static {}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onCustEvent3()V

    .line 493
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$10;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$10;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->mConfirmBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$500(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$700(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Landroid/view/View;)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taxiconfirm click  It\'s realtime order create successed ,errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 496
    return-void
.end method
