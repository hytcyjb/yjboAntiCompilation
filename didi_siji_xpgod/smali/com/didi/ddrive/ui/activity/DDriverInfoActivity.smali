.class public Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "DDriverInfoActivity.java"


# instance fields
.field private did:Ljava/lang/String;

.field private driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mPageNo:I

.field private mRequestPageNo:I

.field private onRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 33
    iput v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->mPageNo:I

    .line 35
    iput v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->mRequestPageNo:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->did:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$1;-><init>(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->mBackListener:Landroid/view/View$OnClickListener;

    .line 77
    new-instance v0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$2;-><init>(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->onRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;)Lcom/didi/frame/driverinfo/DriverInfoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->mRequestPageNo:I

    return p1
.end method

.method static synthetic access$200(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->mPageNo:I

    return v0
.end method

.method private getDidFromIntent()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "did"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->did:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private getPhoto(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/driverinfo/DriverInfoView;->setDriverPhoto(Landroid/graphics/Bitmap;)V

    .line 144
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$3;-><init>(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    goto :goto_0
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    const v1, 0x7f0b02ad

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/driverinfo/DriverInfoView;->setTitleBar(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance v0, Lcom/didi/frame/driverinfo/DriverInfoView;

    invoke-direct {v0, p0}, Lcom/didi/frame/driverinfo/DriverInfoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    .line 43
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->setContentView(Landroid/view/View;)V

    .line 44
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->registEventBus(Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->setTitleBar()V

    .line 46
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->getDidFromIntent()V

    .line 48
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->onRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/driverinfo/DriverInfoView;->setOnRefreshListener(Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;)V

    .line 49
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const v0, 0x7f0b0308

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 51
    invoke-static {}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->getInstance()Lcom/didi/ddrive/managers/DriveRealtimeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->did:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->loadDriverInfo(J)V

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    invoke-virtual {v0}, Lcom/didi/frame/driverinfo/DriverInfoView;->showEmptyView()V

    .line 54
    const v0, 0x7f0b0416

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 149
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 150
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 115
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-boolean v0, p1, Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;->requestSuccess:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;->detailInfo:Lcom/didi/ddrive/net/http/response/DriverDetailInfo;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    iget-object v1, p1, Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;->detailInfo:Lcom/didi/ddrive/net/http/response/DriverDetailInfo;

    invoke-virtual {v0, v1}, Lcom/didi/frame/driverinfo/DriverInfoView;->setDDriverPage(Lcom/didi/ddrive/net/http/response/DriverDetailInfo;)V

    .line 120
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/DriverDetailInfoEvent;->detailInfo:Lcom/didi/ddrive/net/http/response/DriverDetailInfo;

    iget-object v0, v0, Lcom/didi/ddrive/net/http/response/DriverDetailInfo;->headTitleUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->getPhoto(Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/driverinfo/DriverInfoView;->setDDriverPage(Lcom/didi/ddrive/net/http/response/DriverDetailInfo;)V

    .line 124
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->getPhoto(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onStop()V

    .line 111
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->unRegistEventBus(Ljava/lang/Object;)V

    .line 112
    return-void
.end method
