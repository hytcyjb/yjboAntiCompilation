.class public Lcom/didi/frame/remark/RemarkTriggerView;
.super Lcom/didi/frame/controlpanel/pin/TriggerPinView;
.source "RemarkTriggerView.java"


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/remark/RemarkTriggerView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkTriggerView;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getDefaultListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkTriggerView;->clickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/didi/frame/remark/RemarkTriggerView$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/remark/RemarkTriggerView$2;-><init>(Lcom/didi/frame/remark/RemarkTriggerView;)V

    iput-object v0, p0, Lcom/didi/frame/remark/RemarkTriggerView;->clickListener:Landroid/view/View$OnClickListener;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/remark/RemarkTriggerView;->clickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected onInit()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->onInit()V

    .line 40
    const v0, 0x7f020167

    invoke-virtual {p0, v0}, Lcom/didi/frame/remark/RemarkTriggerView;->setIcon(I)V

    .line 41
    const v0, 0x7f0b0482

    invoke-virtual {p0, v0}, Lcom/didi/frame/remark/RemarkTriggerView;->setBelowText(I)V

    .line 43
    invoke-virtual {p0}, Lcom/didi/frame/remark/RemarkTriggerView;->getDefaultListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/remark/RemarkTriggerView;->addListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v0, Lcom/didi/frame/remark/RemarkTriggerView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/remark/RemarkTriggerView$1;-><init>(Lcom/didi/frame/remark/RemarkTriggerView;)V

    invoke-virtual {p0, v0}, Lcom/didi/frame/remark/RemarkTriggerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/didi/frame/remark/RemarkTriggerView;->setUnSelected()V

    .line 72
    return-void
.end method

.method public setSelected()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->setSelected()V

    .line 77
    const v0, 0x7f0b0483

    invoke-virtual {p0, v0}, Lcom/didi/frame/remark/RemarkTriggerView;->setBelowText(I)V

    .line 78
    const v0, 0x7f02014c

    invoke-virtual {p0, v0}, Lcom/didi/frame/remark/RemarkTriggerView;->setIcon(I)V

    .line 79
    return-void
.end method

.method public setUnSelected()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->setUnSelected()V

    .line 84
    const v0, 0x7f0b0482

    invoke-virtual {p0, v0}, Lcom/didi/frame/remark/RemarkTriggerView;->setBelowText(I)V

    .line 85
    const v0, 0x7f020167

    invoke-virtual {p0, v0}, Lcom/didi/frame/remark/RemarkTriggerView;->setIcon(I)V

    .line 86
    return-void
.end method
