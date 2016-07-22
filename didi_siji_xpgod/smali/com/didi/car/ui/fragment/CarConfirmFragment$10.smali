.class Lcom/didi/car/ui/fragment/CarConfirmFragment$10;
.super Ljava/lang/Object;
.source "CarConfirmFragment.java"

# interfaces
.implements Lcom/didi/frame/business/terminator/OrderTerminatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarConfirmFragment;->cancelOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$10;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderTerminateError(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V
    .locals 2
    .parameter "base"
    .parameter "extras"

    .prologue
    .line 563
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 564
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carconfirm click , taxiorder cancel error , errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/didi/common/model/BaseObject;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errmsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public onOrderTerminateFail(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V
    .locals 3
    .parameter "base"
    .parameter "extras"

    .prologue
    .line 556
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 557
    iget v0, p1, Lcom/didi/common/model/BaseObject;->errno:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/net/HttpHelper;->validateHttpState(ILjava/lang/String;Z)Z

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carconfirm click , taxiorder cancel failed , errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/didi/common/model/BaseObject;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errmsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public onOrderTerminateSuccess(Lcom/didi/common/model/BaseObject;Landroid/os/Bundle;)V
    .locals 6
    .parameter "base"
    .parameter "extras"

    .prologue
    .line 544
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 545
    invoke-static {}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getInstance()Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getCarFlagLastBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 546
    .local v0, last:Lcom/didi/frame/business/Business;
    if-eqz v0, :cond_0

    .line 547
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$10;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-virtual {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b027a

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$10;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-virtual {v4}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->getTextResId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getInstance()Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->resetFlag()V

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$10;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->checkProtectAndSendOrder()V
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1200(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carconfirm click , taxiorder cancelled and create new order, errno:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/didi/common/model/BaseObject;->errno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 552
    return-void
.end method
