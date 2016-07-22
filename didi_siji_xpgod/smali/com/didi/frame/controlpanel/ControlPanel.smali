.class public Lcom/didi/frame/controlpanel/ControlPanel;
.super Lcom/didi/common/base/BaseLayout;
.source "ControlPanel.java"


# static fields
.field private static confirmHeightWithMarginBottom:I


# instance fields
.field private mOnConfirmClickListener:Landroid/view/View$OnClickListener;

.field private mTxtConfirm:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "confirm"
        id = 0x7f080323
    .end annotation
.end field

.field private operationArea:Lcom/didi/frame/controlpanel/OperationArea;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080322
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f0902c7

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByVerticalRatio(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/didi/frame/controlpanel/ControlPanel;->confirmHeightWithMarginBottom:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/didi/frame/controlpanel/ControlPanel;->operationArea:Lcom/didi/frame/controlpanel/OperationArea;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->activate()V

    .line 135
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/didi/frame/controlpanel/ControlPanel;->operationArea:Lcom/didi/frame/controlpanel/OperationArea;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->clear()V

    .line 127
    return-void
.end method

.method public confirm(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Lcom/didi/frame/controlpanel/ControlPanel;->mOnConfirmClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    const/16 v0, 0x7d0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/didi/frame/controlpanel/ControlPanel;->mTxtConfirm:Landroid/widget/TextView;

    aput-object v2, v1, v3

    invoke-static {v3, v0, v1}, Lcom/didi/common/util/ViewUtil;->setViewClickableTemply(ZI[Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/didi/frame/controlpanel/ControlPanel;->mOnConfirmClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->hideContentPins()V

    .line 112
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/wait/WaitOperator;->hideContentPins()V

    .line 113
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->hideContentPins()V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/didi/frame/controlpanel/ControlPanel;->operationArea:Lcom/didi/frame/controlpanel/OperationArea;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->deactivate()V

    .line 139
    return-void
.end method

.method public enableConfirm(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/didi/frame/controlpanel/ControlPanel;->mTxtConfirm:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/didi/frame/controlpanel/ControlPanel;->enable(Landroid/view/View;Z)V

    .line 94
    return-void
.end method

.method public getConfirmText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/didi/frame/controlpanel/ControlPanel;->mTxtConfirm:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHeightWithoutConfirm()I
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/didi/frame/controlpanel/ControlPanel;->getHeight()I

    move-result v0

    sget v1, Lcom/didi/frame/controlpanel/ControlPanel;->confirmHeightWithMarginBottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/didi/frame/controlpanel/ControlPanel;->operationArea:Lcom/didi/frame/controlpanel/OperationArea;

    return-object v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/didi/common/base/BaseLayout;->hide()V

    .line 77
    return-void
.end method

.method public hideConfirm()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/didi/frame/controlpanel/ControlPanel;->mTxtConfirm:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/ControlPanel;->invisible(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public invisible()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/didi/common/base/BaseLayout;->invisible()V

    .line 82
    return-void
.end method

.method protected onInit()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/didi/common/base/BaseLayout;->onInit()V

    .line 55
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->computeScaledSize(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/didi/common/util/WindowUtil;->setPaddingBottom(Landroid/view/View;I)Z

    .line 56
    invoke-static {p0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->set(Lcom/didi/frame/controlpanel/ControlPanel;)V

    .line 57
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f030084

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 61
    invoke-super/range {p0 .. p5}, Lcom/didi/common/base/BaseLayout;->onLayout(ZIIII)V

    .line 62
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;->onMeasure(II)V

    .line 67
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/didi/frame/controlpanel/ControlPanel;->operationArea:Lcom/didi/frame/controlpanel/OperationArea;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/OperationArea;->reset()V

    .line 123
    return-void
.end method

.method public setConfirmText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/didi/frame/controlpanel/ControlPanel;->mTxtConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 143
    return-void
.end method

.method public setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/didi/frame/controlpanel/ControlPanel;->mOnConfirmClickListener:Landroid/view/View$OnClickListener;

    .line 98
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/didi/common/base/BaseLayout;->show()V

    .line 72
    return-void
.end method

.method public showConfirm()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/didi/frame/controlpanel/ControlPanel;->mTxtConfirm:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/ControlPanel;->show(Landroid/view/View;)V

    .line 90
    return-void
.end method
