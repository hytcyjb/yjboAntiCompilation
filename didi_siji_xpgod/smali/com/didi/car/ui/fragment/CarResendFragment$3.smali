.class Lcom/didi/car/ui/fragment/CarResendFragment$3;
.super Ljava/lang/Object;
.source "CarResendFragment.java"

# interfaces
.implements Lcom/didi/car/listener/DynamicUpdatePriceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarResendFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCall()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarResendFragment;->access$600(Lcom/didi/car/ui/fragment/CarResendFragment;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarResendFragment;->access$600(Lcom/didi/car/ui/fragment/CarResendFragment;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/helper/CarPopupHelper;->disMissPopupWindow()V

    .line 184
    :cond_0
    return-void
.end method

.method public confirmCall()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment$3;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    #calls: Lcom/didi/car/ui/fragment/CarResendFragment;->resend()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarResendFragment;->access$500(Lcom/didi/car/ui/fragment/CarResendFragment;)V

    .line 177
    return-void
.end method
