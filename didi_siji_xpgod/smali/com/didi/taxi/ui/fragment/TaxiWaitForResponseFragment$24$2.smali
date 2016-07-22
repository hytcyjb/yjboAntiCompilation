.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$2;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;->onGuide()V
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
.field final synthetic this$1:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;)V
    .locals 0
    .parameter

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$2;->this$1:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/didi/car/model/CarFlag;)V
    .locals 2
    .parameter "carFlag"

    .prologue
    .line 1438
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    invoke-static {}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getInstance()Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$2;->this$1:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;

    iget-object v1, v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->setFragment(Landroid/support/v4/app/Fragment;)Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v0, p1, v1}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->setFlagAndBusiness(Lcom/didi/car/model/CarFlag;Lcom/didi/frame/business/Business;)Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->showDialog()V

    .line 1441
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1435
    check-cast p1, Lcom/didi/car/model/CarFlag;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24$2;->onSuccess(Lcom/didi/car/model/CarFlag;)V

    return-void
.end method
