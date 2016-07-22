.class Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;
.super Lcom/didi/common/net/ResponseListener;
.source "PlatformSdkLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/sdk/component/PlatformSdkLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/CommonToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 796
    check-cast p1, Lcom/didi/common/model/CommonToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;->onError(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/CommonToken;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 804
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 805
    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->showErrorMsg(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2800(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Ljava/lang/String;)V

    .line 806
    return-void

    .line 805
    :cond_0
    invoke-virtual {p1}, Lcom/didi/common/model/CommonToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 796
    check-cast p1, Lcom/didi/common/model/CommonToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;->onFail(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/CommonToken;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 799
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 800
    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->showErrorMsg(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2800(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Ljava/lang/String;)V

    .line 801
    return-void

    .line 800
    :cond_0
    invoke-virtual {p1}, Lcom/didi/common/model/CommonToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 796
    check-cast p1, Lcom/didi/common/model/CommonToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;->onFinish(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/CommonToken;)V
    .locals 2
    .parameter "commonToken"

    .prologue
    .line 825
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 826
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx/TextView;->setEnabled(Z)V

    .line 827
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 796
    check-cast p1, Lcom/didi/common/model/CommonToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;->onSuccess(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CommonToken;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 810
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 812
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mSdkReq:I
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2900(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 813
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->reset()V

    .line 815
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setToken(Ljava/lang/String;)V

    .line 816
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonToken;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setPsngrId(Ljava/lang/String;)V

    .line 817
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1000(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setPhone(Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->commitPreferenceImmdiately()V
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$3000(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    .line 819
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getGuideFlag()V
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$3100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    .line 820
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->onLogin(Lcom/didi/common/model/CommonToken;)V
    invoke-static {v0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$3200(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/common/model/CommonToken;)V

    .line 821
    return-void
.end method
