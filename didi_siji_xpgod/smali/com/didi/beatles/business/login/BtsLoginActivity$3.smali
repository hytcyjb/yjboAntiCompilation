.class Lcom/didi/beatles/business/login/BtsLoginActivity$3;
.super Ljava/lang/Object;
.source "BtsLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 302
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$3;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------------smscode click isGetCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$3;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetCode:Z
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$700(Lcom/didi/beatles/business/login/BtsLoginActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$3;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    const/4 v2, 0x1

    #setter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->isCodeClick:Z
    invoke-static {v1, v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$802(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z

    .line 308
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$3;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetCode:Z
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$700(Lcom/didi/beatles/business/login/BtsLoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$3;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    iget-object v1, v1, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsUtil:Lcom/didi/common/util/SMSUtil;

    invoke-virtual {v1}, Lcom/didi/common/util/SMSUtil;->unregisterSmsObserver()V

    .line 312
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$3;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$900(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 313
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

    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 315
    const v1, 0x7f0b0479

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 317
    :cond_1
    invoke-static {v0}, Lcom/didi/common/util/Utils;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 318
    const v1, 0x7f0b047c

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$3;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    const v3, 0x7f0b035e

    invoke-virtual {v2, v3}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 325
    const-string v1, "l_vcode_not_received"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$3;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->getServerCode()V
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1000(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    .line 327
    const-string v1, "----------------smscode click getServerCode"

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method
