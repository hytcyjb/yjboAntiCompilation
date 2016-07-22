.class public Lcom/didi/frame/price/PriceTriggerView;
.super Lcom/didi/frame/controlpanel/pin/TriggerPinView;
.source "PriceTriggerView.java"


# instance fields
.field private price:I

.field private triggerText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/frame/price/PriceTriggerView;->price:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/frame/price/PriceTriggerView;->price:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/frame/price/PriceTriggerView;->price:I

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/price/PriceTriggerView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/didi/frame/price/PriceTriggerView;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getPrice()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/didi/frame/price/PriceTriggerView;->price:I

    return v0
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->onInit()V

    .line 38
    const v1, 0x7f020166

    invoke-virtual {p0, v1}, Lcom/didi/frame/price/PriceTriggerView;->setIcon(I)V

    .line 39
    const v1, 0x7f0b0481

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/frame/price/PriceTriggerView;->triggerText:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/didi/frame/price/PriceTriggerView;->triggerText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/didi/frame/price/PriceTriggerView;->setBelowText(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/didi/frame/price/PriceTriggerView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/price/PriceTriggerView$1;-><init>(Lcom/didi/frame/price/PriceTriggerView;)V

    .line 55
    .local v0, listener:Landroid/view/View$OnClickListener;
    invoke-virtual {p0, v0}, Lcom/didi/frame/price/PriceTriggerView;->addListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v1, Lcom/didi/frame/price/PriceTriggerView$2;

    invoke-direct {v1, p0}, Lcom/didi/frame/price/PriceTriggerView$2;-><init>(Lcom/didi/frame/price/PriceTriggerView;)V

    invoke-virtual {p0, v1}, Lcom/didi/frame/price/PriceTriggerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceTriggerView;->showPriceTriggerView()V

    .line 68
    return-void
.end method

.method public setPrice(I)V
    .locals 0
    .parameter "price"

    .prologue
    .line 71
    if-gtz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceTriggerView;->showPriceTriggerView()V

    .line 75
    :goto_0
    iput p1, p0, Lcom/didi/frame/price/PriceTriggerView;->price:I

    .line 76
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/didi/frame/price/PriceTriggerView;->showPriceView(I)V

    goto :goto_0
.end method

.method public setTriggerText(Ljava/lang/String;)V
    .locals 1
    .parameter "triggerText"

    .prologue
    .line 96
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iput-object p1, p0, Lcom/didi/frame/price/PriceTriggerView;->triggerText:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceTriggerView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lcom/didi/frame/price/PriceTriggerView;->setBelowText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showPriceTriggerView()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceTriggerView;->showAboveIcon()V

    .line 87
    iget-object v0, p0, Lcom/didi/frame/price/PriceTriggerView;->triggerText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/didi/frame/price/PriceTriggerView;->setBelowText(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceTriggerView;->setUnSelected()V

    .line 89
    return-void
.end method

.method public showPriceView(I)V
    .locals 1
    .parameter "price"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceTriggerView;->showAboveText()V

    .line 80
    const v0, 0x7f0b0485

    invoke-virtual {p0, v0}, Lcom/didi/frame/price/PriceTriggerView;->setBelowText(I)V

    .line 81
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/price/PriceTriggerView;->setAboveText(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/didi/frame/price/PriceTriggerView;->setSelected()V

    .line 83
    return-void
.end method
