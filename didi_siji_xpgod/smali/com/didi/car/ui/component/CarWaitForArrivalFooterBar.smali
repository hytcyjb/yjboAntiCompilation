.class public Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;
.super Lcom/didi/common/base/BaseLayout;
.source "CarWaitForArrivalFooterBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$BaseAnimAnimationListener;,
        Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;
    }
.end annotation


# instance fields
.field private foodArea:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onFoodClick"
        id = 0x7f08029e
    .end annotation
.end field

.field private foodClick:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08029f
    .end annotation
.end field

.field private foodIcon:Landroid/widget/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802a1
    .end annotation
.end field

.field private foodText:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802a2
    .end annotation
.end field

.field private foodTip:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802a3
    .end annotation
.end field

.field private gameArea:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onGameClick"
        id = 0x7f0802a4
    .end annotation
.end field

.field private gameIcon:Landroid/widget/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802a7
    .end annotation
.end field

.field private gameText:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802a8
    .end annotation
.end field

.field private gameTip:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802a9
    .end annotation
.end field

.field mArrivalEnable:Z

.field private mBottomTipImg:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802b7
    .end annotation
.end field

.field private mBottomTipLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802b6
    .end annotation
.end field

.field mBottomTipLayoutEnable:Z

.field private mBottomTipTxt:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802b8
    .end annotation
.end field

.field mCloseEnable:Z

.field private mCloseOutAnim:Landroid/view/animation/Animation;

.field mFoundEnable:Z

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

.field private mImgQuestion:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onQuestionClicked"
        id = 0x7f0802b2
    .end annotation
.end field

.field private mImgShareTicketOp:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "onOpShareCouponClicked"
        id = 0x7f0802af
    .end annotation
.end field

.field public mListener:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;

.field mOpEnable:Z

.field private mOpLayout:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08029d
    .end annotation
.end field

.field private mOpLayoutInAnim:Landroid/view/animation/Animation;

.field private mOpLayoutOutAnim:Landroid/view/animation/Animation;

.field mOpShareCouponEnable:Z

.field mPayEnable:Z

.field private mPinkIconOp:Lx/ImageButton;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802b0
    .end annotation
.end field

.field private mPinkTxtOp:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802b1
    .end annotation
