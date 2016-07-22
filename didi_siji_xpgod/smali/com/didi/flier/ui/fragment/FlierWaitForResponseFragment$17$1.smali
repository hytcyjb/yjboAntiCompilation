.class Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17$1;
.super Lcom/didi/common/net/ResponseListener;
.source "FlierWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;->onGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarFlag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;)V
    .locals 0
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17$1;->this$1:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/didi/car/model/CarFlag;)V
    .locals 2
    .parameter "carFlag"

    .prologue
    .line 798
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-static {}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getInstance()Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17$1;->this$1:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;

    iget-object v1, v1, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;->this$0:Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->setFragment(Landroid/support/v4/app/Fragment;)Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, p1, v1}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->setFlagAndBusiness(Lcom/didi/car/model/CarFlag;Lcom/didi/frame/business/Business;)Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->showDialog()V

    .line 801
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 795
    check-cast p1, Lcom/didi/car/model/CarFlag;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17$1;->onSuccess(Lcom/didi/car/model/CarFlag;)V

    return-void
.end method
