.class Lcom/didi/common/ui/fragment/CommonLoginFragment$15;
.super Lcom/didi/common/net/ResponseListener;
.source "CommonLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonLoginFragment;->passportLogin(I)V
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

.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

.field final synthetic val$lat:Ljava/lang/String;

.field final synthetic val$lng:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    iput p2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->val$type:I

    iput-object p3, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->val$lng:Ljava/lang/String;

    iput-object p5, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->val$lat:Ljava/lang/String;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    .line 710
    iget v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->val$type:I

    iput v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->reuqestType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 709
    check-cast p1, Lcom/didi/common/model/CommonPassPortToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->onError(Lcom/didi/common/model/CommonPassPortToken;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 744
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 745
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lx/TextView;->setEnabled(Z)V

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------smscode error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 747
    iget v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->reuqestType:I

    const/16 v2, 0x7d6

    if-ne v1, v2, :cond_0

    .line 748
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->showDialog(Lcom/didi/common/model/CommonPassPortToken;)V
    invoke-static {v1, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2900(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/model/CommonPassPortToken;)V

    .line 750
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 751
    .local v0, kv:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "error_info"

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "l_login_fail"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 753
    const-string v1, "l_login_fail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 709
    check-cast p1, Lcom/didi/common/model/CommonPassPortToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->onFail(Lcom/didi/common/model/CommonPassPortToken;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 730
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 731
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;
    invoke-static {v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lx/TextView;->setEnabled(Z)V

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------smscode fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 733
    iget v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->reuqestType:I

    const/16 v2, 0x7d6

    if-ne v1, v2, :cond_0

    .line 734
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->showDialog(Lcom/didi/common/model/CommonPassPortToken;)V
    invoke-static {v1, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2900(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/model/CommonPassPortToken;)V

    .line 736
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 737
    .local v0, kv:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "error_info"

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-string v2, "l_login_fail"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 739
    const-string v1, "l_login_fail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 709
    check-cast p1, Lcom/didi/common/model/CommonPassPortToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->onFinish(Lcom/didi/common/model/CommonPassPortToken;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------smscode finish:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 709
    check-cast p1, Lcom/didi/common/model/CommonPassPortToken;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->onSuccess(Lcom/didi/common/model/CommonPassPortToken;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 8
    .parameter "t"

    .prologue
    const/16 v7, 0x7d6

    .line 714
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    const/4 v1, 0x0

    #setter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->isTakeCode:Z
    invoke-static {v0, v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$002(Lcom/didi/common/ui/fragment/CommonLoginFragment;Z)Z

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------smscode success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1000(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onLogin(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$1000(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/appcpa/TalkingDataAppCpa;->onRegister(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->val$number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->val$lng:Ljava/lang/String;

    iget-object v4, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->val$lat:Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    iget-object v5, v5, Lcom/didi/common/ui/fragment/CommonLoginFragment;->loginListener:Lcom/didi/common/net/ResponseListener;

    #calls: Lcom/didi/common/ui/fragment/CommonLoginFragment;->commonLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    invoke-static/range {v0 .. v5}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$2800(Lcom/didi/common/ui/fragment/CommonLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 719
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 720
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

    .line 721
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "onRegister"

    const-string v2, "Channel"

    invoke-static {v0, v1, v2, v6}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 722
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->reuqestType:I

    if-ne v0, v7, :cond_1

    const-string v0, "l_login_ok"

    :goto_0
    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 723
    iget v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->reuqestType:I

    if-eq v0, v7, :cond_0

    .line 724
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    #getter for: Lcom/didi/common/ui/fragment/CommonLoginFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->access$300(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 726
    :cond_0
    return-void

    .line 722
    :cond_1
    const-string v0, "l_login_ok_auto"

    goto :goto_0
.end method
