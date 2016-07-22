.class public Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsPassengerWaitingForDriverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$24;,
        Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;
    }
.end annotation


# static fields
.field public static final FROM_BTN_PENDING:I = 0x65


# instance fields
.field private MAX_TAG_CNT:I

.field private MAX_TXT_IN_TAG:I

.field private backListener:Landroid/view/View$OnClickListener;

.field private bottomLayout:Landroid/widget/RelativeLayout;

.field private btsAddTagBtn:Landroid/widget/LinearLayout;

.field private btsCommentLayout:Landroid/widget/LinearLayout;

.field private btsDayTextView:Landroid/widget/TextView;

.field private btsDayTime:Landroid/widget/TextView;

.field private btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

.field private btsFeeDetailView:Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;

.field private btsFromValueTextView:Landroid/widget/TextView;

.field private btsHaveTagsLayout:Landroid/widget/LinearLayout;

.field private btsNoTagsLayout:Landroid/widget/RelativeLayout;

.field private btsOtherToTaTags:Landroid/widget/TextView;

.field private btsPassengerOrderOverlayout:Landroid/widget/RelativeLayout;

.field private btsPassengerPayBtn:Landroid/widget/Button;

.field private btsPayLayout:Landroid/widget/RelativeLayout;

.field private btsRealPrice:Landroid/widget/TextView;

.field private btsSubmitCommentBtn:Landroid/widget/Button;

.field private btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

.field private btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

.field private btsToValueTextView:Landroid/widget/TextView;

.field private btsWhyCancelTV:Landroid/widget/TextView;

.field private btsXingchengFee:Landroid/widget/TextView;

.field private btsXingchengLayout:Landroid/view/View;

.field private cancelLayout:Landroid/widget/LinearLayout;

.field private checkOrderPayStatusResponse:Lcom/didi/beatles/net/BtsResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsCheckOrderPayStatus;",
            ">;"
        }
    .end annotation
.end field

.field private couponId:Ljava/lang/String;

.field private firstCheckPayStatusTime:J

.field private hongbaoBtn:Landroid/widget/RelativeLayout;

.field private hongbaoBtnImg:Landroid/widget/ImageButton;

.field private hongbaoBtnTxt:Landroid/widget/TextView;

.field private inputListener:Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;

.field private instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

.field private isFeeLayoutInit:Z

.field private isMapInit:Z

.field private leftTagTV:Landroid/widget/TextView;

.field private leftTxtTV:Landroid/widget/TextView;

.field private line1:Landroid/view/View;

.field private line2:Landroid/view/View;

.field private loadingLayout:Landroid/widget/RelativeLayout;

.field private mAddTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/ui/component/BtsTagItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFrom:I

.field private mHandler:Landroid/os/Handler;

.field mPaySuccess:Z

.field private mSelectTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/beatles/ui/component/BtsTagItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTags:[Ljava/lang/String;

.field mTotalTimes:I

.field private mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

.field private mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

.field private mapView:Lcom/didi/beatles/map/BtsMapView;

.field private meToOtherTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

.field private mingxiBtnLayout:Landroid/widget/RelativeLayout;

.field private needShowProgressDialog:Z

.field private onOrderResponseListener:Lcom/didi/beatles/net/BtsResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderPassenger;",
            ">;"
        }
    .end annotation
.end field

.field private onPassengerCommentResponse:Lcom/didi/beatles/net/BtsResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsBaseObject;",
            ">;"
        }
    .end annotation
.end field

.field private onPayBtnClickListener:Landroid/view/View$OnClickListener;

.field private onPrepayResponseListener:Lcom/didi/beatles/net/BtsResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;",
            ">;"
        }
    .end annotation
.end field

.field private order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

.field private orderId:Ljava/lang/String;

.field private otherToMeTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

.field private otherToMeTitleLayout:Landroid/widget/RelativeLayout;

.field private pageStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;",
            ">;"
        }
    .end annotation
.end field

.field private prePayParam:Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;

.field private shareBtn:Landroid/widget/RelativeLayout;

.field private shareBtnImg:Landroid/widget/ImageButton;

.field private shareBtnTxt:Landroid/widget/TextView;

.field private submitListener:Landroid/view/View$OnClickListener;

.field private tagEditLayoutClickListener:Landroid/view/View$OnClickListener;

.field private tagEditText:Landroid/widget/EditText;

