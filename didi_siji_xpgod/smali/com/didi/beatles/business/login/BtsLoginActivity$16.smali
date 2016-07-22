.class Lcom/didi/beatles/business/login/BtsLoginActivity$16;
.super Lcom/didi/common/net/ResponseListener;
.source "BtsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity;
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
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 819
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$16;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 819
    check-cast p1, Lcom/didi/common/model/CommonToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity$16;->onError(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/CommonToken;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 827
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 828
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$16;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->showErrorMsg(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2800(Lcom/didi/beatles/business/login/BtsLoginActivity;Ljava/lang/String;)V

    .line 829
    return-void

    .line 828
    :cond_0
    invoke-virtual {p1}, Lcom/didi/common/model/CommonToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 819
    check-cast p1, Lcom/didi/common/model/CommonToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity$16;->onFail(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/CommonToken;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 822
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 823
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$16;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->showErrorMsg(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2800(Lcom/didi/beatles/business/login/BtsLoginActivity;Ljava/lang/String;)V

    .line 824
    return-void

    .line 823
    :cond_0
    invoke-virtual {p1}, Lcom/didi/common/model/CommonToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 819
    check-cast p1, Lcom/didi/common/model/CommonToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity$16;->onFinish(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/CommonToken;)V
    .locals 2
    .parameter "commonToken"

    .prologue
    .line 846
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 847
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$16;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 848
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 819
    check-cast p1, Lcom/didi/common/model/CommonToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity$16;->onSuccess(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CommonToken;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 833
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 834
    const-string v0, "test"

    invoke-virtual {p1}, Lcom/didi/common/model/CommonToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setToken(Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonToken;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setPsngrId(Ljava/lang/String;)V

    .line 837
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$16;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$900(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setPhone(Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$16;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->commitPreferenceImmdiately()V
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$2900(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    .line 839
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$16;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->getGuideFlag()V
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$3000(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    .line 840
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$16;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->onLogin(Lcom/didi/common/model/CommonToken;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$3100(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/common/model/CommonToken;)V

    .line 841
    return-void
.end method
