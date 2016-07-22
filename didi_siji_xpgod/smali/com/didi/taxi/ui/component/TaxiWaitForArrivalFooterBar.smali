.class public Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;
.super Lcom/didi/common/base/BaseLayout;
.source "TaxiWaitForArrivalFooterBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$BaseAnimAnimationListener;,
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;,
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterInterceptListener;
    }
.end annotation


# instance fields
.field mArrivalEnable:Z

.field mCloseEnable:Z

.field private mCloseInAnim:Landroid/view/animation/Animation;

.field private mCloseOutAnim:Landroid/view/animation/Animation;

.field mFoundCouponIsShow:Z

.field private mFoundCouponTv:Lx/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805b8
    .end annotation
.end field

.field mFoundEnable:Z

.field private mFoundHintView:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802a9
    .end annotation
.end field

.field private mGameImageIcon:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805b9
    .end annotation
.end field

.field mHomeEnable:Z

.field private mIconOp:Lx/ImageButton;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802ad
    .end annotation
.end field

.field private mImgArrival:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onArrivalClicked"
        id = 0x7f0802aa
    .end annotation
.end field

.field private mImgClose:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onCloseClicked"
        id = 0x7f0802b9
    .end annotation
.end field

.field private mImgFound:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onFoundClicked"
        id = 0x7f0802a5
    .end annotation
.end field

.field private mImgFound_icon:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802a7
    .end annotation
.end field

.field private mImgFound_text:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802a8
    .end annotation
.end field

.field private mImgHome:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onHomeClicked"
        id = 0x7f0802b4
    .end annotation
.end field

.field private mImgOp:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onOpClicked"
        id = 0x7f0802ac
    .end annotation
.end field

.field private mImgPay:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onPayClicked"
        id = 0x7f0805ba
    .end annotation
.end field

.field public mInterceptListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterInterceptListener;

.field public mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;

.field mOpEnable:Z

.field private mOpLayout:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08029d
    .end annotation
.end field

.field private mOpLayoutInAnim:Landroid/view/animation/Animation;

.field private mOpLayoutOutAnim:Landroid/view/animation/Animation;

.field mPayEnable:Z

