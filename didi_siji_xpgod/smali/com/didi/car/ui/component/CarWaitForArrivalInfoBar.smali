.class public Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;
.super Lcom/didi/common/base/BaseLayout;
.source "CarWaitForArrivalInfoBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;
    }
.end annotation


# instance fields
.field private mBiLogOid:Ljava/lang/String;

.field private mCarShareLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802c0
    .end annotation
.end field

.field private mDrawerView:Lcom/didi/common/ui/component/DrawerView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802ba
    .end annotation
.end field

.field private mDriverCirclePhoto:Lcom/didi/frame/driverinfo/DriverCirclePhoto;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802bd
    .end annotation
.end field

.field private mImgShare:Lcom/android/volley/toolbox/NetworkImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onShareImageClicked"
        id = 0x7f0802c3
    .end annotation
.end field

.field private mListener:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;

.field private mShareLayout:Landroid/widget/LinearLayout;

.field private snsConfig:Lcom/didi/car/model/CarSNSConfig;

.field private strContent:Ljava/lang/String;

.field private tvContent:Lcom/didi/common/richtextview/RichTextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802bf
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mBiLogOid:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mBiLogOid:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->init()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mBiLogOid:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->init()V

    .line 65
    return-void
.end method

.method private closeDrawer()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->animateClose()V

    .line 158
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/didi/car/model/CarSNSConfig;

    invoke-direct {v0}, Lcom/didi/car/model/CarSNSConfig;-><init>()V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->snsConfig:Lcom/didi/car/model/CarSNSConfig;

    .line 85
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->snsConfig:Lcom/didi/car/model/CarSNSConfig;

    const/4 v1, 0x1

    iput v1, v0, Lcom/didi/car/model/CarSNSConfig;->shareType:I

    .line 88
    const v0, 0x7f0802c3

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/NetworkImageView;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mImgShare:Lcom/android/volley/toolbox/NetworkImageView;

    .line 89
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 90
    const v0, 0x7f0802bc

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mShareLayout:Landroid/widget/LinearLayout;

    .line 91
    const-string v0, "DrawerHelper init"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private openDrawer()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->open()V

    .line 152
    :cond_0
    return-void
.end method

.method private showSharePic()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->snsConfig:Lcom/didi/car/model/CarSNSConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->snsConfig:Lcom/didi/car/model/CarSNSConfig;

    iget v0, v0, Lcom/didi/car/model/CarSNSConfig;->shareType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->snsConfig:Lcom/didi/car/model/CarSNSConfig;

    iget-object v0, v0, Lcom/didi/car/model/CarSNSConfig;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mCarShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pgxontrip07_sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mBiLogOid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mImgShare:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->snsConfig:Lcom/didi/car/model/CarSNSConfig;

    iget-object v1, v1, Lcom/didi/car/model/CarSNSConfig;->url:Ljava/lang/String;

    new-instance v2, Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v3

    new-instance v4, Lcom/didi/common/util/BitmapCache;

    invoke-direct {v4}, Lcom/didi/common/util/BitmapCache;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f030070

    return v0
.end method

.method public onShareImageClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;

    .line 181
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;
    if-eqz v0, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pgxontrip07_ck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mBiLogOid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->snsConfig:Lcom/didi/car/model/CarSNSConfig;

    invoke-interface {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;->onInfoImageClicked(Lcom/didi/car/model/CarSNSConfig;)V

    .line 185
    :cond_0
    return-void
.end method

.method public onTellViewClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;

    .line 189
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;
    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->snsConfig:Lcom/didi/car/model/CarSNSConfig;

    invoke-interface {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;->onInfoTellClicked(Lcom/didi/car/model/CarSNSConfig;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mShareLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 96
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mCarShareLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 97
    const-string v0, "DrawerHelper onViewCreated"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->strContent:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mShareLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mDriverCirclePhoto:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    invoke-virtual {v0, p1}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->setImageResource(I)V

    .line 106
    return-void
.end method

.method public setListener(Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar$InfoListener;

    .line 102
    return-void
.end method

.method public setMobileMsg(Ljava/lang/String;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->tvContent:Lcom/didi/common/richtextview/RichTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setAutoLinkMask(I)V

    .line 110
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->strContent:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mShareLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public setSNSConfig(Lcom/didi/car/model/CarSNSConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->snsConfig:Lcom/didi/car/model/CarSNSConfig;

    .line 125
    return-void
.end method

.method public showCarDrawer(Ljava/lang/String;)V
    .locals 2
    .parameter "orderId"

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[order_id_g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mBiLogOid:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 144
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showSharePic()V

    .line 145
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->openDrawer()V

    .line 146
    return-void
.end method

.method public showDrawer(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 135
    :goto_0
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->showSharePic()V

    .line 136
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->openDrawer()V

    .line 137
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->tvContent:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v0, p1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    goto :goto_0
.end method
