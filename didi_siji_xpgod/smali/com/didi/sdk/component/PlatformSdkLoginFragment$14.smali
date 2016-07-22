.class Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;
.super Lcom/didi/common/net/ResponseListener;
.source "PlatformSdkLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/sdk/component/PlatformSdkLoginFragment;->passportLogin(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/CommonPassPortToken;",
        ">;"
    }
.end annotation


# instance fields
.field private reuqestType:I

.field final synthetic this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

.field final synthetic val$lat:Ljava/lang/String;

.field final synthetic val$lng:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    iput p2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->val$type:I

    iput-object p3, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->val$lng:Ljava/lang/String;

    iput-object p5, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->val$lat:Ljava/lang/String;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    .line 722
    iget v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->val$type:I

    iput v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->reuqestType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 721
    check-cast p1, Lcom/didi/common/model/CommonPassPortToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->onError(Lcom/didi/common/model/CommonPassPortToken;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 756
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 757
    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;
    invoke-static {v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lx/TextView;->setEnabled(Z)V

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--sdk---------smscode error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 759
    iget v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->reuqestType:I

    const/16 v2, 0x7d6

    if-ne v1, v2, :cond_0

    .line 760
    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->showDialog(Lcom/didi/common/model/CommonPassPortToken;)V
    invoke-static {v1, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2700(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/common/model/CommonPassPortToken;)V

    .line 762
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 763
    .local v0, kv:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "error_info"

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "l_login_fail_sdk"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 765
    const-string v1, "l_login_fail_sdk"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 721
    check-cast p1, Lcom/didi/common/model/CommonPassPortToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->onFail(Lcom/didi/common/model/CommonPassPortToken;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 742
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 743
    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;
    invoke-static {v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lx/TextView;->setEnabled(Z)V

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--sdk---------smscode fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 745
    iget v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->reuqestType:I

    const/16 v2, 0x7d6

    if-ne v1, v2, :cond_0

    .line 746
    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->showDialog(Lcom/didi/common/model/CommonPassPortToken;)V
    invoke-static {v1, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2700(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/common/model/CommonPassPortToken;)V

    .line 748
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 749
    .local v0, kv:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "error_info"

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "l_login_fail_sdk"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 751
    const-string v1, "l_login_fail_sdk"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 721
    check-cast p1, Lcom/didi/common/model/CommonPassPortToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->onFinish(Lcom/didi/common/model/CommonPassPortToken;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--sdk---------smscode finish:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 721
    check-cast p1, Lcom/didi/common/model/CommonPassPortToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->onSuccess(Lcom/didi/common/model/CommonPassPortToken;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 8
    .parameter "t"

    .prologue
    const/16 v7, 0x7d6

    .line 726
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    const/4 v1, 0x0

    #setter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isTakeCode:Z
    invoke-static {v0, v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$002(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Z)Z

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--sdk---------smscode success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1000(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onLogin(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$1000(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onRegister(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->val$number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->val$lng:Ljava/lang/String;

    iget-object v4, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->val$lat:Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    iget-object v5, v5, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->loginListener:Lcom/didi/common/net/ResponseListener;

    #calls: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->commonLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    invoke-static/range {v0 .. v5}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$2600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 731
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 732
    .local v6, kv:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "channel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    invoke-virtual {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "onRegister"

    const-string v2, "Channel"

    invoke-static {v0, v1, v2, v6}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 734
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    invoke-virtual {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->reuqestType:I

    if-ne v0, v7, :cond_1

    const-string v0, "l_login_ok_sdk"

    :goto_0
    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 735
    iget v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->reuqestType:I

    if-eq v0, v7, :cond_0

    .line 736
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;->this$0:Lcom/didi/sdk/component/PlatformSdkLoginFragment;

    #getter for: Lcom/didi/sdk/component/PlatformSdkLoginFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->access$300(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 738
    :cond_0
    return-void

    .line 734
    :cond_1
    const-string v0, "l_login_ok_auto_sdk"

    goto :goto_0
.end method
