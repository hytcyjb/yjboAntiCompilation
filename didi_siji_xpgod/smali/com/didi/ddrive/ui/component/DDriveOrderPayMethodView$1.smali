.class Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView$1;
.super Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;
.source "DDriveOrderPayMethodView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->setData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter",
        "<",
        "Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView$1;->this$0:Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;

    invoke-direct {p0, p2}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V
    .locals 5
    .parameter "view"
    .parameter "channelItem"

    .prologue
    .line 90
    const v3, 0x7f08008c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 91
    .local v2, textview:Landroid/widget/TextView;
    iget-object v3, p2, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->des:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v3, 0x7f080351

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 94
    .local v0, icon:Landroid/widget/ImageView;
    iget v3, p2, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 95
    const v3, 0x7f020325

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :cond_0
    :goto_0
    const v3, 0x7f080352

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 102
    .local v1, promotionView:Landroid/widget/TextView;
    iget-object v3, p2, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 103
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v3, p2, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_1
    return-void

    .line 96
    .end local v1           #promotionView:Landroid/widget/TextView;
    :cond_1
    iget v3, p2, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 97
    const v3, 0x7f020326

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    const v3, 0x7f0b0138

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    .restart local v1       #promotionView:Landroid/widget/TextView;
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected bridge synthetic bindView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    check-cast p2, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView$1;->bindView(Landroid/view/View;Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V

    return-void
.end method

.method protected getView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 85
    const v0, 0x7f030095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onSelectChange(Landroid/view/View;IZ)V
    .locals 2
    .parameter "view"
    .parameter "position"
    .parameter "onSelect"

    .prologue
    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    const v1, 0x7f0802f3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, checkbox:Landroid/view/View;
    invoke-virtual {v0, p3}, Landroid/view/View;->setSelected(Z)V

    .line 115
    return-void
.end method
