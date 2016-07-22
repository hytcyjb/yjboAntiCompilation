.class Lcom/didi/sdk/component/PlatformSdkLoginFragment$9$1;
.super Lcom/didi/common/net/ResponseListener;
.source "PlatformSdkLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/BaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;


# direct methods
.method constructor <init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9$1;->this$1:Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 579
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 580
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    .line 581
    return-void
.end method

.method public onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 585
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 586
    iget v0, p1, Lcom/didi/common/model/BaseObject;->errno:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/net/HttpHelper;->validateHttpState(ILjava/lang/String;Z)Z

    .line 587
    return-void
.end method

.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 7
    .parameter "obj"

    .prologue
    .line 564
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 565
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9$1;->this$1:Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;

    iget-object v0, v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isVoiceVerify(Lcom/didi/common/model/BaseObject;)Z
    invoke-static {v0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1200(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget v0, p1, Lcom/didi/common/model/BaseObject;->errno:I

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9$1;->this$1:Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;

    iget-object v0, v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mTimeCount:Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;

    move-result-object v0

    if-nez v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9$1;->this$1:Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;

    iget-object v6, v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9$1;->this$1:Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;

    iget-object v1, v1, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;JJ)V

    #setter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mTimeCount:Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;
    invoke-static {v6, v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2102(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;)Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;

    .line 572
    :cond_2
    const v0, 0x7f0b0259

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(I)V

    .line 573
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9$1;->this$1:Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;

    iget-object v0, v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mTimeCount:Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method public onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 561
    return-void
.end method
