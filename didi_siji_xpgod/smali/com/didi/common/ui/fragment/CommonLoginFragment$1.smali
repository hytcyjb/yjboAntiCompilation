.class Lcom/didi/common/ui/fragment/CommonLoginFragment$1;
.super Landroid/os/Handler;
.source "CommonLoginFragment.java"


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
    .line 142
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 148
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 151
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 182
    :sswitch_1
    const-string v0, "---------smscode autologin"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    const/16 v1, 0x7db

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->passportLogin(I)V
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$500(Lcom/didi/common/ui/fragment/CommonLoginFragment;I)V

    goto :goto_0

    .line 153
    :sswitch_2
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #setter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->isTakeCode:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$002(Lcom/didi/common/ui/fragment/CommonLoginFragment;Z)Z

    goto :goto_0

    .line 156
    :sswitch_3
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    new-instance v1, Lcom/didi/common/helper/DialogHelper;

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$102(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/helper/DialogHelper;)Lcom/didi/common/helper/DialogHelper;

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->tokenLogin:Lcom/didi/common/model/CommonToken;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$200(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/model/CommonToken;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->tokenLogin:Lcom/didi/common/model/CommonToken;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$200(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/model/CommonToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/model/CommonToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->tokenLogin:Lcom/didi/common/model/CommonToken;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$200(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/model/CommonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/model/CommonToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 163
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$300(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$300(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 171
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$300(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    goto/16 :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    const v2, 0x7f0b024f

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 167
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_1

    .line 176
    :sswitch_4
    const-string v0, "---------smscode CommonLogin SMS_SUCCESSED"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #setter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->isSendSms:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$402(Lcom/didi/common/ui/fragment/CommonLoginFragment;Z)Z

    goto/16 :goto_0

    .line 151
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2328 -> :sswitch_0
        0x7da -> :sswitch_1
        0x7dc -> :sswitch_3
        0x7de -> :sswitch_2
        0x2328 -> :sswitch_4
        0x2329 -> :sswitch_4
    .end sparse-switch
.end method
