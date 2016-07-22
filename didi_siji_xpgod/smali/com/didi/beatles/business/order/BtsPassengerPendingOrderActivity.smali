.class public Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsPassengerPendingOrderActivity.java"


# instance fields
.field private final LOAD_AGAIN_AFTER_FAILED:I

.field private final LOAD_AUTO_REFRESH:I

.field private final LOAD_FRIST_TIME:I

.field private final LOAD_MANU_REFRESH:I

.field private backListener:Landroid/view/View$OnClickListener;

.field private fristTime:Z

.field private imOrderId:Ljava/lang/String;

.field private mAdapter:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderPassengerPending;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/didi/im/component/PullDownRefreshListView;

.field private mLoadingLayout:Landroid/view/View;

.field private mNetErrorLayout:Landroid/view/View;

.field private mOnRefreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

.field private mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

.field private reloadListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->imOrderId:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->LOAD_FRIST_TIME:I

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->LOAD_AGAIN_AFTER_FAILED:I

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->LOAD_AUTO_REFRESH:I

    .line 55
    const/4 v0, 0x4

    iput v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->LOAD_MANU_REFRESH:I

    .line 78
    iput-boolean v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->fristTime:Z

    .line 123
    new-instance v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$1;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 151
    new-instance v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$2;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->reloadListener:Landroid/view/View$OnClickListener;

    .line 165
    new-instance v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$3;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mOnRefreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mNetErrorLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mLoadingLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->loadOrderData(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->resultSetProcess(Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;I)V

    return-void
.end method

.method private bindUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    const v0, 0x7f080140

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/im/component/PullDownRefreshListView;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    .line 135
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    invoke-virtual {v0, v2}, Lcom/didi/im/component/PullDownRefreshListView;->setFooter(I)V

    .line 137
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mLoadingLayout:Landroid/view/View;

    .line 138
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mNetErrorLayout:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mNetErrorLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mNetErrorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->reloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mAdapter:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    .line 146
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mAdapter:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mOnRefreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setonRefreshListener(Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;)V

    .line 149
    return-void
.end method

.method private creatIMSession(Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 254
    iget-object v4, p1, Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;->orders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    .line 255
    .local v0, btsOrderPassengerPending:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;
    iget-object v4, v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->imOrderId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    iget-object v3, v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->session_id:Ljava/lang/String;

    .line 257
    .local v3, sessionId:Ljava/lang/String;
    iget-object v2, v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    .line 258
    .local v2, orderId:Ljava/lang/String;
    invoke-static {}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->getInstance()Lcom/didi/beatles/utils/BtsIMSessionUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->creatIMDB(Ljava/lang/String;)V

    .line 259
    iget-object v4, v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->title:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/didi/im/db/IMDBDataHelper;->insertDriverAndPassengerSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    .end local v0           #btsOrderPassengerPending:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;
    .end local v2           #orderId:Ljava/lang/String;
    .end local v3           #sessionId:Ljava/lang/String;
    :cond_1
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
            "Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity$4;-><init>(Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;I)V

    .line 214
    .local v0, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;>;"
    return-object v0
.end method

.method private loadOrderData(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/net/BtsRequest;->getPassengerPendingOrderList(Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 104
    return-void
.end method

.method private resultSetProcess(Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;I)V
    .locals 2
    .parameter "t"
    .parameter "type"

    .prologue
    const/16 v1, 0x8

    .line 175
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    invoke-virtual {v0}, Lcom/didi/im/component/PullDownRefreshListView;->onRefreshComplete()V

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mNetErrorLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 187
    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    .line 188
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mAdapter:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->getRealCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mNetErrorLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->imOrderId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 199
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->creatIMSession(Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;)V

    .line 201
    :cond_5
    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassengerPendingList;->orders:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mList:Ljava/util/ArrayList;

    .line 202
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mAdapter:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->mergeData2(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 114
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 116
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b009c

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 118
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->hideRight()V

    .line 120
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-static {v0}, Lcom/didi/common/util/ViewUtil;->show(Landroid/view/View;)V

    .line 121
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 58
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x69

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

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
    .line 272
    .local p1, unreadMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 273
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mList:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    .line 274
    .local v0, btsOrderDriverPending:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;
    iget-object v2, v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->session_id:Ljava/lang/String;

    .line 275
    .local v2, sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/beatles/utils/BtsParseUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->isHasMessage:Z

    goto :goto_0

    .line 280
    .end local v0           #btsOrderDriverPending:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sessionId:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mAdapter:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    invoke-virtual {v3}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->notifyDataSetChanged()V

    .line 281
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->setContentView(I)V

    .line 72
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->setTitlebar()V

    .line 74
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->bindUI()V

    .line 75
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Lcom/didi/beatles/common/BtsCommonListeners;->clearAllListeners()V

    .line 110
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onDestroy()V

    .line 111
    return-void
.end method

.method public onEvent(Lcom/didi/beatles/model/event/BtsOrderEvent;)V
    .locals 1
    .parameter "event"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "BTS_ORDER_EVENT"
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->loadOrderData(I)V

    .line 268
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onResume()V

    .line 83
    const/4 v1, 0x1

    .line 84
    .local v1, type:I
    const-string v2, "onResume"

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 85
    iget-boolean v2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->fristTime:Z

    if-eqz v2, :cond_0

    .line 86
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->fristTime:Z

    .line 87
    const/4 v1, 0x1

    .line 88
    invoke-direct {p0, v1}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->loadOrderData(I)V

    .line 94
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    return-void

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mAdapter:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    invoke-virtual {v2}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public orderStatusEvent(Lcom/didi/beatles/push/model/BtsPushOrderStatus;)V
    .locals 4
    .parameter "btsPushOrderStatus"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "order_status"
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 220
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget v1, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->subStatus:I

    if-nez v1, :cond_2

    .line 225
    iget-object v1, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->imOrderId:Ljava/lang/String;

    .line 226
    invoke-direct {p0, v3}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->loadOrderData(I)V

    goto :goto_0

    .line 229
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    invoke-direct {p0, v3}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->loadOrderData(I)V

    goto :goto_0

    .line 229
    :cond_3
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
    .line 242
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mList:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    .line 244
    .local v0, btsOrderDriverPending:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;
    iget-object v2, v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->session_id:Ljava/lang/String;

    .line 245
    .local v2, session:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->isHasMessage:Z

    goto :goto_0

    .line 250
    .end local v0           #btsOrderDriverPending:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #session:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->mAdapter:Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;

    invoke-virtual {v3}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderAdapter;->notifyDataSetChanged()V

    .line 251
    return-void
.end method
