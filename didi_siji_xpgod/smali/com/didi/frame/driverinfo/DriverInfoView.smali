.class public Lcom/didi/frame/driverinfo/DriverInfoView;
.super Landroid/widget/RelativeLayout;
.source "DriverInfoView.java"


# instance fields
.field private carComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarComment;",
            ">;"
        }
    .end annotation
.end field

.field private commentEmptyView:Landroid/view/View;

.field private driverInfo:Landroid/widget/TextView;

.field private driverName:Landroid/widget/TextView;

.field private footerTips:Landroid/view/View;

.field private headBg:Lx/ImageView;

.field private imgPhoto:Landroid/widget/ImageView;

.field private mCarCommentAdapter:Lcom/didi/car/ui/activity/CarCommentListAdapter;

.field private mListView:Lcom/didi/common/ui/component/NoScrollListview;

.field private mScrollView:Lcom/didi/common/ui/component/PullScrollView;

.field private mTaxiCommentAdapter:Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter;

.field private orderCnt:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rankCnt:Landroid/widget/TextView;

.field private starView:Lcom/didi/common/ui/component/DriverStarView;

.field private taxiComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiComment;",
            ">;"
        }
    .end annotation
.end field

.field private titleBar:Lcom/didi/frame/titlebar/TitleBar;

.field private txtSort:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->taxiComments:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->carComments:Ljava/util/ArrayList;

    .line 79
    invoke-direct {p0}, Lcom/didi/frame/driverinfo/DriverInfoView;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->taxiComments:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->carComments:Ljava/util/ArrayList;

    .line 74
    invoke-direct {p0}, Lcom/didi/frame/driverinfo/DriverInfoView;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->taxiComments:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->carComments:Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0}, Lcom/didi/frame/driverinfo/DriverInfoView;->init()V

    .line 70
    return-void
.end method

.method private createHistoryEmptyView()Landroid/view/View;
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/ui/component/EmptyView;->obtainBuilder(Landroid/content/Context;)Lcom/didi/common/ui/component/EmptyView$Builder;

    move-result-object v0

    .line 225
    .local v0, builder:Lcom/didi/common/ui/component/EmptyView$Builder;
    const v1, 0x7f0201bf

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/EmptyView$Builder;->setIcon(I)Lcom/didi/common/ui/component/EmptyView$Builder;

    move-result-object v1

    const v2, 0x7f0b03cd

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/EmptyView$Builder;->setLabel(I)Lcom/didi/common/ui/component/EmptyView$Builder;

    .line 226
    invoke-virtual {v0}, Lcom/didi/common/ui/component/EmptyView$Builder;->build()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private filterComments(Lcom/didi/frame/business/Business;)V
    .locals 4
    .parameter "business"

    .prologue
    .line 120
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p1, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->taxiComments:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->taxiComments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 122
    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->taxiComments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 123
    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->taxiComments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/taxi/model/TaxiComment;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiComment;->commentTxt:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->taxiComments:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->taxiComments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->taxiComments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 129
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->carComments:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->carComments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->carComments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0       #i:I
    :goto_1
    if-ltz v0, :cond_3

    .line 131
    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->carComments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarComment;

    invoke-virtual {v1}, Lcom/didi/car/model/CarComment;->getCommentTxt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->carComments:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->carComments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->carComments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 130
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 138
    .end local v0           #i:I
    :cond_3
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03009c

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 85
    const v1, 0x7f0801f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/PullScrollView;

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mScrollView:Lcom/didi/common/ui/component/PullScrollView;

    .line 86
    const v1, 0x7f0801ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->headBg:Lx/ImageView;

    .line 87
    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mScrollView:Lcom/didi/common/ui/component/PullScrollView;

    iget-object v2, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->headBg:Lx/ImageView;

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/PullScrollView;->setHeader(Landroid/view/View;)V

    .line 88
    const v1, 0x7f080201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/NoScrollListview;

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mListView:Lcom/didi/common/ui/component/NoScrollListview;

    .line 89
    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mListView:Lcom/didi/common/ui/component/NoScrollListview;

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 90
    const v1, 0x7f0801f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->imgPhoto:Landroid/widget/ImageView;

    .line 91
    const v1, 0x7f08036d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->driverName:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f0801f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->driverInfo:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f0801fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->txtSort:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0801fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->orderCnt:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0801ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->rankCnt:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f08036e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/DriverStarView;

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->starView:Lcom/didi/common/ui/component/DriverStarView;

    .line 97
    const v1, 0x7f0801ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->progressBar:Landroid/widget/ProgressBar;

    .line 98
    const v1, 0x7f080202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->commentEmptyView:Landroid/view/View;

    .line 99
    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03009d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->footerTips:Landroid/view/View;

    .line 100
    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->footerTips:Landroid/view/View;

    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 101
    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mListView:Lcom/didi/common/ui/component/NoScrollListview;

    iget-object v2, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->footerTips:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/NoScrollListview;->addFooterView(Landroid/view/View;)V

    .line 102
    invoke-direct {p0}, Lcom/didi/frame/driverinfo/DriverInfoView;->setAdapter()V

    .line 103
    return-void