.field private mTxtOp:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802ae
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 106
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 84
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundEnable:Z

    .line 85
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mPayEnable:Z

    .line 86
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mArrivalEnable:Z

    .line 87
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mCloseEnable:Z

    .line 88
    iput-boolean v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpEnable:Z

    .line 89
    iput-boolean v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mHomeEnable:Z

    .line 90
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponIsShow:Z

    .line 107
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->init()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundEnable:Z

    .line 85
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mPayEnable:Z

    .line 86
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mArrivalEnable:Z

    .line 87
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mCloseEnable:Z

    .line 88
    iput-boolean v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpEnable:Z

    .line 89
    iput-boolean v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mHomeEnable:Z

    .line 90
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponIsShow:Z

    .line 102
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->init()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundEnable:Z

    .line 85
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mPayEnable:Z

    .line 86
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mArrivalEnable:Z

    .line 87
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mCloseEnable:Z

    .line 88
    iput-boolean v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpEnable:Z

    .line 89
    iput-boolean v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mHomeEnable:Z

    .line 90
    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponIsShow:Z

    .line 97
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->init()V

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgClose:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mGameImageIcon:Lx/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const v7, 0x7f04001e

    const v6, 0x7f04001d

    const/4 v5, 0x1

    .line 124
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->checkImgFound()V

    .line 125
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 126
    .local v2, opLayoutInAnim:Landroid/view/animation/Animation;
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 127
    new-instance v4, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$1;

    invoke-direct {v4, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 134
    iput-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;

    .line 136
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 137
    .local v3, opLayoutOutAnim:Landroid/view/animation/Animation;
    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 138
    new-instance v4, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$2;

    invoke-direct {v4, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 147
    iput-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayoutOutAnim:Landroid/view/animation/Animation;

    .line 149
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 150
    .local v0, closeInAnim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 151
    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mCloseInAnim:Landroid/view/animation/Animation;

    .line 153
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 154
    .local v1, closeOutAnim:Landroid/view/animation/Animation;
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 155
    new-instance v4, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$3;

    invoke-direct {v4, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$3;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 165
    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mCloseOutAnim:Landroid/view/animation/Animation;

    .line 167
    iput-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayoutOutAnim:Landroid/view/animation/Animation;

    .line 168
    return-void
.end method

.method private setEnable(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "enable"

    .prologue
    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 381
    .local v0, parent:Landroid/view/View;
    if-nez p2, :cond_0

    .line 382
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->hide(Landroid/view/View;)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public checkFoundCouponView()V
    .locals 8

    .prologue
    const v7, 0x7f070047

    const v4, 0x7f02001c

    const/16 v6, 0xc

    const/4 v5, 0x6

    .line 204
    const/4 v0, 0x0

    .line 207
    .local v0, gameFootBarShowType:I
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getIsNewFound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getBizFootBarShowType()I

    move-result v0

    .line 209
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getBizGameIcon()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, icon_url:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getBizFootBarShowTips()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, gameFootBarTips:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->hide(Landroid/view/View;)V

    .line 214
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mGameImageIcon:Lx/ImageView;

    invoke-virtual {p0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 215
    new-instance v3, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$4;

    invoke-direct {v3, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$4;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)V

    invoke-static {v2, v3}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mGameImageIcon:Lx/ImageView;

    invoke-virtual {p0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->hide(Landroid/view/View;)V

    .line 225
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 227
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {v3, v4}, Lx/TextView;->setBackgroundResource(I)V

    .line 228
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {v3, v5, v6, v5, v6}, Lx/TextView;->setPadding(IIII)V

    .line 229
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {v3, v1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lx/TextView;->setTextColor(I)V

    goto :goto_0

    .line 237
    .end local v1           #gameFootBarTips:Ljava/lang/String;
    .end local v2           #icon_url:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getGameFootBarShowType()I

    move-result v0

    .line 238
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getGameIcon()Ljava/lang/String;

    move-result-object v2

    .line 239
    .restart local v2       #icon_url:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getGameFootBarShowTips()Ljava/lang/String;

    move-result-object v1

    .line 240
    .restart local v1       #gameFootBarTips:Ljava/lang/String;
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mGameImageIcon:Lx/ImageView;

    invoke-virtual {p0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->hide(Landroid/view/View;)V

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 256
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {v3, v4}, Lx/TextView;->setBackgroundResource(I)V

    .line 257
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {v3, v5, v6, v5, v6}, Lx/TextView;->setPadding(IIII)V

    .line 258
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {v3, v1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lx/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 242
    :pswitch_3
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->hide(Landroid/view/View;)V

    .line 243
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mGameImageIcon:Lx/ImageView;

    invoke-virtual {p0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 244
    new-instance v3, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$5;

    invoke-direct {v3, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$5;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;)V

    invoke-static {v2, v3}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    goto/16 :goto_0

    .line 263
    :pswitch_4
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mGameImageIcon:Lx/ImageView;

    invoke-virtual {p0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->hide(Landroid/view/View;)V

    .line 264
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 266
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    const v4, 0x7f02001d

    invoke-virtual {v3, v4}, Lx/TextView;->setBackgroundResource(I)V

    .line 267
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {v3, v5, v6, v5, v6}, Lx/TextView;->setPadding(IIII)V

    .line 268
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {v3, v1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lx/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 240
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public checkImgFound()V
    .locals 5

    .prologue
    const v4, 0x7f0b0486

    const v3, 0x7f02031b

    const v2, 0x7f020318

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------game show bar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isGameShow4FootBar()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------checkimgfound---showgame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isGameShow4FootBar()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getIsNewFound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getBizShow4FootBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgFound_icon:Lx/ImageView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgFound_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const-string v0, "pexwfp02_sw"

    const-string v1, "[menu_type=1][pager_id=4][channel_id=302][show_id=2]"

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->checkFoundCouponView()V

    .line 201
    :cond_0
    :goto_1
    return-void

    .line 183
    :cond_1
    const-string v0, "pexwfp02_sw"

    const-string v1, "[menu_type=0][pager_id=4][channel_id=302][show_id=1]"

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgFound_icon:Lx/ImageView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 189
    :cond_2
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isGameShow4FootBar()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgFound_icon:Lx/ImageView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgFound_text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const-string v0, "pexwfp02_sw"

    const-string v1, "[menu_type=1][pager_id=4][channel_id=302][show_id=2]"

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_2
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isGameShow4FootBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->checkFoundCouponView()V

    goto :goto_1

    .line 194
    :cond_3
    const-string v0, "pexwfp02_sw"

    const-string v1, "[menu_type=0][pager_id=4][channel_id=302][show_id=1]"

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgFound_icon:Lx/ImageView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public disableMainTips()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 437
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setFoundEnable(Z)V

    .line 438
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setPayEnable(Z)V

    .line 439
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setArrivalEnable(Z)V

    .line 440
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setCloseEnable(Z)V

    .line 441
    return-void
.end method

.method public enableMainTips()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 444
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setFoundEnable(Z)V

    .line 445
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setPayEnable(Z)V

    .line 446
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setArrivalEnable(Z)V

    .line 447
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setCloseEnable(Z)V

    .line 448
    return-void
.end method

.method public enableOpHomeTips()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 454
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setOpEnable(Z)V

    .line 455
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setHomeEnable(Z)V

    .line 456
    return-void
.end method

.method public onArrivalClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 511
    const-string v1, "onArrivalClicked onClick"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 512
    const-string v1, "wa_arrival_click"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->showCloseTipImgInAnim()V

    .line 515
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;

    .line 516
    .local v0, l:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;
    if-eqz v0, :cond_0

    .line 517
    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;->onFooterArrivalClicked()V

    .line 519
    :cond_0
    return-void
.end method

.method public onCloseClicked(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 523
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mInterceptListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterInterceptListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mInterceptListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterInterceptListener;

    invoke-interface {v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterInterceptListener;->onFooterCloseIntercepted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    const-string v2, "onCloseClicked onClick"

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 529
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgClose:Landroid/view/View;

    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mCloseOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 531
    iget-boolean v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponIsShow:Z

    if-eqz v2, :cond_3

    .line 532
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getIsNewFound()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 533
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getBizFootBarShowTips()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 534
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getBizFootBarShowType()I

    move-result v0

    .line 535
    .local v0, gameFootBarShowTips:I
    if-ne v0, v4, :cond_2

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mGameImageIcon:Lx/ImageView;

    invoke-virtual {v2}, Lx/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 536
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mGameImageIcon:Lx/ImageView;

    invoke-virtual {p0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 538
    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {v2}, Lx/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 539
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 553
    .end local v0           #gameFootBarShowTips:I
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;

    .line 554
    .local v1, l:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;
    if-eqz v1, :cond_0

    .line 555
    invoke-interface {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;->onFooterCloseClicked()V

    goto :goto_0

    .line 542
    .end local v1           #l:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;
    :cond_4
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getGameFootBarShowTips()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 543
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getGameFootBarShowType()I

    move-result v0

    .line 544
    .restart local v0       #gameFootBarShowTips:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mGameImageIcon:Lx/ImageView;

    invoke-virtual {v2}, Lx/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    .line 545
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mGameImageIcon:Lx/ImageView;

    invoke-virtual {p0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 547
    :cond_5
    if-eq v0, v4, :cond_6

    if-nez v0, :cond_3

    :cond_6
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {v2}, Lx/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 548
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onFoundClicked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 475
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    const-string v1, "onFoundClicked onClick"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 478
    const-string v1, "wa_discover_click"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getIsNewFound()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isNewFoundUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->showCloseTipImgInAnim()V

    .line 483
    :cond_2
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isGameShow4FootBar()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getIsNewFound()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 486
    :cond_3
    iput-boolean v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponIsShow:Z

    .line 487
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->hide(Landroid/view/View;)V

    .line 488
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mGameImageIcon:Lx/ImageView;

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->hide(Landroid/view/View;)V

    .line 493
    :goto_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;

    .line 494
    .local v0, l:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;
    if-eqz v0, :cond_0

    .line 495
    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;->onFooterFoundClicked()V

    goto :goto_0

    .line 490
    .end local v0           #l:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;
    :cond_4
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->showCloseTipImgInAnim()V

    goto :goto_1
.end method

.method public onHomeClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;

    .line 569
    .local v0, l:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;
    if-eqz v0, :cond_0

    .line 570
    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;->onFooterHomeClicked()V

    .line 572
    :cond_0
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 112
    const v0, 0x7f030103

    return v0
.end method

.method public onOpClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;

    .line 561
    .local v0, l:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;
    if-eqz v0, :cond_0

    .line 562
    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;->onFooterOpClicked()V

    .line 565
    :cond_0
    return-void
.end method

.method public onPayClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 500
    const-string v1, "onPayClicked onClick"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 501
    const-string v1, "wa_pay_click"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->showCloseTipImgInAnim()V

    .line 504
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;

    .line 505
    .local v0, l:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;
    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;->onFooterPayClicked()V

    .line 508
    :cond_0
    return-void
.end method

.method public setArrivalEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mArrivalEnable:Z

    .line 341
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgArrival:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 342
    return-void
.end method

.method public setCloseEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mCloseEnable:Z

    .line 351
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgClose:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 352
    return-void
.end method

.method public setFoundEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundEnable:Z

    .line 321
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgFound:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 322
    return-void
.end method

.method public setHomeEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mHomeEnable:Z

    .line 371
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgHome:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 372
    return-void
.end method

.method public setInterceptListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterInterceptListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mInterceptListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterInterceptListener;

    .line 121
    return-void
.end method

.method public setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar$FooterListener;

    .line 117
    return-void
.end method

.method public setOpEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpEnable:Z

    .line 361
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgOp:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 362
    return-void
.end method

.method public setOpText(II)V
    .locals 1
    .parameter "texId"
    .parameter "imgId"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mTxtOp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 311
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mIconOp:Lx/ImageButton;

    invoke-virtual {v0, p2}, Lx/ImageButton;->setImageResource(I)V

    .line 312
    return-void
.end method

.method public setOrder(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    const/4 v2, 0x0

    .line 279
    if-nez p1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->isCarPoolOrder()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {p0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setPayEnable(Z)V

    .line 285
    invoke-virtual {p0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setArrivalEnable(Z)V

    .line 293
    :cond_2
    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrder;->foundUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    invoke-virtual {p0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setFoundEnable(Z)V

    goto :goto_0

    .line 298
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setFoundEnable(Z)V

    .line 300
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getFoundVersion()I

    move-result v0

    .line 301
    .local v0, curFoundVersion:I
    iget v1, p1, Lcom/didi/taxi/model/TaxiOrder;->foundVersion:I

    if-eq v1, v0, :cond_0

    .line 302
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    iget v2, p1, Lcom/didi/taxi/model/TaxiOrder;->foundVersion:I

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setFoundVersion(I)V

    .line 303
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isGameShow4FootBar()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getIsNewFound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundHintView:Lx/ImageView;

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setPayEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mPayEnable:Z

    .line 331
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgPay:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 332
    return-void
.end method

.method public showCloseTipImg()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundHintView:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundHintView:Lx/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->hide(Landroid/view/View;)V

    .line 415
    :cond_0
    iget-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mCloseEnable:Z

    if-nez v0, :cond_1

    .line 424
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->invisible(Landroid/view/View;)V

    .line 419
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mGameImageIcon:Lx/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->invisible(Landroid/view/View;)V

    .line 420
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgFound:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->invisible(Landroid/view/View;)V

    .line 421
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgPay:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->invisible(Landroid/view/View;)V

    .line 422
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgArrival:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->invisible(Landroid/view/View;)V

    .line 423
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showCloseTipImgInAnim()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayoutOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 431
    return-void
.end method

.method public showHomeTip()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 470
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgHome:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 471
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->invisible(Landroid/view/View;)V

    .line 472
    return-void
.end method

.method public showMainTipImgs()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgFound:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 394
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgPay:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 395
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgArrival:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 396
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->invisible(Landroid/view/View;)V

    .line 397
    return-void
.end method

.method public showMainTipImgsInAnim()V
    .locals 2

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->showMainTipImgs()V

    .line 404
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 405
    return-void
.end method

.method public showOpHomeTips()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 463
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgOp:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 464
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mImgHome:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 465
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->mFoundCouponTv:Lx/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalFooterBar;->invisible(Landroid/view/View;)V

    .line 466
    return-void
.end method
