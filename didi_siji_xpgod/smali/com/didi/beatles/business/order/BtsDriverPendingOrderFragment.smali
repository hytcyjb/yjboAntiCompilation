.class public Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;
.super Lcom/didi/beatles/business/order/BtsBaseFragment;
.source "BtsDriverPendingOrderFragment.java"


# instance fields
.field private final LOAD_AGAIN_AFTER_FAILED:I

.field private final LOAD_AUTO_REFRESH:I

.field private final LOAD_FRIST_TIME:I

.field private final LOAD_MANU_REFRESH:I

.field private fristTime:Z

.field private mAdapter:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriverPending;",
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

    .line 32
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mList:Ljava/util/ArrayList;

    .line 47
    iput v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->LOAD_FRIST_TIME:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->LOAD_AGAIN_AFTER_FAILED:I

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->LOAD_AUTO_REFRESH:I

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->LOAD_MANU_REFRESH:I

    .line 108
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$1;-><init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->reloadListener:Landroid/view/View$OnClickListener;

    .line 176
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$3;-><init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mOnRefreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

    .line 195
    iput-boolean v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->fristTime:Z

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mNetErrorLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mLoadingLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->loadOrderData(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->resultSetProcess(Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;I)V

    return-void
.end method

.method private bindUI(Landroid/view/View;)V
    .locals 2
    .parameter "root"

    .prologue
    const/4 v1, 0x0

    .line 91
    const v0, 0x7f080140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/im/component/PullDownRefreshListView;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    .line 93
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setFooter(I)V

    .line 95
    const v0, 0x7f0800df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mLoadingLayout:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    const v0, 0x7f080142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mNetErrorLayout:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mNetErrorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->reloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

    .line 103
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mOnRefreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setonRefreshListener(Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;)V

    .line 106
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
            "Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment$2;-><init>(Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;I)V

    .line 173
    .local v0, respListener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;>;"
    return-object v0
.end method

.method private loadOrderData(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/net/BtsRequest;->getDriverPendingOrderList(Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 125
    return-void
.end method

.method public static newInstance(Lcom/didi/beatles/business/order/BtsTabIndex;)Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;
    .locals 3
    .parameter "index"

    .prologue
    .line 53
    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;

    invoke-direct {v1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;-><init>()V

    .line 54
    .local v1, fragment:Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 56
    invoke-virtual {v1, v0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v1
.end method

.method private resultSetProcess(Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;I)V
    .locals 4
    .parameter "t"
    .parameter "type"

    .prologue
    const/16 v3, 0x8

    .line 128
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    invoke-virtual {v2}, Lcom/didi/im/component/PullDownRefreshListView;->onRefreshComplete()V

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mNetErrorLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 140
    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    .line 141
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 145
    :cond_3
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

    invoke-virtual {v2}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->getRealCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mNetErrorLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_4
    iget-object v2, p1, Lcom/didi/beatles/model/order/BtsOrderDriverPendingList;->orders:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mList:Ljava/util/ArrayList;

    .line 153
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->mergeData2(Ljava/util/ArrayList;)V

    .line 155
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 156
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 157
    check-cast v1, Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;

    .line 158
    .local v1, cb:Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mTabIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-interface {v1, v2}, Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;->onUpdate(Lcom/didi/beatles/business/order/BtsTabIndex;)V

    goto :goto_0
.end method

.method private updateImUnreadMessage(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "update_im_message"
    .end annotation

    .prologue
    .line 241
    .local p1, unreadMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 242
    .local v2, sessionId:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    .line 244
    .local v0, btsOrderDriverPending:Lcom/didi/beatles/model/order/BtsOrderDriverPending;
    iget-object v2, v0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->session_id:Ljava/lang/String;

    .line 245
    iget-object v3, v0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->order_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->title:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/didi/im/db/IMDBDataHelper;->insertDriverAndPassengerSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {v2}, Lcom/didi/beatles/utils/BtsParseUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->isHasMessage:Z

    goto :goto_0

    .line 251
    .end local v0           #btsOrderDriverPending:Lcom/didi/beatles/model/order/BtsOrderDriverPending;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->getInstance()Lcom/didi/beatles/utils/BtsIMSessionUtils;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->creatIMDB(Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

    invoke-virtual {v3}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->notifyDataSetChanged()V

    .line 253
    return-void
.end method


# virtual methods
.method public onAutoRefresh()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    invoke-virtual {v0}, Lcom/didi/im/component/PullDownRefreshListView;->autoRefresh()V

    .line 223
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 64
    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->bindUI(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/business/order/BtsTabIndex;

    iput-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mTabIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

    .line 69
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 70
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onDestroy()V

    .line 217
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public onEvent(Lcom/didi/beatles/model/event/BtsOrderEvent;)V
    .locals 2
    .parameter "event"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "BTS_ORDER_EVENT"
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mLoadingLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->loadOrderData(I)V

    .line 77
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onPause()V

    .line 193
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onResume()V

    .line 200
    const/4 v0, 0x1

    .line 201
    .local v0, type:I
    iget-boolean v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->fristTime:Z

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->fristTime:Z

    .line 203
    const/4 v0, 0x1

    .line 205
    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->loadOrderData(I)V

    .line 207
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onStop()V

    .line 212
    return-void
.end method

.method public orderStatusEvent(Lcom/didi/beatles/push/model/BtsPushOrderStatus;)V
    .locals 3
    .parameter "btsPushOrderStatus"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "order_status"
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->order_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->loadOrderData(I)V

    goto :goto_0

    .line 231
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public reloadImMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "sessionId"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "reload_im_message"
    .end annotation

    .prologue
    .line 80
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    .line 82
    .local v0, btsOrderDriverPending:Lcom/didi/beatles/model/order/BtsOrderDriverPending;
    iget-object v2, v0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->session_id:Ljava/lang/String;

    .line 83
    .local v2, session:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->isHasMessage:Z

    goto :goto_0

    .line 88
    .end local v0           #btsOrderDriverPending:Lcom/didi/beatles/model/order/BtsOrderDriverPending;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #session:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverPendingOrderFragment;->mAdapter:Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;

    invoke-virtual {v3}, Lcom/didi/beatles/business/order/BtsDriverPendingOrderAdapter;->notifyDataSetChanged()V

    .line 89
    return-void
.end method
