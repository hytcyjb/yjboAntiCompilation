.class Lcom/didi/beatles/business/login/BtsLoginActivity$10$1;
.super Lcom/didi/common/net/ResponseListener;
.source "BtsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity$10;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/didi/beatles/business/login/BtsLoginActivity$10;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsLoginActivity$10;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$10$1;->this$1:Lcom/didi/beatles/business/login/BtsLoginActivity$10;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 602
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 603
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    .line 604
    return-void
.end method

.method public onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 608
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 609
    iget v0, p1, Lcom/didi/common/model/BaseObject;->errno:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/net/HttpHelper;->validateHttpState(ILjava/lang/String;Z)Z

    .line 610
    return-void
.end method

.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 7
    .parameter "obj"

    .prologue
    .line 587
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 588
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$10$1;->this$1:Lcom/didi/beatles/business/login/BtsLoginActivity$10;

    iget-object v0, v0, Lcom/didi/beatles/business/login/BtsLoginActivity$10;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->isVoiceVerify(Lcom/didi/common/model/BaseObject;)Z
    invoke-static {v0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1100(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget v0, p1, Lcom/didi/common/model/BaseObject;->errno:I

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$10$1;->this$1:Lcom/didi/beatles/business/login/BtsLoginActivity$10;

    iget-object v0, v0, Lcom/didi/beatles/business/login/BtsLoginActivity$10;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mTimeCount:Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2000(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;

    move-result-object v0

    if-nez v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$10$1;->this$1:Lcom/didi/beatles/business/login/BtsLoginActivity$10;

    iget-object v6, v0, Lcom/didi/beatles/business/login/BtsLoginActivity$10;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$10$1;->this$1:Lcom/didi/beatles/business/login/BtsLoginActivity$10;

    iget-object v1, v1, Lcom/didi/beatles/business/login/BtsLoginActivity$10;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;JJ)V

    #setter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mTimeCount:Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;
    invoke-static {v6, v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2002(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;)Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;

    .line 595
    :cond_2
    const v0, 0x7f0b0259

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(I)V

    .line 596
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$10$1;->this$1:Lcom/didi/beatles/business/login/BtsLoginActivity$10;

    iget-object v0, v0, Lcom/didi/beatles/business/login/BtsLoginActivity$10;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mTimeCount:Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2000(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method public onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 584
    return-void
.end method
