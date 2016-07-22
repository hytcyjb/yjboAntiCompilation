.class public Lcom/didi/common/ui/component/EmptyView;
.super Ljava/lang/Object;
.source "EmptyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/EmptyView$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static createGeneralEmptyView(Landroid/content/Context;II)Lx/RelativeLayout;
    .locals 11
    .parameter "context"
    .parameter "imageId"
    .parameter "textId"

    .prologue
    const/16 v10, 0xe

    const/4 v9, 0x0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 67
    .local v4, res:Landroid/content/res/Resources;
    new-instance v0, Lx/RelativeLayout;

    invoke-direct {v0, p0}, Lx/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, emptyView:Lx/RelativeLayout;
    const/4 v7, -0x1

    .line 70
    .local v7, w:I
    const/4 v1, -0x1

    .line 71
    .local v1, h:I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v3, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Lx/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v2, Lx/ImageView;

    invoke-direct {v2, p0}, Lx/ImageView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v2, iv_icon:Landroid/widget/ImageView;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 77
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    const v8, 0x7f0901eb

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 80
    .local v5, size:I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    .restart local v3       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v8, 0x4248

    invoke-static {v8}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v8

    invoke-virtual {v3, v9, v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 83
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {v0, v2}, Lx/RelativeLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    .local v6, tv_label:Landroid/widget/TextView;
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(I)V

    .line 91
    const/high16 v8, 0x4188

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 92
    const v8, 0x7f070023

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    const/4 v7, -0x2

    .line 95
    const/4 v1, -0x2

    .line 96
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .restart local v3       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v8, 0x4170

    invoke-static {v8}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v8

    invoke-virtual {v3, v9, v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 99
    const/4 v8, 0x3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 100
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual {v0, v6}, Lx/RelativeLayout;->addView(Landroid/view/View;)V

    .line 105
    return-object v0
.end method

.method public static obtainBuilder(Landroid/content/Context;)Lcom/didi/common/ui/component/EmptyView$Builder;
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    new-instance v0, Lcom/didi/common/ui/component/EmptyView$Builder;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/EmptyView$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
