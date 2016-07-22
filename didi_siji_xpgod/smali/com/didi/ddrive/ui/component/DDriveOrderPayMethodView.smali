.class public Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;
.super Landroid/widget/LinearLayout;
.source "DDriveOrderPayMethodView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter",
            "<",
            "Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/LinearLayout;

.field private mListener:Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "set"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->init()V

    .line 39
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030096

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    const v0, 0x7f080353

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mListView:Landroid/widget/LinearLayout;

    .line 44
    return-void
.end method

.method private notifyDataUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 71
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    invoke-virtual {v2}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    invoke-virtual {v2, v0, v3, v3}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 75
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public getSelection()Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->getSelection()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->getSelection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 126
    .local v0, index:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->setSelection(I)V

    .line 127
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mListener:Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mListener:Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;->onSelect(ILjava/lang/Object;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;>;"
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView$1;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView$1;-><init>(Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    invoke-virtual {v0, p1}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->setList(Ljava/util/List;)V

    .line 120
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->notifyDataUpdate()V

    .line 121
    return-void
.end method

.method public setOnSelectionListener(Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mListener:Lcom/didi/ddrive/ui/component/SingleSelectionListView$OnSelectListener;

    .line 48
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "selection"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    invoke-virtual {v0, p1}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->setSelection(I)V

    .line 62
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->notifyDataUpdate()V

    .line 63
    return-void
.end method

.method public setSelection(Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->mAdapter:Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;

    invoke-virtual {v1, p1}, Lcom/didi/ddrive/ui/component/SingleSelectionListView$Adapter;->getIndex(Ljava/lang/Object;)I

    move-result v0

    .line 134
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveOrderPayMethodView;->setSelection(I)V

    .line 135
    return-void
.end method
