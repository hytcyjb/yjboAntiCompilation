.class Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$9;
.super Ljava/lang/Object;
.source "TaxiConfirmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->onResume()V
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
    .line 466
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 469
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget v0, v0, Lcom/didi/common/model/CommonAttributes;->autoSend:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 471
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->autoSend:I

    .line 472
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->mOnConfirmListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$1000(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->getConfirmText()Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 473
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$9;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->getConfirmText()Landroid/widget/TextView;

    move-result-object v1

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->disableSendConfirmBtn(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$600(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;Landroid/view/View;)V

    .line 475
    :cond_0
    return-void
.end method
