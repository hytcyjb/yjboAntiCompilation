.class Lcom/didi/flier/ui/fragment/FlierConfirmFragment$8;
.super Ljava/lang/Object;
.source "FlierConfirmFragment.java"

# interfaces
.implements Lcom/didi/car/listener/DynamicUpdatePriceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$8;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCall()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$8;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$900(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$8;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$900(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/helper/CarPopupHelper;->disMissPopupWindow()V

    .line 438
    :cond_0
    return-void
.end method

.method public confirmCall()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierConfirmFragment$8;->this$0:Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->confirmSendOrder()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;->access$500(Lcom/didi/flier/ui/fragment/FlierConfirmFragment;)V

    .line 432
    return-void
.end method
