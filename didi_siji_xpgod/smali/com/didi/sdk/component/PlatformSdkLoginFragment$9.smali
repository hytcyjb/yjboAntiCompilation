.class Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;
.super Ljava/lang/Object;
.source "PlatformSdkLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 538
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 543
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 544
    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1000(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, numberString:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 546
    const v1, 0x7f0b047c

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 591
    :goto_0
    return-void

    .line 548
    :cond_0
    const-string v1, "android.permission.READ_SMS"

    invoke-static {v1}, Lcom/didi/common/util/Utils;->checkUserPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    iget-object v1, v1, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->smsUtil:Lcom/didi/common/util/SMSUtil;

    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mSmsListener:Lcom/didi/common/util/SMSUtil$SmsListener;
    invoke-static {v2}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2200(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/util/SMSUtil$SmsListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/util/SMSUtil;->registerSmsObserver(Lcom/didi/common/util/SMSUtil$SmsListener;)V

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #setter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->oldPhone:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2002(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCode:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$700(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 554
    const-string v1, "l_verify_sdk"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 556
    new-instance v1, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9$1;

    invoke-direct {v1, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9$1;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;)V

    invoke-static {v0, v3, v1}, Lcom/didi/common/net/PassPortRequest;->getCode(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method
