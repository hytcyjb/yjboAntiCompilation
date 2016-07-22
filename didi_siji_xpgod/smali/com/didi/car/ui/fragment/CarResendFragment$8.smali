.class Lcom/didi/car/ui/fragment/CarResendFragment$8;
.super Lcom/didi/common/net/ResponseListener;
.source "CarResendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarResendFragment;->resend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarOrder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

.field final synthetic val$carOrder:Lcom/didi/car/model/CarOrder;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarResendFragment;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarResendFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    iput-object p2, p0, Lcom/didi/car/ui/fragment/CarResendFragment$8;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 356
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 357
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carresend click create order error,oid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarResendFragment$8;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/didi/car/model/CarOrder;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errmsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 353
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment$8;->onError(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 365
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carresend click create order error,oid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarResendFragment$8;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/didi/car/model/CarOrder;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errmsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 353
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment$8;->onFail(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method public onFinish(Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "order"

    .prologue
    .line 382
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 383
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 353
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment$8;->onFinish(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment$8;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->setSent()V

    .line 375
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    #calls: Lcom/didi/car/ui/fragment/CarResendFragment;->onResend(Lcom/didi/car/model/CarOrder;)V
    invoke-static {v0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment;->access$800(Lcom/didi/car/ui/fragment/CarResendFragment;Lcom/didi/car/model/CarOrder;)V

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carresend click create order error,oid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarResendFragment$8;->val$carOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/didi/car/model/CarOrder;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errmsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 353
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment$8;->onSuccess(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method
