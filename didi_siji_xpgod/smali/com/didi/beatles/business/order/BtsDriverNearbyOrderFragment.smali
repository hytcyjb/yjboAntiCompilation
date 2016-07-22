.class public Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;
.super Lcom/didi/beatles/business/order/BtsBaseFragment;
.source "BtsDriverNearbyOrderFragment.java"


# instance fields
.field private final FOOT_STATE_ERROR:I

.field private final FOOT_STATE_GONE:I

.field private final FOOT_STATE_IS_LOADING:I

.field private final FOOT_STATE_NO_MORE:I

.field private final LOAD_AUTO_REFRESH:I

.field private final LOAD_LOAD_MORE:I

.field private final LOAD_MANU_REFRESH:I

.field private mAdapter:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

.field private mFootTextErrorStr:Ljava/lang/String;

.field private mFootTextIsLoadingStr:Ljava/lang/String;

.field private mFootTextNoMoreStr:Ljava/lang/String;

.field private mFootView:Landroid/view/View;

.field private mFootViewProgress:Landroid/view/View;

.field private mFootViewText:Landroid/widget/TextView;

.field private mHasMore:Z

.field private mIsLoading:Z

.field private mLastListViewY:F

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriverListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/didi/im/component/PullDownRefreshListView;

.field private mLoadingLayout:Landroid/view/View;

.field private mNetErrorLayout:Landroid/view/View;

.field private mOnRefreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

.field private mState:I

.field private mTabIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

.field private reloadListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    .line 49
    iput v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->LOAD_AUTO_REFRESH:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->LOAD_MANU_REFRESH:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->LOAD_LOAD_MORE:I

    .line 53
    const/16 v0, 0x65

    iput v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->FOOT_STATE_GONE:I

    .line 54
    const/16 v0, 0x66

    iput v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->FOOT_STATE_IS_LOADING:I

    .line 55
    const/16 v0, 0x67

    iput v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->FOOT_STATE_ERROR:I

    .line 56
    const/16 v0, 0x68

    iput v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->FOOT_STATE_NO_MORE:I

    .line 59
    iput-boolean v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mHasMore:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mIsLoading:Z

    .line 161
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$3;-><init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->reloadListener:Landroid/view/View$OnClickListener;

    .line 336
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$5;-><init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mOnRefreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mHasMore:Z

    return v0
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mState:I

    return v0
.end method

