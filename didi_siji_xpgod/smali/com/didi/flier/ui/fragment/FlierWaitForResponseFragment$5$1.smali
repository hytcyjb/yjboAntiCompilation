.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5$1;
.super Lcom/didi/common/net/ResponseListener;
.source "FlierWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5;

.field final synthetic val$carOrder:Lcom/didi/flier/model/FlierOrder;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5;Lcom/didi/flier/model/FlierOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5$1;->this$1:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5;

    iput-object p2, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5$1;->val$carOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 223
    invoke-static {p1}, Lcom/didi/common/model/BaseObject;->isAvailable(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 225
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5$1;->val$carOrder:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->setSent()V

    .line 217
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongCompleteMessage(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5$1;->this$1:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5;

    iget-object v1, v1, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    if-ne v0, v1, :cond_0

    .line 219
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDown()V

    .line 220
    :cond_0
    return-void
.end method
