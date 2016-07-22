.class public Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;
.super Landroid/widget/LinearLayout;
.source "DDriveCostDetailItemsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$1;,
        Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;,
        Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->setOrientation(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->setOrientation(I)V

    .line 31
    return-void
.end method

.method private fillItems()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->mAdapter:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;-><init>(Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$1;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->mAdapter:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->mAdapter:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->mItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->setItems(Ljava/util/List;)V

    .line 49
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->notifyDataUpdate()V

    .line 50
    return-void
.end method

.method private notifyDataUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->removeAllViews()V

    .line 54
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->mAdapter:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;

    invoke-virtual {v2}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->mAdapter:Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;

    invoke-virtual {v2, v0, v3, v3}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$FeeItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, view:Landroid/view/View;
    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 57
    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->addView(Landroid/view/View;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public setItems(Ljava/util/List;)V
    .locals 0
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
    .line 39
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView$Item;>;"
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->mItems:Ljava/util/List;

    .line 41
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveCostDetailItemsView;->fillItems()V

    .line 42
    return-void
.end method
