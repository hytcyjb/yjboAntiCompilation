.class public Lcom/didi/common/ui/component/PayShareItemView;
.super Lcom/didi/common/base/BaseLayout;
.source "PayShareItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f0300da

    return v0
.end method

.method public setInfo(ILjava/lang/String;)V
    .locals 3
    .parameter "resId"
    .parameter "name"

    .prologue
    const v1, 0x7f0804b8

    .line 32
    const v0, 0x7f0804b7

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/PayShareItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    invoke-virtual {v0, p1}, Lx/ImageView;->setImageResource(I)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/didi/common/ui/component/PayShareItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/didi/common/ui/component/PayShareItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/common/ui/component/PayShareItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    return-void
.end method
