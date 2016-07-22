.class public Lcom/didi/common/ui/fragment/ShareFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "ShareFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;
    }
.end annotation


# static fields
.field public static final CONTACT_INVITED:I = 0x1

.field public static final CONTACT_UNINVITE:I = 0x0

.field public static final INVITED_BY_MYSELF_CODE:I = 0x3eb

.field public static final MSG_TYPE_NET_FAILED:I = -0x1

.field private static final SITE_SINA:I = 0x0

.field private static final SITE_TENCENT:I = 0x1

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private isFirst:Z

.field private isInviting:Z

.field private isLoadTaskRunning:Z

.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mBindBtn:Landroid/widget/TextView;

.field private mBindListener:Landroid/view/View$OnClickListener;

.field private mBindTip:Landroid/widget/TextView;

.field private mBindView:Landroid/view/View;

.field private mCheckChanger:Lcom/didi/common/ui/component/TabGroup$OnCheckedChangeListener;

.field private mContactAdapter:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;

.field private mContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/didi/common/database/OrderListHelper;

.field private mList:Landroid/widget/ListView;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mPlatformActionListener:Lcn/sharesdk/framework/PlatformActionListener;

.field private mProgress:Lcom/didi/common/ui/component/MyProgressBar;

.field private mRightButtonListenser:Landroid/view/View$OnClickListener;

.field private mSNSConfig:Lcom/didi/common/model/SNSConfig;

.field private mShareAdapter:Lcom/didi/common/ui/fragment/ShareListAdapter;

.field private mSinaData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/ui/fragment/ShareFragment$ShareListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTabGroup:Lcom/didi/common/ui/component/TabGroup;

.field private mToInviteSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;"
        }
    .end annotation
.end field

