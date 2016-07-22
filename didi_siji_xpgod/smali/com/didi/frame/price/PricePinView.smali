.class public Lcom/didi/frame/price/PricePinView;
.super Lcom/didi/frame/controlpanel/pin/PinBaseView;
.source "PricePinView.java"


# instance fields
.field private name:Ljava/lang/String;

.field private price:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/didi/frame/controlpanel/pin/PinBaseView;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/frame/price/PricePinView;->price:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/controlpanel/pin/PinBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/frame/price/PricePinView;->price:I

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
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/controlpanel/pin/PinBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/frame/price/PricePinView;->price:I

    .line 25
    return-void
.end method


# virtual methods
.method public checkEnabled()V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/didi/frame/price/PricePinView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getLastTip()I

    move-result v0

    .line 65
    .local v0, tip:I
    iget v1, p0, Lcom/didi/frame/price/PricePinView;->price:I

    if-ge v1, v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/didi/frame/price/PricePinView;->disable()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/didi/frame/price/PricePinView;->enable()V

    goto :goto_0
.end method

.method public checkState()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/didi/frame/price/PricePinView;->checkEnabled()V

    .line 95
    invoke-virtual {p0}, Lcom/didi/frame/price/PricePinView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/didi/frame/price/PricePinView;->setUnSelected()V

    .line 97
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/didi/frame/price/PricePinView;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/didi/frame/price/PricePinView;->price:I

    return v0
.end method

.method protected onInit()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->onInit()V

    .line 38
    invoke-virtual {p0}, Lcom/didi/frame/price/PricePinView;->showAboveText()V

    .line 39
    const v0, 0x7f0b0485

    invoke-virtual {p0, v0}, Lcom/didi/frame/price/PricePinView;->setBelowText(I)V

    .line 40
    new-instance v0, Lcom/didi/frame/price/PricePinView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/price/PricePinView$1;-><init>(Lcom/didi/frame/price/PricePinView;)V

    invoke-virtual {p0, v0}, Lcom/didi/frame/price/PricePinView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/didi/frame/price/PricePinView;->setUnSelected()V

    .line 78
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/didi/frame/price/PricePinView;->name:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setPrice(I)V
    .locals 1
    .parameter "price"

    .prologue
    .line 57
    iput p1, p0, Lcom/didi/frame/price/PricePinView;->price:I

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/price/PricePinView;->setAboveText(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->setVisibility(I)V

    .line 102
    const-string v0, "Visible"

    .line 103
    .local v0, name:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 112
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/didi/frame/price/PricePinView;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/frame/price/PricePinView;->price:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setVisibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 113
    return-void

    .line 105
    :sswitch_0
    const-string v0, "INVISIBLE"

    .line 106
    goto :goto_0

    .line 108
    :sswitch_1
    const-string v0, "GONE"

    goto :goto_0

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/didi/frame/price/PricePinView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/frame/price/PricePinView;->price:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
