.class Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$3;
.super Ljava/lang/Object;
.source "ModifyUserDesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$3;->this$0:Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 117
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$3;->this$0:Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mSignEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->access$200(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 119
    :cond_0
    const v2, 0x7f0b0298

    invoke-static {v2}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    .line 144
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$3;->this$0:Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;

    const v3, 0x7f0b0297

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/ui/component/UiHelper;->showTip(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    if-le v2, v3, :cond_3

    .line 131
    const v2, 0x7f0b0299

    invoke-static {v2}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    goto :goto_0

    .line 134
    :cond_3
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$3;->this$0:Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;

    invoke-virtual {v2}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$3;->this$0:Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mSignEdit:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->access$200(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 135
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v1, data:Landroid/content/Intent;
    const-string v2, "usersign"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$3;->this$0:Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mUserSign:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->access$300(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    const-string v2, "isModify"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    :goto_1
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$3;->this$0:Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mParentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->access$400(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 143
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment$3;->this$0:Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->mParentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;->access$400(Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 140
    :cond_4
    const-string v2, "isModify"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method
