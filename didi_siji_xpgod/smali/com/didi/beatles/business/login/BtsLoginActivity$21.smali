.class Lcom/didi/beatles/business/login/BtsLoginActivity$21;
.super Lcom/didi/common/net/ResponseListener;
.source "BtsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity;->updateAddr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/AddressList;",
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
    .line 997
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$21;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/common/model/AddressList;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 1006
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1007
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 1008
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 997
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity$21;->onError(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/AddressList;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 1000
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1001
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 1002
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 997
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity$21;->onFail(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/AddressList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$21;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    const/4 v1, 0x1

    #setter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetAddressFinish:Z
    invoke-static {v0, v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$3702(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z

    .line 1013
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$21;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->onGetAddressList(Lcom/didi/common/model/AddressList;)V
    invoke-static {v0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$3800(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/common/model/AddressList;)V

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------smscode updateAddr onFinish list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1015
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 997
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity$21;->onFinish(Lcom/didi/common/model/AddressList;)V

    return-void
.end method
