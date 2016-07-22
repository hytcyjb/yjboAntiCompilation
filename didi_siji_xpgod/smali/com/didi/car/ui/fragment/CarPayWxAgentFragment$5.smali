.class Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$5;
.super Lcom/didi/common/net/ResponseListener;
.source "CarPayWxAgentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->doWxAgent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarPayParams;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarPayParams;)V
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 211
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 212
    invoke-virtual {p1}, Lcom/didi/car/model/CarPayParams;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #setter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mCarPayParams:Lcom/didi/car/model/CarPayParams;
    invoke-static {v0, p1}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$802(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Lcom/didi/car/model/CarPayParams;)Lcom/didi/car/model/CarPayParams;

    .line 214
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$900(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Lcom/didi/car/helper/CarPayHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/car/helper/CarPayHelper;->checkWxSupport(Lcom/didi/car/model/CarPayParams;)Z

    .line 223
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p1}, Lcom/didi/car/model/CarPayParams;->getErrorCode()I

    move-result v0

    const/16 v1, 0x2970

    if-ne v0, v1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    const/4 v1, 0x1

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->changedUIByBindStatus(I)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$500(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;I)V

    .line 217
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->RIGHT:Lcom/didi/common/ui/component/CommonDialog$IconType;

    const v2, 0x7f0b059e

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showWxAgentOneButton(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v3, v2}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1000(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->mSwitchBar:Lcom/didi/common/ui/component/SwitchBar;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1100(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;)Lcom/didi/common/ui/component/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 220
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$5;->this$0:Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    const v1, 0x7f0b05a3

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->showWxAgentFaild(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, v1}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;->access$1200(Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 206
    check-cast p1, Lcom/didi/car/model/CarPayParams;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment$5;->onFinish(Lcom/didi/car/model/CarPayParams;)V

    return-void
.end method
