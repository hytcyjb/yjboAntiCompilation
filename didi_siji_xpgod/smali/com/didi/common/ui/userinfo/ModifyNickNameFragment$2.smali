.class Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$2;
.super Ljava/lang/Object;
.source "ModifyNickNameFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 87
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mNickNameEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->access$100(Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;

    const v3, 0x7f0b0298

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/ui/component/UiHelper;->showTip(Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;

    const v3, 0x7f0b0297

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/ui/component/UiHelper;->showTip(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    .line 101
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;

    const v3, 0x7f0b0418

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/ui/component/UiHelper;->showTip(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_3
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;

    invoke-virtual {v2}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mNickNameEdit:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->access$100(Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 105
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v1, data:Landroid/content/Intent;
    const-string v2, "nickname"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mParentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->access$200(Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 108
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->mParentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;->access$200(Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
