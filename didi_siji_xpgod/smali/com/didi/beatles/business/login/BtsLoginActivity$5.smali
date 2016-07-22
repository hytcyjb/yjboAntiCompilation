.class Lcom/didi/beatles/business/login/BtsLoginActivity$5;
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
    .line 444
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$5;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

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

    .line 456
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$5;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, code:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$5;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$900(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$5;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$5;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->getColorResources(I)I
    invoke-static {v3, v5}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1400(Lcom/didi/beatles/business/login/BtsLoginActivity;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$5;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 461
    const v2, 0x7f0b02a3

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 463
    :cond_0
    invoke-static {v1}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 472
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 466
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$5;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 467
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$5;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$5;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    const v4, 0x7f07003e

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->getColorResources(I)I
    invoke-static {v3, v4}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1400(Lcom/didi/beatles/business/login/BtsLoginActivity;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 469
    :cond_2
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$5;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 470
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$5;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$5;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->getColorResources(I)I
    invoke-static {v3, v5}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1400(Lcom/didi/beatles/business/login/BtsLoginActivity;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 452
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 448
    return-void
.end method
