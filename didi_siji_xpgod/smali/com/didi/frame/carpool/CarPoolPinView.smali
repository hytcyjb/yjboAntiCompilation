.class public Lcom/didi/frame/carpool/CarPoolPinView;
.super Lcom/didi/frame/controlpanel/pin/PinBaseView;
.source "CarPoolPinView.java"


# instance fields
.field private mSelectable:Z

.field private mSelectableIconId:I

.field private mUnSelectableIconId:I

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/didi/frame/controlpanel/pin/PinBaseView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/carpool/CarPoolPinView;->mSelectable:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/controlpanel/pin/PinBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/carpool/CarPoolPinView;->mSelectable:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/controlpanel/pin/PinBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/carpool/CarPoolPinView;->mSelectable:Z

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/carpool/CarPoolPinView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/didi/frame/carpool/CarPoolPinView;->mSelectable:Z

    return v0
.end method


# virtual methods
.method public checkEnabled()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public checkState()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolPinView;->checkEnabled()V

    .line 87
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolPinView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolPinView;->setUnSelected()V

    .line 89
    :cond_0
    return-void
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/didi/frame/carpool/CarPoolPinView;->mValue:I

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/didi/frame/carpool/CarPoolPinView;->mSelectable:Z

    return v0
.end method

.method protected onInit()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->onInit()V

    .line 45
    new-instance v0, Lcom/didi/frame/carpool/CarPoolPinView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/carpool/CarPoolPinView$1;-><init>(Lcom/didi/frame/carpool/CarPoolPinView;)V

    invoke-virtual {p0, v0}, Lcom/didi/frame/carpool/CarPoolPinView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public setIcon(II)V
    .locals 0
    .parameter "selectableId"
    .parameter "unselectableId"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/didi/frame/carpool/CarPoolPinView;->setIcon(I)V

    .line 69
    iput p1, p0, Lcom/didi/frame/carpool/CarPoolPinView;->mSelectableIconId:I

    .line 70
    iput p2, p0, Lcom/didi/frame/carpool/CarPoolPinView;->mUnSelectableIconId:I

    .line 71
    return-void
.end method

.method public setSelectable(Z)V
    .locals 2
    .parameter "selectable"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/didi/frame/carpool/CarPoolPinView;->mSelectable:Z

    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget v0, p0, Lcom/didi/frame/carpool/CarPoolPinView;->mSelectableIconId:I

    invoke-virtual {p0, v0}, Lcom/didi/frame/carpool/CarPoolPinView;->setIcon(I)V

    .line 103
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/didi/frame/carpool/CarPoolPinView;->setBelowTextColorList(I)V

    .line 104
    const v0, 0x7f0200f5

    invoke-virtual {p0, v0}, Lcom/didi/frame/carpool/CarPoolPinView;->setBackgroundResource(I)V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/frame/carpool/CarPoolPinView;->setClickable(Z)V

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    iget v0, p0, Lcom/didi/frame/carpool/CarPoolPinView;->mUnSelectableIconId:I

    invoke-virtual {p0, v0}, Lcom/didi/frame/carpool/CarPoolPinView;->setIcon(I)V

    .line 108
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/carpool/CarPoolPinView;->setBelowTextColor(I)V

    .line 109
    const v0, 0x7f0200f2

    invoke-virtual {p0, v0}, Lcom/didi/frame/carpool/CarPoolPinView;->setBackgroundResource(I)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/frame/carpool/CarPoolPinView;->setClickable(Z)V

    goto :goto_0
.end method

.method public setSelected()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->setSelected()V

    .line 94
    iget v0, p0, Lcom/didi/frame/carpool/CarPoolPinView;->mSelectableIconId:I

    invoke-virtual {p0, v0}, Lcom/didi/frame/carpool/CarPoolPinView;->setIcon(I)V

    .line 95
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 74
    iput p1, p0, Lcom/didi/frame/carpool/CarPoolPinView;->mValue:I

    .line 75
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->setVisibility(I)V

    .line 121
    const-string v0, "Visible"

    .line 122
    .local v0, name:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 131
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setVisibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 132
    return-void

    .line 124
    :sswitch_0
    const-string v0, "INVISIBLE"

    .line 125
    goto :goto_0

    .line 127
    :sswitch_1
    const-string v0, "GONE"

    goto :goto_0

    .line 122
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