.end method

.method private onGetCarDriver(Lcom/didi/car/model/CarDriverPage;)V
    .locals 3
    .parameter "driver"

    .prologue
    .line 186
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 187
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->driverName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarDriverPage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->driverInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/didi/car/model/CarDriverPage;->license:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/car/model/CarDriverPage;->carType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->orderCnt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/didi/car/model/CarDriverPage;->orderCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->rankCnt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverPage;->getRankCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->starView:Lcom/didi/common/ui/component/DriverStarView;

    iget v1, p1, Lcom/didi/car/model/CarDriverPage;->level:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DriverStarView;->setLevel(I)V

    .line 192
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->carComments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverPage;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/frame/driverinfo/DriverInfoView;->filterComments(Lcom/didi/frame/business/Business;)V

    .line 194
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mCarCommentAdapter:Lcom/didi/car/ui/activity/CarCommentListAdapter;

    invoke-virtual {v0}, Lcom/didi/car/ui/activity/CarCommentListAdapter;->notifyDataSetChanged()V

    .line 195
    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverPage;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mListView:Lcom/didi/common/ui/component/NoScrollListview;

    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->footerTips:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/NoScrollListview;->removeFooterView(Landroid/view/View;)Z

    .line 197
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->commentEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :goto_0
    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverPage;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverInfoView;->showEmptyView()V

    .line 205
    :cond_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->commentEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onGetDDriver(Lcom/didi/ddrive/net/http/response/DriverDetailInfo;)V
    .locals 3
    .parameter "driver"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->driverName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/ddrive/net/http/response/DriverDetailInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->driverInfo:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/ddrive/net/http/response/DriverDetailInfo;->mob:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->orderCnt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/didi/ddrive/net/http/response/DriverDetailInfo;->driveringCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->rankCnt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/didi/ddrive/net/http/response/DriverDetailInfo;->driveringAge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->txtSort:Landroid/widget/TextView;

    const v1, 0x7f0b02fd

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->starView:Lcom/didi/common/ui/component/DriverStarView;

    iget v1, p1, Lcom/didi/ddrive/net/http/response/DriverDetailInfo;->starLevel:I

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DriverStarView;->setLevel(I)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverInfoView;->showEmptyView()V

    goto :goto_0
.end method

