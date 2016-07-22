.class Lcom/didi/common/ui/fragment/CommonLoginFragment$3;
.super Ljava/lang/Object;
.source "CommonLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 306
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------smscode click isGetCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->isGetCode:Z
    invoke-static {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$800(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    const/4 v2, 0x1

    #setter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->isCodeClick:Z
    invoke-static {v1, v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$902(Lcom/didi/common/ui/fragment/CommonLoginFragment;Z)Z

    .line 312
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->isGetCode:Z
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$800(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    iget-object v1, v1, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsUtil:Lcom/didi/common/util/SMSUtil;

    invoke-virtual {v1}, Lcom/didi/common/util/SMSUtil;->unregisterSmsObserver()V

    .line 316
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1000(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, numberString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------smscode click numberString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 319
    const v1, 0x7f0b0479

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {v0}, Lcom/didi/common/util/Utils;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 322
    const v1, 0x7f0b047c

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-virtual {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    const v3, 0x7f0b035e

    invoke-virtual {v2, v3}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 329
    const-string v1, "l_vcode_not_received"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$3;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->getServerCode()V
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    .line 331
    const-string v1, "----------------smscode click getServerCode"

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method
