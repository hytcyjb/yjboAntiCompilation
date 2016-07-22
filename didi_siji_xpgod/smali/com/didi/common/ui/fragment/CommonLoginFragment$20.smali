.class Lcom/didi/common/ui/fragment/CommonLoginFragment$20;
.super Lcom/didi/common/net/ResponseListener;
.source "CommonLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonLoginFragment;->updateAddr()V
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
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$20;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/common/model/AddressList;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 980
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 981
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 982
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 971
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment$20;->onError(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/AddressList;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 974
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 975
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 976
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 971
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment$20;->onFail(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/AddressList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$20;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->onGetAddressList(Lcom/didi/common/model/AddressList;)V
    invoke-static {v0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$3700(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/model/AddressList;)V

    .line 987
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

    .line 988
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 971
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment$20;->onFinish(Lcom/didi/common/model/AddressList;)V

    return-void
.end method
