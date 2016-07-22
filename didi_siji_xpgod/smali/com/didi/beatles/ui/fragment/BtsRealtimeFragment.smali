.class public Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "BtsRealtimeFragment.java"


# static fields
.field private static final STATE_CHANGE_ROLE:I = 0x2

.field private static final STATE_INIT:I = 0x1


# instance fields
.field private bar:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

.field private btsUiListener:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;

.field private bts_ad_content:Landroid/widget/LinearLayout;

.field private bts_ad_img1:Landroid/widget/ImageView;

.field private bts_ad_img2:Landroid/widget/ImageView;

.field private bts_ad_img3:Landroid/widget/ImageView;

.field private bts_more:Landroid/widget/TextView;

.field private bts_red_point:Landroid/widget/ImageView;

.field private bts_wind_img:Landroid/widget/ImageView;

.field private bts_wind_parent:Landroid/widget/LinearLayout;

.field private bts_wind_text:Landroid/widget/TextView;

.field private btsguidelayout:Landroid/widget/RelativeLayout;

.field private changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

.field private cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

.field private conListener:Lcom/didi/beatles/listener/BtsConfigListener;

.field private glistener:Landroid/view/View$OnClickListener;

.field private guide:Landroid/widget/ImageView;

.field private guideListener:Landroid/view/View$OnClickListener;

.field private guidelayout:Landroid/widget/RelativeLayout;

.field private isLoad:Z

.field private isViewCreated:Z

.field private mExpanded:Z

.field private mLocationListener:Lcom/didi/soso/location/LocationInterface;

.field private mOriginWidth:I

.field private mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

.field private mTitleHided:Z

.field private mUseCacheView:Z

.field private mView:Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;

.field private mapListener:Lcom/didi/beatles/listener/BtsMapClearListener;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 114
    iput v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mOriginWidth:I

    .line 115
    iput-boolean v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z

    .line 116
    iput-boolean v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mTitleHided:Z

    .line 120
    iput-boolean v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mUseCacheView:Z

    .line 553
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$8;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->glistener:Landroid/view/View$OnClickListener;

    .line 691
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$12;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$12;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    .line 786
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$14;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$14;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 815
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$16;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$16;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    .line 971
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$17;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$17;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    .line 977
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$18;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$18;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guideListener:Landroid/view/View$OnClickListener;

    .line 984
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$19;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$19;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->conListener:Lcom/didi/beatles/listener/BtsConfigListener;

    .line 997
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$20;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$20;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->btsUiListener:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;

    .line 1004
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$21;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    .line 1019
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$22;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$22;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mapListener:Lcom/didi/beatles/listener/BtsMapClearListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_content:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/view/animation/ScaleAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getAdAnimate()Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Landroid/view/animation/Animation;)Lcom/nineoldandroids/animation/ValueAnimator;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getWindAnimate(Landroid/view/animation/Animation;)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->setFirstUse()V

    return-void
.end method