.end field

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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 115
    iput-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mFoundEnable:Z

    .line 116
    iput-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mPayEnable:Z

    .line 117
    iput-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mArrivalEnable:Z

    .line 118
    iput-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mCloseEnable:Z

    .line 119
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpEnable:Z

    .line 120
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mHomeEnable:Z

    .line 121
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpShareCouponEnable:Z

    .line 122
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mBottomTipLayoutEnable:Z

    .line 138
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->init()V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    iput-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mFoundEnable:Z

    .line 116
    iput-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mPayEnable:Z

    .line 117
    iput-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mArrivalEnable:Z

    .line 118
    iput-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mCloseEnable:Z

    .line 119
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpEnable:Z

    .line 120
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mHomeEnable:Z

    .line 121
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpShareCouponEnable:Z

    .line 122
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mBottomTipLayoutEnable:Z

    .line 133
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->init()V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    iput-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mFoundEnable:Z

    .line 116
    iput-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mPayEnable:Z

    .line 117
    iput-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mArrivalEnable:Z

    .line 118
    iput-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mCloseEnable:Z

    .line 119
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpEnable:Z

    .line 120
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mHomeEnable:Z

    .line 121
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpShareCouponEnable:Z

    .line 122
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mBottomTipLayoutEnable:Z

    .line 128
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->init()V

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgClose:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mBottomTipImg:Lx/ImageView;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const v7, 0x7f04001e

    const v6, 0x7f04001d

    const/4 v5, 0x1

    .line 151
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 152
    .local v2, opLayoutInAnim:Landroid/view/animation/Animation;
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 153
    new-instance v4, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$1;

    invoke-direct {v4, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$1;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 160
    iput-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;

    .line 162
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 163
    .local v3, opLayoutOutAnim:Landroid/view/animation/Animation;
    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 164
    new-instance v4, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$2;

    invoke-direct {v4, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$2;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 173
    iput-object v3, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayoutOutAnim:Landroid/view/animation/Animation;

    .line 175
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 176
    .local v0, closeInAnim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 180
    .local v1, closeOutAnim:Landroid/view/animation/Animation;
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 181
    new-instance v4, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$3;

    invoke-direct {v4, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$3;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    iput-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mCloseOutAnim:Landroid/view/animation/Animation;

    .line 193
    iput-object v3, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayoutOutAnim:Landroid/view/animation/Animation;

    .line 195
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setFoodGame()V

    .line 196
    return-void
.end method

.method private setEnable(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "enable"

    .prologue
    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 345
    .local v0, parent:Landroid/view/View;
    if-nez p2, :cond_0

    .line 346
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hide(Landroid/view/View;)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public disableMainTips()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 393
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setArrivalEnable(Z)V

    .line 394
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setCloseEnable(Z)V

    .line 395
    return-void
.end method

.method public enableMainTips()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 398
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setArrivalEnable(Z)V

    .line 399
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setCloseEnable(Z)V

    .line 400
    return-void
.end method

.method public enableOpDDriveShareCouponHomeTips()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 441
    const-string v0, "morning"

    const-string v1, "enableOpDDriveShareCouponHomeTips()"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setOpShareCouponEnable(Z)V

    .line 443
    invoke-virtual {p0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setHomeEnable(Z)V

    .line 444
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mPinkIconOp:Lx/ImageButton;

    const v1, 0x7f02031d

    invoke-virtual {v0, v1}, Lx/ImageButton;->setImageResource(I)V

    .line 445
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mPinkTxtOp:Landroid/widget/TextView;

    const v1, 0x7f0b04b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 446
    return-void
.end method

.method public enableOpHomeTips()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 406
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setOpEnable(Z)V

    .line 407
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setHomeEnable(Z)V

    .line 408
    return-void
.end method

.method public enableOpShareCouponHomeTips(I)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 429
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setOpShareCouponEnable(Z)V

    .line 430
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setHomeEnable(Z)V

    .line 431
    if-ne v0, p1, :cond_1

    .line 432
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mPinkIconOp:Lx/ImageButton;

    const v1, 0x7f02031f

    invoke-virtual {v0, v1}, Lx/ImageButton;->setImageResource(I)V

    .line 433
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mPinkTxtOp:Landroid/widget/TextView;

    const v1, 0x7f0b0354

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mPinkIconOp:Lx/ImageButton;

    const v1, 0x7f02031e

    invoke-virtual {v0, v1}, Lx/ImageButton;->setImageResource(I)V

    .line 436
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mPinkTxtOp:Landroid/widget/TextView;

    const v1, 0x7f0b0353

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public hideFoodArea()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->foodArea:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hide(Landroid/view/View;)V

    .line 464
    return-void
.end method

.method public hideGameArea()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->gameArea:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hide(Landroid/view/View;)V

    .line 455
    return-void
.end method

.method public hideOpQuestion()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgQuestion:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 423
    return-void
.end method

.method public onArrivalClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 503
    const-string v1, "onArrivalClicked onClick"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showCloseTipImgInAnim()V

    .line 507
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;

    .line 508
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;
    if-eqz v0, :cond_0

    .line 509
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;->onFooterArrivalClicked()V

    .line 511
    :cond_0
    return-void
.end method

.method public onCloseClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 514
    const-string v1, "onCloseClicked onClick"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgClose:Landroid/view/View;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mCloseOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 518
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;

    .line 519
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;
    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;->onFooterCloseClicked()V

    .line 522
    :cond_0
    return-void
.end method

.method public onFoodClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 494
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->foodTip:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->foodTip:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setFootbarOldFoodTip(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;

    .line 497
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;
    if-eqz v0, :cond_0

    .line 498
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;->onFooterPayClicked()V

    .line 500
    :cond_0
    return-void
.end method

.method public onGameClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 484
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->gameTip:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->gameTip:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setFootbarOldGameTip(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;

    .line 487
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;
    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;->onFooterFoundClicked()V

    .line 490
    :cond_0
    return-void
.end method

.method public onHomeClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;

    .line 540
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;
    if-eqz v0, :cond_0

    .line 541
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;->onFooterHomeClicked()V

    .line 543
    :cond_0
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 143
    const v0, 0x7f03006f

    return v0
.end method

.method public onOpClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;

    .line 526
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;
    if-eqz v0, :cond_0

    .line 527
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;->onFooterOpClicked()V

    .line 529
    :cond_0
    return-void
.end method

.method public onOpShareCouponClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;

    .line 533
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;
    if-eqz v0, :cond_0

    .line 534
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;->onFooterOpClicked()V

    .line 536
    :cond_0
    return-void
.end method

.method public onQuestionClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;

    .line 547
    .local v0, l:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;
    if-eqz v0, :cond_0

    .line 548
    invoke-interface {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;->onFooterQuestionClicked()V

    .line 550
    :cond_0
    return-void
.end method

.method public setArrivalEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mArrivalEnable:Z

    .line 257
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgArrival:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 258
    return-void
.end method

.method public setBottomTipEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mBottomTipLayoutEnable:Z

    .line 303
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mBottomTipTxt:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 304
    return-void
.end method

.method public setCloseEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mCloseEnable:Z

    .line 267
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgClose:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 268
    return-void
.end method

.method public setFoodGame()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showFoodArea()V

    .line 200
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showGameArea()V

    .line 202
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    .line 203
    .local v2, pref:Lcom/didi/common/config/Preferences;
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getFootbarFoodIcon()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, icon:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getFootbarFoodTip()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, tip:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getFootbarOldFoodTip()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, oldTip:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getFootbarFoodTitle()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getFootbarFoodUrl()Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, url:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getShowFootBarFood()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showFoodArea()V

    .line 210
    iget-object v6, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->foodText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v6, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->foodIcon:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 212
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    :cond_0
    iget-object v6, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->foodTip:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :goto_0
    const-string v6, "carwait_food_show"

    const-string v7, "[pager_id=5][channel_id=301][show_id=1]"

    invoke-static {v6, v7}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_1
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getFootbarGameIcon()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getFootbarGameTip()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getFootbarOldGameTip()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getFootbarGameTitle()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getFootbarGameUrl()Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getShowFootBarGame()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 230
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showGameArea()V

    .line 231
    iget-object v6, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->gameText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v6, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->gameIcon:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 233
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 234
    :cond_1
    iget-object v6, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->gameTip:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    :goto_2
    const-string v6, "carwait_game_show"

    const-string v7, "[pager_id=5][channel_id=301][show_id=2]"

    invoke-static {v6, v7}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_3
    return-void

    .line 215
    :cond_2
    iget-object v6, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->foodTip:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v6, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->foodTip:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 220
    :cond_3
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hideFoodArea()V

    goto :goto_1

    .line 236
    :cond_4
    iget-object v6, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->gameTip:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v6, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->gameTip:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 241
    :cond_5
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->hideGameArea()V

    goto :goto_3
.end method

.method public setHomeEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mHomeEnable:Z

    .line 335
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgHome:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 336
    return-void
.end method

.method public setListener(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mListener:Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$FooterListener;

    .line 148
    return-void
.end method

.method public setOpEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpEnable:Z

    .line 277
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgOp:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 278
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgQuestion:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 281
    :cond_0
    return-void
.end method

.method public setOpShareCouponEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpShareCouponEnable:Z

    .line 290
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgShareTicketOp:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 291
    if-eqz p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgQuestion:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->setEnable(Landroid/view/View;Z)V

    .line 294
    :cond_0
    return-void
.end method

.method public setOpText(II)V
    .locals 1
    .parameter "texId"
    .parameter "imgId"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mTxtOp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 247
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mIconOp:Lx/ImageButton;

    invoke-virtual {v0, p2}, Lx/ImageButton;->setImageResource(I)V

    .line 248
    return-void
.end method

.method public showCloseTipImg()V
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mCloseEnable:Z

    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->gameArea:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->invisible(Landroid/view/View;)V

    .line 378
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgArrival:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->invisible(Landroid/view/View;)V

    .line 379
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showCloseTipImgInAnim()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayoutOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 387
    return-void
.end method

.method public showFoodArea()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 459
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->foodArea:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 460
    return-void
.end method

.method public showGameArea()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 450
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->gameArea:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 451
    return-void
.end method

.method public showHomeTip()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 479
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgHome:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 480
    return-void
.end method

.method public showMainTipImgs()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->gameArea:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgArrival:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->invisible(Landroid/view/View;)V

    .line 359
    return-void
.end method

.method public showMainTipImgsInAnim()V
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->showMainTipImgs()V

    .line 366
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 367
    return-void
.end method

.method public showOpHomeTips()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 415
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgOp:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 416
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgQuestion:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 417
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgHome:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 418
    return-void
.end method

.method public showOpShareCouponHomeTips()V
    .locals 2

    .prologue
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_share_voucher_op_show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mOpLayoutInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 472
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgShareTicketOp:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 473
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgQuestion:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 474
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mImgHome:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->show(Landroid/view/View;)V

    .line 475
    return-void
.end method

.method public updateBottomEventsTip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "content"

    .prologue
    .line 313
    invoke-static {p1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$4;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar$4;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalFooterBar;->mBottomTipTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    return-void
.end method
