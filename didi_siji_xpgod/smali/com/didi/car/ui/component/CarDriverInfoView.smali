.class public Lcom/didi/car/ui/component/CarDriverInfoView;
.super Landroid/widget/RelativeLayout;
.source "CarDriverInfoView.java"


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

.field private cardIdView:Landroid/widget/TextView;

.field private commentEmptyView:Landroid/view/View;

.field private driverInfo:Landroid/widget/TextView;

.field private footerTips:Landroid/view/View;

.field private headBg:Lx/ImageView;

.field private imgPhoto:Landroid/widget/ImageView;

.field private mCarCommentAdapter:Lcom/didi/car/ui/activity/CarCommentListAdapter;

.field private mListView:Lcom/didi/common/ui/component/NoScrollListview;

.field private mScrollView:Lcom/didi/common/ui/component/PullScrollView;

.field private orderCnt:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rankCnt:Landroid/widget/TextView;

.field private ratingValue:Landroid/widget/TextView;

.field private titleBar:Lcom/didi/frame/titlebar/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->carComments:Ljava/util/ArrayList;

    .line 73
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarDriverInfoView;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->carComments:Ljava/util/ArrayList;

    .line 68
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarDriverInfoView;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->carComments:Ljava/util/ArrayList;

    .line 63
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarDriverInfoView;->init()V

    .line 64
    return-void
.end method

.method private createHistoryEmptyView()Landroid/view/View;
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarDriverInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/ui/component/EmptyView;->obtainBuilder(Landroid/content/Context;)Lcom/didi/common/ui/component/EmptyView$Builder;

    move-result-object v0

    .line 178
    .local v0, builder:Lcom/didi/common/ui/component/EmptyView$Builder;
    const v1, 0x7f0201bf

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/EmptyView$Builder;->setIcon(I)Lcom/didi/common/ui/component/EmptyView$Builder;

    move-result-object v1

    const v2, 0x7f0b03cd

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/EmptyView$Builder;->setLabel(I)Lcom/didi/common/ui/component/EmptyView$Builder;

    .line 179
    invoke-virtual {v0}, Lcom/didi/common/ui/component/EmptyView$Builder;->build()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private filterComments(Lcom/didi/frame/business/Business;)V
    .locals 4
    .parameter "business"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->carComments:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->carComments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->carComments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->carComments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarComment;

    invoke-virtual {v1}, Lcom/didi/car/model/CarComment;->getCommentTxt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->carComments:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->carComments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->carComments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 118
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarDriverInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030056

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/titlebar/TitleBar;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 79
    const v1, 0x7f0801f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/PullScrollView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->mScrollView:Lcom/didi/common/ui/component/PullScrollView;

    .line 80
    const v1, 0x7f0801ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->headBg:Lx/ImageView;

    .line 81
    iget-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->mScrollView:Lcom/didi/common/ui/component/PullScrollView;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->headBg:Lx/ImageView;

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/PullScrollView;->setHeader(Landroid/view/View;)V

    .line 82
    const v1, 0x7f080201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/NoScrollListview;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->mListView:Lcom/didi/common/ui/component/NoScrollListview;

    .line 83
    iget-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->mListView:Lcom/didi/common/ui/component/NoScrollListview;

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 84
    const v1, 0x7f0801f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->imgPhoto:Landroid/widget/ImageView;

    .line 85
    const v1, 0x7f0801f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->driverInfo:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0801fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->orderCnt:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f0801ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->rankCnt:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->ratingValue:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f0801f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->cardIdView:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f0801ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->progressBar:Landroid/widget/ProgressBar;

    .line 92
    const v1, 0x7f080202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->commentEmptyView:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarDriverInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03009d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->footerTips:Landroid/view/View;

    .line 94
    iget-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->footerTips:Landroid/view/View;

    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 95
    iget-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->mListView:Lcom/didi/common/ui/component/NoScrollListview;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->footerTips:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/NoScrollListview;->addFooterView(Landroid/view/View;)V

    .line 96
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarDriverInfoView;->setAdapter()V

    .line 97
    return-void
.end method

