.class Lcom/didi/common/ui/fragment/CommonLoginFragment$24;
.super Lcom/didi/common/net/ResponseListener;
.source "CommonLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonLoginFragment;->getSms()V
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
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$24;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 1183
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 1184
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    .line 1185
    return-void
.end method

.method public onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 1189
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 1190
    iget v0, p1, Lcom/didi/common/model/BaseObject;->errno:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/net/HttpHelper;->validateHttpState(ILjava/lang/String;Z)Z

    .line 1191
    return-void
.end method

.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 7
    .parameter "obj"

    .prologue
    .line 1168
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1169
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$24;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->isVoiceVerify(Lcom/didi/common/model/BaseObject;)Z
    invoke-static {v0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1200(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    iget v0, p1, Lcom/didi/common/model/BaseObject;->errno:I

    if-nez v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$24;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mTimeCount:Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1174
    iget-object v6, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$24;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$24;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;JJ)V

    #setter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mTimeCount:Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;
    invoke-static {v6, v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2102(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;)Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;

    .line 1176
    :cond_2
    const v0, 0x7f0b0259

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(I)V

    .line 1177
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$24;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mTimeCount:Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method public onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 1165
    return-void
.end method
