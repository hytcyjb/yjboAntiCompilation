.class public Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;
.super Lcom/didi/beatles/business/order/BtsBaseFragment;
.source "BtsDriverMatchOrderFragment.java"


# instance fields
.field private final LOAD_AGAIN_AFTER_FAILED:I

.field private final LOAD_AUTO_REFRESH:I

.field private final LOAD_FRIST_TIME:I

.field private final LOAD_MANU_REFRESH:I

.field private addRouteListener:Landroid/view/View$OnClickListener;

.field private fristTime:Z

.field private mAdapter:Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;

.field private mAddRouteButton:Landroid/widget/Button;

.field private mAddRouteLayout:Landroid/view/View;

.field private mList:Ljava/util/ArrayList;
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

.field private mTabIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

.field private reloadListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mList:Ljava/util/ArrayList;

    .line 49
    iput v1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->LOAD_FRIST_TIME:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->LOAD_AGAIN_AFTER_FAILED:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->LOAD_AUTO_REFRESH:I

    .line 52
    const/4 v0, 0x4

    iput v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->LOAD_MANU_REFRESH:I

    .line 113
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$1;-><init>(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->reloadListener:Landroid/view/View$OnClickListener;

    .line 128
    iput-boolean v1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->fristTime:Z

    .line 151
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$2;-><init>(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->addRouteListener:Landroid/view/View$OnClickListener;

    .line 168
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$3;-><init>(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mOnRefreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAddRouteLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mNetErrorLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mLoadingLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->loadOrderData(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;Lcom/didi/beatles/model/order/BtsOrderDriverList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->resultSetProcess(Lcom/didi/beatles/model/order/BtsOrderDriverList;I)V

    return-void
.end method

.method private bindUI(Landroid/view/View;)V
    .locals 3
    .parameter "root"

    .prologue
    const/4 v2, 0x0

    .line 81
    const v0, 0x7f080140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/im/component/PullDownRefreshListView;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    invoke-virtual {v0, v2}, Lcom/didi/im/component/PullDownRefreshListView;->setFooter(I)V

    .line 84
    const v0, 0x7f080141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAddRouteLayout:Landroid/view/View;

    .line 85
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->setAddRouteLayout(Landroid/view/View;)V

    .line 87
    const v0, 0x7f0800df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mLoadingLayout:Landroid/view/View;

    .line 89
    const v0, 0x7f080142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mNetErrorLayout:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mNetErrorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->reloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAddRouteLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;

    .line 96
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mOnRefreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setonRefreshListener(Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;)V

    .line 99
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
    .line 221
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment$4;-><init>(Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;I)V

    .line 230
    .local v0, respListener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderDriverList;>;"
    return-object v0
.end method

.method private loadOrderData(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 164
    const-string v0, "0"

    const/16 v1, 0x14

    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/net/BtsRequest;->getMatchOrderListForDriver(Ljava/lang/String;ILcom/didi/beatles/net/BtsResponseListener;)V

    .line 166
    return-void
.end method

.method public static newInstance(Lcom/didi/beatles/business/order/BtsTabIndex;)Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;
    .locals 3
    .parameter "index"

    .prologue
    .line 56
    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;

    invoke-direct {v1}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;-><init>()V

    .line 57
    .local v1, fragment:Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1
.end method

.method private resultSetProcess(Lcom/didi/beatles/model/order/BtsOrderDriverList;I)V
    .locals 5
    .parameter "t"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 178
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    invoke-virtual {v2}, Lcom/didi/im/component/PullDownRefreshListView;->onRefreshComplete()V

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAddRouteLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mNetErrorLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriverList;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 191
    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    .line 192
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriverList;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 195
    :cond_3
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;

    invoke-virtual {v2}, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;->getRealCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mNetErrorLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_4
    iget-object v2, p1, Lcom/didi/beatles/model/order/BtsOrderDriverList;->orders:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mList:Ljava/util/ArrayList;

    .line 204
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;->mergeData2(Ljava/util/ArrayList;)V

    .line 206
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;

    invoke-virtual {v2}, Lcom/didi/beatles/business/order/BtsDriverMatchFragmentAdapter;->getRealCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 207
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->isHasRoute()Z

    move-result v2

    if-nez v2, :cond_5

    .line 208
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAddRouteLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :cond_5
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 213
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 214
    check-cast v1, Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;

    .line 215
    .local v1, cb:Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mTabIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-interface {v1, v2}, Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;->onUpdate(Lcom/didi/beatles/business/order/BtsTabIndex;)V

    goto :goto_0
.end method

.method private setAddRouteLayout(Landroid/view/View;)V
    .locals 4
    .parameter "root"

    .prologue
    .line 102
    const v2, 0x7f0800a0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    .local v0, tv1:Landroid/widget/TextView;
    const v2, 0x7f0b00f7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 105
    const v2, 0x7f08009f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    .local v1, tv2:Landroid/widget/TextView;
    const v2, 0x7f0b00f6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    const v2, 0x7f08009d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAddRouteButton:Landroid/widget/Button;

    .line 109
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAddRouteButton:Landroid/widget/Button;

    const v3, 0x7f0b00f2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 110
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mAddRouteButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->addRouteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method public onAutoRefresh()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    invoke-virtual {v0}, Lcom/didi/im/component/PullDownRefreshListView;->autoRefresh()V

    .line 257
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 236
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 67
    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->bindUI(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/business/order/BtsTabIndex;

    iput-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mTabIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

    .line 75
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 77
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onDestroy()V

    .line 251
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method public onEvent(Lcom/didi/beatles/model/event/BtsOrderEvent;)V
    .locals 1
    .parameter "event"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "BTS_ORDER_EVENT"
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->loadOrderData(I)V

    .line 144
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onPause()V

    .line 241
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onResume()V

    .line 133
    const/4 v0, 0x1

    .line 134
    .local v0, type:I
    iget-boolean v1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->fristTime:Z

    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->fristTime:Z

    .line 136
    const/4 v0, 0x1

    .line 137
    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->loadOrderData(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public onRouteEvent(Lcom/didi/beatles/model/event/BtsRouteEvent;)V
    .locals 1
    .parameter "event"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "BTS_ROUTE_EVENT"
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->loadOrderData(I)V

    .line 149
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onStop()V

    .line 246
    return-void
.end method

.method public orderStatusEvent(Lcom/didi/beatles/push/model/BtsPushOrderStatus;)V
    .locals 3
    .parameter "btsPushOrderStatus"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "order_status"
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/didi/beatles/business/order/BtsDriverMatchOrderFragment;->loadOrderData(I)V

    goto :goto_0

    .line 265
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
