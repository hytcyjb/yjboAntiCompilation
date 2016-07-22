.class Lcom/didi/common/ui/fragment/CommonLoginFragment$5;
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
    .line 451
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    const v5, 0x7f070021

    const/4 v4, 0x0

    .line 463
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCode:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$700(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, code:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1000(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 466
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->getColorResources(I)I
    invoke-static {v3, v5}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonLoginFragment;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lx/TextView;->setTextColor(I)V

    .line 467
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    .line 468
    const v2, 0x7f0b02a3

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 470
    :cond_0
    invoke-static {v1}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 479
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 473
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lx/TextView;->setEnabled(Z)V

    .line 474
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    const v4, 0x7f07003e

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->getColorResources(I)I
    invoke-static {v3, v4}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonLoginFragment;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lx/TextView;->setTextColor(I)V

    goto :goto_0

    .line 476
    :cond_2
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    .line 477
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->getColorResources(I)I
    invoke-static {v3, v5}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1500(Lcom/didi/common/ui/fragment/CommonLoginFragment;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lx/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 459
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 455
    return-void
.end method
