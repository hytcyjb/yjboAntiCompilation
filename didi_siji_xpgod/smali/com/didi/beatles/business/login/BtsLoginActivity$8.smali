.class Lcom/didi/beatles/business/login/BtsLoginActivity$8;
.super Ljava/lang/Object;
.source "BtsLoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

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

    .line 515
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, code:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$900(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, phone:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 518
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 519
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 520
    const v2, 0x7f0b0479

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 522
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 523
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->oldPhone:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1900(Lcom/didi/beatles/business/login/BtsLoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 524
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mTimeCount:Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2000(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 525
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mTimeCount:Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2000(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->cancel()V

    .line 526
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    const/4 v3, 0x0

    #setter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mTimeCount:Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;
    invoke-static {v2, v3}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2002(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;)Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;

    .line 527
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0b024e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 530
    :cond_1
    const-string v2, "l_phone"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 533
    :cond_2
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 539
    :goto_0
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 547
    :goto_1
    return-void

    .line 535
    :cond_3
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 536
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 541
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 542
    const-string v2, "l_vcode"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 543
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 545
    :cond_5
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 507
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 511
    return-void
.end method
