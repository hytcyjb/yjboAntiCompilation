.class public Lcom/didi/car/ui/activity/CarDriverInfoActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "CarDriverInfoActivity.java"


# instance fields
.field private did:Ljava/lang/String;

.field private driverInfoView:Lcom/didi/car/ui/component/CarDriverInfoView;

.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mPageNo:I

.field private mRequestPageNo:I

.field private onRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 35
    iput v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->mPageNo:I

    .line 37
    iput v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->mRequestPageNo:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->did:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity$2;-><init>(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->mBackListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;-><init>(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->onRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)Lcom/didi/car/ui/component/CarDriverInfoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->driverInfoView:Lcom/didi/car/ui/component/CarDriverInfoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/car/ui/activity/CarDriverInfoActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->getPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->mRequestPageNo:I

    return v0
.end method

.method static synthetic access$202(Lcom/didi/car/ui/activity/CarDriverInfoActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->mRequestPageNo:I

    return p1
.end method

.method static synthetic access$300(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->mPageNo:I

    return v0
.end method

.method static synthetic access$302(Lcom/didi/car/ui/activity/CarDriverInfoActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->mPageNo:I

    return p1
.end method

.method static synthetic access$400(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->did:Ljava/lang/String;

    return-object v0
.end method

.method private getDidFromIntent()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "did"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->did:Ljava/lang/String;

    .line 72
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->url:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private getPhoto(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 121
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cf

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->driverInfoView:Lcom/didi/car/ui/component/CarDriverInfoView;

    invoke-virtual {v1, v0}, Lcom/didi/car/ui/component/CarDriverInfoView;->setDriverPhoto(Landroid/graphics/Bitmap;)V

    .line 137
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v1, Lcom/didi/car/ui/activity/CarDriverInfoActivity$4;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity$4;-><init>(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)V

    invoke-static {p1, v1}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    goto :goto_0
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->driverInfoView:Lcom/didi/car/ui/component/CarDriverInfoView;

    const v1, 0x7f0b022a

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/car/ui/component/CarDriverInfoView;->setTitleBar(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_driver_detail_show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/didi/car/ui/component/CarDriverInfoView;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarDriverInfoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->driverInfoView:Lcom/didi/car/ui/component/CarDriverInfoView;

    .line 49
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->driverInfoView:Lcom/didi/car/ui/component/CarDriverInfoView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->setContentView(Landroid/view/View;)V

    .line 50
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->setTitleBar()V

    .line 51
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->getDidFromIntent()V

    .line 53
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->driverInfoView:Lcom/didi/car/ui/component/CarDriverInfoView;

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->onRefreshLisener:Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarDriverInfoView;->setOnRefreshListener(Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;)V

    .line 54
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const v0, 0x7f0b0308

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 56
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->did:Ljava/lang/String;

    new-instance v1, Lcom/didi/car/ui/activity/CarDriverInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity$1;-><init>(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)V

    invoke-static {v0, v2, v1}, Lcom/didi/car/net/CarRequest;->doGetDriverInfo(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->driverInfoView:Lcom/didi/car/ui/component/CarDriverInfoView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarDriverInfoView;->showEmptyView()V

    .line 65
    const v0, 0x7f0b0416

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 142
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 143
    return-void
.end method
