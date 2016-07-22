.class Lcom/didi/beatles/business/login/BtsLoginActivity$1;
.super Landroid/os/Handler;
.source "BtsLoginActivity.java"


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
    .line 162
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

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

    .line 166
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 199
    :goto_0
    :sswitch_0
    return-void

    .line 170
    :sswitch_1
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #setter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->isTakeCode:Z
    invoke-static {v0, v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$002(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z

    goto :goto_0

    .line 173
    :sswitch_2
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$100(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    new-instance v1, Lcom/didi/common/helper/DialogHelper;

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {v1, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0, v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$102(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/common/helper/DialogHelper;)Lcom/didi/common/helper/DialogHelper;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->tokenLogin:Lcom/didi/common/model/CommonToken;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$200(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/model/CommonToken;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->tokenLogin:Lcom/didi/common/model/CommonToken;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$200(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/model/CommonToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/model/CommonToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$100(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->tokenLogin:Lcom/didi/common/model/CommonToken;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$200(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/model/CommonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/model/CommonToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$100(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 180
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$100(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$100(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    const v2, 0x7f0b024f

    invoke-virtual {v1, v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$100(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 184
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$100(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0

    .line 189
    :sswitch_3
    const-string v0, "---------smscode CommonLogin SMS_SUCCESSED"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #setter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->isSendSms:Z
    invoke-static {v0, v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$302(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z

    goto/16 :goto_0

    .line 195
    :sswitch_4
    const-string v0, "---------smscode autologin"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    const/16 v1, 0x7db

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->passportLogin(I)V
    invoke-static {v0, v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$400(Lcom/didi/beatles/business/login/BtsLoginActivity;I)V

    goto/16 :goto_0

    .line 168
    :sswitch_data_0
    .sparse-switch
        -0x2328 -> :sswitch_0
        0x7da -> :sswitch_4
        0x7dc -> :sswitch_2
        0x7de -> :sswitch_1
        0x2328 -> :sswitch_3
        0x2329 -> :sswitch_3
    .end sparse-switch
.end method
