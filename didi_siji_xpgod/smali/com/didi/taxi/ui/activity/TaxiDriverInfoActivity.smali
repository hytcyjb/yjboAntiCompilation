.class public Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "TaxiDriverInfoActivity.java"


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
    iput v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->mPageNo:I

    .line 35
    iput v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->mRequestPageNo:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->did:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$2;-><init>(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->mBackListener:Landroid/view/View$OnClickListener;

    .line 84
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;-><init>(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->onRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)Lcom/didi/frame/driverinfo/DriverInfoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->getPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->mRequestPageNo:I

    return v0
.end method

.method static synthetic access$202(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->mRequestPageNo:I

    return p1
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->mPageNo:I

    return v0
.end method

.method static synthetic access$302(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->mPageNo:I

    return p1
.end method

.method static synthetic access$400(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->did:Ljava/lang/String;

    return-object v0
.end method

.method private getDidFromIntent()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "did"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->did:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private getPhoto(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 118
    new-instance v0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$4;-><init>(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 127
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    const v1, 0x7f0b0531

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/driverinfo/DriverInfoView;->setTitleBar(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance v0, Lcom/didi/frame/driverinfo/DriverInfoView;

    invoke-direct {v0, p0}, Lcom/didi/frame/driverinfo/DriverInfoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    .line 43
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->setContentView(Landroid/view/View;)V

    .line 44
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->setTitleBar()V

    .line 45
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->getDidFromIntent()V

    .line 47
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->onRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/driverinfo/DriverInfoView;->setOnRefreshListener(Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;)V

    .line 48
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const v0, 0x7f0b0308

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 50
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->did:Ljava/lang/String;

    new-instance v1, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$1;-><init>(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)V

    invoke-static {v0, v2, v1}, Lcom/didi/taxi/net/TaxiRequest;->doGetDriverInfo(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;

    invoke-virtual {v0}, Lcom/didi/frame/driverinfo/DriverInfoView;->showEmptyView()V

    .line 61
    const v0, 0x7f0b0416

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 132
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 133
    return-void
.end method
