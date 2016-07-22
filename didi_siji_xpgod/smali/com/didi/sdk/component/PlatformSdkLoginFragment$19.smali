.class Lcom/didi/sdk/component/PlatformSdkLoginFragment$19;
.super Lcom/didi/common/net/ResponseListener;
.source "PlatformSdkLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/sdk/component/PlatformSdkLoginFragment;->updateAddr()V
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
.field final synthetic this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 956
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$19;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/common/model/AddressList;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 965
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 966
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 967
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 956
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$19;->onError(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/AddressList;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 959
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 960
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 961
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 956
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$19;->onFail(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/AddressList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 971
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$19;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->onGetAddressList(Lcom/didi/common/model/AddressList;)V
    invoke-static {v0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$3600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/common/model/AddressList;)V

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--sdk--------smscode updateAddr onFinish list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 956
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$19;->onFinish(Lcom/didi/common/model/AddressList;)V

    return-void
.end method
