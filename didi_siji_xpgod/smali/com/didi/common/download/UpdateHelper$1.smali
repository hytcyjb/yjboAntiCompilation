.class Lcom/didi/common/download/UpdateHelper$1;
.super Landroid/os/Handler;
.source "UpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/download/UpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/download/UpdateHelper;


# direct methods
.method constructor <init>(Lcom/didi/common/download/UpdateHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 60
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$000(Lcom/didi/common/download/UpdateHelper;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$000(Lcom/didi/common/download/UpdateHelper;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 63
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 124
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 68
    :pswitch_1
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 70
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #setter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v4}, Lcom/didi/common/download/UpdateHelper;->access$102(Lcom/didi/common/download/UpdateHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #setter for: Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v1, v4}, Lcom/didi/common/download/UpdateHelper;->access$002(Lcom/didi/common/download/UpdateHelper;Lcom/didi/common/helper/DialogHelper;)Lcom/didi/common/helper/DialogHelper;

    .line 74
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$200(Lcom/didi/common/download/UpdateHelper;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, mg:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$200(Lcom/didi/common/download/UpdateHelper;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b01cd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateErrorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    new-instance v2, Lcom/didi/common/helper/DialogHelper;

    iget-object v3, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/didi/common/download/UpdateHelper;->access$200(Lcom/didi/common/download/UpdateHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v1, v2}, Lcom/didi/common/download/UpdateHelper;->access$002(Lcom/didi/common/download/UpdateHelper;Lcom/didi/common/helper/DialogHelper;)Lcom/didi/common/helper/DialogHelper;

    .line 84
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$000(Lcom/didi/common/download/UpdateHelper;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$000(Lcom/didi/common/download/UpdateHelper;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v1

    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v1, v2}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 86
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$000(Lcom/didi/common/download/UpdateHelper;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v1

    const v2, 0x7f0b03fb

    invoke-virtual {v1, v2}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 87
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->myDialog:Lcom/didi/common/helper/DialogHelper;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$000(Lcom/didi/common/download/UpdateHelper;)Lcom/didi/common/helper/DialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto/16 :goto_0

    .line 80
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 90
    .end local v0           #mg:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-nez v1, :cond_4

    .line 91
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/didi/common/download/UpdateHelper;->access$102(Lcom/didi/common/download/UpdateHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 92
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 93
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 94
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 95
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 99
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 104
    :pswitch_3
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 105
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/didi/common/download/UpdateHelper;->access$100(Lcom/didi/common/download/UpdateHelper;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 106
    iget-object v1, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #setter for: Lcom/didi/common/download/UpdateHelper;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v4}, Lcom/didi/common/download/UpdateHelper;->access$102(Lcom/didi/common/download/UpdateHelper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 108
    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    invoke-static {}, Lcom/didi/common/download/UpdateHelper;->access$300()Lcom/didi/common/download/UpdateHelper$UpdatedListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 112
    invoke-static {}, Lcom/didi/common/download/UpdateHelper;->access$300()Lcom/didi/common/download/UpdateHelper$UpdatedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/common/download/UpdateHelper$UpdatedListener;->callback()V

    .line 114
    :cond_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 115
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->path:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/download/UpdateHelper;->access$400(Lcom/didi/common/download/UpdateHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/Utils;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_7
    new-instance v1, Lcom/didi/common/download/OTAMerge;

    iget-object v2, p0, Lcom/didi/common/download/UpdateHelper$1;->this$0:Lcom/didi/common/download/UpdateHelper;

    #getter for: Lcom/didi/common/download/UpdateHelper;->oldApk:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/common/download/UpdateHelper;->access$500(Lcom/didi/common/download/UpdateHelper;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/didi/common/download/OTAMerge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
