.class public Lcom/didi/car/ui/component/ShareTicketView;
.super Landroid/widget/LinearLayout;
.source "ShareTicketView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mCircle:Lcom/didi/common/ui/component/PayShareItemView;

.field private mFriend:Lcom/didi/common/ui/component/PayShareItemView;

.field private mListener:Lcom/didi/taxi/ui/component/RedView$RedListener;

.field private mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

.field private mWXDraw:Landroid/graphics/drawable/Drawable;

.field private mWXFriendDraw:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0}, Lcom/didi/car/ui/component/ShareTicketView;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0}, Lcom/didi/car/ui/component/ShareTicketView;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0}, Lcom/didi/car/ui/component/ShareTicketView;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/didi/car/ui/component/ShareTicketView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mWXDraw:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$102(Lcom/didi/car/ui/component/ShareTicketView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mWXFriendDraw:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private getWXFriendImage(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarShareTicket getWXFriendImage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarShareTicket getWXFriendImage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/didi/car/ui/component/ShareTicketView$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/ShareTicketView$2;-><init>(Lcom/didi/car/ui/component/ShareTicketView;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 130
    return-void
.end method

.method private getWXImage(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarShareTicket getWXImage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarShareTicket getWXImage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/didi/car/ui/component/ShareTicketView$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/ShareTicketView$1;-><init>(Lcom/didi/car/ui/component/ShareTicketView;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 113
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 84
    invoke-virtual {p0}, Lcom/didi/car/ui/component/ShareTicketView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300f4

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, view:Landroid/view/View;
    const v1, 0x7f07003a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 86
    const v1, 0x7f08055c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/PayShareItemView;

    iput-object v1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mFriend:Lcom/didi/common/ui/component/PayShareItemView;

    .line 87
    iget-object v1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mFriend:Lcom/didi/common/ui/component/PayShareItemView;

    const v2, 0x7f0202db

    invoke-virtual {p0}, Lcom/didi/car/ui/component/ShareTicketView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b050e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/PayShareItemView;->setInfo(ILjava/lang/String;)V

    .line 88
    const v1, 0x7f08055b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/PayShareItemView;

    iput-object v1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mCircle:Lcom/didi/common/ui/component/PayShareItemView;

    .line 89
    iget-object v1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mCircle:Lcom/didi/common/ui/component/PayShareItemView;

    const v2, 0x7f0202dd

    invoke-virtual {p0}, Lcom/didi/car/ui/component/ShareTicketView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b050d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/PayShareItemView;->setInfo(ILjava/lang/String;)V

    .line 90
    const v1, 0x7f080560

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const v1, 0x7f08055d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mFriend:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v1, p0}, Lcom/didi/common/ui/component/PayShareItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mCircle:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v1, p0}, Lcom/didi/common/ui/component/PayShareItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f080561

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method private sendTicketWx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "to"
    .parameter "title"
    .parameter "content"
    .parameter "url"
    .parameter "drawable"

    .prologue
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarShareTicket sendTicketWx to :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " drawble:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarShareTicket sendTicketWx to :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " drawble:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 139
    if-nez p5, :cond_0

    .line 140
    const v2, 0x7f0202a4

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 143
    :cond_0
    check-cast p5, Landroid/graphics/drawable/BitmapDrawable;

    .end local p5
    invoke-virtual {p5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 145
    .local v1, oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    if-nez p1, :cond_3

    .line 146
    new-instance v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .end local v1           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    sget-object v2, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v2}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 150
    .restart local v1       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 151
    iput-object p2, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 152
    iput-object p3, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 153
    iput-object v0, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 154
    iput-object p4, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/didi/car/ui/component/ShareTicketView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/didi/common/util/DiDiShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 158
    :cond_2
    return-void

    .line 147
    :cond_3
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 148
    new-instance v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    .end local v1           #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    sget-object v2, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-static {v2}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .restart local v1       #oneKeyShareModel:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarShareTicket onClick mShareCouponInfo :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mListener:Lcom/didi/taxi/ui/component/RedView$RedListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarShareTicket onClick mShareCouponInfo :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mListener:Lcom/didi/taxi/ui/component/RedView$RedListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mListener:Lcom/didi/taxi/ui/component/RedView$RedListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mListener:Lcom/didi/taxi/ui/component/RedView$RedListener;

    invoke-interface {v0, p1}, Lcom/didi/taxi/ui/component/RedView$RedListener;->onRedClicked(Landroid/view/View;)V

    .line 192
    :cond_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v0, v0, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    if-ne v0, v6, :cond_1

    .line 166
    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget-object v2, v0, Lcom/didi/car/model/CarShareCouponInfo;->pinkFriendTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget-object v3, v0, Lcom/didi/car/model/CarShareCouponInfo;->pinkFriendContent:Ljava/lang/String;

    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget-object v4, v0, Lcom/didi/car/model/CarShareCouponInfo;->pinkShareUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/car/ui/component/ShareTicketView;->mWXFriendDraw:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/car/ui/component/ShareTicketView;->sendTicketWx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget-object v2, v0, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget-object v3, v0, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendText:Ljava/lang/String;

    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget-object v4, v0, Lcom/didi/car/model/CarShareCouponInfo;->shareUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/car/ui/component/ShareTicketView;->mWXFriendDraw:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/didi/car/ui/component/ShareTicketView;->sendTicketWx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v0, v0, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    if-ne v0, v6, :cond_2

    .line 177
    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget-object v2, v0, Lcom/didi/car/model/CarShareCouponInfo;->pinkWxTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget-object v3, v0, Lcom/didi/car/model/CarShareCouponInfo;->pinkWxContent:Ljava/lang/String;

    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget-object v4, v0, Lcom/didi/car/model/CarShareCouponInfo;->pinkShareUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/car/ui/component/ShareTicketView;->mWXDraw:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/didi/car/ui/component/ShareTicketView;->sendTicketWx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget-object v2, v0, Lcom/didi/car/model/CarShareCouponInfo;->wxShareTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget-object v3, v0, Lcom/didi/car/model/CarShareCouponInfo;->wxShareText:Ljava/lang/String;

    iget-object v0, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget-object v4, v0, Lcom/didi/car/model/CarShareCouponInfo;->shareUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/car/ui/component/ShareTicketView;->mWXDraw:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/didi/car/ui/component/ShareTicketView;->sendTicketWx(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x7f08055b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/didi/taxi/ui/component/RedView$RedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mListener:Lcom/didi/taxi/ui/component/RedView$RedListener;

    .line 66
    return-void
.end method

.method public setShareTicketInfo(Lcom/didi/car/model/CarShareCouponInfo;)V
    .locals 2
    .parameter "shareCouponInfo"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarShareTicket setShareTicketInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarShareTicket setShareTicketInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 72
    iget v0, p1, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p1, Lcom/didi/car/model/CarShareCouponInfo;->pinkWxLogo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/ShareTicketView;->getWXImage(Ljava/lang/String;)V

    .line 74
    iget-object v0, p1, Lcom/didi/car/model/CarShareCouponInfo;->pinkFriendLogo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/ShareTicketView;->getWXFriendImage(Ljava/lang/String;)V

    .line 79
    :goto_0
    iput-object p1, p0, Lcom/didi/car/ui/component/ShareTicketView;->mShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    .line 80
    return-void

    .line 76
    :cond_0
    iget-object v0, p1, Lcom/didi/car/model/CarShareCouponInfo;->wxShareLogo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/ShareTicketView;->getWXImage(Ljava/lang/String;)V

    .line 77
    iget-object v0, p1, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendLogo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/ShareTicketView;->getWXFriendImage(Ljava/lang/String;)V

    goto :goto_0
.end method