.method static synthetic access$400(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->loadOrderData(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mLastListViewY:F

    return v0
.end method

.method static synthetic access$502(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mLastListViewY:F

    return p1
.end method

.method static synthetic access$600(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mNetErrorLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mLoadingLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;Lcom/didi/beatles/model/order/BtsOrderDriverList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->resultSetProcess(Lcom/didi/beatles/model/order/BtsOrderDriverList;I)V

    return-void
.end method

.method private bindUI(Landroid/view/View;)V
    .locals 6
    .parameter "root"

    .prologue
    const v5, 0x7f090031

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 95
    const v0, 0x7f080140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/im/component/PullDownRefreshListView;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    .line 97
    const v0, 0x7f0800df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mLoadingLayout:Landroid/view/View;

    .line 98
    const v0, 0x7f080142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mNetErrorLayout:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mNetErrorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->reloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootTextNoMoreStr:Ljava/lang/String;

    .line 104
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootTextIsLoadingStr:Ljava/lang/String;

    .line 105
    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootTextErrorStr:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300df

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootView:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootView:Landroid/view/View;

    const v1, 0x7f0804c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootView:Landroid/view/View;

    const v1, 0x7f0804ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 112
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootView:Landroid/view/View;

    const v1, 0x7f0804c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootViewProgress:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootView:Landroid/view/View;

    const v1, 0x7f0804c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootViewText:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 117
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    .line 118
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mOnRefreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setonRefreshListener(Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;)V

    .line 122
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$1;-><init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 137
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$2;

    invoke-direct {v1, p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$2;-><init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    return-void
.end method

.method private getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriverList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment$4;-><init>(Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;I)V

    .line 333
    .local v0, respListener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderDriverList;>;"
    return-object v0
.end method

.method private loadOrderData(I)V
    .locals 8
    .parameter "type"

    .prologue
    const/16 v7, 0x14

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 177
    if-eq p1, v6, :cond_0

    if-ne p1, v4, :cond_3

    .line 178
    :cond_0
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v3

    if-nez v3, :cond_2

    if-ne p1, v4, :cond_2

    .line 179
    const v3, 0x7f0b008f

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    .line 180
    const/16 v3, 0x67

    invoke-direct {p0, v3}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->updateFootView(I)V

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    iget-boolean v3, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mIsLoading:Z

    if-nez v3, :cond_1

    .line 185
    iput-boolean v5, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mIsLoading:Z

    .line 187
    :cond_3
    if-ne p1, v6, :cond_4

    .line 188
    iput-boolean v5, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mHasMore:Z

    .line 189
    const/16 v3, 0x65

    invoke-direct {p0, v3}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->updateFootView(I)V

    .line 190
    const-string v3, "0"

    const-string v4, ""

    const-string v5, "0"

    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v6

    invoke-static {v3, v7, v4, v5, v6}, Lcom/didi/beatles/net/BtsRequest;->getNearByOrderListForDriver(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0

    .line 192
    :cond_4
    if-ne p1, v4, :cond_5

    .line 193
    const/16 v3, 0x66

    invoke-direct {p0, v3}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->updateFootView(I)V

    .line 194
    :cond_5
    const-string v1, ""

    .line 195
    .local v1, lastQueryTime:Ljava/lang/String;
    const-string v2, ""

    .line 196
    .local v2, offsetOrderId:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 197
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    .line 198
    .local v0, item:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;
    iget-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->setup_time:Ljava/lang/String;

    .line 199
    iget-object v2, v0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    .line 201
    .end local v0           #item:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;
    :cond_6
    const-string v3, "0"

    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v4

    invoke-static {v3, v7, v1, v2, v4}, Lcom/didi/beatles/net/BtsRequest;->getNearByOrderListForDriver(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0
.end method

.method private mergeOrderList(Ljava/util/List;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriverListItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, orderList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/beatles/model/order/BtsOrderDriverListItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 297
    .local v7, size:I
    const/4 v2, 0x0

    .line 298
    .local v2, hasMore:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_5

    .line 299
    iget-object v8, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 300
    .local v0, curSize:I
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    .line 301
    .local v5, newItem:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;
    if-nez v5, :cond_1

    .line 298
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    :cond_1
    const/4 v1, 0x0

    .line 304
    .local v1, hasExist:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v0, :cond_4

    .line 305
    iget-object v8, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    .line 306
    .local v6, oldItem:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;
    if-nez v6, :cond_3

    .line 304
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 308
    :cond_3
    iget-object v8, v5, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    iget-object v9, v6, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 309
    const/4 v1, 0x1

    .line 310
    iget-object v8, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 314
    .end local v6           #oldItem:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;
    :cond_4
    if-nez v1, :cond_0

    .line 315
    const/4 v2, 0x1

    .line 316
    iget-object v8, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 319
    .end local v0           #curSize:I
    .end local v1           #hasExist:Z
    .end local v4           #j:I
    .end local v5           #newItem:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;
    :cond_5
    return v2
.end method

.method public static newInstance(Lcom/didi/beatles/business/order/BtsTabIndex;)Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;
    .locals 3
    .parameter "index"

    .prologue
    .line 70
    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;

    invoke-direct {v1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;-><init>()V

    .line 71
    .local v1, fragment:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 73
    invoke-virtual {v1, v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    return-object v1
.end method

.method private resultSetProcess(Lcom/didi/beatles/model/order/BtsOrderDriverList;I)V
    .locals 8
    .parameter "t"
    .parameter "type"

    .prologue
    const/16 v3, 0x8

    const/16 v7, 0x65

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 229
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    if-ne p2, v4, :cond_2

    .line 234
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    invoke-virtual {v2}, Lcom/didi/im/component/PullDownRefreshListView;->onRefreshComplete()V

    .line 237
    :cond_2
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mNetErrorLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 240
    if-eq p2, v4, :cond_3

    if-ne p2, v6, :cond_4

    .line 241
    :cond_3
    iput-boolean v5, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mIsLoading:Z

    .line 243
    :cond_4
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriverList;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_9

    .line 244
    const/4 v2, 0x1

    if-eq p2, v2, :cond_5

    .line 245
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriverList;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 249
    :cond_5
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    invoke-virtual {v2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->getRealCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 250
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mNetErrorLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 251
    if-eq p2, v6, :cond_6

    if-ne p2, v4, :cond_0

    .line 252
    :cond_6
    iput-boolean v5, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mHasMore:Z

    .line 253
    invoke-direct {p0, v7}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->updateFootView(I)V

    goto :goto_0

    .line 256
    :cond_7
    if-ne p2, v6, :cond_8

    .line 257
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->updateFootView(I)V

    goto :goto_0

    .line 258
    :cond_8
    if-ne p2, v4, :cond_0

    .line 259
    iput-boolean v5, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mHasMore:Z

    .line 260
    invoke-direct {p0, v7}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->updateFootView(I)V

    goto :goto_0

    .line 266
    :cond_9
    if-ne p2, v4, :cond_a

    .line 267
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 268
    :cond_a
    iget-object v2, p1, Lcom/didi/beatles/model/order/BtsOrderDriverList;->orders:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 269
    iget-object v2, p1, Lcom/didi/beatles/model/order/BtsOrderDriverList;->orders:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mergeOrderList(Ljava/util/List;)Z

    .line 271
    :cond_b
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mergeData2(Ljava/util/ArrayList;)V

    .line 273
    if-eq p2, v6, :cond_c

    if-ne p2, v4, :cond_f

    .line 274
    :cond_c
    iget-boolean v2, p1, Lcom/didi/beatles/model/order/BtsOrderDriverList;->has_more:Z

    iput-boolean v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mHasMore:Z

    .line 275
    iget-object v2, p1, Lcom/didi/beatles/model/order/BtsOrderDriverList;->orders:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    iget-object v2, p1, Lcom/didi/beatles/model/order/BtsOrderDriverList;->orders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 276
    :cond_d
    iput-boolean v5, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mHasMore:Z

    .line 277
    :cond_e
    iget-boolean v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mHasMore:Z

    if-nez v2, :cond_11

    .line 278
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    invoke-virtual {v2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->getRealCount()I

    move-result v2

    if-gtz v2, :cond_10

    .line 279
    invoke-direct {p0, v7}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->updateFootView(I)V

    .line 288
    :cond_f
    :goto_1
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 289
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 290
    check-cast v1, Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;

    .line 291
    .local v1, cb:Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mTabIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-interface {v1, v2}, Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;->onUpdate(Lcom/didi/beatles/business/order/BtsTabIndex;)V

    goto/16 :goto_0

    .line 281
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #cb:Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;
    :cond_10
    const/16 v2, 0x68

    invoke-direct {p0, v2}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->updateFootView(I)V

    goto :goto_1

    .line 284
    :cond_11
    invoke-direct {p0, v7}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->updateFootView(I)V

    goto :goto_1
.end method

.method private updateFootView(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 206
    iput p1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mState:I

    .line 207
    iget v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mState:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mState:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootViewProgress:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootViewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootTextIsLoadingStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    :cond_2
    iget v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mState:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_3

    .line 218
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootViewProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootViewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootTextNoMoreStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    :cond_3
    iget v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mState:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootViewProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootViewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mFootTextErrorStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteItem(Ljava/lang/String;)V
    .locals 5
    .parameter "id"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "delete_item"
    .end annotation

    .prologue
    .line 378
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    if-eqz v3, :cond_0

    .line 382
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 383
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 384
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    .line 385
    .local v1, item:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;
    if-nez v1, :cond_3

    .line 383
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 387
    :cond_3
    iget-object v3, v1, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 392
    .end local v1           #item:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;
    :cond_4
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    iget-object v4, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->mergeData2(Ljava/util/ArrayList;)V

    .line 393
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;

    invoke-virtual {v3}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderAdapter;->getRealCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 394
    const/16 v3, 0x65

    invoke-direct {p0, v3}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->updateFootView(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 158
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->loadOrderData(I)V

    .line 159
    return-void
.end method

.method public onAutoRefresh()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    invoke-virtual {v0}, Lcom/didi/im/component/PullDownRefreshListView;->autoRefresh()V

    .line 360
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 81
    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->bindUI(Landroid/view/View;)V

    .line 86
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/business/order/BtsTabIndex;

    iput-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mTabIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

    .line 89
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 91
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 353
    invoke-super {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onDestroy()V

    .line 354
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 355
    return-void
.end method

.method public onEvent(Lcom/didi/beatles/model/event/BtsOrderEvent;)V
    .locals 1
    .parameter "event"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "BTS_ORDER_EVENT"
    .end annotation

    .prologue
    .line 348
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->loadOrderData(I)V

    .line 349
    return-void
.end method

.method public orderStatusEvent(Lcom/didi/beatles/push/model/BtsPushOrderStatus;)V
    .locals 3
    .parameter "btsPushOrderStatus"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "order_status"
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/didi/beatles/business/order/BtsDriverNearbyOrderFragment;->loadOrderData(I)V

    goto :goto_0

    .line 367
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
