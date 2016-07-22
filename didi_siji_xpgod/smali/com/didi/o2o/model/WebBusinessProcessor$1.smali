.class Lcom/didi/o2o/model/WebBusinessProcessor$1;
.super Ljava/lang/Object;
.source "WebBusinessProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/o2o/model/WebBusinessProcessor;->setCurrentOrderBusinessFromWeb(Lcom/didi/frame/business/Business;Lcom/didi/o2o/model/AddressExt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/o2o/model/WebBusinessProcessor;

.field final synthetic val$addrext:Lcom/didi/o2o/model/AddressExt;

.field final synthetic val$business:Lcom/didi/frame/business/Business;


# direct methods
.method constructor <init>(Lcom/didi/o2o/model/WebBusinessProcessor;Lcom/didi/o2o/model/AddressExt;Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/o2o/model/WebBusinessProcessor$1;->this$0:Lcom/didi/o2o/model/WebBusinessProcessor;

    iput-object p2, p0, Lcom/didi/o2o/model/WebBusinessProcessor$1;->val$addrext:Lcom/didi/o2o/model/AddressExt;

    iput-object p3, p0, Lcom/didi/o2o/model/WebBusinessProcessor$1;->val$business:Lcom/didi/frame/business/Business;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 94
    iget-object v5, p0, Lcom/didi/o2o/model/WebBusinessProcessor$1;->val$addrext:Lcom/didi/o2o/model/AddressExt;

    iget-object v6, p0, Lcom/didi/o2o/model/WebBusinessProcessor$1;->val$addrext:Lcom/didi/o2o/model/AddressExt;

    invoke-virtual {v5, v6}, Lcom/didi/o2o/model/AddressExt;->getAddressByExt(Lcom/didi/o2o/model/AddressExt;)Lcom/didi/common/model/Address;

    move-result-object v0

    .line 98
    .local v0, addr:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getSwitcherPanel()Lcom/didi/frame/switcher/SwitcherPanel;

    move-result-object v5

    iget-object v6, p0, Lcom/didi/o2o/model/WebBusinessProcessor$1;->val$business:Lcom/didi/frame/business/Business;

    invoke-virtual {v5, v6}, Lcom/didi/frame/switcher/SwitcherPanel;->select(Lcom/didi/frame/business/Business;)V

    .line 99
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 103
    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 105
    sget-object v5, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-static {v5}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 106
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showDefaultContent()V

    .line 107
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmUpDelayed()V

    .line 108
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v3

    .line 109
    .local v3, instance:Lcom/didi/frame/FragmentMgr;
    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {v3}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v2

    .line 111
    .local v2, frag:Lcom/didi/common/ui/fragment/SlideFragment;
    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/frame/business/redirector/RedirectEngine;->setLastFragmentClass(Ljava/lang/Class;)V

    .line 115
    .end local v2           #frag:Lcom/didi/common/ui/fragment/SlideFragment;
    :cond_0
    sget-object v5, Lcom/didi/o2o/model/WebBusinessProcessor$2;->$SwitchMap$com$didi$frame$business$Business:[I

    iget-object v6, p0, Lcom/didi/o2o/model/WebBusinessProcessor$1;->val$business:Lcom/didi/frame/business/Business;

    invoke-virtual {v6}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v5, p0, Lcom/didi/o2o/model/WebBusinessProcessor$1;->val$business:Lcom/didi/frame/business/Business;

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v4

    check-cast v4, Lcom/didi/taxi/model/TaxiOrder;

    .line 118
    .local v4, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    sget-object v5, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 119
    sget-object v5, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 120
    iget-object v5, p0, Lcom/didi/o2o/model/WebBusinessProcessor$1;->val$addrext:Lcom/didi/o2o/model/AddressExt;

    iget-object v5, v5, Lcom/didi/o2o/model/AddressExt;->source:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setSource(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 122
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 123
    invoke-static {v7}, Lcom/didi/frame/business/OrderHelper;->setNotNeedResetSendable(Z)V

    .line 124
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/FragmentMgr;->showTaxiConfirmFragment()V

    goto :goto_0

    .line 127
    .end local v4           #taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    :pswitch_1
    iget-object v5, p0, Lcom/didi/o2o/model/WebBusinessProcessor$1;->val$business:Lcom/didi/frame/business/Business;

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 128
    .local v1, carOrder:Lcom/didi/car/model/CarOrder;
    sget-object v5, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v1, v5}, Lcom/didi/car/model/CarOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 129
    sget-object v5, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {v1, v5}, Lcom/didi/car/model/CarOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 130
    iget-object v5, p0, Lcom/didi/o2o/model/WebBusinessProcessor$1;->val$addrext:Lcom/didi/o2o/model/AddressExt;

    iget-object v5, v5, Lcom/didi/o2o/model/AddressExt;->source:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/didi/car/model/CarOrder;->setSource(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/didi/car/model/CarOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 132
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/didi/car/model/CarOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 133
    invoke-static {v7}, Lcom/didi/frame/business/OrderHelper;->setNotNeedResetSendable(Z)V

    .line 134
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/FragmentMgr;->showCarConfirmFragment()V

    .line 135
    sget-object v5, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 136
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarModelLayout()V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