.method static synthetic access$1300(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guide:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->setLocationView()V

    return-void
.end method

.method static synthetic access$1600(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->refreshGuidePicAndBottom()V

    return-void
.end method

.method static synthetic access$1700(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getUserInfo()V

    return-void
.end method

.method static synthetic access$1800(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->initWind(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getArroundUsers(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->isLoad:Z

    return p1
.end method

.method static synthetic access$202(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_red_point:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mOriginWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mTitleHided:Z

    return v0
.end method

.method static synthetic access$702(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mTitleHided:Z

    return p1
.end method

.method static synthetic access$800(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->playBtsAdContentAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->setShowAdRedPoint()V

    return-void
.end method

.method private checkIMUnread()V
    .locals 1

    .prologue
    .line 674
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getIMUnreadFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$11;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$11;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 683
    :cond_0
    return-void
.end method

.method private getAdAnimate()Landroid/view/animation/ScaleAnimation;
    .locals 15

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 183
    iget-boolean v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z

    if-nez v3, :cond_0

    .line 184
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 188
    .local v0, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    :goto_0
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 189
    new-instance v1, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$1;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 222
    return-object v0

    .line 186
    .end local v0           #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move-object v6, v0

    move v7, v2

    move v8, v1

    move v9, v2

    move v10, v1

    move v11, v5

    move v12, v2

    move v13, v5

    move v14, v1

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .restart local v0       #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    goto :goto_0
.end method

.method private getArroundUsers(Z)V
    .locals 5
    .parameter "reload"

    .prologue
    .line 703
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/didi/beatles/model/BtsConfig;->open:Z

    if-nez v1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BtsIsLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->isLoad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 706
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLat()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->isLoad:Z

    if-nez v1, :cond_0

    .line 708
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->isLoad:Z

    .line 709
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getUserRoleType()I

    move-result v0

    .line 710
    .local v0, role:I
    if-nez v0, :cond_2

    .line 711
    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLat()D

    move-result-wide v1

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLng()D

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/didi/beatles/map/BtsDriversHelper;->showBtsArroundDrivers(ZDD)V

    goto :goto_0

    .line 713
    :cond_2
    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLat()D

    move-result-wide v1

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLng()D

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/didi/beatles/map/BtsDriversHelper;->showBtsArroundPasngers(ZDD)V

    goto :goto_0
.end method

.method private getConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 782
    invoke-static {v2}, Lcom/didi/common/net/CommonRequest;->getConfig(Lcom/didi/common/net/ResponseListener;)V

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCarConfigVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/didi/car/net/CarRequest;->getConfig(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 784
    return-void
.end method

.method private getDefaultResID(II)I
    .locals 2
    .parameter "role"
    .parameter "index"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 480
    if-nez p1, :cond_2

    .line 481
    if-nez p2, :cond_0

    .line 482
    const v0, 0x7f020037

    .line 507
    :goto_0
    return v0

    .line 485
    :cond_0
    if-ne p2, v0, :cond_1

    .line 486
    const v0, 0x7f020038

    goto :goto_0

    .line 489
    :cond_1
    if-ne p2, v1, :cond_5

    .line 490
    const v0, 0x7f020039

    goto :goto_0

    .line 494
    :cond_2
    if-nez p2, :cond_3

    .line 495
    const v0, 0x7f02002f

    goto :goto_0

    .line 498
    :cond_3
    if-ne p2, v0, :cond_4

    .line 499
    const v0, 0x7f020030

    goto :goto_0

    .line 502
    :cond_4
    if-ne p2, v1, :cond_5

    .line 503
    const v0, 0x7f020031

    goto :goto_0

    .line 507
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRotateAnimate()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 171
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 172
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_img:Landroid/widget/ImageView;

    const-string v2, "rotation"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 173
    .local v0, a:Lcom/nineoldandroids/animation/ObjectAnimator;
    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 174
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 175
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 177
    return-object v0

    .line 172
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xb4t 0x43t
    .end array-data
.end method

.method private getUserInfo()V
    .locals 1

    .prologue
    .line 718
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/beatles/model/BtsConfig;->open:Z

    if-nez v0, :cond_0

    .line 748
    :goto_0
    return-void

    .line 720
    :cond_0
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$13;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    invoke-static {v0}, Lcom/didi/beatles/net/BtsRequest;->getUserInfo(Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0
.end method

.method private getWindAnimate(Landroid/view/animation/Animation;)Lcom/nineoldandroids/animation/ValueAnimator;
    .locals 4
    .parameter "adAnimation"

    .prologue
    const/4 v3, 0x2

    .line 226
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 227
    .local v0, anim:Lcom/nineoldandroids/animation/ValueAnimator;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 228
    iget v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mOriginWidth:I

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mOriginWidth:I

    .line 232
    :cond_0
    iget-boolean v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z

    if-eqz v1, :cond_1

    .line 233
    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 238
    :goto_0
    new-instance v1, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$2;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 252
    new-instance v1, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$3;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 282
    return-object v0

    .line 235
    :cond_1
    new-array v1, v3, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    .line 226
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 233
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 235
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private guideAnimation()V
    .locals 6

    .prologue
    .line 625
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const v5, 0x3dcccccd

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 626
    .local v0, objectAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;
    new-instance v1, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$9;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$9;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 633
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 634
    return-void
.end method

.method private hideDepartureMarker()V
    .locals 4

    .prologue
    .line 580
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isDepartMakerRemove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDepartMarker()V

    .line 582
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 583
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 585
    :cond_1
    return-void
.end method

.method private initAdUI(Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 539
    const v0, 0x7f080180

    invoke-virtual {p1, v0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_content:Landroid/widget/LinearLayout;

    .line 540
    const v0, 0x7f080181

    invoke-virtual {p1, v0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_img1:Landroid/widget/ImageView;

    .line 541
    const v0, 0x7f080182

    invoke-virtual {p1, v0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_img2:Landroid/widget/ImageView;

    .line 542
    const v0, 0x7f080183

    invoke-virtual {p1, v0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_img3:Landroid/widget/ImageView;

    .line 544
    const v0, 0x7f080184

    invoke-virtual {p1, v0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_more:Landroid/widget/TextView;

    .line 545
    const v0, 0x7f080185

    invoke-virtual {p1, v0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;

    .line 546
    const v0, 0x7f080186

    invoke-virtual {p1, v0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_text:Landroid/widget/TextView;

    .line 547
    const v0, 0x7f080187

    invoke-virtual {p1, v0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_img:Landroid/widget/ImageView;

    .line 548
    const v0, 0x7f080188

    invoke-virtual {p1, v0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_red_point:Landroid/widget/ImageView;

    .line 550
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->initWind(I)V

    .line 551
    return-void
.end method

.method private initDeparture()V
    .locals 4

    .prologue
    .line 686
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->setDepartMarker(DD)V

    .line 689
    :cond_0
    return-void
.end method

.method private initRotate()V
    .locals 5

    .prologue
    .line 286
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getUserRoleType()I

    move-result v2

    .line 287
    .local v2, role:I
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v0, v3, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    .line 288
    .local v0, ac:Lcom/didi/beatles/model/BtsConfig$AdConfig;
    if-nez v2, :cond_2

    .line 289
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v0, v3, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    .line 294
    :goto_0
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v3

    iget v4, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->version:I

    invoke-virtual {v3, v2, v4}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getShowAdRedPoint(II)Z

    move-result v1

    .line 295
    .local v1, fristLoad:Z
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_img:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 296
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->cancel()V

    .line 300
    :cond_0
    iget-boolean v3, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->is_round:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_img:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 301
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getRotateAnimate()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 302
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 304
    :cond_1
    return-void

    .line 291
    .end local v1           #fristLoad:Z
    :cond_2
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v0, v3, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    goto :goto_0
.end method

.method private initWind(I)V
    .locals 12
    .parameter "flag"

    .prologue
    .line 323
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getUserRoleType()I

    move-result v7

    .line 324
    .local v7, role:I
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v10

    iget-object v0, v10, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    .line 325
    .local v0, ac:Lcom/didi/beatles/model/BtsConfig$AdConfig;
    if-nez v7, :cond_2

    .line 326
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v10

    iget-object v0, v10, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    .line 331
    :goto_0
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v10

    iget-boolean v4, v10, Lcom/didi/beatles/model/BtsConfig;->open:Z

    .line 332
    .local v4, isOpen:Z
    iget-boolean v10, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->is_show:Z

    if-eqz v10, :cond_0

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isFirstUse()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 333
    :cond_0
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_content:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 335
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_red_point:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z

    .line 338
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mTitleHided:Z

    .line 461
    :cond_1
    return-void

    .line 328
    .end local v4           #isOpen:Z
    :cond_2
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v10

    iget-object v0, v10, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    goto :goto_0

    .line 343
    .restart local v4       #isOpen:Z
    :cond_3
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v10

    iget v11, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->version:I

    invoke-virtual {v10, v7, v11}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getShowAdRedPoint(II)Z

    move-result v1

    .line 346
    .local v1, fristLoad:Z
    const/4 v10, 0x1

    if-ne p1, v10, :cond_7

    .line 347
    iget-boolean v10, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->auto_expand:Z

    if-eqz v10, :cond_6

    if-eqz v1, :cond_6

    .line 348
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_content:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 349
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 350
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z

    .line 351
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;

    const v11, 0x7f020036

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 369
    :cond_4
    :goto_1
    iget-object v10, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->title:Ljava/lang/String;

    invoke-static {v10}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    if-eqz v1, :cond_8

    iget-boolean v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z

    if-nez v10, :cond_8

    .line 370
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_text:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_text:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mTitleHided:Z

    .line 374
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_text:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 375
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -0x2

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 376
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_text:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    .end local v6           #params:Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->initRotate()V

    .line 384
    iget-boolean v10, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->show_red_point:Z

    if-eqz v10, :cond_9

    if-eqz v1, :cond_9

    .line 385
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_red_point:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    :goto_3
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_more:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->btn_title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v9, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->btn_url:Ljava/lang/String;

    .line 392
    .local v9, url_tmp:Ljava/lang/String;
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_more:Landroid/widget/TextView;

    new-instance v11, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$4;

    invoke-direct {v11, p0, v9}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$4;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$5;

    invoke-direct {v11, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$5;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;

    new-instance v11, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$6;

    invoke-direct {v11, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$6;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    const/4 v10, 0x3

    new-array v5, v10, [Landroid/widget/ImageView;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_img1:Landroid/widget/ImageView;

    aput-object v11, v5, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_img2:Landroid/widget/ImageView;

    aput-object v11, v5, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_img3:Landroid/widget/ImageView;

    aput-object v11, v5, v10

    .line 451
    .local v5, ivs:[Landroid/widget/ImageView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    array-length v10, v5

    if-ge v2, v10, :cond_1

    .line 452
    const/4 v8, 0x0

    .line 453
    .local v8, url:Ljava/lang/String;
    const/4 v3, 0x0

    .line 454
    .local v3, img_url:Ljava/lang/String;
    iget-object v10, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->pages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v2, :cond_5

    .line 455
    iget-object v10, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->pages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/beatles/model/BtsConfig$Page;

    iget-object v8, v10, Lcom/didi/beatles/model/BtsConfig$Page;->url:Ljava/lang/String;

    .line 456
    iget-object v10, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->pages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/didi/beatles/model/BtsConfig$Page;

    iget-object v3, v10, Lcom/didi/beatles/model/BtsConfig$Page;->img_url:Ljava/lang/String;

    .line 459
    :cond_5
    aget-object v10, v5, v2

    invoke-direct {p0, v7, v2}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getDefaultResID(II)I

    move-result v11

    invoke-direct {p0, v8, v3, v10, v11}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->setOnClickListener(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 353
    .end local v2           #i:I
    .end local v3           #img_url:Ljava/lang/String;
    .end local v5           #ivs:[Landroid/widget/ImageView;
    .end local v8           #url:Ljava/lang/String;
    .end local v9           #url_tmp:Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;

    const v11, 0x7f020034

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 354
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_content:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 357
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z

    goto/16 :goto_1

    .line 359
    :cond_7
    const/4 v10, 0x2

    if-ne p1, v10, :cond_4

    .line 360
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_parent:Landroid/widget/LinearLayout;

    const v11, 0x7f020034

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 363
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_content:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 366
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z

    goto/16 :goto_1

    .line 378
    :cond_8
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_text:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mTitleHided:Z

    goto/16 :goto_2

    .line 387
    :cond_9
    iget-object v10, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_red_point:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private isValidCity()Z
    .locals 2

    .prologue
    .line 931
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, currentCity:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    const/4 v1, 0x0

    .line 935
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private playBtsAdContentAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_content:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 315
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_ad_content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    return-void
.end method

.method private playGuidePicAnimation()V
    .locals 3

    .prologue
    .line 638
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$10;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 668
    return-void
.end method

.method private refreshGuidePicAndBottom()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 589
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-boolean v1, v3, Lcom/didi/beatles/model/BtsConfig;->open:Z

    .line 590
    .local v1, flag:Z
    if-eqz v1, :cond_3

    .line 591
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isFirstUse()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 592
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->btsguidelayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    .line 593
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->btsguidelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 596
    :cond_0
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guide:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 597
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guide:Landroid/widget/ImageView;

    const v4, 0x7f020091

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 600
    :cond_1
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->playGuidePicAnimation()V

    .line 621
    :cond_2
    :goto_0
    invoke-static {}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;->refreshTab()V

    .line 622
    return-void

    .line 603
    :cond_3
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->btsguidelayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_4

    .line 604
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->btsguidelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 608
    :cond_4
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    iget v3, v3, Lcom/didi/beatles/model/BtsConfig$Didialift;->pic_type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 609
    const v0, 0x7f020093

    .line 610
    .local v0, defaultRes:I
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    if-nez v3, :cond_6

    const-string v2, ""

    .line 615
    .local v2, url:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guide:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 616
    iget-object v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guide:Landroid/widget/ImageView;

    invoke-static {v2, v3, v0}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 619
    :cond_5
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->playGuidePicAnimation()V

    goto :goto_0

    .line 610
    .end local v2           #url:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    iget-object v2, v3, Lcom/didi/beatles/model/BtsConfig$Didialift;->pic_url_2:Ljava/lang/String;

    goto :goto_1

    .line 612
    .end local v0           #defaultRes:I
    :cond_7
    const v0, 0x7f020092

    .line 613
    .restart local v0       #defaultRes:I
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    if-nez v3, :cond_8

    const-string v2, ""

    .restart local v2       #url:Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v2           #url:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    iget-object v2, v3, Lcom/didi/beatles/model/BtsConfig$Didialift;->pic_url_1:Ljava/lang/String;

    goto :goto_2
.end method

.method private removeLocationView()V
    .locals 0

    .prologue
    .line 824
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->removeChangeListener()V

    .line 825
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->hideLocation()V

    .line 826
    return-void
.end method

.method private resetMap()V
    .locals 4

    .prologue
    .line 883
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->clearMap()V

    .line 884
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->resetMap()V

    .line 885
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeBtsMapUserMarker()V

    .line 886
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/beatles/model/BtsConfig;->open:Z

    if-eqz v0, :cond_0

    .line 887
    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->setBtsMapUserMarker(DD)V

    .line 888
    :cond_0
    return-void
.end method

.method private setFirstUse()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 959
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    .line 960
    .local v0, bts:Lcom/didi/beatles/helper/BtsSharedPrefsMgr;
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/didi/beatles/model/BtsConfig;->open:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isFirstUse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 961
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setFirstUse(Z)V

    .line 962
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->btsguidelayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->btsguidelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 964
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 965
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 967
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->initWind(I)V

    .line 969
    :cond_2
    return-void
.end method

.method private setLocationView()V
    .locals 1

    .prologue
    .line 798
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setViewMargin(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V

    .line 800
    return-void
.end method

.method private setOnClickListener(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 2
    .parameter "url"
    .parameter "img_url"
    .parameter "iv"
    .parameter "resId"

    .prologue
    .line 511
    move v0, p4

    .line 512
    .local v0, resIDTmp:I
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    const/4 v0, 0x0

    .line 516
    :cond_0
    invoke-static {p2, p3, v0}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 518
    new-instance v1, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$7;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    return-void
.end method

.method private setShowAdRedPoint()V
    .locals 5

    .prologue
    .line 464
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getUserRoleType()I

    move-result v1

    .line 465
    .local v1, role:I
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v2

    iget-object v0, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    .line 466
    .local v0, ac:Lcom/didi/beatles/model/BtsConfig$AdConfig;
    if-nez v1, :cond_1

    .line 467
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v2

    iget-object v0, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    .line 471
    :goto_0
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v2

    iget v3, v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;->version:I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setShowAdRedPoint(IIZ)V

    .line 473
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bts_wind_img:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 474
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->cancel()V

    .line 477
    :cond_0
    return-void

    .line 469
    :cond_1
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v2

    iget-object v0, v2, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    goto :goto_0
.end method

.method private setSwitcher()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mView:Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->setContentViewAnimated(Landroid/view/View;)V

    .line 830
    return-void
.end method

.method private showInvalidServiceDialog()V
    .locals 3

    .prologue
    .line 939
    const v2, 0x7f0b0251

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, tip:Ljava/lang/String;
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 941
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 943
    return-void
.end method

.method private showPopoupAnnouncement(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 806
    new-instance v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$15;

    invoke-direct {v0, p0, p1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment$15;-><init>(Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;Landroid/view/View;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 813
    return-void
.end method


# virtual methods
.method public doInBack()V
    .locals 0

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getConfig()V

    .line 778
    return-void
.end method

.method protected jumpToActivity()V
    .locals 1

    .prologue
    .line 907
    invoke-static {}, Lcom/didi/common/helper/SoundHelper;->playClick()V

    .line 909
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isOpenActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 910
    const v0, 0x7f0b04f2

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    .line 911
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 912
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    invoke-static {}, Lcom/didi/common/util/Utils;->isLocated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 916
    const v0, 0x7f0b03e6

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    goto :goto_0

    .line 919
    :cond_2
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->isValidCity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->showInvalidServiceDialog()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 167
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->refreshGuidePicAndBottom()V

    .line 168
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 947
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 948
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 956
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 879
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 131
    iget-boolean v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->isViewCreated:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mView:Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mView:Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 133
    .local v0, p:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 134
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #p:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mView:Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->initRotate()V

    .line 138
    iput-boolean v4, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mUseCacheView:Z

    .line 139
    iget-boolean v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mExpanded:Z

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mView:Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;

    .line 161
    :goto_0
    return-object v1

    .line 146
    :cond_2
    new-instance v1, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mView:Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;

    .line 147
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mView:Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;

    const v2, 0x7f08017f

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guide:Landroid/widget/ImageView;

    .line 148
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guide:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->glistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;

    .line 150
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mView:Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;

    const v2, 0x7f08017e

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->btsguidelayout:Landroid/widget/RelativeLayout;

    .line 152
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mView:Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;

    invoke-direct {p0, v1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->initAdUI(Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;)V

    .line 154
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mView:Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    iput-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bar:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    .line 155
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bar:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    invoke-static {v1}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;->setBtsBottomBar(Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;)V

    .line 156
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->btsUiListener:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;

    invoke-static {v1}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;->setUiListener(Lcom/didi/beatles/ui/fragment/view/BtsBottomBar$UiListener;)V

    .line 157
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->btsguidelayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guideListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iput-boolean v4, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->isViewCreated:Z

    .line 160
    iput-boolean v3, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mUseCacheView:Z

    .line 161
    iget-object v1, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mView:Lcom/didi/beatles/ui/fragment/view/BtsRealtimeView;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 856
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 857
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeBtsMapUserMarker()V

    .line 858
    invoke-static {}, Lcom/didi/map/MapController;->hideMapLogo()V

    .line 859
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->removeLocationView()V

    .line 860
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 861
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->removeCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 862
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->conListener:Lcom/didi/beatles/listener/BtsConfigListener;

    invoke-static {v0}, Lcom/didi/beatles/listener/BtsListenerHub;->removeBtsConfigListener(Lcom/didi/beatles/listener/BtsConfigListener;)V

    .line 863
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    invoke-static {v0}, Lcom/didi/soso/location/ListenerCollection;->removeLocationListener(Lcom/didi/soso/location/LocationInterface;)V

    .line 864
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mapListener:Lcom/didi/beatles/listener/BtsMapClearListener;

    invoke-static {v0}, Lcom/didi/beatles/listener/BtsListenerHub;->removeBtsMapClearListener(Lcom/didi/beatles/listener/BtsMapClearListener;)V

    .line 865
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->setFirstUse()V

    .line 866
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guidelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->btsguidelayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->btsguidelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guide:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 871
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->guide:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 872
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->isLoad:Z

    .line 874
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 875
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 876
    return-void
.end method

.method public onEvent(Lcom/didi/beatles/model/event/BtsChangeRoleEvent;)V
    .locals 1
    .parameter "event"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "BTS_CHANGE_ROLE_EVENT"
    .end annotation

    .prologue
    .line 308
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->initWind(I)V

    .line 309
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 896
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 897
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->showMenu()V

    .line 898
    const/4 v0, 0x1

    .line 900
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 847
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 849
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mRotateAnim:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->cancel()V

    .line 852
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 834
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 835
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->setSwitcher()V

    .line 836
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setEditViewEnble()V

    .line 837
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->resetMap()V

    .line 838
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getUserInfo()V

    .line 839
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->getArroundUsers(Z)V

    .line 841
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->initRotate()V

    .line 843
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 752
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 753
    iget-boolean v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mUseCacheView:Z

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->bar:Lcom/didi/beatles/ui/fragment/view/BtsBottomBar;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 756
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 757
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 758
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->setCurrentCity()V

    .line 759
    sget-object v0, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->checkSwitcher(Lcom/didi/frame/business/Business;)V

    .line 760
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->hideDepartureMarker()V

    .line 762
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->setLocationView()V

    .line 763
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->initDeparture()V

    .line 764
    invoke-direct {p0}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->checkIMUnread()V

    .line 765
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->setUserLogo()V

    .line 766
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->showPopoupAnnouncement(Landroid/view/View;)V

    .line 768
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 769
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->addCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 770
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->conListener:Lcom/didi/beatles/listener/BtsConfigListener;

    invoke-static {v0}, Lcom/didi/beatles/listener/BtsListenerHub;->addBtsConfigListener(Lcom/didi/beatles/listener/BtsConfigListener;)V

    .line 771
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    invoke-static {v0}, Lcom/didi/soso/location/ListenerCollection;->addLocationLister(Lcom/didi/soso/location/LocationInterface;)V

    .line 772
    iget-object v0, p0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;->mapListener:Lcom/didi/beatles/listener/BtsMapClearListener;

    invoke-static {v0}, Lcom/didi/beatles/listener/BtsListenerHub;->addBtsMapClearListener(Lcom/didi/beatles/listener/BtsMapClearListener;)V

    .line 773
    return-void
.end method
