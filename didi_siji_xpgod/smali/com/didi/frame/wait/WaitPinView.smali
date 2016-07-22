.class public Lcom/didi/frame/wait/WaitPinView;
.super Lcom/didi/frame/controlpanel/pin/PinBaseView;
.source "WaitPinView.java"


# instance fields
.field private name:Ljava/lang/String;

.field private time:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/didi/frame/controlpanel/pin/PinBaseView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/frame/wait/WaitPinView;->time:I

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

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/frame/wait/WaitPinView;->time:I

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

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/frame/wait/WaitPinView;->time:I

    .line 24
    return-void
.end method

.method private showCancel()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitPinView;->showAboveIcon()V

    .line 67
    const v0, 0x7f0b0132

    invoke-virtual {p0, v0}, Lcom/didi/frame/wait/WaitPinView;->setBelowText(I)V

    .line 68
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitPinView;->setUnSelected()V

    .line 69
    return-void
.end method


# virtual methods
.method public checkEnabled()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitPinView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getLastWaitTime()I

    move-result v0

    .line 75
    .local v0, waitTime:I
    iget v1, p0, Lcom/didi/frame/wait/WaitPinView;->time:I

    if-ge v1, v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitPinView;->disable()V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitPinView;->enable()V

    goto :goto_0
.end method

.method public checkState()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitPinView;->checkEnabled()V

    .line 105
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitPinView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitPinView;->setUnSelected()V

    .line 107
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/frame/wait/WaitPinView;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitTime()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/didi/frame/wait/WaitPinView;->time:I

    return v0
.end method

.method protected onInit()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->onInit()V

    .line 37
    const v0, 0x7f020168

    invoke-virtual {p0, v0}, Lcom/didi/frame/wait/WaitPinView;->setIcon(I)V

    .line 38
    const v0, 0x7f0b0480

    invoke-virtual {p0, v0}, Lcom/didi/frame/wait/WaitPinView;->setBelowText(I)V

    .line 39
    new-instance v0, Lcom/didi/frame/wait/WaitPinView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/wait/WaitPinView$1;-><init>(Lcom/didi/frame/wait/WaitPinView;)V

    invoke-virtual {p0, v0}, Lcom/didi/frame/wait/WaitPinView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitPinView;->setUnSelected()V

    .line 88
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/didi/frame/wait/WaitPinView;->name:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setWaitTime(I)V
    .locals 1
    .parameter "waitTime"

    .prologue
    .line 56
    iput p1, p0, Lcom/didi/frame/wait/WaitPinView;->time:I

    .line 57
    if-gtz p1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/didi/frame/wait/WaitPinView;->showCancel()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/wait/WaitPinView;->setAboveText(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitPinView;->showAboveText()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitPinView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/frame/wait/WaitPinView;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
