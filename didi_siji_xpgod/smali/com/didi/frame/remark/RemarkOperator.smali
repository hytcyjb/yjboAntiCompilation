.class public Lcom/didi/frame/remark/RemarkOperator;
.super Lcom/didi/frame/controlpanel/Operator;
.source "RemarkOperator.java"


# instance fields
.field private remarkListener:Lcom/didi/frame/remark/RemarkListener;

.field private trigger:Lcom/didi/frame/remark/RemarkTriggerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/didi/frame/controlpanel/Operator;-><init>()V

    .line 30
    new-instance v0, Lcom/didi/frame/remark/RemarkOperator$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/remark/RemarkOperator$1;-><init>(Lcom/didi/frame/remark/RemarkOperator;)V

    iput-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->remarkListener:Lcom/didi/frame/remark/RemarkListener;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/remark/RemarkOperator;)Lcom/didi/frame/remark/RemarkTriggerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    return-object v0
.end method

.method private disableRemarkTrigger()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "disableRemarkTrigger"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;->setEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkTriggerView;->hide()V

    .line 58
    invoke-virtual {p0}, Lcom/didi/frame/remark/RemarkOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->doLayout()V

    .line 59
    return-void
.end method

.method private enableRemarkTrigger()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "enableRemarkTrigger"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkTriggerView;->show()V

    .line 65
    invoke-virtual {p0}, Lcom/didi/frame/remark/RemarkOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->doLayout()V

    .line 66
    return-void
.end method

.method public static getInstance()Lcom/didi/frame/remark/RemarkOperator;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->getRemarkOperator()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    return-object v0
.end method

.method public static initRemark()V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/remark/RemarkOperator;->setRemark(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->checkRemark()V

    .line 124
    return-void
.end method

.method private onBusinessCityChange()V
    .locals 3

    .prologue
    .line 42
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 43
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    .line 44
    .local v0, fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    if-eqz v0, :cond_0

    const-class v1, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/didi/frame/remark/RemarkOperator;->enableRemarkTrigger()V

    .line 52
    .end local v0           #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    :goto_0
    return-void

    .line 47
    .restart local v0       #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    :cond_0
    invoke-direct {p0}, Lcom/didi/frame/remark/RemarkOperator;->disableRemarkTrigger()V

    goto :goto_0

    .line 50
    .end local v0           #fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    :cond_1
    invoke-direct {p0}, Lcom/didi/frame/remark/RemarkOperator;->enableRemarkTrigger()V

    goto :goto_0
.end method

.method public static setRemark(Ljava/lang/String;)V
    .locals 0
    .parameter "remark"

    .prologue
    .line 119
    return-void
.end method

.method private setTriggerAvailable(Z)V
    .locals 2
    .parameter "available"

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;->setIcon(I)V

    .line 153
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    const v1, 0x7f07004e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;->setBelowTextColor(I)V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    invoke-virtual {v0, p1}, Lcom/didi/frame/remark/RemarkTriggerView;->setClickable(Z)V

    .line 159
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;->setIcon(I)V

    .line 156
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    const v1, 0x7f070041

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;->setBelowTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public checkRemark()V
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    invoke-virtual {v1}, Lcom/didi/frame/remark/RemarkTriggerView;->setUnSelected()V

    .line 136
    :goto_0
    const/4 v0, 0x1

    .line 137
    .local v0, isEnableTrigger:Z
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/didi/car/ui/fragment/CarBookingFragment;

    if-nez v1, :cond_0

    .line 139
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getArea()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getArea()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/database/CityListHelper;->getOpenCarByCityId(Ljava/lang/String;)Z

    move-result v0

    .line 146
    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/didi/frame/remark/RemarkOperator;->setTriggerAvailable(Z)V

    .line 147
    invoke-direct {p0}, Lcom/didi/frame/remark/RemarkOperator;->onBusinessCityChange()V

    .line 148
    return-void

    .line 134
    .end local v0           #isEnableTrigger:Z
    :cond_1
    iget-object v1, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    invoke-virtual {v1}, Lcom/didi/frame/remark/RemarkTriggerView;->setSelected()V

    goto :goto_0

    .line 142
    .restart local v0       #isEnableTrigger:Z
    :cond_2
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;->setEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkTriggerView;->hide()V

    .line 71
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkTriggerView;->reset()V

    .line 72
    return-void
.end method

.method public bridge synthetic getContentPins()[Lcom/didi/frame/controlpanel/pin/PinBaseView;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/didi/frame/remark/RemarkOperator;->getContentPins()[Lcom/didi/frame/price/PricePinView;

    move-result-object v0

    return-object v0
.end method

.method public getContentPins()[Lcom/didi/frame/price/PricePinView;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    return-object v0
.end method

.method public getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/didi/frame/remark/RemarkTriggerView;

    invoke-virtual {p0}, Lcom/didi/frame/remark/RemarkOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/controlpanel/OperationArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->trigger:Lcom/didi/frame/remark/RemarkTriggerView;

    return-object v0
.end method

.method public hideContentPins()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/didi/frame/remark/RemarkOperator;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    .line 84
    .local v0, area:Lcom/didi/frame/controlpanel/OperationArea;
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/controlpanel/OperationArea;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0}, Lcom/didi/frame/remark/RemarkOperator;->registerListeners()V

    goto :goto_0
.end method

.method public layout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public registerListeners()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->remarkListener:Lcom/didi/frame/remark/RemarkListener;

    invoke-static {v0}, Lcom/didi/common/helper/RemarkHelper;->addRemarkListener(Lcom/didi/frame/remark/RemarkListener;)V

    .line 163
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public showContentPins()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public unregisterListeners()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkOperator;->remarkListener:Lcom/didi/frame/remark/RemarkListener;

    invoke-static {v0}, Lcom/didi/common/helper/RemarkHelper;->removeRemarkListener(Lcom/didi/frame/remark/RemarkListener;)V

    .line 167
    return-void
.end method
