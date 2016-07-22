.class Lcom/didi/car/ui/fragment/CarConfirmFragment$8;
.super Ljava/lang/Object;
.source "CarConfirmFragment.java"

# interfaces
.implements Lcom/didi/car/listener/DynamicUpdatePriceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarConfirmFragment;
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
    .line 418
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCall()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$900(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$900(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/helper/CarPopupHelper;->disMissPopupWindow()V

    .line 430
    :cond_0
    return-void
.end method

.method public confirmCall()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->confirmSendOrder()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$500(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    .line 423
    return-void
.end method
