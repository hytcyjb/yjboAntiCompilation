.class Lcom/didi/car/ui/fragment/CarConfirmFragment$12;
.super Lcom/didi/common/net/ResponseListener;
.source "CarConfirmFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarConfirmFragment;->sendOrder()V
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
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->onRealtimeOrderCreateFail(Lcom/didi/car/model/CarOrder;)V
    invoke-static {v0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1600(Lcom/didi/car/ui/fragment/CarConfirmFragment;Lcom/didi/car/model/CarOrder;)V

    .line 668
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->mConfirmBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1000(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1500(Lcom/didi/car/ui/fragment/CarConfirmFragment;Landroid/view/View;)V

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carconfirm click  It\'s a order create error ,errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 648
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;->onError(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->onRealtimeOrderCreateFail(Lcom/didi/car/model/CarOrder;)V
    invoke-static {v0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1600(Lcom/didi/car/ui/fragment/CarConfirmFragment;Lcom/didi/car/model/CarOrder;)V

    .line 661
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->mConfirmBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1000(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1500(Lcom/didi/car/ui/fragment/CarConfirmFragment;Landroid/view/View;)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carconfirm click  It\'s a order create failed ,errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 648
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;->onFail(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->onRealtimeOrderCreated(Lcom/didi/car/model/CarOrder;)V
    invoke-static {v0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1400(Lcom/didi/car/ui/fragment/CarConfirmFragment;Lcom/didi/car/model/CarOrder;)V

    .line 653
    invoke-static {}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onCustEvent3()V

    .line 654
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->mConfirmBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1000(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1500(Lcom/didi/car/ui/fragment/CarConfirmFragment;Landroid/view/View;)V

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carconfirm click  It\'s a order create successed ,errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 648
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment$12;->onSuccess(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method
