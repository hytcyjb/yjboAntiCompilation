.class Lcom/didi/flier/ui/fragment/FlierResendFragment$3;
.super Ljava/lang/Object;
.source "FlierResendFragment.java"

# interfaces
.implements Lcom/didi/car/listener/DynamicUpdatePriceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$3;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCall()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$3;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$600(Lcom/didi/flier/ui/fragment/FlierResendFragment;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$3;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$600(Lcom/didi/flier/ui/fragment/FlierResendFragment;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/helper/CarPopupHelper;->disMissPopupWindow()V

    .line 190
    :cond_0
    return-void
.end method

.method public confirmCall()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$3;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierResendFragment;->resend()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$500(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V

    .line 184
    return-void
.end method
