.class Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;
.super Ljava/lang/Object;
.source "PlatformSdkLoginFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/sdk/component/PlatformSdkLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

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

    .line 503
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCode:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$700(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, code:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1000(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, phone:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1900(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    .line 507
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    .line 508
    const v2, 0x7f0b0479

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 510
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 511
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->oldPhone:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2000(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 512
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mTimeCount:Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 513
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mTimeCount:Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;->cancel()V

    .line 514
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    const/4 v3, 0x0

    #setter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mTimeCount:Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;
    invoke-static {v2, v3}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2102(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;)Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;

    .line 515
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1900(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;

    move-result-object v2

    const v3, 0x7f0b024e

    invoke-virtual {v2, v3}, Lx/TextView;->setText(I)V

    .line 518
    :cond_1
    const-string v2, "l_phone_sdk"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 521
    :cond_2
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1900(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lx/TextView;->setEnabled(Z)V

    .line 527
    :goto_0
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 535
    :goto_1
    return-void

    .line 523
    :cond_3
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCheck:Lx/TextView;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1900(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    .line 524
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 529
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 530
    const-string v2, "l_vcode_sdk"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 531
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lx/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 533
    :cond_5
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;

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
    .line 495
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 499
    return-void
.end method
