.class Lcom/didi/common/ui/userinfo/UserInfoFragment$14;
.super Lcom/didi/common/net/ResponseListener;
.source "UserInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateInfoToServer(Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;[Lorg/apache/http/NameValuePair;)V
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
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

.field final synthetic val$callback:Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$14;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    iput-object p2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$14;->val$callback:Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 738
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 739
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$14;->this$0:Lcom/didi/common/ui/userinfo/UserInfoFragment;

    const/4 v1, 0x1

    #setter for: Lcom/didi/common/ui/userinfo/UserInfoFragment;->mIsInfoChanged:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->access$1202(Lcom/didi/common/ui/userinfo/UserInfoFragment;Z)Z

    .line 741
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$14;->val$callback:Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$14;->val$callback:Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;

    invoke-interface {v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;->onSuccess()V

    .line 744
    :cond_0
    const v0, 0x7f0b055b

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    .line 752
    :goto_0
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->isLoadingDialogShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 755
    :cond_1
    return-void

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$14;->val$callback:Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;

    if-eqz v0, :cond_3

    .line 747
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment$14;->val$callback:Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;

    invoke-interface {v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;->onFail()V

    .line 749
    :cond_3
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(Ljava/lang/String;)V

    goto :goto_0
.end method
