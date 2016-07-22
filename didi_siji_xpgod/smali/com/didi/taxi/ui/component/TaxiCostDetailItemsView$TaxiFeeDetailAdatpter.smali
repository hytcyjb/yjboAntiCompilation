.class Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;
.super Landroid/widget/BaseAdapter;
.source "TaxiCostDetailItemsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaxiFeeDetailAdatpter"
.end annotation


# instance fields
.field private final ITEM_TYPE_ITEM:I

.field private final ITEM_TYPE_TITLE:I

.field public mContext:Landroid/content/Context;

.field public mTaxiFeeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;


# direct methods
.method private constructor <init>(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p3, taxiFeeItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;>;"
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->this$0:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->ITEM_TYPE_TITLE:I

    .line 456
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->ITEM_TYPE_ITEM:I

    .line 460
    iput-object p2, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->mContext:Landroid/content/Context;

    .line 461
    iput-object p3, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->mTaxiFeeItems:Ljava/util/ArrayList;

    .line 462
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;Landroid/content/Context;Ljava/util/ArrayList;Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 450
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;-><init>(Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView;Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method private createViewByType(I)Landroid/view/View;
    .locals 4
    .parameter "viewType"

    .prologue
    const/4 v3, 0x0

    .line 524
    if-nez p1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300fe

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 529
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 527
    .end local v0           #convertView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300fd

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #convertView:Landroid/view/View;
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 476
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 486
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->mTaxiFeeItems:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v1

    .line 489
    :cond_1
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    .line 490
    .local v0, item:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    if-eqz v0, :cond_0

    .line 494
    iget v2, v0, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->isTitle:I

    if-ne v2, v1, :cond_0

    .line 495
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, viewHolder:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$ViewHolder;
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->mTaxiFeeItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;

    .line 506
    .local v0, taxiFeeDetailItem:Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;
    if-nez p2, :cond_0

    .line 507
    new-instance v1, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$ViewHolder;

    .end local v1           #viewHolder:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$ViewHolder;
    invoke-direct {v1}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$ViewHolder;-><init>()V

    .line 508
    .restart local v1       #viewHolder:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->getItemViewType(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$TaxiFeeDetailAdatpter;->createViewByType(I)Landroid/view/View;

    move-result-object p2

    .line 509
    const v2, 0x7f080587

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$ViewHolder;->tvDetailName:Landroid/widget/TextView;

    .line 510
    const v2, 0x7f080588

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$ViewHolder;->tvDetailCount:Landroid/widget/TextView;

    .line 511
    invoke-static {p2}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 512
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 516
    :goto_0
    iget-object v2, v1, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$ViewHolder;->tvDetailName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v2, v1, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$ViewHolder;->tvDetailCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/didi/taxi/model/TaxiFeeDetail$TaxiFeeDetailItem;->feeItemValue:I

    invoke-static {v4}, Lcom/didi/common/util/NumberUtil;->changeF2Y(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b01d2

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    return-object p2

    .line 514
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #viewHolder:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$ViewHolder;
    check-cast v1, Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$ViewHolder;

    .restart local v1       #viewHolder:Lcom/didi/taxi/ui/component/TaxiCostDetailItemsView$ViewHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x2

    return v0
.end method
