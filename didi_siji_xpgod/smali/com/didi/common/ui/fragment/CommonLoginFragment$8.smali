.class Lcom/didi/common/ui/fragment/CommonLoginFragment$8;
.super Ljava/lang/Object;
.source "CommonLoginFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 522
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCode:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$700(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, code:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1000(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, phone:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 525
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    .line 526
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    .line 527
    const v2, 0x7f0b0479

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 529
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 530
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->oldPhone:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2000(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 531
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mTimeCount:Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 532
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mTimeCount:Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->cancel()V

    .line 533
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    const/4 v3, 0x0

    #setter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mTimeCount:Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;
    invoke-static {v2, v3}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2102(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;)Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;

    .line 534
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    const v3, 0x7f0b024e

    invoke-virtual {v2, v3}, Lx/TextView;->setText(I)V

    .line 537
    :cond_1
    const-string v2, "l_phone"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 540
    :cond_2
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lx/TextView;->setEnabled(Z)V

    .line 546
    :goto_0
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 554
    :goto_1
    return-void

    .line 542
    :cond_3
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    .line 543
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 548
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 549
    const-string v2, "l_vcode"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lx/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 552
    :cond_5
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 514
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 518
    return-void
.end method
