.class Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "DDriveCostDetailItemsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeeItemAdapter"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;


# direct methods
.method private constructor <init>(Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->this$0:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;-><init>(Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 78
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->list:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 79
    .local v0, count:I
    :goto_0
    const-string v1, "FeeItemAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return v0

    .line 78
    .end local v0           #count:I
    :cond_0
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    .locals 1
    .parameter "position"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->getItem(I)Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 95
    iget-object v4, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->this$0:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;

    invoke-virtual {v4}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f030092

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 96
    .local v3, view:Landroid/view/View;
    const v4, 0x7f080348

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 97
    .local v1, label:Landroid/widget/TextView;
    const v4, 0x7f080349

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 99
    .local v2, value:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->getItem(I)Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;

    move-result-object v0

    .line 100
    .local v0, item:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    iget-object v4, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;->label:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;->value:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget v4, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;->color:I

    if-eqz v4, :cond_0

    .line 103
    iget-object v4, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->this$0:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;

    invoke-virtual {v4}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;->color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v4, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->this$0:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;

    invoke-virtual {v4}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;->color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    :cond_0
    return-object v3
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->list:Ljava/util/List;

    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    :cond_0
    return-void
.end method
