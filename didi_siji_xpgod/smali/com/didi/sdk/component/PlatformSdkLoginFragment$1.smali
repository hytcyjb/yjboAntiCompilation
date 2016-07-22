.class Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;
.super Landroid/os/Handler;
.source "PlatformSdkLoginFragment.java"


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
    .line 128
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

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

    .line 132
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 134
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    invoke-virtual {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 137
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 168
    :sswitch_1
    const-string v0, "--sdk-------smscode autologin"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    const/16 v1, 0x7db

    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->passportLogin(I)V
    invoke-static {v0, v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$500(Lcom/didi/sdk/component/PlatformSdkLoginFragment;I)V

    goto :goto_0

    .line 139
    :sswitch_2
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #setter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isTakeCode:Z
    invoke-static {v0, v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$002(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Z)Z

    goto :goto_0

    .line 142
    :sswitch_3
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    if-nez v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    new-instance v1, Lcom/didi/common/helper/DialogHelper;

    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    invoke-virtual {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0, v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$102(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/common/helper/DialogHelper;)Lcom/didi/common/helper/DialogHelper;

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tokenLogin:Lcom/didi/common/model/CommonToken;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$200(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/model/CommonToken;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tokenLogin:Lcom/didi/common/model/CommonToken;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$200(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/model/CommonToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/model/CommonToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tokenLogin:Lcom/didi/common/model/CommonToken;
    invoke-static {v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$200(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/model/CommonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/model/CommonToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 149
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 155
    :goto_1
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$300(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$300(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 157
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$300(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    goto/16 :goto_0

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    const v2, 0x7f0b024f

    invoke-virtual {v1, v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 153
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_1

    .line 162
    :sswitch_4
    const-string v0, "--sdk-------smscode CommonLogin SMS_SUCCESSED"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #setter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isSendSms:Z
    invoke-static {v0, v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$402(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Z)Z

    goto/16 :goto_0

    .line 137
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
