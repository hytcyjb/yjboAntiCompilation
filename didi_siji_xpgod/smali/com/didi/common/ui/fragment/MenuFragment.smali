.class public Lcom/didi/common/ui/fragment/MenuFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "MenuFragment.java"


# static fields
.field private static MAX_REQ_COUNT:I

.field private static isLoadConfigMenu:Z

.field private static final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private foundLayout:Landroid/widget/RelativeLayout;

.field private foundSubMenuClickListener:Landroid/view/View$OnClickListener;

.field foundSubMenuTouchListener:Landroid/view/View$OnTouchListener;

.field private found_submenu_one_layout:Landroid/widget/RelativeLayout;

.field private found_submenu_two_layout:Landroid/widget/RelativeLayout;

.field private getCount:I

.field private getGameConfingCount:I

.field private imgBottom:Lx/ImageView;

.field imgClickListener:Landroid/view/View$OnClickListener;

.field private imgGame:Lx/ImageView;

.field private imgGameRedPoi:Landroid/widget/ImageView;

.field private imgInvite:Lx/ImageView;

.field private imgMessageRedPoi:Landroid/widget/ImageView;

.field private imgOrderIcon:Lx/ImageView;

.field private imgWallet:Lx/ImageView;

.field private imgviewBussiness:Lx/ImageView;

.field private infoListener:Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;

.field private isLocation:Z

.field private locationInterface:Lcom/didi/soso/location/LocationInterface;

.field private mAnimCompleteRunnable:Ljava/lang/Runnable;

.field private mGameLayout:Landroid/widget/RelativeLayout;

.field private mGameTitle:Landroid/widget/TextView;

.field private mLoginListener:Lcom/didi/common/listener/LoginListener;

.field private mMyOrderLayout:Landroid/widget/LinearLayout;

.field private mPhone:Landroid/widget/TextView;

.field private mRelativeInvite:Landroid/widget/RelativeLayout;

.field private mSettingLayout:Landroid/widget/RelativeLayout;

.field private mTxtGame:Landroid/widget/TextView;

.field private mTxtInvite:Landroid/widget/TextView;

.field private mViewInviteLine:Landroid/view/View;

.field private mWalletLayout:Landroid/widget/RelativeLayout;

.field private mallLayout:Landroid/widget/LinearLayout;

.field private messagelist_layout:Landroid/view/View;

.field private subMenuOneIcon:Lx/ImageView;

.field private subMenuTwoIcon:Lx/ImageView;

.field private tvFound:Landroid/widget/TextView;

.field private tvMenuOne:Landroid/widget/TextView;

.field private tvMenuTwo:Landroid/widget/TextView;

.field private userInfoListener:Landroid/view/View$OnClickListener;

.field private userView:Lcom/didi/common/ui/userinfo/UserInfoView;