.method private onGetCarDriver(Lcom/didi/car/model/CarDriverPage;)V
    .locals 6
    .parameter "driver"

    .prologue
    const/4 v5, 0x0

    .line 121
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 122
    iget-object v0, p1, Lcom/didi/car/model/CarDriverPage;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p1, Lcom/didi/car/model/CarDriverPage;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarDriverInfoView;->updateTitle(Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->driverInfo:Landroid/widget/TextView;

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

    .line 126
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->orderCnt:Landroid/widget/TextView;

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

    .line 127
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->rankCnt:Landroid/widget/TextView;

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

    .line 128
    iget v0, p1, Lcom/didi/car/model/CarDriverPage;->level:F

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarDriverInfoView;->showGrade(F)V

    .line 129
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->carComments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverPage;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    iget-object v0, p1, Lcom/didi/car/model/CarDriverPage;->cardId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->cardIdView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->cardIdView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarDriverInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0306

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/didi/car/model/CarDriverPage;->cardId:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarDriverInfoView;->filterComments(Lcom/didi/frame/business/Business;)V

    .line 137
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->mCarCommentAdapter:Lcom/didi/car/ui/activity/CarCommentListAdapter;

    invoke-virtual {v0}, Lcom/didi/car/ui/activity/CarCommentListAdapter;->notifyDataSetChanged()V

    .line 138
    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverPage;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->mListView:Lcom/didi/common/ui/component/NoScrollListview;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->footerTips:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/NoScrollListview;->removeFooterView(Landroid/view/View;)Z

    .line 140
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->commentEmptyView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :goto_1
    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverPage;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarDriverInfoView;->showEmptyView()V

    .line 148
    :cond_1
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->cardIdView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->commentEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setAdapter()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lcom/didi/car/ui/activity/CarCommentListAdapter;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarDriverInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->carComments:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/didi/car/ui/activity/CarCommentListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->mCarCommentAdapter:Lcom/didi/car/ui/activity/CarCommentListAdapter;

    .line 101
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->mListView:Lcom/didi/common/ui/component/NoScrollListview;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->mCarCommentAdapter:Lcom/didi/car/ui/activity/CarCommentListAdapter;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/NoScrollListview;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    return-void
.end method

.method private showGrade(F)V
    .locals 2
    .parameter "starGrade"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->ratingValue:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method


# virtual methods
.method public hideProgress()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
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
    .line 210
    .local p1, carComments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarComment;>;"
    invoke-virtual {p1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 211
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->mCarCommentAdapter:Lcom/didi/car/ui/activity/CarCommentListAdapter;

    invoke-virtual {v0}, Lcom/didi/car/ui/activity/CarCommentListAdapter;->notifyDataSetChanged()V

    .line 212
    return-void
.end method

.method public setCarDriverPage(Lcom/didi/car/model/CarDriverPage;)V
    .locals 0
    .parameter "driver"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/didi/car/ui/component/CarDriverInfoView;->onGetCarDriver(Lcom/didi/car/model/CarDriverPage;)V

    .line 190
    return-void
.end method

.method public setDriverPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->imgPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    return-void
.end method

.method public setOnRefreshListener(Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;)V
    .locals 1
    .parameter "onRefreshLisener"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->mScrollView:Lcom/didi/common/ui/component/PullScrollView;

    invoke-virtual {v0, p1}, Lcom/didi/common/ui/component/PullScrollView;->setOnRefreshListener(Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;)V

    .line 206
    return-void
.end method

.method public setTitleBar(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0, p1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f020170

    invoke-virtual {v0, v1, p2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 196
    return-void
.end method

.method public showEmptyView()V
    .locals 8

    .prologue
    const v7, 0x7f080025

    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarDriverInfoView;->createHistoryEmptyView()Landroid/view/View;

    move-result-object v2

    .line 163
    .local v2, emptyView:Landroid/view/View;
    const/4 v5, -0x1

    .line 164
    .local v5, w:I
    const/4 v3, -0x1

    .line 165
    .local v3, h:I
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v4, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 168
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    const v6, 0x7f070049

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 171
    invoke-virtual {p0, v7}, Lcom/didi/car/ui/component/CarDriverInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, anchorView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 173
    .local v1, contentView:Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 217
    return-void
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/didi/car/ui/component/CarDriverInfoView;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0, p1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 201
    return-void
.end method
