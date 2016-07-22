.class public Lcom/didi/frame/carmodel/CarModelPinView;
.super Lcom/didi/frame/controlpanel/pin/PinBaseView;
.source "CarModelPinView.java"


# instance fields
.field private icon:Ljava/lang/String;

.field private isDefault:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/didi/frame/controlpanel/pin/PinBaseView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/carmodel/CarModelPinView;->isDefault:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/controlpanel/pin/PinBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/carmodel/CarModelPinView;->isDefault:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/controlpanel/pin/PinBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/carmodel/CarModelPinView;->isDefault:Z

    .line 24
    return-void
.end method


# virtual methods
.method public checkEnabled()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelPinView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :cond_0
    return-void
.end method

.method public checkState()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelPinView;->checkEnabled()V

    .line 97
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelPinView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelPinView;->setUnSelected()V

    .line 100
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelPinView;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/didi/frame/carmodel/CarModelPinView;->isDefault:Z

    return v0
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->onInit()V

    .line 37
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelPinView;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 39
    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 40
    const/16 v1, 0x36

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 41
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelPinView;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelPinView;->resetContent()V

    .line 44
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelPinView;->setSelected()V

    .line 45
    new-instance v1, Lcom/didi/frame/carmodel/CarModelPinView$1;

    invoke-direct {v1, p0}, Lcom/didi/frame/carmodel/CarModelPinView$1;-><init>(Lcom/didi/frame/carmodel/CarModelPinView;)V

    invoke-virtual {p0, v1}, Lcom/didi/frame/carmodel/CarModelPinView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelPinView;->setUnSelected()V

    .line 77
    return-void
.end method

.method public resetContent()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelPinView;->showAboveIcon()V

    .line 61
    const v0, 0x7f0202b4

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelPinView;->setIcon(I)V

    .line 62
    const v0, 0x7f0200f3

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelPinView;->setBackgroundResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/didi/frame/carmodel/CarModelPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0230

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelPinView;->setBelowText(Ljava/lang/String;)V

    .line 64
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelPinView;->setAboveText(Ljava/lang/String;)V

    .line 65
    const v0, 0x7f070018

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/carmodel/CarModelPinView;->setBelowTextColor(I)V

    .line 67
    return-void
.end method

.method public setDefault(Z)V
    .locals 0
    .parameter "isDefault"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/didi/frame/carmodel/CarModelPinView;->isDefault:Z

    .line 93
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/didi/frame/carmodel/CarModelPinView;->name:Ljava/lang/String;

    .line 81
    return-void
.end method