.field private titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mFrom:I

    .line 118
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    .line 149
    iput-boolean v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->isMapInit:Z

    .line 154
    iput-boolean v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->isFeeLayoutInit:Z

    .line 171
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTags:[Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mSelectTags:Ljava/util/Map;

    .line 175
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TAG_CNT:I

    .line 176
    const/16 v0, 0xa

    iput v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TXT_IN_TAG:I

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->couponId:Ljava/lang/String;

    .line 221
    iput-boolean v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->needShowProgressDialog:Z

    .line 228
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->firstCheckPayStatusTime:J

    .line 368
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$4;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->inputListener:Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;

    .line 504
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$5;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$5;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 792
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$6;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->onOrderResponseListener:Lcom/didi/beatles/net/BtsResponseListener;

    .line 1013
    iput-boolean v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mPaySuccess:Z

    .line 1014
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$9;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$9;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->checkOrderPayStatusResponse:Lcom/didi/beatles/net/BtsResponseListener;

    .line 1145
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$11;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$11;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->onPayBtnClickListener:Landroid/view/View$OnClickListener;

    .line 1170
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$12;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->onPrepayResponseListener:Lcom/didi/beatles/net/BtsResponseListener;

    .line 1222
    iput v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTotalTimes:I

    .line 1396
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$15;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$15;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditLayoutClickListener:Landroid/view/View$OnClickListener;

    .line 2028
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$22;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$22;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->submitListener:Landroid/view/View$OnClickListener;

    .line 2085
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$23;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$23;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->onPassengerCommentResponse:Lcom/didi/beatles/net/BtsResponseListener;

    .line 2204
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/order/BtsOrderPassenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsXingchengLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsDriverProfileView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshLeftTag(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/map/BtsMapView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->loadingLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->needShowProgressDialog:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->needShowProgressDialog:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->setOrder(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->switchToCommentLayout(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->couponId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->couponId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshViewStatus()V

    return-void
.end method

.method static synthetic access$2300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->creatSession(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/net/BtsResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->onOrderResponseListener:Lcom/didi/beatles/net/BtsResponseListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/order/BtsOrderPassenger;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->showRetryComfirm(Lcom/didi/beatles/model/order/BtsOrderPassenger;Lcom/didi/beatles/net/BtsResponseListener;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getOrderInfo(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->submitComment()V

    return-void
.end method

.method static synthetic access$2800(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/helper/BtsPayHelper;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->callWeixinPay(Lcom/didi/beatles/helper/BtsPayHelper;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->doPay()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->switchToOrderOverLayout(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->prePayParam:Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->prePayParam:Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->confirmPaySuccessFromServer(J)V

    return-void
.end method

.method static synthetic access$3200(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Ljava/lang/String;)Lcom/didi/beatles/helper/BtsPayHelper;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getBtsPayHelper(Ljava/lang/String;)Lcom/didi/beatles/helper/BtsPayHelper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->checkOrderPayStatus()V

    return-void
.end method

.method static synthetic access$3400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->loopConfirmPaySuccessFromServer(J)V

    return-void
.end method

.method static synthetic access$3500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TAG_CNT:I

    return v0
.end method

.method static synthetic access$3600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsTitleBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTags:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Ljava/lang/String;ZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->doAddText(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->actionDone()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->showRetrySubmitComment(Lcom/didi/beatles/model/BtsBaseObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->inputListener:Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshLeftTxt(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    return-object v0
.end method

.method private actionDone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1830
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1831
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TXT_IN_TAG:I

    if-gt v2, v3, :cond_1

    .line 1832
    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->idxTextTag(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 1833
    const/4 v2, -0x1

    invoke-direct {p0, v1, v4, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->doAddText(Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1835
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mSelectTags:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTagItem;

    .local v0, item:Lcom/didi/beatles/ui/component/BtsTagItem;
    if-eqz v0, :cond_0

    .line 1836
    iget-object v2, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1840
    .end local v0           #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1842
    :cond_1
    return-void
.end method

.method private bottomHiddenAll()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1667
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1670
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1672
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1673
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1676
    :cond_2
    return-void
.end method

.method private bottomJustShowHongbaoBtn()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 1601
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1604
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1605
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1606
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1607
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->setHongBaoBtnListener()V

    .line 1609
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsHongBao;->button_icon:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsHongBao;->button_text:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1610
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsHongBao;->button_icon:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtnImg:Landroid/widget/ImageButton;

    const v2, 0x7f02008f

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 1611
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtnTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsHongBao;->button_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1613
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1614
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1615
    :cond_4
    return-void
.end method

.method private bottomJustShowPayBtn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1562
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1565
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1567
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1568
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1569
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1570
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1571
    :cond_3
    return-void
.end method

.method private bottomJustShowShareBtn()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 1579
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1582
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1583
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->setShareBtnListener()V

    .line 1585
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsShare;->button_icon:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsShare;->button_text:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1586
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsShare;->button_icon:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtnImg:Landroid/widget/ImageButton;

    const v2, 0x7f020320

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 1587
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtnTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsHongBao;->button_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1590
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1591
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1592
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1593
    :cond_4
    return-void
.end method

.method private bottomShowShareAndHongbaoBtn()V
    .locals 7

    .prologue
    const v6, 0x7f090004

    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 1635
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1636
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1637
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 1638
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1639
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->setShareBtnListener()V

    .line 1641
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1642
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1643
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->setHongBaoBtnListener()V

    .line 1645
    :cond_2
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsHongBao;->button_icon:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsHongBao;->button_text:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1646
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsHongBao;->button_icon:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtnImg:Landroid/widget/ImageButton;

    const v4, 0x7f02008f

    invoke-static {v2, v3, v4}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 1647
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtnTxt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsHongBao;->button_text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1649
    :cond_3
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsShare;->button_icon:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsShare;->button_text:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1650
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsShare;->button_icon:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtnImg:Landroid/widget/ImageButton;

    const v4, 0x7f020320

    invoke-static {v2, v3, v4}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 1651
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtnTxt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsHongBao;->button_text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1653
    :cond_4
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1654
    .local v0, param:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1655
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1656
    .local v1, param1:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1657
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 1658
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1659
    :cond_5
    return-void
.end method

.method private callWeixinPay(Lcom/didi/beatles/helper/BtsPayHelper;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V
    .locals 1
    .parameter "helper"
    .parameter "param"

    .prologue
    .line 1290
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$14;

    invoke-direct {v0, p0, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$14;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;)V

    invoke-virtual {p1, p0, p2, v0}, Lcom/didi/beatles/helper/BtsPayHelper;->sendWXPayRequest(Landroid/content/Context;Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;Lcom/didi/beatles/helper/BtsPayHelper$BtsPayResultListener;)V

    .line 1321
    return-void
.end method

.method private checkInParam()V
    .locals 3

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 413
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "from"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mFrom:I

    .line 414
    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .line 415
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-nez v1, :cond_1

    .line 416
    const-string v1, "ORDER_UI_PARAM_OID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    const v1, 0x7f0b005b

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 420
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->finish()V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    .line 425
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkOrderPayStatus()V
    .locals 5

    .prologue
    .line 1008
    iget v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTotalTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTotalTimes:I

    .line 1009
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->prePayParam:Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;

    iget-object v0, v0, Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;->payId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->firstCheckPayStatusTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->checkOrderPayStatusResponse:Lcom/didi/beatles/net/BtsResponseListener;

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->checkOrderPayStatus(Ljava/lang/String;JLcom/didi/beatles/net/BtsResponseListener;)V

    .line 1011
    return-void
.end method

.method private confirmPaySuccessFromServer(J)V
    .locals 3
    .parameter "ms"

    .prologue
    const/4 v2, 0x0

    .line 1224
    const-wide/16 v0, 0x2710

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1225
    const-wide/16 p1, 0x2710

    .line 1228
    :cond_0
    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 1229
    const-wide/32 p1, 0xea60

    .line 1232
    :cond_1
    iput v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTotalTimes:I

    .line 1233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->firstCheckPayStatusTime:J

    .line 1234
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1235
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->checkOrderPayStatus()V

    .line 1237
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->loopConfirmPaySuccessFromServer(J)V

    .line 1239
    return-void
.end method

.method private creatSession(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 2226
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2227
    invoke-static {}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->getInstance()Lcom/didi/beatles/utils/BtsIMSessionUtils;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->session_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/utils/BtsIMSessionUtils;->creatIMDB(Ljava/lang/String;)V

    .line 2228
    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->session_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->nick_name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/didi/im/db/IMDBDataHelper;->insertDriverAndPassengerSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    :cond_0
    return-void
.end method

.method private doAddText(Ljava/lang/String;ZI)Z
    .locals 9
    .parameter "str"
    .parameter "bCustom"
    .parameter "idx"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1872
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->idxTextTag(Ljava/lang/String;)I

    move-result v2

    .line 1873
    .local v2, tempIdx:I
    if-ltz v2, :cond_1

    .line 1874
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTagItem;

    .line 1875
    .local v0, item:Lcom/didi/beatles/ui/component/BtsTagItem;
    iput-boolean v5, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->tagCustomEdit:Z

    .line 1876
    iput v2, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->idx:I

    .line 1877
    iget-object v5, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1914
    .end local v0           #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_0
    :goto_0
    return v4

    .line 1880
    :cond_1
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1881
    .local v1, tagCnt:I
    iget v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TAG_CNT:I

    if-ne v1, v6, :cond_2

    .line 1882
    invoke-direct {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshLeftTag(I)V

    move v4, v5

    .line 1883
    goto :goto_0

    .line 1885
    :cond_2
    new-instance v0, Lcom/didi/beatles/ui/component/BtsTagItem;

    invoke-direct {v0}, Lcom/didi/beatles/ui/component/BtsTagItem;-><init>()V

    .line 1886
    .restart local v0       #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    iput-object p1, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    .line 1887
    iput-boolean p2, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->tagCustomEdit:Z

    .line 1888
    iput p3, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->idx:I

    .line 1889
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1890
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030042

    iget-object v8, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v6, v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 1891
    .local v3, view:Landroid/widget/CheckedTextView;
    iput-object v3, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    .line 1892
    invoke-virtual {v3, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1893
    new-instance v5, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$21;

    invoke-direct {v5, p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$21;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1906
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v5, v3, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->addView(Landroid/view/View;I)V

    .line 1907
    add-int/lit8 v1, v1, 0x1

    .line 1908
    invoke-direct {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshLeftTag(I)V

    .line 1909
    iget v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TAG_CNT:I

    if-ne v1, v5, :cond_0

    .line 1910
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1911
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->inputListener:Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;

    invoke-static {v5, v6, v7}, Lcom/didi/beatles/common/utils/BtsSoftInputUtils;->hiddenSoftInput(Landroid/app/Activity;Landroid/widget/EditText;Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;)V

    goto :goto_0
.end method

.method private doPay()V
    .locals 3

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->couponId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->onPrepayResponseListener:Lcom/didi/beatles/net/BtsResponseListener;

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/net/BtsRequest;->getPrePayParams(Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 1165
    return-void
.end method

.method private getBtsPayHelper(Ljava/lang/String;)Lcom/didi/beatles/helper/BtsPayHelper;
    .locals 2
    .parameter "appid"

    .prologue
    .line 1111
    new-instance v0, Lcom/didi/beatles/helper/BtsPayHelper;

    invoke-direct {v0, p0, p1}, Lcom/didi/beatles/helper/BtsPayHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1112
    .local v0, helper:Lcom/didi/beatles/helper/BtsPayHelper;
    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$10;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$10;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/beatles/helper/BtsPayHelper;->setListener(Lcom/didi/beatles/helper/BtsPayHelper$BtsPayHelperListener;)V

    .line 1142
    return-object v0
.end method

.method private getOrderInfo(Z)V
    .locals 3
    .parameter "showLoading"

    .prologue
    .line 298
    if-eqz p1, :cond_0

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->needShowProgressDialog:Z

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->couponId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->onOrderResponseListener:Lcom/didi/beatles/net/BtsResponseListener;

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForPassenger(Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 301
    return-void
.end method

.method private getTopAndBottom()[I
    .locals 5

    .prologue
    .line 477
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 478
    .local v3, topAndBottom:[I
    const v4, 0x7f08015f

    invoke-virtual {p0, v4}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 479
    .local v1, liuyanLayout:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 480
    .local v2, top:I
    const/4 v4, 0x0

    aput v2, v3, v4

    .line 481
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 482
    .local v0, bottom:I
    const/4 v4, 0x1

    aput v0, v3, v4

    .line 483
    return-object v3
.end method

.method private init()V
    .locals 2

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initTitlebar()V

    .line 308
    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    .line 309
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->loadingLayout:Landroid/widget/RelativeLayout;

    .line 310
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->loadingLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 311
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/map/BtsMapView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    .line 312
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->line1:Landroid/view/View;

    .line 313
    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->line2:Landroid/view/View;

    .line 314
    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsScrollView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    .line 315
    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    .line 316
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$2;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->setOnGestureListener(Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;)V

    .line 340
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->checkInParam()V

    .line 341
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initDriverProfileLayout()V

    .line 342
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initLocationView()V

    .line 343
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initXingChengLayout()V

    .line 344
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initCommentLayout()V

    .line 345
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initBottomLayout()V

    .line 347
    return-void
.end method

.method private initBottomLayout()V
    .locals 1

    .prologue
    .line 591
    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    .line 592
    const v0, 0x7f080160

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    .line 593
    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtn:Landroid/widget/RelativeLayout;

    .line 594
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    .line 595
    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtnImg:Landroid/widget/ImageButton;

    .line 596
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtnTxt:Landroid/widget/TextView;

    .line 597
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtnImg:Landroid/widget/ImageButton;

    .line 598
    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtnTxt:Landroid/widget/TextView;

    .line 600
    return-void
.end method

.method private initCommentLayout()V
    .locals 2

    .prologue
    .line 363
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    .line 364
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0800b7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    .line 365
    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsSubmitCommentBtn:Landroid/widget/Button;

    .line 366
    return-void
.end method

.method private initDriverProfileLayout()V
    .locals 1

    .prologue
    .line 642
    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    .line 643
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->init()V

    .line 644
    return-void
.end method

.method private initEditTagLayout()V
    .locals 2

    .prologue
    .line 1750
    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    .line 1751
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$18;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$18;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1762
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$19;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$19;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1785
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$20;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$20;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1816
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1817
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1821
    :goto_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshLeftTag(I)V

    .line 1822
    return-void

    .line 1819
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private initFeeLayout()V
    .locals 1

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->isFeeLayoutInit:Z

    if-eqz v0, :cond_0

    .line 990
    :goto_0
    return-void

    .line 987
    :cond_0
    const v0, 0x7f08014f

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsFeeDetailView:Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;

    .line 988
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsFeeDetailView:Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->init()V

    .line 989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->isFeeLayoutInit:Z

    goto :goto_0
.end method

.method private initLocationView()V
    .locals 2

    .prologue
    .line 349
    const v1, 0x7f0800c9

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 350
    .local v0, locationIcon:Landroid/widget/ImageView;
    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$3;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$3;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    return-void
.end method

.method private initMainScroll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "status"
    .parameter "subStatus"

    .prologue
    const/16 v1, 0x8

    .line 942
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->setVisibility(I)V

    .line 944
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->finish()V

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->finish()V

    goto :goto_0

    .line 949
    :cond_2
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 950
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 951
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateDownToUpAnim(Landroid/view/View;Z)Z

    .line 954
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    sget-object v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_WAIT_DRIVER_ARRIVE:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 956
    :cond_4
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 958
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->switchToPayLayout(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 965
    :cond_5
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 966
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->switchToCommentLayout(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 967
    :cond_6
    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 968
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->switchToOrderOverLayout(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 969
    :cond_7
    const-string v0, "5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 972
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->switchToOrderCanceled()V

    goto :goto_0

    .line 973
    :cond_8
    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->switchToOrderCanceled()V

    goto/16 :goto_0
.end method

.method private initMap()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 487
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    if-nez v0, :cond_1

    .line 490
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/map/BtsMapView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v10

    .line 492
    .local v10, map:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;
    invoke-static {v10}, Lcom/didi/beatles/map/BtsMapHelper;->initMap(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;)V

    .line 493
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getTopAndBottom()[I

    move-result-object v11

    .line 494
    .local v11, topAndBottom:[I
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-wide v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_lat:D

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-wide v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_lng:D

    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-wide v4, v4, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_lat:D

    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-wide v6, v6, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_lng:D

    const/4 v8, 0x0

    aget v8, v11, v8

    aget v9, v11, v12

    invoke-static/range {v0 .. v9}, Lcom/didi/beatles/map/BtsMapHelper;->addMarkers(DDDDII)V

    .line 495
    iput-boolean v12, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->isMapInit:Z

    goto :goto_0
.end method

.method private initOrderOverLayout()V
    .locals 1

    .prologue
    .line 435
    const v0, 0x7f080155

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerOrderOverlayout:Landroid/widget/RelativeLayout;

    .line 437
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsHaveTagsLayout:Landroid/widget/LinearLayout;

    .line 438
    const v0, 0x7f0800f5

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsRealPrice:Landroid/widget/TextView;

    .line 439
    const v0, 0x7f0800f7

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mingxiBtnLayout:Landroid/widget/RelativeLayout;

    .line 440
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsNoTagsLayout:Landroid/widget/RelativeLayout;

    .line 441
    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsAddTagBtn:Landroid/widget/LinearLayout;

    .line 442
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsAddTagBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->meToOtherTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    .line 444
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->otherToMeTitleLayout:Landroid/widget/RelativeLayout;

    .line 445
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->otherToMeTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    .line 447
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsOtherToTaTags:Landroid/widget/TextView;

    .line 448
    return-void
.end method

.method private initTagSelectionLayout()V
    .locals 17

    .prologue
    .line 1684
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v13}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->removeAllViews()V

    .line 1685
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v13, v13, Lcom/didi/beatles/model/order/BtsOrderPassenger;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    if-eqz v13, :cond_0

    .line 1686
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v13, v13, Lcom/didi/beatles/model/order/BtsOrderPassenger;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v13, v13, Lcom/didi/beatles/model/order/BtsCommentDetail;->allowTags:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTags:[Ljava/lang/String;

    .line 1687
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTags:[Ljava/lang/String;

    if-nez v13, :cond_1

    .line 1688
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTags:[Ljava/lang/String;

    .line 1689
    :cond_1
    const/4 v7, 0x4

    .line 1690
    .local v7, maxLineNum:I
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v12

    .line 1691
    .local v12, windowWidth:I
    const/16 v13, 0x1e0

    if-gt v12, v13, :cond_2

    .line 1692
    const/4 v7, 0x2

    .line 1694
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTags:[Ljava/lang/String;

    array-length v4, v13

    .line 1695
    .local v4, len:I
    const/4 v5, 0x1

    .line 1696
    .local v5, lineNum:I
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09000d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sub-int v9, v13, v14

    .line 1697
    .local v9, sizeWidth:I
    const/4 v6, 0x0

    .line 1698
    .local v6, lineWidth:I
    const/4 v1, 0x0

    .line 1699
    .local v1, childWidth:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 1700
    move v8, v2

    .line 1701
    .local v8, pos:I
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f030042

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckedTextView;

    .line 1703
    .local v11, text:Landroid/widget/CheckedTextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTags:[Ljava/lang/String;

    aget-object v13, v13, v2

    invoke-virtual {v11, v13}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1704
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTags:[Ljava/lang/String;

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->idxTextTag(Ljava/lang/String;)I

    move-result v10

    .line 1705
    .local v10, tempIdx:I
    if-ltz v10, :cond_3

    .line 1706
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1708
    :cond_3
    new-instance v13, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v8}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$17;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Landroid/widget/CheckedTextView;I)V

    invoke-virtual {v11, v13}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1721
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/widget/CheckedTextView;->measure(II)V

    .line 1722
    invoke-virtual {v11}, Landroid/widget/CheckedTextView;->getMeasuredWidth()I

    move-result v13

    const/high16 v14, 0x4100

    invoke-static {v14}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v14

    add-int v1, v13, v14

    .line 1723
    add-int v13, v6, v1

    if-le v13, v9, :cond_5

    .line 1724
    move v6, v1

    .line 1725
    add-int/lit8 v5, v5, 0x1

    .line 1726
    if-le v5, v7, :cond_6

    .line 1742
    .end local v8           #pos:I
    .end local v10           #tempIdx:I
    .end local v11           #text:Landroid/widget/CheckedTextView;
    :cond_4
    return-void

    .line 1731
    .restart local v8       #pos:I
    .restart local v10       #tempIdx:I
    .restart local v11       #text:Landroid/widget/CheckedTextView;
    :cond_5
    add-int/2addr v6, v1

    .line 1733
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "initTagSelectionLayout lineWidth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",childWidth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1734
    new-instance v3, Lcom/didi/beatles/ui/component/BtsTagItem;

    invoke-direct {v3}, Lcom/didi/beatles/ui/component/BtsTagItem;-><init>()V

    .line 1735
    .local v3, item:Lcom/didi/beatles/ui/component/BtsTagItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTags:[Ljava/lang/String;

    aget-object v13, v13, v8

    iput-object v13, v3, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    .line 1736
    const/4 v13, 0x0

    iput-boolean v13, v3, Lcom/didi/beatles/ui/component/BtsTagItem;->tagCustomEdit:Z

    .line 1737
    iput v8, v3, Lcom/didi/beatles/ui/component/BtsTagItem;->idx:I

    .line 1738
    iput-object v11, v3, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    .line 1739
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mSelectTags:Ljava/util/Map;

    iget-object v14, v3, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    invoke-interface {v13, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v13, v11}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->addView(Landroid/view/View;)V

    .line 1699
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private initTitlebar()V
    .locals 2

    .prologue
    .line 499
    const v0, 0x7f0800de

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 500
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawableListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method private initXingChengLayout()V
    .locals 1

    .prologue
    .line 690
    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsXingchengLayout:Landroid/view/View;

    .line 691
    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDayTextView:Landroid/widget/TextView;

    .line 692
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDayTime:Landroid/widget/TextView;

    .line 693
    const v0, 0x7f08014a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsFromValueTextView:Landroid/widget/TextView;

    .line 694
    const v0, 0x7f08014c

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsToValueTextView:Landroid/widget/TextView;

    .line 695
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsXingchengFee:Landroid/widget/TextView;

    .line 696
    return-void
.end method

.method private loopConfirmPaySuccessFromServer(J)V
    .locals 4
    .parameter "ms"

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1246
    :cond_1
    iget v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mTotalTimes:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 1250
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mPaySuccess:Z

    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1255
    const v0, 0x7f0b005b

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 1256
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->finish()V

    .line 1259
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->prePayParam:Lcom/didi/beatles/model/pay/wx/BtsPrePayParam;

    if-eqz v0, :cond_0

    .line 1267
    iget-wide v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->firstCheckPayStatusTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->firstCheckPayStatusTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1271
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$13;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;J)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private refreshBottomBottoms()V
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-nez v0, :cond_0

    .line 1510
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomHiddenAll()V

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    if-nez v0, :cond_1

    .line 1512
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomHiddenAll()V

    .line 1524
    :goto_0
    return-void

    .line 1514
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsShare;->shareEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsHongBao;->hongBaoEnable:Z

    if-eqz v0, :cond_2

    .line 1515
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomShowShareAndHongbaoBtn()V

    goto :goto_0

    .line 1516
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsShare;->shareEnable:Z

    if-eqz v0, :cond_3

    .line 1517
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomJustShowShareBtn()V

    goto :goto_0

    .line 1518
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsHongBao;->hongBaoEnable:Z

    if-eqz v0, :cond_4

    .line 1519
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomJustShowHongbaoBtn()V

    goto :goto_0

    .line 1521
    :cond_4
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomHiddenAll()V

    goto :goto_0
.end method

.method private refreshBottomLayout()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 603
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    .line 604
    .local v0, status:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    .line 605
    .local v1, subStatus:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 606
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 607
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 610
    :cond_2
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 611
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 612
    :cond_3
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 613
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 614
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 615
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateUpToDownAnim(Landroid/view/View;Z)Z

    .line 617
    :cond_4
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 622
    :cond_5
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 624
    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 625
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 626
    :cond_6
    const-string v2, "5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 628
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 632
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private refreshDriverProfile()V
    .locals 5

    .prologue
    .line 650
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    .line 651
    .local v0, status:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    .line 653
    .local v1, subStatus:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->setDriverData(Lcom/didi/beatles/model/order/BtsOrderPassenger;Landroid/view/View$OnClickListener;)V

    .line 654
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 656
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v3, 0x7f0b00df

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v3, 0x7f0b00e0

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 662
    :cond_2
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 663
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v3, 0x7f0b00e1

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 665
    :cond_3
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 666
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 667
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v3, 0x7f0b00de

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 668
    :cond_4
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v3, 0x7f0b00dc

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 671
    :cond_5
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 672
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v3, 0x7f0b00dd

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 673
    :cond_6
    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 674
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v3, 0x7f0b00da

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 675
    :cond_7
    const-string v2, "5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 677
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v3, 0x7f0b00d8

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto/16 :goto_0

    .line 678
    :cond_8
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 679
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v3, 0x7f0b00db

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto/16 :goto_0

    .line 680
    :cond_9
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v3, 0x7f0b00d9

    invoke-virtual {v2, v3}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto/16 :goto_0
.end method

.method private refreshLeftTag(I)V
    .locals 7
    .parameter "tagCnt"

    .prologue
    const/16 v6, 0x21

    const/16 v1, 0x8

    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1958
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTagTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1959
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTagTV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1960
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTxtTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1961
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTxtTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1962
    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1963
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsSubmitCommentBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1964
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setBackgroundResource(I)V

    .line 1969
    :goto_0
    iget v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TAG_CNT:I

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_4

    .line 1971
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTagTV:Landroid/widget/TextView;

    const v1, 0x7f0b001b

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TAG_CNT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1972
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTagTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, v5, v6}, Lcom/didi/beatles/common/utils/BtsViewUtil;->changeColor(Landroid/widget/TextView;IIII)V

    .line 1979
    :goto_1
    return-void

    .line 1966
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsSubmitCommentBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1967
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1975
    :cond_4
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTagTV:Landroid/widget/TextView;

    const v1, 0x7f0b0016

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TAG_CNT:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1976
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTagTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v0, v1, v5, v2, v6}, Lcom/didi/beatles/common/utils/BtsViewUtil;->changeColor(Landroid/widget/TextView;IIII)V

    goto :goto_1
.end method

.method private refreshLeftTxt(I)V
    .locals 13
    .parameter "length"

    .prologue
    const/16 v12, 0x21

    const/16 v11, 0x8

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1925
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTagTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1926
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTagTV:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1927
    :cond_0
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTxtTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-ne v4, v11, :cond_1

    .line 1928
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTxtTV:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1929
    :cond_1
    iget v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TXT_IN_TAG:I

    if-le p1, v4, :cond_2

    .line 1930
    iget v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TXT_IN_TAG:I

    sub-int v0, p1, v4

    .line 1931
    .local v0, chao:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 1932
    .local v3, len:I
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTxtTV:Landroid/widget/TextView;

    const v5, 0x7f0b0018

    invoke-virtual {p0, v5}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TXT_IN_TAG:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1933
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTxtTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07003f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    new-array v7, v8, [I

    aput v11, v7, v9

    add-int/lit8 v8, v3, 0xe

    aput v8, v7, v10

    invoke-static {v4, v5, v6, v7, v12}, Lcom/didi/beatles/common/utils/BtsViewUtil;->changeColor(Landroid/widget/TextView;I[I[II)V

    .line 1935
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsSubmitCommentBtn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1949
    .end local v0           #chao:I
    .end local v3           #len:I
    :goto_0
    return-void

    .line 1937
    :cond_2
    iget v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TXT_IN_TAG:I

    sub-int v2, v4, p1

    .line 1938
    .local v2, l:I
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTxtTV:Landroid/widget/TextView;

    const v5, 0x7f0b0017

    invoke-virtual {p0, v5}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1939
    const/4 v1, 0x0

    .line 1940
    .local v1, endI:I
    const/16 v4, 0xa

    if-ge v2, v4, :cond_3

    .line 1941
    const/4 v1, 0x6

    .line 1945
    :goto_1
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTxtTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07003f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v4, v5, v6, v1, v12}, Lcom/didi/beatles/common/utils/BtsViewUtil;->changeColor(Landroid/widget/TextView;IIII)V

    .line 1947
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsSubmitCommentBtn:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1943
    :cond_3
    const/4 v1, 0x7

    goto :goto_1

    .line 1933
    :array_0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private refreshTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "status"
    .parameter "subStatus"

    .prologue
    const v1, 0x7f0b0011

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 541
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b00df

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b00e0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 547
    :cond_2
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 548
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v0, :cond_3

    .line 549
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b00be

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v6, v5}, Lcom/didi/beatles/common/BtsCommonListeners;->getCancelOrderListener(Landroid/app/Activity;Ljava/lang/String;IILandroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b00e1

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 552
    :cond_4
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 553
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v0, :cond_5

    .line 554
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    invoke-static {v2, v3, v4, v6}, Lcom/didi/beatles/common/BtsCommonListeners;->getComplainListener(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 556
    :cond_5
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 557
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b00de

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 558
    :cond_6
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b00dc

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 561
    :cond_7
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 562
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v0, :cond_8

    .line 563
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    invoke-static {v2, v3, v4, v6}, Lcom/didi/beatles/common/BtsCommonListeners;->getComplainListener(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 565
    :cond_8
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b00dd

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto/16 :goto_0

    .line 566
    :cond_9
    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 567
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v0, :cond_a

    .line 568
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    invoke-static {v2, v3, v4, v6}, Lcom/didi/beatles/common/BtsCommonListeners;->getComplainListener(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 570
    :cond_a
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b00da

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto/16 :goto_0

    .line 571
    :cond_b
    const-string v0, "5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v0, :cond_c

    .line 573
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    invoke-static {v2, v3, v4, v6}, Lcom/didi/beatles/common/BtsCommonListeners;->getComplainListener(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 575
    :cond_c
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 576
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto/16 :goto_0

    .line 577
    :cond_d
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 578
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b00db

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto/16 :goto_0

    .line 579
    :cond_e
    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b00d9

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto/16 :goto_0
.end method

.method private refreshViewStatus()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-nez v0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->isMapInit:Z

    if-nez v0, :cond_3

    const-string v0, "0"

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    :cond_2
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initMap()V

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->loadingLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 523
    const-string v0, "3"

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "0"

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mFrom:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_4

    .line 524
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->switchToCommentLayout(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_4
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshDriverProfile()V

    .line 527
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshXingChengData()V

    .line 528
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initMainScroll(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshBottomLayout()V

    .line 530
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->setDatas([Lcom/didi/beatles/model/order/BtsUserRate;)V

    goto :goto_0
.end method

.method private refreshXingChengData()V
    .locals 6

    .prologue
    .line 722
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v2, v4, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    .line 723
    .local v2, status:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v4, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    .line 724
    .local v3, subStatus:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v4, Lcom/didi/beatles/model/order/BtsOrderPassenger;->text_setup_time:Ljava/lang/String;

    .line 725
    .local v1, setUpTime:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDayTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDayTime:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->setSetUpTime(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 726
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsFromValueTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v5, v5, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsToValueTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v5, v5, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    :try_start_0
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsXingchengFee:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v5, v5, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

    invoke-virtual {v5}, Lcom/didi/beatles/model/order/BtsPrice;->getTotalPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 734
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 735
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->finish()V

    .line 760
    :cond_0
    :goto_1
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 736
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->finish()V

    goto :goto_1

    .line 739
    :cond_2
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 740
    const-string v4, "2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 742
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 744
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 747
    :cond_3
    const-string v4, "3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 749
    const-string v4, "4"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 751
    const-string v4, "5"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 752
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 754
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 756
    const-string v4, "2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1
.end method

.method private setFeeData()V
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsFeeDetailView:Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsPassengerFeeDetailView;->setFeeData(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V

    .line 999
    return-void
.end method

.method private setHongBaoBtnListener()V
    .locals 7

    .prologue
    .line 1623
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsHongBao;->share:Lcom/didi/beatles/model/order/BtsShare;

    invoke-static {v3}, Lcom/didi/beatles/common/utils/BtsShareUtil;->getShareInfo(Lcom/didi/beatles/model/order/BtsShare;)Lcom/didi/beatles/model/BtsShareMode;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/didi/beatles/common/BtsCommonListeners;->getShareListener(Landroid/app/Activity;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;ZZ)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1627
    return-void
.end method

.method private setOrder(Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 2130
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    .line 2131
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    .line 2132
    return-void
.end method

.method private setSetUpTime(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5
    .parameter "day"
    .parameter "hour"
    .parameter "msg"

    .prologue
    const/4 v4, -0x1

    .line 699
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    const-string v3, ""

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    const-string v3, "|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 707
    const-string v3, "|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 708
    .local v2, pos:I
    if-eq v2, v4, :cond_0

    .line 709
    const/4 v3, 0x0

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, day_tmp:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, hour_tmp:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setShareBtnListener()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 1618
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->shareBtn:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    invoke-static {v3}, Lcom/didi/beatles/common/utils/BtsShareUtil;->getShareInfo(Lcom/didi/beatles/model/order/BtsShare;)Lcom/didi/beatles/model/BtsShareMode;

    move-result-object v3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/didi/beatles/common/BtsCommonListeners;->getShareListener(Landroid/app/Activity;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;ZZ)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1620
    return-void
.end method

.method private showRetryComfirm(Lcom/didi/beatles/model/order/BtsOrderPassenger;Lcom/didi/beatles/net/BtsResponseListener;)V
    .locals 4
    .parameter "t"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/model/order/BtsOrderPassenger;",
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderPassenger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 863
    .local p2, responseListener:Lcom/didi/beatles/net/BtsResponseListener;,"Lcom/didi/beatles/net/BtsResponseListener<Lcom/didi/beatles/model/order/BtsOrderPassenger;>;"
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    :goto_0
    return-void

    .line 867
    :cond_0
    const-string v0, ""

    .line 869
    .local v0, msg:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 870
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 875
    :goto_1
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->closeConfirm()V

    .line 876
    const v1, 0x7f0b0023

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$7;

    invoke-direct {v3, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$7;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->showConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;

    goto :goto_0

    .line 872
    :cond_1
    const v1, 0x7f0b003b

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private showRetrySubmitComment(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    :goto_0
    return-void

    .line 908
    :cond_0
    const-string v0, ""

    .line 910
    .local v0, msg:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 911
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 916
    :goto_1
    const v1, 0x7f0b0023

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$8;

    invoke-direct {v3, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$8;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->showConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;

    goto :goto_0

    .line 913
    :cond_1
    const v1, 0x7f0b0026

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static startActivity(Landroid/app/Activity;Lcom/didi/beatles/model/order/BtsOrderPassenger;)V
    .locals 3
    .parameter "activity"
    .parameter "order"

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    const v2, 0x7f0b0013

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 266
    :goto_0
    return-void

    .line 258
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    const-string v2, "order"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 262
    const/16 v2, 0x6a

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "orderId"

    .prologue
    .line 248
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 249
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 3
    .parameter "activity"
    .parameter "orderId"
    .parameter "from"

    .prologue
    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const v2, 0x7f0b005b

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 244
    :goto_0
    return-void

    .line 236
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "ORDER_UI_PARAM_OID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v2, "from"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const/16 v2, 0x6a

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private submitComment()V
    .locals 9

    .prologue
    .line 2041
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v7, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->inputListener:Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;

    invoke-static {v6, v7, v8}, Lcom/didi/beatles/common/utils/BtsSoftInputUtils;->hiddenSoftInput(Landroid/app/Activity;Landroid/widget/EditText;Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;)V

    .line 2043
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2080
    :goto_0
    return-void

    .line 2045
    :cond_0
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 2046
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->actionDone()V

    .line 2048
    :cond_1
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2049
    const v6, 0x7f0b000b

    invoke-static {v6}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    goto :goto_0

    .line 2052
    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 2053
    .local v3, tagArr:Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2055
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 2056
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/beatles/ui/component/BtsTagItem;

    iget-object v5, v6, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    .line 2057
    .local v5, tmpTxt:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TXT_IN_TAG:I

    if-le v6, v7, :cond_3

    .line 2058
    const/4 v6, 0x0

    iget v7, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->MAX_TXT_IN_TAG:I

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2060
    :cond_3
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2055
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2062
    .end local v5           #tmpTxt:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2063
    .local v4, tags:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2064
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v6, "["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2065
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderPassenger;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    if-eqz v6, :cond_6

    .line 2066
    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderPassenger;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    array-length v6, v6

    if-ge v0, v6, :cond_6

    .line 2067
    const-string v6, "{"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2068
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\"rate_cid\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v7, v7, Lcom/didi/beatles/model/order/BtsOrderPassenger;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    aget-object v7, v7, v0

    iget-wide v7, v7, Lcom/didi/beatles/model/order/BtsUserRate;->mRateCid:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2069
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\"rate_tag\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v7, v7, Lcom/didi/beatles/model/order/BtsOrderPassenger;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/didi/beatles/model/order/BtsUserRate;->mRateDetails:[Ljava/lang/String;

    iget-object v8, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v8, v8, Lcom/didi/beatles/model/order/BtsOrderPassenger;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/didi/beatles/model/order/BtsUserRate;->mChoice:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2070
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\"rate_tagid\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v7, v7, Lcom/didi/beatles/model/order/BtsOrderPassenger;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/didi/beatles/model/order/BtsUserRate;->mChoice:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2071
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderPassenger;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_5

    .line 2072
    const-string v6, "},"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2066
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 2074
    :cond_5
    const-string v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 2078
    :cond_6
    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2079
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->onPassengerCommentResponse:Lcom/didi/beatles/net/BtsResponseListener;

    invoke-static {v6, v4, v7, v8}, Lcom/didi/beatles/net/BtsRequest;->submitTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto/16 :goto_0
.end method

.method private switchToCommentLayout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "status"
    .parameter "subStatus"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1331
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1332
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->switchToOrderOverLayout(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    const-string v1, "pbpwcomment01_ck"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1336
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    if-nez v1, :cond_2

    .line 1337
    const v1, 0x7f080436

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/map/BtsMapView;

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    .line 1338
    :cond_2
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1339
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v1, v3}, Lcom/didi/beatles/ui/component/BtsScrollView;->setVisibility(I)V

    .line 1341
    :cond_3
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 1342
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1343
    :cond_4
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsSubmitCommentBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->submitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1344
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    if-nez v1, :cond_5

    .line 1345
    const v1, 0x7f0800b8

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    .line 1346
    :cond_5
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1347
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTagTV:Landroid/widget/TextView;

    if-nez v1, :cond_6

    .line 1348
    const v1, 0x7f0800ba

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTagTV:Landroid/widget/TextView;

    .line 1350
    :cond_6
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTxtTV:Landroid/widget/TextView;

    if-nez v1, :cond_7

    .line 1351
    const v1, 0x7f0800bb

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->leftTxtTV:Landroid/widget/TextView;

    .line 1352
    :cond_7
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    .line 1354
    .local v0, commentLayoutTop:I
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v1, v3, v0}, Lcom/didi/beatles/ui/component/BtsScrollView;->scrollTo(II)V

    .line 1355
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initEditTagLayout()V

    .line 1356
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initTagSelectionLayout()V

    .line 1359
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->line1:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->line2:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1361
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v1}, Lcom/didi/beatles/map/BtsMapView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 1362
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v1, v4}, Lcom/didi/beatles/map/BtsMapView;->setVisibility(I)V

    .line 1364
    :cond_8
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 1365
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1366
    :cond_9
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    sget-object v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_PAYING:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1367
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    invoke-static {v1, v3}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateDownToUpAnim(Landroid/view/View;Z)Z

    .line 1368
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v5}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateDownToUpAnim(Landroid/view/View;Z)Z

    .line 1370
    :cond_a
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshBottomBottoms()V

    .line 1371
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    .line 1372
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1373
    :cond_b
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerOrderOverlayout:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_c

    .line 1374
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initOrderOverLayout()V

    .line 1376
    :cond_c
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_d

    .line 1377
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    invoke-virtual {v1, v3}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->setVisibility(I)V

    .line 1379
    :cond_d
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    sget-object v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_ORDER_OVER:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1380
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1381
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomHiddenAll()V

    .line 1382
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerOrderOverlayout:Landroid/widget/RelativeLayout;

    invoke-static {v1, v3}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateDownToUpAnim(Landroid/view/View;Z)Z

    .line 1383
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v5}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateDownToUpAnim(Landroid/view/View;Z)Z

    .line 1385
    :cond_e
    const-string v1, "3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1386
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1387
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomHiddenAll()V

    .line 1389
    :cond_f
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerOrderOverlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_10

    .line 1390
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerOrderOverlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1391
    :cond_10
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    sget-object v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_EDIT_COMMENT:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1392
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    sget-object v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_EDIT_COMMENT:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private switchToOrderCanceled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1533
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1534
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/component/BtsScrollView;->setVisibility(I)V

    .line 1535
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/map/BtsMapView;->setVisibility(I)V

    .line 1537
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->cancelLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 1538
    const v1, 0x7f0800a9

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->cancelLayout:Landroid/widget/LinearLayout;

    .line 1539
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->cancelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1540
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->cancelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1541
    :cond_2
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 1542
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1543
    :cond_3
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 1544
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    invoke-virtual {v1, v3}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->setVisibility(I)V

    .line 1545
    :cond_4
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1546
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->cancelLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateUpToDownAnim(Landroid/view/View;Z)Z

    .line 1547
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-static {v1, v3}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateUpToDownAnim(Landroid/view/View;Z)Z

    .line 1549
    :cond_5
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomHiddenAll()V

    .line 1550
    const v1, 0x7f0800ab

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsWhyCancelTV:Landroid/widget/TextView;

    .line 1551
    const v1, 0x7f0800aa

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1552
    .local v0, btsCancelTitle:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_terminate_by:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsWhyCancelTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_cancel_desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1554
    return-void
.end method

.method private switchToOrderOverLayout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "status"
    .parameter "subStatus"

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    sget-object v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_ORDER_OVER:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsScrollView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->setVisibility(I)V

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1423
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerOrderOverlayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 1424
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initOrderOverLayout()V

    .line 1425
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerOrderOverlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1426
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerOrderOverlayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1427
    :cond_2
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshBottomBottoms()V

    .line 1428
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1429
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1430
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 1431
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->setVisibility(I)V

    .line 1432
    :cond_4
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsRealPrice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->paySuccessPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1433
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v0, :cond_5

    .line 1434
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mingxiBtnLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderPassenger;->paySuccessDetailUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/didi/beatles/common/BtsCommonListeners;->getPriceDetailListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1438
    :cond_5
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 1439
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/beatles/map/BtsMapView;->setVisibility(I)V

    .line 1441
    :cond_6
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    sget-object v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_EDIT_COMMENT:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1442
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerOrderOverlayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateUpToDownAnim(Landroid/view/View;Z)Z

    .line 1443
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateUpToDownAnim(Landroid/view/View;Z)Z

    .line 1445
    :cond_7
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->isCommentDriver()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1447
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    sget-object v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_EDIT_COMMENT:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsHongBao;->hongBaoEnable:Z

    if-eqz v0, :cond_8

    .line 1448
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v9, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    .line 1449
    .local v9, btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    iget-object v1, v9, Lcom/didi/beatles/model/order/BtsHongBao;->alertIcon:Ljava/lang/String;

    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$IconType;->PINK:Lcom/didi/common/ui/component/CommonDialog$IconType;

    iget-object v3, v9, Lcom/didi/beatles/model/order/BtsHongBao;->alertTitle:Ljava/lang/String;

    iget-object v4, v9, Lcom/didi/beatles/model/order/BtsHongBao;->alertContent:Ljava/lang/String;

    iget-object v5, v9, Lcom/didi/beatles/model/order/BtsHongBao;->alertContent:Ljava/lang/String;

    iget-object v6, v9, Lcom/didi/beatles/model/order/BtsHongBao;->alertConfirmTitle:Ljava/lang/String;

    iget-object v7, v9, Lcom/didi/beatles/model/order/BtsHongBao;->alertCancelTitle:Ljava/lang/String;

    new-instance v8, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$16;

    invoke-direct {v8, p0, v9}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$16;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;Lcom/didi/beatles/model/order/BtsHongBao;)V

    invoke-static/range {v0 .. v8}, Lcom/didi/beatles/helper/BtsDialogHelper;->showConfirm(Landroid/content/Context;Ljava/lang/String;Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;

    .line 1467
    .end local v9           #btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;
    :cond_8
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsHaveTagsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1468
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->meToOtherTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setVisibility(I)V

    .line 1469
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->meToOtherTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->removeAllViews()V

    .line 1470
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->meToOtherTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsCommentDetail;->toDriverComment:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->addAllTags([Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->isCommentPassenger()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1472
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->otherToMeTitleLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1473
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->otherToMeTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setVisibility(I)V

    .line 1474
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->otherToMeTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->removeAllViews()V

    .line 1475
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->otherToMeTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsCommentDetail;->toPassengerComment:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->addAllTags([Ljava/lang/String;)V

    .line 1481
    :goto_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsNoTagsLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1489
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    sget-object v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_ORDER_OVER:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1490
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    sget-object v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_ORDER_OVER:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    :cond_a
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->isFree:Z

    if-eqz v0, :cond_d

    .line 1495
    const v0, 0x7f080157

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1496
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    :goto_2
    return-void

    .line 1477
    :cond_b
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->otherToMeTitleLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1478
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->otherToMeTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setVisibility(I)V

    goto :goto_0

    .line 1484
    :cond_c
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsNoTagsLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1485
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsHaveTagsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1486
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    if-eqz v0, :cond_9

    .line 1487
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsOtherToTaTags:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsCommentDetail;->toOther:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1498
    :cond_d
    const v0, 0x7f080157

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1499
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private switchToPayLayout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "status"
    .parameter "subStatus"

    .prologue
    const/4 v3, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1071
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    sget-object v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_PAYING:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

    .line 1075
    .local v0, bp:Lcom/didi/beatles/model/order/BtsPrice;
    if-nez v0, :cond_2

    .line 1076
    const v1, 0x7f0b005d

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 1108
    :cond_1
    :goto_0
    return-void

    .line 1080
    :cond_2
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 1081
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v1, v5}, Lcom/didi/beatles/ui/component/BtsScrollView;->setVisibility(I)V

    .line 1082
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    sget-object v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_WAIT_DRIVER_ARRIVE:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1083
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-static {v1, v3}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateUpToDownAnim(Landroid/view/View;Z)Z

    .line 1086
    :cond_3
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 1087
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    invoke-virtual {v1, v5}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->setVisibility(I)V

    .line 1088
    :cond_4
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->initFeeLayout()V

    .line 1089
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->setFeeData()V

    .line 1090
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->bottomJustShowPayBtn()V

    .line 1091
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 1092
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1093
    :cond_5
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    const v2, 0x7f0b00c5

    invoke-virtual {p0, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v4, v4, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

    invoke-virtual {v4}, Lcom/didi/beatles/model/order/BtsPrice;->getRealPrice()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsPassengerPayBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->onPayBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1102
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v1}, Lcom/didi/beatles/map/BtsMapView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 1103
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v1, v6}, Lcom/didi/beatles/map/BtsMapView;->setVisibility(I)V

    .line 1105
    :cond_7
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    sget-object v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_PAYING:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1106
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->pageStack:Ljava/util/Stack;

    sget-object v2, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;->PT_PAYING:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$PageType;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1098
    :cond_8
    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1
.end method

.method private updateImUnreadMessage(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "update_im_message"
    .end annotation

    .prologue
    .line 773
    .local p1, unreadMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->session_id:Ljava/lang/String;

    .line 775
    .local v0, seesionId:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->updateMessageStatus(Z)V

    .line 779
    .end local v0           #seesionId:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected doDelText(Ljava/lang/String;)V
    .locals 6
    .parameter "string"

    .prologue
    const/4 v5, 0x0

    .line 1982
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1983
    .local v2, mTagCnt:I
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->tagEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1984
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1985
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/ui/component/BtsTagItem;

    .line 1986
    .local v1, item:Lcom/didi/beatles/ui/component/BtsTagItem;
    iget-object v4, v1, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1987
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v4, v0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->removeViewAt(I)V

    .line 1988
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1989
    add-int/lit8 v4, v2, -0x1

    invoke-direct {p0, v4}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshLeftTag(I)V

    .line 1996
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mSelectTags:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/beatles/ui/component/BtsTagItem;

    .local v3, tagItem:Lcom/didi/beatles/ui/component/BtsTagItem;
    if-eqz v3, :cond_0

    .line 1997
    iget-object v4, v3, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 2003
    .end local v1           #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    .end local v3           #tagItem:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_0
    return-void

    .line 1984
    .restart local v1       #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected doResetAddTagsStatus()V
    .locals 5

    .prologue
    .line 2017
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2018
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2019
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/ui/component/BtsTagItem;

    .line 2020
    .local v2, item:Lcom/didi/beatles/ui/component/BtsTagItem;
    iget-object v3, v2, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 2021
    iget-object v3, v2, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    iget-object v4, v2, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2018
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2023
    .end local v2           #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 465
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->clearMap()V

    .line 468
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->finish()V

    .line 469
    return-void
.end method

.method protected idxTextTag(Ljava/lang/String;)I
    .locals 4
    .parameter "text"

    .prologue
    .line 1852
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1853
    .local v2, mTagCnt:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1854
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/ui/component/BtsTagItem;

    .line 1855
    .local v1, item:Lcom/didi/beatles/ui/component/BtsTagItem;
    iget-object v3, v1, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1859
    .end local v0           #i:I
    .end local v1           #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :goto_1
    return v0

    .line 1853
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1859
    .end local v1           #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2182
    invoke-super {p0, p1, p2, p3}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onActivityResult(IILandroid/content/Intent;)V

    .line 2184
    packed-switch p1, :pswitch_data_0

    .line 2198
    :cond_0
    :goto_0
    return-void

    .line 2186
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->couponId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->onOrderResponseListener:Lcom/didi/beatles/net/BtsResponseListener;

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForPassenger(Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0

    .line 2191
    :pswitch_1
    if-eqz p3, :cond_0

    .line 2193
    const-string v0, "couponId"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->couponId:Ljava/lang/String;

    .line 2194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->needShowProgressDialog:Z

    .line 2195
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->couponId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->onOrderResponseListener:Lcom/didi/beatles/net/BtsResponseListener;

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForPassenger(Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0

    .line 2184
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 764
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 769
    :goto_0
    return-void

    .line 766
    :pswitch_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->switchToCommentLayout(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :pswitch_data_0
    .packed-switch 0x7f0800ff
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 271
    iput-object p0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->instance:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    .line 272
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->setContentView(I)V

    .line 273
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->init()V

    .line 274
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    if-nez v0, :cond_1

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getOrderInfo(Z)V

    .line 279
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mHandler:Landroid/os/Handler;

    .line 280
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 281
    iget v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mFrom:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 282
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity$1;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    :cond_0
    return-void

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->refreshViewStatus()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->onDestroy()V

    .line 2137
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 2138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/helper/BtsPushHelper;->removeOrderChangeListener(Ljava/lang/String;)V

    .line 2139
    invoke-static {}, Lcom/didi/beatles/common/BtsCommonListeners;->clearAllListeners()V

    .line 2140
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onDestroy()V

    .line 2141
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 452
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onNewIntent(Landroid/content/Intent;)V

    .line 453
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->setIntent(Landroid/content/Intent;)V

    .line 454
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ORDER_UI_PARAM_OID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const v0, 0x7f0b005b

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 457
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->finish()V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getOrderInfo(Z)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->onPause()V

    .line 2146
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onPause()V

    .line 2148
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->onRestart()V

    .line 2153
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onRestart()V

    .line 2154
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 2158
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v1}, Lcom/didi/beatles/map/BtsMapView;->onResume()V

    .line 2159
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onResume()V

    .line 2161
    :try_start_0
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2165
    :goto_0
    return-void

    .line 2162
    :catch_0
    move-exception v0

    .line 2163
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->onStart()V

    .line 2170
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onStart()V

    .line 2171
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->onStop()V

    .line 2176
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onStop()V

    .line 2177
    return-void
.end method

.method public orderStatusEvent(Lcom/didi/beatles/push/model/BtsPushOrderStatus;)V
    .locals 2
    .parameter "btsPushOrderStatus"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "order_status"
    .end annotation

    .prologue
    .line 2235
    if-nez p1, :cond_0

    .line 2244
    :goto_0
    return-void

    .line 2237
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive order id not match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 2241
    :cond_1
    iget-object v0, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2242
    iget-object v0, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->orderId:Ljava/lang/String;

    .line 2243
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->getOrderInfo(Z)V

    goto :goto_0
.end method

.method public reloadImMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "sessionId"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "reload_im_message"
    .end annotation

    .prologue
    .line 782
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->order:Lcom/didi/beatles/model/order/BtsOrderPassenger;

    iget-object v0, v1, Lcom/didi/beatles/model/order/BtsOrderPassenger;->session_id:Ljava/lang/String;

    .line 784
    .local v0, session:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;->btsDriverProfileView:Lcom/didi/beatles/ui/component/BtsDriverProfileView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/component/BtsDriverProfileView;->updateMessageStatus(Z)V

    .line 788
    .end local v0           #session:Ljava/lang/String;
    :cond_0
    return-void
.end method
