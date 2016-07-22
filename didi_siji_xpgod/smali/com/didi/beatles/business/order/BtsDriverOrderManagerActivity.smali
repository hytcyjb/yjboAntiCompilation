.class public Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsDriverOrderManagerActivity.java"

# interfaces
.implements Lcom/didi/beatles/business/order/BtsFragmentUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;,
        Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;,
        Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;
    }
.end annotation


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private mCurrentIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

.field private mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;

.field mHandler:Landroid/os/Handler;

.field private mIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

.field mOrderTaskListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;

.field private mPageStateListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;

.field mPager:Landroid/support/v4/view/ViewPager;

.field mTabLongClickListener:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;

.field mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

.field mTabs:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

.field mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

.field mTitles:[I

.field private rightListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 45
    sget-object v0, Lcom/didi/beatles/business/order/BtsTabIndex;->PENGING_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;-><init>(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$1;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mPageStateListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;

    .line 131
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$1;-><init>(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->rightListener:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$2;-><init>(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 218
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$3;-><init>(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabLongClickListener:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;

    .line 229
    new-instance v0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$4;-><init>(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mOrderTaskListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$OrderTaskListener;

    .line 360
    return-void
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)Lcom/didi/beatles/business/order/BtsTabIndex;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mCurrentIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;Lcom/didi/beatles/business/order/BtsTabIndex;)Lcom/didi/beatles/business/order/BtsTabIndex;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mCurrentIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->updateTaskIcon(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;)[Lcom/didi/beatles/business/order/BtsBaseFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;

    return-object v0
.end method

.method private initDriverTask()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 80
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/beatles/model/BtsConfig;->driver_task:Lcom/didi/beatles/model/BtsConfig$DriverTask;

    iget-boolean v1, v1, Lcom/didi/beatles/model/BtsConfig$DriverTask;->is_task:Z

    if-eqz v1, :cond_0

    .line 81
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 82
    .local v0, tabTitle:[I
    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTitles:[I

    .line 83
    new-array v1, v3, [Lcom/didi/beatles/business/order/BtsTabModel;

    iput-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    .line 84
    new-array v1, v3, [Lcom/didi/beatles/business/order/BtsBaseFragment;

    iput-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;

    .line 91
    :goto_0
    return-void

    .line 86
    .end local v0           #tabTitle:[I
    :cond_0
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    .line 87
    .restart local v0       #tabTitle:[I
    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTitles:[I

    .line 88
    new-array v1, v2, [Lcom/didi/beatles/business/order/BtsTabModel;

    iput-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    .line 89
    new-array v1, v2, [Lcom/didi/beatles/business/order/BtsBaseFragment;

    iput-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;

    goto :goto_0

    .line 81
    :array_0
    .array-data 0x4
        0xb1t 0x0t 0xbt 0x7ft
        0xb2t 0x0t 0xbt 0x7ft
        0xb3t 0x0t 0xbt 0x7ft
        0xb4t 0x0t 0xbt 0x7ft
    .end array-data

    .line 86
    :array_1
    .array-data 0x4
        0xb1t 0x0t 0xbt 0x7ft
        0xb2t 0x0t 0xbt 0x7ft
        0xb3t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method private initTabTitle()V
    .locals 5

    .prologue
    .line 246
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 247
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 248
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    new-instance v3, Lcom/didi/beatles/business/order/BtsTabModel;

    invoke-direct {v3}, Lcom/didi/beatles/business/order/BtsTabModel;-><init>()V

    aput-object v3, v2, v0

    .line 249
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTitles:[I

    aget v3, v3, v0

    iput v3, v2, Lcom/didi/beatles/business/order/BtsTabModel;->tabTitile:I

    .line 250
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v2, v2, v0

    const v3, 0x7f030041

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/beatles/business/order/BtsTabModel;->view:Landroid/view/View;

    .line 252
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v3, v2, v0

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/didi/beatles/business/order/BtsTabModel;->view:Landroid/view/View;

    const v4, 0x7f08019e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/didi/beatles/business/order/BtsTabModel;->title:Landroid/widget/TextView;

    .line 253
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/didi/beatles/business/order/BtsTabModel;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/didi/beatles/business/order/BtsTabModel;->tabTitile:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v3, v2, v0

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/didi/beatles/business/order/BtsTabModel;->view:Landroid/view/View;

    const v4, 0x7f08019f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/didi/beatles/business/order/BtsTabModel;->red_point:Landroid/widget/ImageView;

    .line 256
    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/didi/beatles/business/order/BtsTabModel;->red_point:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->initTabTitle()V

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->updateTaskIcon(Z)V

    .line 167
    const v0, 0x7f0800f1

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 168
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 169
    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabs:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    .line 170
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;

    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    invoke-direct {v1, p0, v2, v3}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$MyAdapter;-><init>(Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;Landroid/support/v4/app/FragmentManager;[Lcom/didi/beatles/business/order/BtsTabModel;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 171
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabs:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 172
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabs:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mPageStateListener:Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity$PageStateListener;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabs:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-virtual {v1}, Lcom/didi/beatles/business/order/BtsTabIndex;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->selectCurrentTab(I)V

    .line 174
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabs:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;

    iget-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabLongClickListener:Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip;->setOnTabFastDoubleClickListener(Lcom/didi/beatles/business/order/BtsPagerSlidingTabStrip$TabFastDoubleClickListener;)V

    .line 175
    return-void
.end method

.method private parseIntent()V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 154
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v2, "index"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/business/order/BtsTabIndex;

    .line 159
    .local v1, tmp:Lcom/didi/beatles/business/order/BtsTabIndex;
    if-eqz v1, :cond_0

    .line 160
    iput-object v1, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

    goto :goto_0
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 122
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 124
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 126
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b0091

    iget-object v2, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->rightListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-static {v0}, Lcom/didi/common/util/ViewUtil;->show(Landroid/view/View;)V

    .line 129
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Lcom/didi/beatles/business/order/BtsTabIndex;)V
    .locals 3
    .parameter "activity"
    .parameter "index"

    .prologue
    .line 56
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "index"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    const/16 v2, 0x68

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateTaskIcon(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x3

    .line 347
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    array-length v0, v0

    if-le v0, v1, :cond_0

    .line 348
    if-eqz p1, :cond_2

    .line 349
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isOpenDriverTask()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsTabModel;->red_point:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsTabModel;->red_point:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsTabModel;->red_point:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public newOrderPushEvent(Lcom/didi/beatles/push/model/BtsPushNewOrder;)V
    .locals 5
    .parameter "btsPushNewOrder"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "new_order_push"
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget v0, p1, Lcom/didi/beatles/push/model/BtsPushNewOrder;->orderListType:I

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onAutoRefresh()V

    .line 100
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mCurrentIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->NEARBY_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    if-eq v0, v1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsTabModel;->red_point:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    :cond_2
    iget v0, p1, Lcom/didi/beatles/push/model/BtsPushNewOrder;->orderListType:I

    if-ne v0, v2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mFragments:[Lcom/didi/beatles/business/order/BtsBaseFragment;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/didi/beatles/business/order/BtsBaseFragment;->onAutoRefresh()V

    .line 107
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mCurrentIndex:Lcom/didi/beatles/business/order/BtsTabIndex;

    sget-object v1, Lcom/didi/beatles/business/order/BtsTabIndex;->MATCH_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    if-eq v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->mTabModle:[Lcom/didi/beatles/business/order/BtsTabModel;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/didi/beatles/business/order/BtsTabModel;->red_point:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->setContentView(I)V

    .line 70
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->parseIntent()V

    .line 71
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->initDriverTask()V

    .line 72
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->setTitlebar()V

    .line 73
    invoke-direct {p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->initView()V

    .line 74
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 75
    const-string v0, "pbdxmgrorder02_sw"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onDestroy()V

    .line 118
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public onEvent(Lcom/didi/beatles/model/event/BtsStriveOrderEvent;)V
    .locals 1
    .parameter "event"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "BTS_STRIVE_ORDER_SUCCESS_EVENT"
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 315
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onResume()V

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpdate(Lcom/didi/beatles/business/order/BtsTabIndex;)V
    .locals 1
    .parameter "index"

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    :cond_0
    return-void
.end method
