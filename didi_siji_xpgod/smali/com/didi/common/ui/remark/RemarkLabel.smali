.class public Lcom/didi/common/ui/remark/RemarkLabel;
.super Lcom/didi/common/base/BaseLayout;
.source "RemarkLabel.java"


# instance fields
.field private iv:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0804ff
    .end annotation
.end field

.field private mButton:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0804fe
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkLabel;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hidePlusImage()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkLabel;->iv:Lx/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 79
    return-void
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 46
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f0300eb

    return v0
.end method

.method public reLayout(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkLabel;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setWidth(I)V

    .line 74
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkLabel;->mButton:Landroid/widget/TextView;

    const v1, 0x7f0902d6

    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 75
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseLayout;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkLabel;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkLabel;->iv:Lx/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundResource(I)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkLabel;->iv:Lx/ImageView;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkLabel;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/didi/common/ui/remark/RemarkLabel;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