.field shareFriends:Lcom/didi/common/ui/component/Share$ShareFriends;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/didi/common/ui/fragment/ShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/common/ui/fragment/ShareFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mSinaData:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mHandler:Landroid/os/Handler;

    .line 182
    new-instance v0, Lcom/didi/common/ui/fragment/ShareFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/ShareFragment$1;-><init>(Lcom/didi/common/ui/fragment/ShareFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mBackListener:Landroid/view/View$OnClickListener;

    .line 191
    new-instance v0, Lcom/didi/common/ui/fragment/ShareFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/ShareFragment$2;-><init>(Lcom/didi/common/ui/fragment/ShareFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mRightButtonListenser:Landroid/view/View$OnClickListener;

    .line 226
    new-instance v0, Lcom/didi/common/ui/fragment/ShareFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/ShareFragment$3;-><init>(Lcom/didi/common/ui/fragment/ShareFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 265
    new-instance v0, Lcom/didi/common/ui/fragment/ShareFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/ShareFragment$4;-><init>(Lcom/didi/common/ui/fragment/ShareFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mCheckChanger:Lcom/didi/common/ui/component/TabGroup$OnCheckedChangeListener;

    .line 324
    new-instance v0, Lcom/didi/common/ui/fragment/ShareFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/ShareFragment$5;-><init>(Lcom/didi/common/ui/fragment/ShareFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mBindListener:Landroid/view/View$OnClickListener;

    .line 360
    new-instance v0, Lcom/didi/common/ui/fragment/ShareFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/ShareFragment$6;-><init>(Lcom/didi/common/ui/fragment/ShareFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->shareFriends:Lcom/didi/common/ui/component/Share$ShareFriends;

    .line 443
    new-instance v0, Lcom/didi/common/ui/fragment/ShareFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/ShareFragment$7;-><init>(Lcom/didi/common/ui/fragment/ShareFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mPlatformActionListener:Lcn/sharesdk/framework/PlatformActionListener;

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->isLoadTaskRunning:Z

    .line 599
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/fragment/ShareFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/ShareFragment;->back()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/fragment/ShareFragment;)Lcom/didi/common/ui/component/TabGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mTabGroup:Lcom/didi/common/ui/component/TabGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mBindTip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/common/ui/fragment/ShareFragment;)Lcom/didi/common/ui/fragment/ShareListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mShareAdapter:Lcom/didi/common/ui/fragment/ShareListAdapter;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/didi/common/ui/fragment/ShareFragment;Lcom/didi/common/ui/fragment/ShareListAdapter;)Lcom/didi/common/ui/fragment/ShareListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mShareAdapter:Lcom/didi/common/ui/fragment/ShareListAdapter;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/didi/common/ui/fragment/ShareFragment;)Lcom/didi/common/ui/component/MyProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mProgress:Lcom/didi/common/ui/component/MyProgressBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/didi/common/ui/fragment/ShareFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/ShareFragment;->getTencentWeiboFriends()V

    return-void
.end method

.method static synthetic access$1500(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/didi/common/ui/fragment/ShareFragment;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/ShareFragment;->send(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/ui/fragment/ShareFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/ShareFragment;->invite(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/common/ui/fragment/ShareFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->isFirst:Z

    return v0
.end method

.method static synthetic access$302(Lcom/didi/common/ui/fragment/ShareFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/didi/common/ui/fragment/ShareFragment;->isFirst:Z

    return p1
.end method

.method static synthetic access$400(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mRightButtonListenser:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/common/ui/fragment/ShareFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mSinaData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/common/ui/fragment/ShareFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/ShareFragment;->getSinaWeiboFriends()V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mBindView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/didi/common/ui/fragment/ShareFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mBindBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method private back()V
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->backToPreFragment()V

    .line 169
    return-void
.end method

.method private getFriendString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mShareAdapter:Lcom/didi/common/ui/fragment/ShareListAdapter;

    if-nez v0, :cond_0

    .line 519
    const/4 v0, 0x0

    .line 520
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mShareAdapter:Lcom/didi/common/ui/fragment/ShareListAdapter;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/ShareListAdapter;->getAtString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSinaWeiboFriends()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 428
    new-instance v0, Lcn/sharesdk/sina/weibo/SinaWeibo;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;-><init>(Landroid/content/Context;)V

    .line 429
    .local v0, weibo:Lcn/sharesdk/sina/weibo/SinaWeibo;
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mPlatformActionListener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/sina/weibo/SinaWeibo;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 430
    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcn/sharesdk/sina/weibo/SinaWeibo;->listFriend(IILjava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mBindView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mProgress:Lcom/didi/common/ui/component/MyProgressBar;

    invoke-virtual {v1, v3}, Lcom/didi/common/ui/component/MyProgressBar;->setVisibility(I)V

    .line 433
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 434
    return-void
.end method

.method private getTencentWeiboFriends()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 438
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mBindView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mProgress:Lcom/didi/common/ui/component/MyProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/MyProgressBar;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 441
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 124
    const v0, 0x7f08054d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 125
    const v0, 0x7f08054e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/TabGroup;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mTabGroup:Lcom/didi/common/ui/component/TabGroup;

    .line 126
    const v0, 0x7f080552

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mList:Landroid/widget/ListView;

    .line 127
    const v0, 0x7f080553

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mBindView:Landroid/view/View;

    .line 128
    const v0, 0x7f080554

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mBindTip:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f080555

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mBindBtn:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f080556

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/MyProgressBar;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mProgress:Lcom/didi/common/ui/component/MyProgressBar;

    .line 131
    const v0, 0x7f080557

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mEmptyView:Landroid/widget/TextView;

    .line 132
    return-void
.end method

.method private invite(I)V
    .locals 3
    .parameter "site"

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/ShareFragment;->getFriendString()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, friendString:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    const v1, 0x7f0b03a3

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    .line 533
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/didi/common/ui/fragment/ShareFragment;->isInviting:Z

    .line 543
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mSNSConfig:Lcom/didi/common/model/SNSConfig;

    new-instance v2, Lcom/didi/common/ui/fragment/ShareFragment$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/didi/common/ui/fragment/ShareFragment$8;-><init>(Lcom/didi/common/ui/fragment/ShareFragment;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/didi/common/model/SNSConfig;->getBitmap(Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V

    goto :goto_0
.end method

.method private loadShareConfig()V
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lcom/didi/common/util/Utils;->getShareConfig()Lcom/didi/common/model/SNSConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mSNSConfig:Lcom/didi/common/model/SNSConfig;

    .line 147
    return-void
.end method

.method private onRecommend(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->isInviting:Z

    .line 253
    if-eqz p1, :cond_0

    .line 254
    const v0, 0x7f0b03a5

    invoke-virtual {p1, v0}, Lcom/didi/common/model/BaseObject;->replaceEmptyErrorMessage(I)V

    .line 255
    :cond_0
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    :cond_1
    :goto_0
    return-void

    .line 257
    :cond_2
    const v0, 0x7f0b03a7

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    .line 258
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mHelper:Lcom/didi/common/database/OrderListHelper;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mToInviteSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/didi/common/database/OrderListHelper;->insertContactInvite(Ljava/util/HashSet;)J

    .line 259
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mToInviteSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 260
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mContactAdapter:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mContactAdapter:Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;

    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonContactInviteAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private send(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 7
    .parameter "friendString"
    .parameter "bitmap"
    .parameter "site"

    .prologue
    const/4 v6, 0x1

    .line 556
    iget-object v3, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mSNSConfig:Lcom/didi/common/model/SNSConfig;

    iget-object v0, v3, Lcom/didi/common/model/SNSConfig;->detail:Ljava/lang/String;

    .line 557
    .local v0, configString:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, content:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 559
    const v3, 0x7f0b0535

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/didi/common/ui/fragment/ShareFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 560
    :cond_0
    if-nez p2, :cond_1

    .line 561
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 562
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v3

    const v4, 0x7f05001b

    invoke-static {v3, v4}, Lcom/didi/common/util/ImageUtil;->createBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 567
    :cond_1
    :goto_0
    if-nez p3, :cond_5

    .line 568
    new-instance v2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v3, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v3}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 569
    .local v2, model:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    iput-object v1, v2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 570
    iput-object p2, v2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 571
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mPlatformActionListener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {v3, v2, v4}, Lcn/sharesdk/onekeyshare/ShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 578
    .end local v2           #model:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    :cond_2
    :goto_1
    return-void

    .line 563
    :cond_3
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    :cond_4
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v3

    const v4, 0x7f050004

    invoke-static {v3, v4}, Lcom/didi/common/util/ImageUtil;->createBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 572
    :cond_5
    if-ne p3, v6, :cond_2

    .line 573
    new-instance v2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v3, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v3}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 574
    .restart local v2       #model:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    iput-object v0, v2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 575
    iput-object p2, v2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 576
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mPlatformActionListener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-static {v3, v2, v4}, Lcn/sharesdk/onekeyshare/ShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_1
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 136
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 137
    const v1, 0x7f0b050a

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 138
    const v1, 0x7f0b03a2

    iget-object v2, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mRightButtonListenser:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 139
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 140
    return-void
.end method

.method private setupListeners()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mTabGroup:Lcom/didi/common/ui/component/TabGroup;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mCheckChanger:Lcom/didi/common/ui/component/TabGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/TabGroup;->setOnCheckedChangeListener(Lcom/didi/common/ui/component/TabGroup$OnCheckedChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mBindBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mBindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 175
    return-void
.end method

.method private setupModels()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 179
    invoke-static {}, Lcom/didi/common/database/OrderListHelper;->getInstance()Lcom/didi/common/database/OrderListHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->mHelper:Lcom/didi/common/database/OrderListHelper;

    .line 180
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/ShareFragment;->back()V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 113
    const v1, 0x7f0300f2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, v:Landroid/view/View;
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/ShareFragment;->setTitleBar()V

    .line 115
    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/ShareFragment;->initViews(Landroid/view/View;)V

    .line 116
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/ShareFragment;->setupListeners()V

    .line 117
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/ShareFragment;->setupModels()V

    .line 119
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/ShareFragment;->loadShareConfig()V

    .line 120
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 621
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 622
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->isFirst:Z

    .line 153
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStop()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/ShareFragment;->isFirst:Z

    .line 159
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 615
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 616
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 617
    return-void
.end method
