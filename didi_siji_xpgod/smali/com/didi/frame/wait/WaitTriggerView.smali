.class public Lcom/didi/frame/wait/WaitTriggerView;
.super Lcom/didi/frame/controlpanel/pin/TriggerPinView;
.source "WaitTriggerView.java"


# instance fields
.field private time:I

.field private triggerText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/frame/wait/WaitTriggerView;->time:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/frame/wait/WaitTriggerView;->time:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/frame/wait/WaitTriggerView;->time:I

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/wait/WaitTriggerView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/didi/frame/wait/WaitTriggerView;->checkIntro()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/frame/wait/WaitTriggerView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/didi/frame/wait/WaitTriggerView;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkIntro()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->hasWaitIntroShown()Z

    move-result v0

    .line 79
    .local v0, shown:Z
    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/didi/frame/wait/WaitTriggerView;->showIntro()V

    .line 82
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->setWaitIntroShown()V

    goto :goto_0
.end method

.method private showIntro()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitTriggerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    const v1, 0x7f0b057f

    const v2, 0x7f0b057e

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(II)V

    .line 88
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 89
    const v1, 0x7f0b0367

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 90
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->TIME:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 91
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 92
    return-void
.end method


# virtual methods
.method public getWaitTime()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/didi/frame/wait/WaitTriggerView;->time:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isBooking()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isTaxi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected onInit()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->onInit()V

    .line 44
    const v0, 0x7f020169

    invoke-virtual {p0, v0}, Lcom/didi/frame/wait/WaitTriggerView;->setIcon(I)V

    .line 45
    const v0, 0x7f0b0484

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/wait/WaitTriggerView;->triggerText:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/didi/frame/wait/WaitTriggerView;->triggerText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/didi/frame/wait/WaitTriggerView;->setBelowText(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/didi/frame/wait/WaitTriggerView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/wait/WaitTriggerView$1;-><init>(Lcom/didi/frame/wait/WaitTriggerView;)V

    invoke-virtual {p0, v0}, Lcom/didi/frame/wait/WaitTriggerView;->addListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v0, Lcom/didi/frame/wait/WaitTriggerView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/wait/WaitTriggerView$2;-><init>(Lcom/didi/frame/wait/WaitTriggerView;)V

    invoke-virtual {p0, v0}, Lcom/didi/frame/wait/WaitTriggerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitTriggerView;->showPriceTriggerView()V

    .line 96
    return-void
.end method

.method public setTriggerText(Ljava/lang/String;)V
    .locals 1
    .parameter "triggerText"

    .prologue
    .line 131
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iput-object p1, p0, Lcom/didi/frame/wait/WaitTriggerView;->triggerText:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitTriggerView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/didi/frame/wait/WaitTriggerView;->setBelowText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWaitTime(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 99
    if-gtz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitTriggerView;->showPriceTriggerView()V

    .line 103
    :goto_0
    iput p1, p0, Lcom/didi/frame/wait/WaitTriggerView;->time:I

    .line 104
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0, p1}, Lcom/didi/frame/wait/WaitTriggerView;->showWaitTimeView(I)V

    goto :goto_0
.end method

.method public showPriceTriggerView()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitTriggerView;->showAboveIcon()V

    .line 115
    iget-object v0, p0, Lcom/didi/frame/wait/WaitTriggerView;->triggerText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/didi/frame/wait/WaitTriggerView;->setBelowText(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitTriggerView;->setUnSelected()V

    .line 117
    return-void
.end method

.method public showWaitTimeView(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitTriggerView;->showAboveText()V

    .line 108
    const v0, 0x7f0b0480

    invoke-virtual {p0, v0}, Lcom/didi/frame/wait/WaitTriggerView;->setBelowText(I)V

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/wait/WaitTriggerView;->setAboveText(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/didi/frame/wait/WaitTriggerView;->setSelected()V

    .line 111
    return-void
.end method
