.class Lcom/didi/common/ui/fragment/CommonLoginFragment$16;
.super Lcom/didi/common/net/ResponseListener;
.source "CommonLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonLoginFragment;
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
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 784
    check-cast p1, Lcom/didi/common/model/CommonToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->onError(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/CommonToken;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 792
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 793
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->showErrorMsg(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$3000(Lcom/didi/common/ui/fragment/CommonLoginFragment;Ljava/lang/String;)V

    .line 794
    return-void

    .line 793
    :cond_0
    invoke-virtual {p1}, Lcom/didi/common/model/CommonToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 784
    check-cast p1, Lcom/didi/common/model/CommonToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->onFail(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/CommonToken;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 787
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 788
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->showErrorMsg(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$3000(Lcom/didi/common/ui/fragment/CommonLoginFragment;Ljava/lang/String;)V

    .line 789
    return-void

    .line 788
    :cond_0
    invoke-virtual {p1}, Lcom/didi/common/model/CommonToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 784
    check-cast p1, Lcom/didi/common/model/CommonToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->onFinish(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/CommonToken;)V
    .locals 2
    .parameter "commonToken"

    .prologue
    .line 819
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 820
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx/TextView;->setEnabled(Z)V

    .line 821
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 784
    check-cast p1, Lcom/didi/common/model/CommonToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->onSuccess(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CommonToken;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 798
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 799
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setToken(Ljava/lang/String;)V

    .line 800
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonToken;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setPsngrId(Ljava/lang/String;)V

    .line 801
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1000(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setPhone(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->commitPreferenceImmdiately()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$3100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    .line 803
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->getGuideFlag()V
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$3200(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    .line 804
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->onLogin(Lcom/didi/common/model/CommonToken;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$3300(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/model/CommonToken;)V

    .line 805
    const/4 v0, 0x1

    new-instance v1, Lcom/didi/common/ui/fragment/CommonLoginFragment$16$1;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$16$1;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment$16;)V

    invoke-static {v0, v1}, Lcom/didi/common/helper/GThirdTokenManager;->refreshGThirdToken(ZLcom/didi/common/listener/ThirdTokenListener;)V

    .line 815
    return-void
.end method
