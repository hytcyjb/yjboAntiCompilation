.class public Lcom/didi/frame/carmodel/CarModelTriggerView;
.super Lcom/didi/frame/controlpanel/pin/TriggerPinView;
.source "CarModelTriggerView.java"


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/carmodel/CarModelTriggerView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelTriggerView;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/frame/carmodel/CarModelTriggerView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->writeTraceLog()V

    return-void
.end method

.method private writeTraceLog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 85
    .local v0, car:Lcom/didi/car/model/CarOrder;
    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v1, v2, :cond_1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pg1call07_ck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pg0call06_ck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getDefaultListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelTriggerView;->clickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/didi/frame/carmodel/CarModelTriggerView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/carmodel/CarModelTriggerView$2;-><init>(Lcom/didi/frame/carmodel/CarModelTriggerView;)V

    iput-object v0, p0, Lcom/didi/frame/carmodel/CarModelTriggerView;->clickListener:Landroid/view/View$OnClickListener;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelTriggerView;->clickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->onInit()V

    .line 47
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 48
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 49
    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 50
    const/16 v1, 0x36

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 51
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->getDefaultListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->addListener(Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v1, Lcom/didi/frame/carmodel/CarModelTriggerView$1;

    invoke-direct {v1, p0}, Lcom/didi/frame/carmodel/CarModelTriggerView$1;-><init>(Lcom/didi/frame/carmodel/CarModelTriggerView;)V

    invoke-virtual {p0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->resetContent()V

    .line 64
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setUnSelected()V

    .line 96
    return-void
.end method

.method public resetBookContent()V
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->showAboveIcon()V

    .line 122
    const v0, 0x7f0202b4

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setIcon(I)V

    .line 123
    const v0, 0x7f0200f4

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setBackgroundResource(I)V

    .line 124
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0230

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setBelowText(Ljava/lang/String;)V

    .line 125
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setAboveText(Ljava/lang/String;)V

    .line 126
    const v0, 0x7f070018

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setBelowTextColor(I)V

    .line 127
    return-void
.end method

.method public resetContent()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->showAboveIcon()V

    .line 113
    const v0, 0x7f0202ba

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setIcon(I)V

    .line 114
    const v0, 0x7f0200f3

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setBackgroundResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setBelowText(Ljava/lang/String;)V

    .line 116
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setAboveText(Ljava/lang/String;)V

    .line 117
    const v0, 0x7f070018

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setBelowTextColor(I)V

    .line 118
    return-void
.end method

.method public setSelected()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->setSelected()V

    .line 101
    const v0, 0x7f0200f4

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setBackgroundResource(I)V

    .line 102
    return-void
.end method

.method public setUnSelected()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->setUnSelected()V

    .line 108
    const v0, 0x7f0200f3

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setBackgroundResource(I)V

    .line 109
    return-void
.end method
