.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$1;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;->onGetState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/taxi/model/TaxiOrderState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;)V
    .locals 0
    .parameter

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1394
    check-cast p1, Lcom/didi/taxi/model/TaxiOrderState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$1;->onFinish(Lcom/didi/taxi/model/TaxiOrderState;)V

    return-void
.end method

.method public onFinish(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOrderStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrderState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1403
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;

    iget-object v0, v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->onGetOrderStatus(Lcom/didi/taxi/model/TaxiOrderState;)V
    invoke-static {v0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$4600(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 1404
    iget v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->status:I

    sput v0, Lcom/didi/common/util/Constant;->TaxiOrderType:I

    .line 1406
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1394
    check-cast p1, Lcom/didi/taxi/model/TaxiOrderState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$1;->onSuccess(Lcom/didi/taxi/model/TaxiOrderState;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$1;->this$1:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;

    iget-object v0, v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->addRouteLine(Lcom/didi/taxi/model/TaxiOrderState;)V
    invoke-static {v0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$4500(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 1399
    return-void
.end method