.field private view:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/didi/common/ui/fragment/MenuFragment;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 198
    sput v1, Lcom/didi/common/ui/fragment/MenuFragment;->MAX_REQ_COUNT:I

    .line 1122
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/common/ui/fragment/MenuFragment;->isLoadConfigMenu:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 197
    iput v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->getCount:I

    .line 221
    iput v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->getGameConfingCount:I

    .line 600
    new-instance v0, Lcom/didi/common/ui/fragment/MenuFragment$11;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/MenuFragment$11;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->foundSubMenuTouchListener:Landroid/view/View$OnTouchListener;

    .line 654
    new-instance v0, Lcom/didi/common/ui/fragment/MenuFragment$12;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/MenuFragment$12;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->foundSubMenuClickListener:Landroid/view/View$OnClickListener;

    .line 717
    new-instance v0, Lcom/didi/common/ui/fragment/MenuFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/MenuFragment$13;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->userInfoListener:Landroid/view/View$OnClickListener;

    .line 760
    new-instance v0, Lcom/didi/common/ui/fragment/MenuFragment$15;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/MenuFragment$15;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->infoListener:Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;

    .line 860
    new-instance v0, Lcom/didi/common/ui/fragment/MenuFragment$17;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/MenuFragment$17;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mAnimCompleteRunnable:Ljava/lang/Runnable;

    .line 1028
    new-instance v0, Lcom/didi/common/ui/fragment/MenuFragment$21;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/MenuFragment$21;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mLoginListener:Lcom/didi/common/listener/LoginListener;

    .line 1071
    new-instance v0, Lcom/didi/common/ui/fragment/MenuFragment$22;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/MenuFragment$22;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgClickListener:Landroid/view/View$OnClickListener;

    .line 1213
    new-instance v0, Lcom/didi/common/ui/fragment/MenuFragment$24;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/MenuFragment$24;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->locationInterface:Lcom/didi/soso/location/LocationInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/fragment/MenuFragment;Lcom/didi/common/model/CommonBizConfig;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/MenuFragment;->saveMenuCommonBizConfig(Lcom/didi/common/model/CommonBizConfig;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->reloadMenuCommonBizConfig()V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/common/ui/fragment/MenuFragment;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/fragment/MenuFragment;->onTouchGameSubMenuStyle(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/common/ui/fragment/MenuFragment;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgviewBussiness:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/common/ui/fragment/MenuFragment;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgBottom:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->initUserView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->reloadGameConfing()V

    return-void
.end method

.method static synthetic access$1500(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->setGameLayout()V

    return-void
.end method

.method static synthetic access$1600(Lcom/didi/common/ui/fragment/MenuFragment;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgGame:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->loadActivityImg()V

    return-void
.end method

.method static synthetic access$1800(Lcom/didi/common/ui/fragment/MenuFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->isLocation:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/didi/common/ui/fragment/MenuFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->isLocation:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/didi/common/ui/fragment/MenuFragment;)Lcom/didi/soso/location/LocationInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->locationInterface:Lcom/didi/soso/location/LocationInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->setFoundMenuLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->getMenuCommonBizConfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->getGameConfig()V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->closeFragmentDelayed()V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/common/ui/fragment/MenuFragment;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgOrderIcon:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->setRedPoint()V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/common/ui/fragment/MenuFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgMessageRedPoi:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/didi/common/ui/fragment/MenuFragment;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/fragment/MenuFragment;->onTouchFoodSubMenuStyle(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private buildConfigView(Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .parameter "view"
    .parameter "iconUrl"
    .parameter "title"
    .parameter "url"
    .parameter "i"

    .prologue
    .line 1158
    const v8, 0x7f08045c

    invoke-virtual {p1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1159
    .local v3, list:Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1160
    .local v6, wrap:Landroid/widget/RelativeLayout;
    const v8, 0x7f02026e

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1161
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/16 v9, 0x78

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1162
    .local v7, wrapParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x32

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1163
    const/16 v8, 0x32

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1164
    const/16 v8, 0x11

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1165
    const/16 v8, 0x10

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1166
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1167
    new-instance v8, Lcom/didi/common/ui/fragment/MenuFragment$23;

    invoke-direct {v8, p0, p4}, Lcom/didi/common/ui/fragment/MenuFragment$23;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1179
    new-instance v0, Lx/ImageView;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v0, v8}, Lx/ImageView;-><init>(Landroid/content/Context;)V

    .line 1180
    .local v0, icon:Lx/ImageView;
    add-int/lit8 v8, p5, 0x1

    invoke-virtual {v0, v8}, Lx/ImageView;->setId(I)V

    .line 1181
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v8, 0x3c

    const/16 v9, 0x3c

    invoke-direct {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1182
    .local v1, iconParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1183
    const/16 v8, 0xf

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1184
    const/16 v8, 0x22

    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1185
    invoke-virtual {v0, v1}, Lx/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1186
    invoke-static {p2, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1188
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1189
    .local v4, text:Landroid/widget/TextView;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1190
    .local v5, textParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xf

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1191
    const/16 v8, 0x20

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1192
    const/4 v8, 0x1

    invoke-virtual {v0}, Lx/ImageView;->getId()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1193
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    const/4 v8, 0x0

    const/high16 v9, 0x4238

    invoke-virtual {v4, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1195
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1196
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1199
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1201
    iget-object v8, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mRelativeInvite:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1202
    .local v2, index:I
    invoke-static {v6}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 1203
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-le v8, v9, :cond_0

    .end local v2           #index:I
    :goto_0
    invoke-virtual {v3, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1204
    return-void

    .line 1203
    .restart local v2       #index:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private closeFragmentDelayed()V
    .locals 3

    .prologue
    .line 820
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mAnimCompleteRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 821
    return-void
.end method

.method private getActivityData()V
    .locals 1

    .prologue
    .line 1008
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 1010
    :cond_0
    new-instance v0, Lcom/didi/common/ui/fragment/MenuFragment$20;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/MenuFragment$20;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->doGetActivityInfo(Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private getGameConfig()V
    .locals 1

    .prologue
    .line 870
    new-instance v0, Lcom/didi/common/ui/fragment/MenuFragment$18;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/MenuFragment$18;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getGameConfig(Lcom/didi/common/net/ResponseListener;)V

    .line 931
    return-void
.end method

.method private getMenuCommonBizConfig()V
    .locals 1

    .prologue
    .line 165
    const-string v0, "--------------------bize---------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 167
    new-instance v0, Lcom/didi/common/ui/fragment/MenuFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/MenuFragment$1;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getMenuCommonBizConfig(Lcom/didi/common/net/ResponseListener;)V

    .line 194
    return-void
.end method

.method private getVirtualMobile()V
    .locals 1

    .prologue
    .line 832
    new-instance v0, Lcom/didi/common/ui/fragment/MenuFragment$16;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/MenuFragment$16;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getVirtualMobile(Lcom/didi/common/net/ResponseListener;)V

    .line 839
    return-void
.end method

.method private initFoundMenuAndListener(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 244
    const v0, 0x7f080476

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->tvFound:Landroid/widget/TextView;

    .line 245
    const v0, 0x7f080474

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->foundLayout:Landroid/widget/RelativeLayout;

    .line 246
    const v0, 0x7f08047a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->found_submenu_one_layout:Landroid/widget/RelativeLayout;

    .line 247
    const v0, 0x7f080477

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->found_submenu_two_layout:Landroid/widget/RelativeLayout;

    .line 250
    const v0, 0x7f08047b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->subMenuOneIcon:Lx/ImageView;

    .line 251
    const v0, 0x7f080478

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->subMenuTwoIcon:Lx/ImageView;

    .line 252
    const v0, 0x7f08047c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->tvMenuOne:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f080479

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->tvMenuTwo:Landroid/widget/TextView;

    .line 254
    return-void
.end method

.method private initUserView()V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->userView:Lcom/didi/common/ui/userinfo/UserInfoView;

    if-nez v0, :cond_0

    .line 811
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->userView:Lcom/didi/common/ui/userinfo/UserInfoView;

    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoView;->initView(Lcom/didi/common/ui/userinfo/UserInfo;)V

    .line 810
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->userView:Lcom/didi/common/ui/userinfo/UserInfoView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->userInfoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initViews(Landroid/widget/RelativeLayout;)V
    .locals 2
    .parameter "view"

    .prologue
    const v1, 0x7f080466

    .line 1093
    const v0, 0x7f08045d

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/userinfo/UserInfoView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->userView:Lcom/didi/common/ui/userinfo/UserInfoView;

    .line 1094
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->infoListener:Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;

    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->addListener(Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;)V

    .line 1095
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->initUserView()V

    .line 1096
    const v0, 0x7f08045e

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mMyOrderLayout:Landroid/widget/LinearLayout;

    .line 1097
    const v0, 0x7f08047d

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mSettingLayout:Landroid/widget/RelativeLayout;

    .line 1098
    const v0, 0x7f080462

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mWalletLayout:Landroid/widget/RelativeLayout;

    .line 1099
    const v0, 0x7f080470

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mRelativeInvite:Landroid/widget/RelativeLayout;

    .line 1100
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->messagelist_layout:Landroid/view/View;

    .line 1101
    const v0, 0x7f08046f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mallLayout:Landroid/widget/LinearLayout;

    .line 1102
    const v0, 0x7f080472

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mTxtInvite:Landroid/widget/TextView;

    .line 1103
    const v0, 0x7f080463

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgWallet:Lx/ImageView;

    .line 1104
    const v0, 0x7f080480

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgBottom:Lx/ImageView;

    .line 1105
    const v0, 0x7f080471

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgInvite:Lx/ImageView;

    .line 1106
    const v0, 0x7f08046a

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mGameLayout:Landroid/widget/RelativeLayout;

    .line 1108
    const v0, 0x7f08046e

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgGame:Lx/ImageView;

    .line 1109
    const v0, 0x7f08046d

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mGameTitle:Landroid/widget/TextView;

    .line 1110
    const v0, 0x7f080467

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgMessageRedPoi:Landroid/widget/ImageView;

    .line 1111
    const v0, 0x7f08046b

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgGameRedPoi:Landroid/widget/ImageView;

    .line 1112
    const v0, 0x7f08046c

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mTxtGame:Landroid/widget/TextView;

    .line 1113
    const v0, 0x7f08047f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgviewBussiness:Lx/ImageView;

    .line 1114
    const v0, 0x7f08045f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgOrderIcon:Lx/ImageView;

    .line 1115
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->messagelist_layout:Landroid/view/View;

    .line 1117
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->setRedPoint()V

    .line 1119
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/MenuFragment;->initFoundMenuAndListener(Landroid/view/View;)V

    .line 1120
    return-void
.end method

.method private loadActivityImg()V
    .locals 3

    .prologue
    .line 732
    sget-object v0, Lcom/didi/common/util/Constant;->actyData:Lcom/didi/common/model/ActivityData;

    iget-object v0, v0, Lcom/didi/common/model/ActivityData;->picUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivityData()V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    sget-object v0, Lcom/didi/common/util/Constant;->actyData:Lcom/didi/common/model/ActivityData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/common/util/Constant;->actyData:Lcom/didi/common/model/ActivityData;

    iget-object v0, v0, Lcom/didi/common/model/ActivityData;->picUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    sget-object v0, Lcom/didi/common/util/Constant;->actyData:Lcom/didi/common/model/ActivityData;

    iget-object v0, v0, Lcom/didi/common/model/ActivityData;->picUrl:Ljava/lang/String;

    new-instance v1, Lcom/didi/common/ui/fragment/MenuFragment$14;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/MenuFragment$14;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    invoke-static {}, Lutil/ImageUtil;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_0
.end method

.method private onTouchFoodSubMenuStyle(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 620
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 621
    .local v0, action:I
    if-nez v0, :cond_1

    .line 622
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->subMenuOneIcon:Lx/ImageView;

    const v2, 0x7f02026c

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    .line 623
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->tvMenuOne:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0039

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 624
    const v1, 0x7f02025a

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 626
    :cond_2
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->subMenuOneIcon:Lx/ImageView;

    const v2, 0x7f020258

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    .line 627
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->tvMenuOne:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0038

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 628
    const v1, 0x7f020259

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private onTouchGameSubMenuStyle(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 639
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 640
    .local v0, action:I
    if-nez v0, :cond_1

    .line 641
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->subMenuTwoIcon:Lx/ImageView;

    const v2, 0x7f02026d

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    .line 642
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->tvMenuTwo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0039

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 643
    const v1, 0x7f02025a

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 645
    :cond_2
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->subMenuTwoIcon:Lx/ImageView;

    const v2, 0x7f020272

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    .line 646
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->tvMenuTwo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0038

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 647
    const v1, 0x7f020259

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private reloadGameConfing()V
    .locals 5

    .prologue
    .line 224
    iget v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->getGameConfingCount:I

    sget v1, Lcom/didi/common/ui/fragment/MenuFragment;->MAX_REQ_COUNT:I

    if-le v0, v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 228
    :cond_0
    iget v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->getGameConfingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->getGameConfingCount:I

    .line 230
    sget-object v0, Lcom/didi/common/ui/fragment/MenuFragment;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/didi/common/ui/fragment/MenuFragment$3;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/MenuFragment$3;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private reloadMenuCommonBizConfig()V
    .locals 5

    .prologue
    .line 206
    iget v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->getCount:I

    sget v1, Lcom/didi/common/ui/fragment/MenuFragment;->MAX_REQ_COUNT:I

    if-le v0, v1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 210
    :cond_0
    iget v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->getCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->getCount:I

    .line 212
    sget-object v0, Lcom/didi/common/ui/fragment/MenuFragment;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/didi/common/ui/fragment/MenuFragment$2;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/MenuFragment$2;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private saveMenuCommonBizConfig(Lcom/didi/common/model/CommonBizConfig;)V
    .locals 4
    .parameter "conf"

    .prologue
    const/4 v1, 0x1

    .line 263
    if-eqz p1, :cond_0

    .line 264
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    .line 265
    .local v0, pref:Lcom/didi/common/config/Preferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------biz config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/didi/common/model/CommonBizConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " v:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getFoundConfigVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getFoundConfigVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/didi/common/model/CommonBizConfig;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    .end local v0           #pref:Lcom/didi/common/config/Preferences;
    :cond_0
    :goto_0
    return-void

    .line 272
    .restart local v0       #pref:Lcom/didi/common/config/Preferences;
    :cond_1
    iget-object v2, p1, Lcom/didi/common/model/CommonBizConfig;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setFoundConfigVersion(Ljava/lang/String;)V

    .line 275
    iget-object v2, p1, Lcom/didi/common/model/CommonBizConfig;->menuBizUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setFoundMenuH5Url(Ljava/lang/String;)V

    .line 276
    iget-object v2, p1, Lcom/didi/common/model/CommonBizConfig;->menuBizTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setFoundMenuTitle(Ljava/lang/String;)V

    .line 277
    iget-boolean v2, p1, Lcom/didi/common/model/CommonBizConfig;->isShowMenuBiz:Z

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setFoundMenuIsShow(Z)V

    .line 278
    iget-boolean v2, p1, Lcom/didi/common/model/CommonBizConfig;->isNewTaxiFind:Z

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setIsNewFoundUrl(Z)V

    .line 281
    iget-object v2, p1, Lcom/didi/common/model/CommonBizConfig;->menuBizFoodIcon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setMenuBizFoodIcon(Ljava/lang/String;)V

    .line 282
    iget-object v2, p1, Lcom/didi/common/model/CommonBizConfig;->menuBizFoodTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setMenuBizFoodTitle(Ljava/lang/String;)V

    .line 283
    iget-boolean v2, p1, Lcom/didi/common/model/CommonBizConfig;->isShowMenuBizFood:Z

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setShowMenuBizFood(Z)V

    .line 284
    iget-object v2, p1, Lcom/didi/common/model/CommonBizConfig;->menuBizFoodUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setMenuBizFoodUrl(Ljava/lang/String;)V

    .line 287
    iget-object v2, p1, Lcom/didi/common/model/CommonBizConfig;->menuBizGameIcon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setMenuBizGameIcon(Ljava/lang/String;)V

    .line 288
    iget-object v2, p1, Lcom/didi/common/model/CommonBizConfig;->menuBizGameTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setMenuBizGameTitle(Ljava/lang/String;)V

    .line 289
    iget-boolean v2, p1, Lcom/didi/common/model/CommonBizConfig;->isShowMenuBizGame:Z

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setShowMenuBizGame(Z)V

    .line 290
    iget-object v2, p1, Lcom/didi/common/model/CommonBizConfig;->menuBizGameUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setMenuBizGameUrl(Ljava/lang/String;)V

    .line 293
    iget-boolean v2, p1, Lcom/didi/common/model/CommonBizConfig;->isShowFootBarTaxi:Z

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setIsNewFound(Z)Z

    .line 294
    iget v2, p1, Lcom/didi/common/model/CommonBizConfig;->footbarTaxiType:I

    if-ne v2, v1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setBizShow4FootBar(Z)V

    .line 295
    iget v1, p1, Lcom/didi/common/model/CommonBizConfig;->footbarTaxiTipType:I

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setBizFootBarShowType(I)V

    .line 297
    iget-object v1, p1, Lcom/didi/common/model/CommonBizConfig;->footbarTaxiTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setBizFootBarShowTips(Ljava/lang/String;)V

    .line 298
    iget-object v1, p1, Lcom/didi/common/model/CommonBizConfig;->footbarTaxiTipIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setBizGameIcon(Ljava/lang/String;)V

    .line 299
    iget-object v1, p1, Lcom/didi/common/model/CommonBizConfig;->footbarTaxiUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setBizGameH5Url(Ljava/lang/String;)V

    .line 302
    iget-boolean v1, p1, Lcom/didi/common/model/CommonBizConfig;->isShowFootBarFood:Z

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->isShowFootBarFood(Z)V

    .line 303
    iget-object v1, p1, Lcom/didi/common/model/CommonBizConfig;->footbarFoodIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setFootbarFoodIcon(Ljava/lang/String;)V

    .line 304
    iget-object v1, p1, Lcom/didi/common/model/CommonBizConfig;->footbarFoodTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setFootbarFoodTip(Ljava/lang/String;)V

    .line 305
    iget-object v1, p1, Lcom/didi/common/model/CommonBizConfig;->footbarFoodTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setFootbarFoodTitle(Ljava/lang/String;)V

    .line 306
    iget-object v1, p1, Lcom/didi/common/model/CommonBizConfig;->footbarFoodUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setFootbarFoodUrl(Ljava/lang/String;)V

    .line 308
    iget-boolean v1, p1, Lcom/didi/common/model/CommonBizConfig;->isShowFootBarGame:Z

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->isShowFootBarGame(Z)V

    .line 309
    iget-object v1, p1, Lcom/didi/common/model/CommonBizConfig;->footbarGameIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setFootbarGameIcon(Ljava/lang/String;)V

    .line 310
    iget-object v1, p1, Lcom/didi/common/model/CommonBizConfig;->footbarGameTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setFootbarGameTip(Ljava/lang/String;)V

    .line 311
    iget-object v1, p1, Lcom/didi/common/model/CommonBizConfig;->footbarGameTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setFootbarGameTitle(Ljava/lang/String;)V

    .line 312
    iget-object v1, p1, Lcom/didi/common/model/CommonBizConfig;->footbarGameUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setFootbarGameUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setConfigView(Landroid/widget/RelativeLayout;)V
    .locals 10
    .parameter "view"

    .prologue
    .line 1125
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getPublicize()Ljava/lang/String;

    move-result-object v9

    .line 1126
    .local v9, publicize:Ljava/lang/String;
    invoke-static {v9}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/didi/common/ui/fragment/MenuFragment;->isLoadConfigMenu:Z

    if-eqz v0, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/common/ui/fragment/MenuFragment;->isLoadConfigMenu:Z

    .line 1133
    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    .local v7, ja:Lorg/json/JSONArray;
    if-eqz v7, :cond_0

    .line 1143
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 1144
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1145
    .local v8, object:Lorg/json/JSONObject;
    if-eqz v8, :cond_2

    const-string v0, "is_show"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1143
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1134
    .end local v5           #i:I
    .end local v7           #ja:Lorg/json/JSONArray;
    .end local v8           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 1135
    .local v6, e:Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1148
    .end local v6           #e:Lorg/json/JSONException;
    .restart local v5       #i:I
    .restart local v7       #ja:Lorg/json/JSONArray;
    .restart local v8       #object:Lorg/json/JSONObject;
    :cond_3
    const-string v0, "icon"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1149
    .local v2, icon:Ljava/lang/String;
    const-string v0, "title"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1150
    .local v3, title:Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, url:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    .line 1151
    invoke-direct/range {v0 .. v5}, Lcom/didi/common/ui/fragment/MenuFragment;->buildConfigView(Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private setFoundMenuDisplay(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 356
    if-eqz p1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->foundLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/fragment/MenuFragment;->show(Landroid/view/View;)V

    .line 361
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getFoundMenuTitle()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->tvFound:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    .end local v0           #title:Ljava/lang/String;
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->foundLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/fragment/MenuFragment;->hide(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setFoundMenuLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------biz config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getFoundConfigVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->isShowMenuBiz()Z

    move-result v0

    .line 323
    .local v0, foundMenuIsShow:Z
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->isShowMenuBizFood()Z

    move-result v1

    .line 324
    .local v1, found_submenu_one_isShow:Z
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->isShowMenuBizGame()Z

    move-result v2

    .line 327
    .local v2, found_submenu_two_isShow:Z
    if-nez v0, :cond_1

    .line 329
    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment;->foundLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcom/didi/common/ui/fragment/MenuFragment;->hide(Landroid/view/View;)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const-string v3, "menu_found_show"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "[pager_id=1][channel_id=201][show_id=1]"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 334
    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/MenuFragment;->setFoundMenuDisplay(Z)V

    .line 335
    invoke-direct {p0, v1}, Lcom/didi/common/ui/fragment/MenuFragment;->setFoundSubMenuOneDisplay(Z)V

    .line 336
    invoke-direct {p0, v2}, Lcom/didi/common/ui/fragment/MenuFragment;->setFoundSubMenuTwoDisplay(Z)V

    .line 339
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 340
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->setSubMenuOneLayout()V

    .line 342
    :cond_2
    if-eqz v1, :cond_3

    .line 343
    const-string v3, "menu_found_food_show"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "[pager_id=2][channel_id=202][show_id=2]"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 346
    :cond_3
    if-eqz v2, :cond_0

    .line 347
    const-string v3, "menu_found_game_show"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "[pager_id=2][channel_id=203][show_id=3]"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFoundSubMenuOneDisplay(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 375
    if-eqz p1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->found_submenu_one_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/fragment/MenuFragment;->show(Landroid/view/View;)V

    .line 380
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getMenuBizFoodTitle()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->tvMenuOne:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    .end local v0           #title:Ljava/lang/String;
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->found_submenu_one_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/fragment/MenuFragment;->invisible(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setFoundSubMenuTwoDisplay(Z)V
    .locals 2
    .parameter "isShow"

    .prologue
    .line 395
    if-eqz p1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->found_submenu_two_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/fragment/MenuFragment;->show(Landroid/view/View;)V

    .line 398
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getMenuBizGameTitle()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->tvMenuTwo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    .end local v0           #title:Ljava/lang/String;
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->found_submenu_two_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/fragment/MenuFragment;->invisible(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setGameLayout()V
    .locals 5

    .prologue
    .line 938
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->isMenuGameShow()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->isShowMenuBiz()Z

    move-result v2

    if-nez v2, :cond_2

    .line 939
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mGameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/didi/common/ui/fragment/MenuFragment;->show(Landroid/view/View;)V

    .line 940
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getGameMenuText()Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, gameMenuText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 942
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mTxtGame:Landroid/widget/TextView;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getGameMenuText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getMenuGameInfoShow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 945
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getMenuGameShowType()I

    move-result v1

    .line 946
    .local v1, menuGameShowType:I
    const-string v2, "---menuGameShowType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    packed-switch v1, :pswitch_data_0

    .line 979
    .end local v0           #gameMenuText:Ljava/lang/String;
    .end local v1           #menuGameShowType:I
    :goto_0
    return-void

    .line 949
    .restart local v0       #gameMenuText:Ljava/lang/String;
    .restart local v1       #menuGameShowType:I
    :pswitch_0
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mGameTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/didi/common/ui/fragment/MenuFragment;->show(Landroid/view/View;)V

    .line 950
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgGame:Lx/ImageView;

    invoke-virtual {p0, v2}, Lcom/didi/common/ui/fragment/MenuFragment;->hide(Landroid/view/View;)V

    .line 951
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mGameTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getGameTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 954
    :pswitch_1
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mGameTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/didi/common/ui/fragment/MenuFragment;->show(Landroid/view/View;)V

    .line 955
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgGame:Lx/ImageView;

    invoke-virtual {p0, v2}, Lcom/didi/common/ui/fragment/MenuFragment;->show(Landroid/view/View;)V

    .line 956
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mGameTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getGameTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getGameIcon()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/common/ui/fragment/MenuFragment$19;

    invoke-direct {v3, p0}, Lcom/didi/common/ui/fragment/MenuFragment$19;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    invoke-static {}, Lutil/ImageUtil;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_0

    .line 966
    :pswitch_2
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mGameTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/didi/common/ui/fragment/MenuFragment;->hide(Landroid/view/View;)V

    goto :goto_0

    .line 973
    .end local v1           #menuGameShowType:I
    :cond_1
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mGameTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/didi/common/ui/fragment/MenuFragment;->hide(Landroid/view/View;)V

    .line 974
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgGame:Lx/ImageView;

    invoke-virtual {p0, v2}, Lcom/didi/common/ui/fragment/MenuFragment;->hide(Landroid/view/View;)V

    goto :goto_0

    .line 977
    .end local v0           #gameMenuText:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mGameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/didi/common/ui/fragment/MenuFragment;->hide(Landroid/view/View;)V

    goto :goto_0

    .line 947
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setInviteFriendLayout()V
    .locals 6

    .prologue
    .line 777
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->isInviteSwitch()Z

    move-result v1

    .line 778
    .local v1, isInviteSwitch:Z
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getInviteSwitchUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 779
    .local v2, isShowInvite:Z
    :goto_0
    const-string v3, "menu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isinviteswitch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  isSwhoInvite:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    if-eqz v2, :cond_2

    .line 781
    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mRelativeInvite:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcom/didi/common/ui/fragment/MenuFragment;->show(Landroid/view/View;)V

    .line 782
    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mViewInviteLine:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/didi/common/ui/fragment/MenuFragment;->show(Landroid/view/View;)V

    .line 784
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getInviteSwitchTitle()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, inviteSwitchTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 788
    :cond_0
    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mTxtInvite:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    .end local v0           #inviteSwitchTitle:Ljava/lang/String;
    :goto_1
    return-void

    .line 778
    .end local v2           #isShowInvite:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 790
    .restart local v2       #isShowInvite:Z
    :cond_2
    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mRelativeInvite:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcom/didi/common/ui/fragment/MenuFragment;->hide(Landroid/view/View;)V

    .line 791
    iget-object v3, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mViewInviteLine:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/didi/common/ui/fragment/MenuFragment;->hide(Landroid/view/View;)V

    goto :goto_1
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgviewBussiness:Lx/ImageView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mMyOrderLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/didi/common/ui/fragment/MenuFragment$4;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/MenuFragment$4;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mWalletLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/didi/common/ui/fragment/MenuFragment$5;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/MenuFragment$5;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mRelativeInvite:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/didi/common/ui/fragment/MenuFragment$6;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/MenuFragment$6;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mallLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/didi/common/ui/fragment/MenuFragment$7;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/MenuFragment$7;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mSettingLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/didi/common/ui/fragment/MenuFragment$8;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/MenuFragment$8;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->messagelist_layout:Landroid/view/View;

    new-instance v1, Lcom/didi/common/ui/fragment/MenuFragment$9;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/MenuFragment$9;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mGameLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/didi/common/ui/fragment/MenuFragment$10;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/MenuFragment$10;-><init>(Lcom/didi/common/ui/fragment/MenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->foundLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->foundSubMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->found_submenu_one_layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->foundSubMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->found_submenu_two_layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->foundSubMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->found_submenu_one_layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->foundSubMenuTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 594
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->found_submenu_two_layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->foundSubMenuTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 595
    return-void
.end method

.method private setMallLayout()V
    .locals 1

    .prologue
    .line 753
    invoke-static {}, Lcom/didi/common/util/Utils;->isShowMall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/MenuFragment;->show(Landroid/view/View;)V

    .line 758
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/MenuFragment;->hide(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setNoticationMessage()V
    .locals 3

    .prologue
    .line 796
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isNoticationMessage()Z

    move-result v0

    .line 797
    .local v0, notify_center_is_open:Z
    if-eqz v0, :cond_0

    .line 798
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->messagelist_layout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 804
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->messagelist_layout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRedPoint()V
    .locals 4

    .prologue
    .line 1044
    invoke-static {}, Lcom/didi/common/helper/VoucherHelper;->getVoucherRedPointFromNative()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgWallet:Lx/ImageView;

    const v2, 0x7f020268

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    .line 1050
    :goto_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isInviteRedPoint()Z

    move-result v0

    .line 1051
    .local v0, isShowRedPoi:Z
    const-string v1, "menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowInviteRed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    if-eqz v0, :cond_1

    .line 1053
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgInvite:Lx/ImageView;

    const v2, 0x7f020260

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    .line 1058
    :goto_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getMessageHasNew()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1059
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgMessageRedPoi:Landroid/widget/ImageView;

    const v2, 0x7f020263

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1063
    :goto_2
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isMenuGameRedPoint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1064
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgGameRedPoi:Landroid/widget/ImageView;

    const v2, 0x7f02025d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1068
    :goto_3
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->checkIMUnread()V

    .line 1069
    return-void

    .line 1047
    .end local v0           #isShowRedPoi:Z
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgWallet:Lx/ImageView;

    const v2, 0x7f020267

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1055
    .restart local v0       #isShowRedPoi:Z
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgInvite:Lx/ImageView;

    const v2, 0x7f02025f

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1061
    :cond_2
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgMessageRedPoi:Landroid/widget/ImageView;

    const v2, 0x7f020262

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1066
    :cond_3
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgGameRedPoi:Landroid/widget/ImageView;

    const v2, 0x7f02025c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method private setSubMenuOneLayout()V
    .locals 2

    .prologue
    .line 436
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->found_submenu_one_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 437
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 438
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->found_submenu_one_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    return-void
.end method


# virtual methods
.method public checkIMUnread()V
    .locals 3

    .prologue
    .line 998
    :try_start_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getIMUnreadFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->imgOrderIcon:Lx/ImageView;

    const v2, 0x7f020265

    invoke-virtual {v1, v2}, Lx/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 135
    const-string v0, "leftMenuShownCreat="

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 136
    const v0, 0x7f0300d0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->view:Landroid/widget/RelativeLayout;

    .line 137
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->view:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/MenuFragment;->initViews(Landroid/widget/RelativeLayout;)V

    .line 157
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->locationInterface:Lcom/didi/soso/location/LocationInterface;

    invoke-static {v0}, Lcom/didi/soso/location/ListenerCollection;->addLocationLister(Lcom/didi/soso/location/LocationInterface;)V

    .line 158
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->view:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->infoListener:Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;

    invoke-static {v0}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->removeListener(Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;)V

    .line 1209
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 1210
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 843
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 844
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mLoginListener:Lcom/didi/common/listener/LoginListener;

    invoke-static {v0}, Lcom/didi/common/listener/ListenerHub;->removeLoginListener(Lcom/didi/common/listener/LoginListener;)V

    .line 845
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 825
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 826
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mLoginListener:Lcom/didi/common/listener/LoginListener;

    invoke-static {v0}, Lcom/didi/common/listener/ListenerHub;->addLoginListener(Lcom/didi/common/listener/LoginListener;)V

    .line 827
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/MenuFragment;->updatePhone([Ljava/lang/String;)V

    .line 828
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->getVirtualMobile()V

    .line 829
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 849
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStop()V

    .line 850
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 815
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 816
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 817
    return-void
.end method

.method public resetViews()V
    .locals 1

    .prologue
    .line 983
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->setGameLayout()V

    .line 985
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->setFoundMenuLayout()V

    .line 986
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->setMallLayout()V

    .line 987
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->setInviteFriendLayout()V

    .line 988
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->loadActivityImg()V

    .line 989
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->setListeners()V

    .line 990
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->setRedPoint()V

    .line 991
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/MenuFragment;->setNoticationMessage()V

    .line 992
    iget-object v0, p0, Lcom/didi/common/ui/fragment/MenuFragment;->view:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/MenuFragment;->setConfigView(Landroid/widget/RelativeLayout;)V

    .line 994
    return-void
.end method

.method public varargs updatePhone([Ljava/lang/String;)V
    .locals 2
    .parameter "strings"

    .prologue
    .line 853
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mPhone:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 857
    :goto_0
    return-void

    .line 855
    :cond_0
    invoke-static {p1}, Lcom/didi/common/util/CollectionUtil;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, phone:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/didi/common/ui/fragment/MenuFragment;->mPhone:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 855
    .end local v0           #phone:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    aget-object v0, p1, v1

    goto :goto_1
.end method
