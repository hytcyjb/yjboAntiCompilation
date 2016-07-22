.class Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;
.super Landroid/os/CountDownTimer;
.source "CommonLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;


# direct methods
.method public constructor <init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 896
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    .line 897
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 898
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 923
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    const v2, 0x7f07003e

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->getColorResources(I)I
    invoke-static {v1, v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonLoginFragment;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/TextView;->setTextColor(I)V

    .line 925
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx/TextView;->setEnabled(Z)V

    .line 926
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v0

    const v1, 0x7f0b024e

    invoke-virtual {v0, v1}, Lx/TextView;->setText(I)V

    .line 928
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .parameter "millisUntilFinished"

    .prologue
    const/4 v4, 0x0

    .line 905
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 906
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lx/TextView;->setEnabled(Z)V

    .line 907
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    const v3, 0x7f070026

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->getColorResources(I)I
    invoke-static {v2, v3}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonLoginFragment;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lx/TextView;->setTextColor(I)V

    .line 908
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-virtual {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 909
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 910
    .local v0, cnt:I
    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 911
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->tvNotReceived:Lx/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$3600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lx/TextView;->setVisibility(I)V

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-virtual {v3}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0b04e0

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    .end local v0           #cnt:I
    :cond_1
    return-void
.end method
