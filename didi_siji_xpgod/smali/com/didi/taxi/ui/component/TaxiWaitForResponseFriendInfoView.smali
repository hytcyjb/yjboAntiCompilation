.class public Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;
.super Landroid/widget/RelativeLayout;
.source "TaxiWaitForResponseFriendInfoView.java"


# instance fields
.field drawerView:Lcom/didi/common/ui/component/DrawerView;

.field friendInfoBar:Landroid/widget/RelativeLayout;

.field private headImagLoadStatus:I

.field ivCarpoolFriendIcon:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

.field private lastHeadImgUrl:Ljava/lang/String;

.field rlCarPoolNotification:Landroid/widget/RelativeLayout;

.field tvCarPoolFriendName:Landroid/widget/TextView;

.field tvCarPoolNotification:Lcom/didi/common/richtextview/RichTextView;

.field tvCarPoolTips:Lcom/didi/common/richtextview/RichTextView;

.field tvEndPlace:Landroid/widget/TextView;

.field tvStartPlace:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->headImagLoadStatus:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->lastHeadImgUrl:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->headImagLoadStatus:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->lastHeadImgUrl:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->headImagLoadStatus:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->lastHeadImgUrl:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->headImagLoadStatus:I

    return p1
.end method

.method private init()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->initViews()V

    .line 56
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const v3, 0x7f0901d3

    .line 59
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030109

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0805f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->ivCarpoolFriendIcon:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    .line 61
    const v1, 0x7f0805f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvCarPoolFriendName:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0805fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvStartPlace:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0805fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvEndPlace:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0805fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/richtextview/RichTextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvCarPoolTips:Lcom/didi/common/richtextview/RichTextView;

    .line 65
    const v1, 0x7f080603

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/richtextview/RichTextView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvCarPoolNotification:Lcom/didi/common/richtextview/RichTextView;

    .line 66
    const v1, 0x7f080602

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->rlCarPoolNotification:Landroid/widget/RelativeLayout;

    .line 67
    const v1, 0x7f0805f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->friendInfoBar:Landroid/widget/RelativeLayout;

    .line 68
    const v1, 0x7f0805ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/DrawerView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->drawerView:Lcom/didi/common/ui/component/DrawerView;

    .line 69
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->showDrawerDelay(I)V

    .line 70
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvStartPlace:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 71
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvEndPlace:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 72
    return-void
.end method

.method private loadFriendIcon(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 92
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->head_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->headImagLoadStatus:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->lastHeadImgUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->head_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->headImagLoadStatus:I

    .line 96
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->head_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->lastHeadImgUrl:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->head_url:Ljava/lang/String;

    new-instance v1, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView$1;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;)V

    invoke-static {}, Lutil/ImageUtil;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_0
.end method


# virtual methods
.method public closeDrawer(Z)V
    .locals 2
    .parameter "clean"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->drawerView:Lcom/didi/common/ui/component/DrawerView;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->drawerView:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->close()V

    .line 145
    :cond_0
    if-eqz p1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->drawerView:Lcom/didi/common/ui/component/DrawerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 148
    :cond_1
    return-void
.end method

.method public disMissFriendInfoBar()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->friendInfoBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 113
    return-void
.end method

.method public isFriendBarShowing()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->friendInfoBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCarPoolOnlyTip()V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->disMissFriendInfoBar()V

    .line 121
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvCarPoolNotification:Lcom/didi/common/richtextview/RichTextView;

    const v1, 0x7f0b023c

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public showDrawerDelay(I)V
    .locals 3
    .parameter "time"

    .prologue
    .line 129
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    return-void
.end method

.method public showFriendInfoBar()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->friendInfoBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public updateInfoBar(Lcom/didi/taxi/model/TaxiOrderState;Z)V
    .locals 2
    .parameter "state"
    .parameter "updateBar"

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->rlCarPoolNotification:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvCarPoolNotification:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    .line 77
    if-eqz p2, :cond_1

    .line 78
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvCarPoolFriendName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvStartPlace:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->from_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvEndPlace:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->end_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvCarPoolTips:Lcom/didi/common/richtextview/RichTextView;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvCarPoolNotification:Lcom/didi/common/richtextview/RichTextView;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->trip_notice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->loadFriendIcon(Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 89
    return-void

    .line 84
    :cond_1
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->trip_friend_cancel_content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->tvCarPoolNotification:Lcom/didi/common/richtextview/RichTextView;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->trip_friend_cancel_content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
