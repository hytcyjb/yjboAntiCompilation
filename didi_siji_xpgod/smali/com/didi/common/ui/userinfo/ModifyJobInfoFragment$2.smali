.class Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;
.super Ljava/lang/Object;
.source "ModifyJobInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const v6, 0x7f0b0298

    const v5, 0x7f0b0297

    const/16 v4, 0xf

    .line 94
    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mCompanyEdit:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->access$100(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, company:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mJobEdit:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->access$200(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, job:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    :cond_0
    invoke-static {v6}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    .line 131
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 101
    :cond_2
    invoke-static {v6}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_4

    .line 105
    const v3, 0x7f0b02a2

    invoke-static {v3}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    goto :goto_0

    .line 108
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_5

    .line 109
    const v3, 0x7f0b031c

    invoke-static {v3}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    goto :goto_0

    .line 112
    :cond_5
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->containIllegalCharCompany(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->containIllegalCharCompany(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 113
    :cond_6
    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;

    invoke-virtual {v3, v5}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/ui/component/UiHelper;->showTip(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 117
    :cond_8
    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;

    invoke-virtual {v3, v5}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/ui/component/UiHelper;->showTip(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_9
    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;

    invoke-virtual {v3}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mRootView:Landroid/view/View;
    invoke-static {v4}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->access$300(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 121
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v1, data:Landroid/content/Intent;
    const-string v3, "company"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v3, "job"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mCompany:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->access$400(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mJob:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->access$500(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 125
    const-string v3, "isModify"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    :goto_1
    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mParentActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->access$600(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 130
    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment$2;->this$0:Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;

    #getter for: Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->mParentActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;->access$600(Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 127
    :cond_a
    const-string v3, "isModify"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method