.method private onGetTaxiDriver(Lcom/didi/taxi/model/TaxiDriverPage;)V
    .locals 3
    .parameter "driver"

    .prologue
    .line 141
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 142
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->driverName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiDriverPage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->driverInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiDriverPage;->license:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiDriverPage;->company:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->orderCnt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/didi/taxi/model/TaxiDriverPage;->orderCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->rankCnt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/didi/taxi/model/TaxiDriverPage;->rankCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->starView:Lcom/didi/common/ui/component/DriverStarView;

    iget v1, p1, Lcom/didi/taxi/model/TaxiDriverPage;->level:I

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DriverStarView;->setLevel(I)V

    .line 147
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->taxiComments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiDriverPage;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/frame/driverinfo/DriverInfoView;->filterComments(Lcom/didi/frame/business/Business;)V

    .line 149
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mTaxiCommentAdapter:Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter;->notifyDataSetChanged()V

    .line 150
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiDriverPage;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mListView:Lcom/didi/common/ui/component/NoScrollListview;

    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->footerTips:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/NoScrollListview;->removeFooterView(Landroid/view/View;)Z

    .line 152
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->commentEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :goto_0
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiDriverPage;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverInfoView;->showEmptyView()V

    .line 160
    :cond_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->commentEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setAdapter()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 107
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter;

    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->taxiComments:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mTaxiCommentAdapter:Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter;

    .line 108
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mListView:Lcom/didi/common/ui/component/NoScrollListview;

    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mTaxiCommentAdapter:Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/NoScrollListview;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/didi/car/ui/activity/CarCommentListAdapter;

    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->carComments:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/didi/car/ui/activity/CarCommentListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mCarCommentAdapter:Lcom/didi/car/ui/activity/CarCommentListAdapter;

    .line 111
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mListView:Lcom/didi/common/ui/component/NoScrollListview;

    iget-object v1, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mCarCommentAdapter:Lcom/didi/car/ui/activity/CarCommentListAdapter;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/NoScrollListview;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public hideProgress()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 280
    return-void
.end method

.method public onCarDriverloadMore(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarComment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, carComments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarComment;>;"
    invoke-virtual {p1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 269
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mCarCommentAdapter:Lcom/didi/car/ui/activity/CarCommentListAdapter;

    invoke-virtual {v0}, Lcom/didi/car/ui/activity/CarCommentListAdapter;->notifyDataSetChanged()V

    .line 270
    return-void
.end method

.method public onTaxiDriverloadMore(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiComment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, taxiComments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/taxi/model/TaxiComment;>;"
    invoke-virtual {p1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 263
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mTaxiCommentAdapter:Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/activity/TaxiCommentListAdapter;->notifyDataSetChanged()V

    .line 264
    return-void
.end method

.method public setCarDriverPage(Lcom/didi/car/model/CarDriverPage;)V
    .locals 0
    .parameter "driver"

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/didi/frame/driverinfo/DriverInfoView;->onGetCarDriver(Lcom/didi/car/model/CarDriverPage;)V

    .line 242
    return-void
.end method

.method public setDDriverPage(Lcom/didi/ddrive/net/http/response/DriverDetailInfo;)V
    .locals 0
    .parameter "driver"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/didi/frame/driverinfo/DriverInfoView;->onGetDDriver(Lcom/didi/ddrive/net/http/response/DriverDetailInfo;)V

    .line 247
    return-void
.end method

.method public setDriverPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->imgPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    return-void
.end method

.method public setHeadBg(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->headBg:Lx/ImageView;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->headBg:Lx/ImageView;

    invoke-virtual {v0, p1}, Lx/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setOnRefreshListener(Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;)V
    .locals 1
    .parameter "onRefreshLisener"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->mScrollView:Lcom/didi/common/ui/component/PullScrollView;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/PullScrollView;->setOnRefreshListener(Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;)V

    .line 258
    return-void
.end method

.method public setTaxiDriverPage(Lcom/didi/taxi/model/TaxiDriverPage;)V
    .locals 0
    .parameter "driver"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/didi/frame/driverinfo/DriverInfoView;->onGetTaxiDriver(Lcom/didi/taxi/model/TaxiDriverPage;)V

    .line 237
    return-void
.end method

.method public setTitleBar(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0, p1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f020170

    invoke-virtual {v0, v1, p2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 253
    return-void
.end method

.method public showEmptyView()V
    .locals 8

    .prologue
    const v7, 0x7f080025

    .line 208
    invoke-direct {p0}, Lcom/didi/frame/driverinfo/DriverInfoView;->createHistoryEmptyView()Landroid/view/View;

    move-result-object v2

    .line 210
    .local v2, emptyView:Landroid/view/View;
    const/4 v5, -0x1

    .line 211
    .local v5, w:I
    const/4 v3, -0x1

    .line 212
    .local v3, h:I
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 213
    .local v4, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 215
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    const v6, 0x7f070049

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 218
    invoke-virtual {p0, v7}, Lcom/didi/frame/driverinfo/DriverInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, anchorView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 220
    .local v1, contentView:Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 221
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/didi/frame/driverinfo/DriverInfoView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 275
    return-void
.end method
