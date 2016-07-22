.class Lcom/didi/beatles/business/login/BtsLoginActivity$10;
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
    .line 561
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$10;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 566
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 567
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$10;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$900(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, numberString:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 569
    const v1, 0x7f0b047c

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 614
    :goto_0
    return-void

    .line 571
    :cond_0
    const-string v1, "android.permission.READ_SMS"

    invoke-static {v1}, Lcom/didi/common/util/Utils;->checkUserPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$10;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    iget-object v1, v1, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsUtil:Lcom/didi/common/util/SMSUtil;

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$10;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mSmsListener:Lcom/didi/common/util/SMSUtil$SmsListener;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2100(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/util/SMSUtil$SmsListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/util/SMSUtil;->registerSmsObserver(Lcom/didi/common/util/SMSUtil$SmsListener;)V

    .line 574
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$10;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #setter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->oldPhone:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1902(Lcom/didi/beatles/business/login/BtsLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$10;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 577
    const-string v1, "l_verify"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 579
    new-instance v1, Lcom/didi/beatles/business/login/BtsLoginActivity$10$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$10$1;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity$10;)V

    invoke-static {v0, v3, v1}, Lcom/didi/common/net/PassPortRequest;->getCode(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method
