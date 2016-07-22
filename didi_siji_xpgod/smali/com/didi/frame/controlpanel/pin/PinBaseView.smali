.class public Lcom/didi/frame/controlpanel/pin/PinBaseView;
.super Lcom/didi/common/base/BaseLayout;
.source "PinBaseView.java"


# static fields
.field private static viewSize:I


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mIconBmpId:I

.field private mTxtAbove:Landroid/widget/TextView;

.field private mTxtBelow:Landroid/widget/TextView;

.field private selected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f0902ce

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->viewSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public static getSize()I
    .locals 1

    .prologue
    .line 172
    sget v0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->viewSize:I

    return v0
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0802fb

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mIcon:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f0802fc

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtAbove:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0802fd

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtBelow:Landroid/widget/TextView;

    .line 54
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    const v1, 0x7f070023

    .line 160
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtAbove:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/didi/common/util/TextUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 161
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtBelow:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/didi/common/util/TextUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 162
    const v0, 0x7f0200f2

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->setBackgroundResource(I)V

    .line 163
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020139

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->setClickable(Z)V

    .line 165
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 150
    const v0, 0x7f0200f5

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->setBackgroundResource(I)V

    .line 151
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtAbove:Landroid/widget/TextView;

    const v1, 0x7f07004d

    invoke-static {v0, v1}, Lcom/didi/common/util/TextUtil;->setTextColorList(Landroid/widget/TextView;I)V

    .line 153
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtBelow:Landroid/widget/TextView;

    const v1, 0x7f07004e

    invoke-static {v0, v1}, Lcom/didi/common/util/TextUtil;->setTextColorList(Landroid/widget/TextView;I)V

    .line 155
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020168

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->setClickable(Z)V

    .line 157
    return-void
.end method

.method public getBelowText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtBelow:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mIconBmpId:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->selected:Z

    return v0
.end method

.method protected onInit()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->initViews()V

    .line 46
    invoke-super {p0}, Lcom/didi/common/base/BaseLayout;->onInit()V

    .line 47
    const v0, 0x7f0200f5

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->setBackgroundResource(I)V

    .line 48
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f03007b

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 58
    sget v0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->viewSize:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 60
    sget v0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->viewSize:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 62
    invoke-super {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;->onMeasure(II)V

    .line 63
    return-void
.end method

.method public setAboveText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtAbove:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    return-void
.end method

.method public setAboveText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtAbove:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setBelowText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtBelow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    return-void
.end method

.method public setBelowText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtBelow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public setBelowTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtBelow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    return-void
.end method

.method public setBelowTextColorList(I)V
    .locals 1
    .parameter "ColorListId"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtBelow:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/didi/common/util/TextUtil;->setTextColorList(Landroid/widget/TextView;I)V

    .line 97
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 71
    iput p1, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mIconBmpId:I

    .line 72
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    return-void
.end method

.method public setSelected()V
    .locals 2

    .prologue
    const v1, 0x7f07002f

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->selected:Z

    .line 135
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtAbove:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/didi/common/util/TextUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 136
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtBelow:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/didi/common/util/TextUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 137
    const v0, 0x7f0200f8

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->setBackgroundResource(I)V

    .line 138
    return-void
.end method

.method public setUnSelected()V
    .locals 2

    .prologue
    .line 141
    const v0, 0x7f0200f5

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->setBackgroundResource(I)V

    .line 142
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtAbove:Landroid/widget/TextView;

    const v1, 0x7f07004d

    invoke-static {v0, v1}, Lcom/didi/common/util/TextUtil;->setTextColorList(Landroid/widget/TextView;I)V

    .line 144
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtBelow:Landroid/widget/TextView;

    const v1, 0x7f07004e

    invoke-static {v0, v1}, Lcom/didi/common/util/TextUtil;->setTextColorList(Landroid/widget/TextView;I)V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->selected:Z

    .line 147
    return-void
.end method

.method public showAboveIcon()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtAbove:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->invisible(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->show(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public showAboveText()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->invisible(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->mTxtAbove:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->show(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public toggleSelected()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/didi/frame/controlpanel/pin/PinBaseView;->selected:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->setUnSelected()V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/didi/frame/controlpanel/pin/PinBaseView;->setSelected()V

    goto :goto_0
.end method
