.class public Lcom/didi/beatles/business/route/BtsRouteConfigActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsRouteConfigActivity.java"


# instance fields
.field private final LOAD_AGAIN_AFTER_FAILED:I

.field private final LOAD_AUTO_REFRESH:I

.field private final LOAD_FRIST_TIME:I

.field private final LOAD_MANU_REFRESH:I

.field private addRouteListener:Landroid/view/View$OnClickListener;

.field private backListener:Landroid/view/View$OnClickListener;

.field private mAdapter:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

.field private mAddRouteButton:Landroid/widget/Button;

.field private mAddRouteLayout:Landroid/view/View;

.field private mListView:Lcom/didi/im/component/PullDownRefreshListView;

.field private mLoadingLayout:Landroid/view/View;

.field private mOnRefreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

.field private mRouteDescLayout:Landroid/view/View;

.field private mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

.field private net_error_layout:Landroid/view/View;

.field private reloadListener:Landroid/view/View$OnClickListener;

.field private rightListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->LOAD_FRIST_TIME:I

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->LOAD_AGAIN_AFTER_FAILED:I

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->LOAD_AUTO_REFRESH:I

    .line 48
    const/4 v0, 0x4

    iput v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->LOAD_MANU_REFRESH:I

    .line 110
    new-instance v0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$1;-><init>(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->reloadListener:Landroid/view/View$OnClickListener;

    .line 126
    new-instance v0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$2;-><init>(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->addRouteListener:Landroid/view/View$OnClickListener;

    .line 136
    new-instance v0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$3;-><init>(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mOnRefreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

    .line 155
    new-instance v0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$4;-><init>(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->rightListener:Landroid/view/View$OnClickListener;

    .line 165
    new-instance v0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$5;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$5;-><init>(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->backListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAddRouteLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mLoadingLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->net_error_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;I)Lcom/didi/beatles/net/BtsResponseListener;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;Lcom/didi/beatles/model/route/BtsRouteList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->resultSetProcess(Lcom/didi/beatles/model/route/BtsRouteList;I)V

    return-void
.end method

.method private bindUI()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 74
    const v0, 0x7f08018c

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/im/component/PullDownRefreshListView;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    .line 75
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    const/high16 v1, 0x42dc

    invoke-static {p0, v1}, Lcom/didi/beatles/utils/BtsDensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setFooter(I)V

    .line 77
    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAddRouteLayout:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAddRouteLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->setAddRouteLayout(Landroid/view/View;)V

    .line 79
    const v0, 0x7f08018a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mRouteDescLayout:Landroid/view/View;

    .line 80
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mLoadingLayout:Landroid/view/View;

    .line 81
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->net_error_layout:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAddRouteLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mRouteDescLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mLoadingLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->net_error_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->net_error_layout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->reloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v0, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAdapter:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

    .line 90
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAdapter:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mOnRefreshListener:Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/didi/im/component/PullDownRefreshListView;->setonRefreshListener(Lcom/didi/im/component/PullDownRefreshListView$OnRefreshListener;)V

    .line 94
    const v0, 0x7f08018d

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAddRouteButton:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAddRouteButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->addRouteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
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
            "Lcom/didi/beatles/model/route/BtsRouteList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity$6;-><init>(Lcom/didi/beatles/business/route/BtsRouteConfigActivity;I)V

    .line 246
    .local v0, listener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/route/BtsRouteList;>;"
    return-object v0
.end method

.method private resultSetProcess(Lcom/didi/beatles/model/route/BtsRouteList;I)V
    .locals 4
    .parameter "t"
    .parameter "type"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mListView:Lcom/didi/im/component/PullDownRefreshListView;

    invoke-virtual {v1}, Lcom/didi/im/component/PullDownRefreshListView;->onRefreshComplete()V

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAddRouteButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAddRouteLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->net_error_layout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 209
    invoke-virtual {p1}, Lcom/didi/beatles/model/route/BtsRouteList;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 210
    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    .line 211
    invoke-virtual {p1}, Lcom/didi/beatles/model/route/BtsRouteList;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAdapter:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

    invoke-virtual {v1}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->net_error_layout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAddRouteButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 224
    :cond_4
    iget-object v0, p1, Lcom/didi/beatles/model/route/BtsRouteList;->routes:Ljava/util/ArrayList;

    .line 226
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/route/BtsRoute;>;"
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAdapter:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

    invoke-virtual {v1, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->mergeData2(Ljava/util/ArrayList;)V

    .line 228
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAdapter:Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;

    invoke-virtual {v1}, Lcom/didi/beatles/business/route/BtsRouteConfigAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 229
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAddRouteLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mRouteDescLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 232
    :cond_5
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mRouteDescLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mAddRouteButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setAddRouteLayout(Landroid/view/View;)V
    .locals 4
    .parameter "root"

    .prologue
    .line 99
    const v3, 0x7f0800a0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    .local v1, tv1:Landroid/widget/TextView;
    const v3, 0x7f0b010f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 102
    const v3, 0x7f08009f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    .local v2, tv2:Landroid/widget/TextView;
    const v3, 0x7f0b010e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 105
    const v3, 0x7f08009d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 106
    .local v0, tmp:Landroid/widget/Button;
    const v3, 0x7f0b00f8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 107
    iget-object v3, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->addRouteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 146
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 148
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b00fa

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 150
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b0110

    iget-object v2, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->rightListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-static {v0}, Lcom/didi/common/util/ViewUtil;->show(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 51
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x6b

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->setTitlebar()V

    .line 66
    invoke-direct {p0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->bindUI()V

    .line 68
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/net/BtsRequest;->getDriverRouteList(Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onDestroy()V

    .line 184
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public onEvent(Lcom/didi/beatles/model/event/BtsRouteEvent;)V
    .locals 2
    .parameter "event"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "BTS_ROUTE_EVENT"
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->mLoadingLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/route/BtsRouteConfigActivity;->getResponseListener(I)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/net/BtsRequest;->getDriverRouteList(Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 193
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onResume()V

    .line 178
    return-void
.end method
