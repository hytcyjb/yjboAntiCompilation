.class Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;
.super Ljava/lang/Object;
.source "TaxiConfirmFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 337
    const-string v1, "ptxcall_ck"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->isNullStartAndEndName()Z
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$400(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const v1, 0x7f0b036e

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    .line 375
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->mConfirmBtn:Landroid/view/View;
    invoke-static {v1, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$502(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Landroid/view/View;)Landroid/view/View;

    .line 344
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->disableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v1, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$600(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Landroid/view/View;)V

    .line 347
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stackTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/FragmentMgr;->peek()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stackFirst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/FragmentMgr;->peekPreFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 351
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->showLoginFragment()V

    .line 352
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v1, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$700(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Landroid/view/View;)V

    goto :goto_0

    .line 355
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->hasStartAddressSelected()Z

    move-result v0

    .line 356
    .local v0, selected:Z
    if-nez v0, :cond_2

    .line 357
    const v1, 0x7f0b03dc

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    .line 358
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v1, p1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$700(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Landroid/view/View;)V

    goto :goto_0

    .line 362
    :cond_2
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 363
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/price/PriceOperator;->hideContentPins()V

    .line 365
    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7$1;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7$1;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;)V

    const-wide/16 v2, 0x1388

    invoke-static {v1, v2, v3}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 374
    :cond_3
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$7;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->checkOrderAndSendOrder()V
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$800(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    goto/16 :goto_0
.end method
