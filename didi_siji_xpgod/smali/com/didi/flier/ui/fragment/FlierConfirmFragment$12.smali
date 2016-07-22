.class Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;
.super Lcom/didi/common/net/ResponseListener;
.source "FlierConfirmFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->sendOrder()V
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
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->onRealtimeOrderCreateFail(Lcom/didi/car/model/CarOrder;)V
    invoke-static {v0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1600(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Lcom/didi/car/model/CarOrder;)V

    .line 667
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mConfirmBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1000(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1500(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Landroid/view/View;)V

    .line 668
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

    .line 669
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 647
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;->onError(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->onRealtimeOrderCreateFail(Lcom/didi/car/model/CarOrder;)V
    invoke-static {v0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1600(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Lcom/didi/car/model/CarOrder;)V

    .line 660
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mConfirmBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1000(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1500(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Landroid/view/View;)V

    .line 661
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

    .line 662
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 647
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;->onFail(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->onRealtimeOrderCreated(Lcom/didi/car/model/CarOrder;)V
    invoke-static {v0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1400(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Lcom/didi/car/model/CarOrder;)V

    .line 652
    invoke-static {}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onCustEvent3()V

    .line 653
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->mConfirmBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1000(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$1500(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;Landroid/view/View;)V

    .line 654
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

    .line 655
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 647
    check-cast p1, Lcom/didi/car/model/CarOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$12;->onSuccess(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method
