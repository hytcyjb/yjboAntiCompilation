.class public Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsDriverHoldOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;,
        Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$MyHandler;,
        Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;
    }
.end annotation


# static fields
.field public static final FROM_BTN_PENDING:I = 0x65

.field public static final MSG_COUNT_DOWN_RECEIVER_REQUEST_CODE:I = 0x21

.field public static final MSG_WHAT_COUNT_DOWN_FOR_GOING:I = 0x20

.field public static minutesToGo:I


# instance fields
.field private MAX_TAG_CNT:I

.field private MAX_TXT_IN_TAG:I

.field private arrivedPasngerListener:Landroid/view/View$OnClickListener;

.field private backListener:Landroid/view/View$OnClickListener;

.field private bottomLayout:Landroid/widget/RelativeLayout;

.field private btsAddTagBtn:Landroid/widget/LinearLayout;

.field private btsCommentLayout:Landroid/widget/LinearLayout;

.field private btsDayTextView:Landroid/widget/TextView;

.field private btsDayTime:Landroid/widget/TextView;

.field private btsDriverFeeDetailView:Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;

.field private btsDriverOrderOverlayout:Landroid/widget/RelativeLayout;

.field private btsFreeDeliver:Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;

.field private btsFromValueTextView:Landroid/widget/TextView;

.field private btsHaveTagsLayout:Landroid/widget/LinearLayout;

.field private btsHoldOrderStateBtn:Landroid/widget/Button;

.field private btsLiuyanLabelTextview:Landroid/widget/TextView;

.field private btsLiuyanLayout:Landroid/widget/LinearLayout;

.field private btsLiuyanTextview:Landroid/widget/TextView;

.field private btsNoTagsLayout:Landroid/widget/RelativeLayout;

.field private btsOtherToTaTags:Landroid/widget/TextView;

.field private btsPayLayout:Landroid/widget/RelativeLayout;

.field private btsRealPrice:Landroid/widget/TextView;

.field private btsSubmitCommentBtn:Landroid/widget/Button;

.field private btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

.field private btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

.field private btsToValueTextView:Landroid/widget/TextView;

.field private btsWhyCancelTV:Landroid/widget/TextView;

.field private btsXingchengFee:Landroid/widget/TextView;

.field private btsXingchengRLayout:Landroid/view/View;

.field private bts_from_textview:Landroid/widget/TextView;

.field private bts_to_textview:Landroid/widget/TextView;

.field private cancelLayout:Landroid/widget/LinearLayout;

.field private hongbaoBtn:Landroid/widget/RelativeLayout;

.field private hongbaoBtnImg:Landroid/widget/ImageButton;

.field private hongbaoBtnTxt:Landroid/widget/TextView;

.field private inputListener:Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;

.field private instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

.field private isMapInit:Z

.field private leftTagTV:Landroid/widget/TextView;

.field private leftTxtTV:Landroid/widget/TextView;

.field private line1:Landroid/view/View;

.field private line2:Landroid/view/View;

.field private listener:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;

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

.field private mBtsOrderDriverStriveResult:Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

.field private mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private mFrom:I

.field private mHandler:Landroid/os/Handler;

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

.field private mShowAddRoute:Z

.field private mTags:[Ljava/lang/String;

.field private mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

.field private mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

.field private mapView:Lcom/didi/beatles/map/BtsMapView;

.field private meToOtherTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

.field private mingxiBtnLayout:Landroid/widget/RelativeLayout;

.field private needShowProgressDialog:Z

.field private onDriverCommentResponse:Lcom/didi/beatles/net/BtsResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsBaseObject;",
            ">;"
        }
    .end annotation
.end field

.field private order:Lcom/didi/beatles/model/order/BtsOrderDriver;

.field private final orderCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private orderId:Ljava/lang/String;

.field private otherToMeTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

.field private otherToMeTitleLayout:Landroid/widget/RelativeLayout;

.field private pageStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;",
            ">;"
        }
    .end annotation
.end field

.field private passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

.field private routeId:Ljava/lang/String;

.field private shareBtn:Landroid/widget/RelativeLayout;

.field private shareBtnImg:Landroid/widget/ImageButton;

.field private shareBtnTxt:Landroid/widget/TextView;

.field private striveOrderListener:Landroid/view/View$OnClickListener;

.field private striveResponse:Lcom/didi/beatles/net/BtsResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;",
            ">;"
        }
    .end annotation
.end field

.field private submitListener:Landroid/view/View$OnClickListener;

.field private tagEditLayoutClickListener:Landroid/view/View$OnClickListener;

.field private tagEditText:Landroid/widget/EditText;

.field private titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 115
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    .line 160
    iput-boolean v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->isMapInit:Z

    .line 177
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mTags:[Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mSelectTags:Ljava/util/Map;

    .line 180
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TAG_CNT:I

    .line 181
    const/16 v0, 0xa

    iput v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TXT_IN_TAG:I

    .line 236
    iput-boolean v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->needShowProgressDialog:Z

    .line 243
    iput-boolean v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mShowAddRoute:Z

    .line 548
    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$6;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$6;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 1033
    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$9;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$9;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditLayoutClickListener:Landroid/view/View$OnClickListener;

    .line 1099
    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$10;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$10;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->submitListener:Landroid/view/View$OnClickListener;

    .line 1108
    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$11;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->inputListener:Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;

    .line 1191
    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$12;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->onDriverCommentResponse:Lcom/didi/beatles/net/BtsResponseListener;

    .line 1962
    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$19;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$19;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->striveOrderListener:Landroid/view/View$OnClickListener;

    .line 2004
    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$21;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$21;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->arrivedPasngerListener:Landroid/view/View$OnClickListener;

    .line 2187
    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$26;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->striveResponse:Lcom/didi/beatles/net/BtsResponseListener;

    .line 2311
    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$27;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$27;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 2559
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsTitleBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TAG_CNT:I

    return v0
.end method

.method static synthetic access$1300(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->submitComment()V

    return-void
.end method

.method static synthetic access$1400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshLeftTxt(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsXingchengRLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsPassengerProfileView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->switchToEditComment()V

    return-void
.end method

.method static synthetic access$2000(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsFlowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshLeftTag(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/map/BtsMapView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->needShowProgressDialog:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->needShowProgressDialog:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->listener:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showRetrySubmitComment(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mTags:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Ljava/lang/String;ZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->doAddText(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->actionDone()V

    return-void
.end method

.method static synthetic access$2900(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showStriveConfirm()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->switchToOrderOverLayout()V

    return-void
.end method

.method static synthetic access$3000(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/common/helper/DialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsFreeDeliver:Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->sendPassenger(ZZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshViewStatus()V

    return-void
.end method

.method static synthetic access$3400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showComfirmDialog(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->striveOrder()V

    return-void
.end method

.method static synthetic access$3600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mBtsOrderDriverStriveResult:Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mBtsOrderDriverStriveResult:Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mergeStriveResultToOrder(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V

    return-void
.end method

.method static synthetic access$3802(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mShowAddRoute:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showAddRouteDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showStrivedDialog(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showReStriveConfirm(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->loadingLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->setOrder(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showRetryComfirm(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshHoldOrderStateBtn()V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->inputListener:Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I

    return v0
.end method

.method static synthetic access$800(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->routeId:Ljava/lang/String;

    return-object v0
.end method

.method private actionDone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1597
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1598
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TXT_IN_TAG:I

    if-gt v2, v3, :cond_1

    .line 1599
    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->idxTextTag(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 1600
    const/4 v2, -0x1

    invoke-direct {p0, v1, v4, v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->doAddText(Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1602
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mSelectTags:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTagItem;

    .local v0, item:Lcom/didi/beatles/ui/component/BtsTagItem;
    if-eqz v0, :cond_0

    .line 1603
    iget-object v2, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1607
    .end local v0           #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1609
    :cond_1
    return-void
.end method

.method private addRoute()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 465
    const/4 v2, 0x4

    .line 466
    .local v2, length:I
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->isAvalibleRouteId()Z

    move-result v6

    if-nez v6, :cond_0

    .line 467
    const/4 v2, 0x3

    .line 469
    :cond_0
    new-array v4, v2, [Lcom/didi/beatles/map/BtsRoutePoint;

    .line 472
    .local v4, points:[Lcom/didi/beatles/map/BtsRoutePoint;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    array-length v6, v4

    if-ge v1, v6, :cond_8

    .line 473
    new-instance v3, Lcom/didi/beatles/map/BtsRoutePoint;

    invoke-direct {v3}, Lcom/didi/beatles/map/BtsRoutePoint;-><init>()V

    .line 474
    .local v3, point:Lcom/didi/beatles/map/BtsRoutePoint;
    if-nez v1, :cond_2

    .line 475
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->isAvalibleRouteId()Z

    move-result v6

    if-nez v6, :cond_7

    .line 476
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-wide v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_strive_lat:D

    double-to-int v6, v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-wide v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_strive_lng:D

    double-to-int v6, v6

    if-nez v6, :cond_6

    .line 477
    :cond_1
    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLat()D

    move-result-wide v6

    iput-wide v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->lat:D

    .line 478
    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLng()D

    move-result-wide v6

    iput-wide v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->lng:D

    .line 489
    :goto_1
    const/4 v6, 0x1

    iput v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->type:I

    .line 491
    :cond_2
    if-ne v1, v10, :cond_3

    .line 494
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_to_name:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->name:Ljava/lang/String;

    .line 495
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_to_address:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->addr:Ljava/lang/String;

    .line 496
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-wide v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_to_lat:D

    iput-wide v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->lat:D

    .line 497
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-wide v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_to_lng:D

    iput-wide v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->lng:D

    .line 498
    const/4 v6, 0x2

    iput v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->type:I

    .line 501
    :cond_3
    if-ne v1, v8, :cond_4

    .line 502
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->from_name:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->name:Ljava/lang/String;

    .line 503
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->from_address:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->addr:Ljava/lang/String;

    .line 504
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-wide v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->from_lat:D

    iput-wide v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->lat:D

    .line 505
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-wide v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->from_lng:D

    iput-wide v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->lng:D

    .line 506
    const/4 v6, 0x3

    iput v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->type:I

    .line 508
    :cond_4
    if-ne v1, v9, :cond_5

    .line 509
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->to_name:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->name:Ljava/lang/String;

    .line 510
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->to_address:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->addr:Ljava/lang/String;

    .line 511
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-wide v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->to_lat:D

    iput-wide v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->lat:D

    .line 512
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-wide v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->to_lng:D

    iput-wide v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->lng:D

    .line 513
    const/4 v6, 0x4

    iput v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->type:I

    .line 515
    :cond_5
    aput-object v3, v4, v1

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 480
    :cond_6
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-wide v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_strive_lat:D

    iput-wide v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->lat:D

    .line 481
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-wide v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_strive_lng:D

    iput-wide v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->lng:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 517
    .end local v3           #point:Lcom/didi/beatles/map/BtsRoutePoint;
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 519
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5730\u5740\u89e3\u6790\u9519\u8bef\uff1aorder="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    invoke-virtual {v7}, Lcom/didi/beatles/model/order/BtsOrderDriver;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "errMsg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 520
    const v6, 0x7f0b005a

    invoke-virtual {p0, v6}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0b0023

    invoke-virtual {p0, v7}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0b000e

    invoke-virtual {p0, v8}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$5;

    invoke-direct {v9, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$5;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-static {p0, v6, v7, v8, v9}, Lcom/didi/beatles/helper/BtsDialogHelper;->showConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;

    .line 539
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :goto_2
    return-void

    .line 484
    .restart local v3       #point:Lcom/didi/beatles/map/BtsRoutePoint;
    :cond_7
    :try_start_1
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_from_name:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->name:Ljava/lang/String;

    .line 485
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_from_address:Ljava/lang/String;

    iput-object v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->addr:Ljava/lang/String;

    .line 486
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-wide v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_from_lat:D

    iput-wide v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->lat:D

    .line 487
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-wide v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_from_lng:D

    iput-wide v6, v3, Lcom/didi/beatles/map/BtsRoutePoint;->lng:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 537
    .end local v3           #point:Lcom/didi/beatles/map/BtsRoutePoint;
    :cond_8
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getTopAndBottom()[I

    move-result-object v5

    .line 538
    .local v5, topAndBottom:[I
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->gender:I

    const/4 v7, 0x0

    aget v7, v5, v7

    aget v8, v5, v8

    invoke-static {p0, v6, v4, v7, v8}, Lcom/didi/beatles/map/BtsMapHelper;->addRoutes(Landroid/content/Context;I[Lcom/didi/beatles/map/BtsRoutePoint;II)V

    goto :goto_2
.end method

.method private bottomHiddenAll()V
    .locals 2

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1937
    :cond_0
    return-void
.end method

.method private bottomJustShowHongbaoBtn()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 1860
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1863
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1865
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1866
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1867
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->setHongBaoBtnListener()V

    .line 1869
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsHongBao;->button_icon:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsHongBao;->button_text:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1870
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsHongBao;->button_icon:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtnImg:Landroid/widget/ImageButton;

    const v2, 0x7f02008f

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 1871
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtnTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsHongBao;->button_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1873
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1874
    return-void
.end method

.method private bottomJustShowShareBtn()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 1838
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1841
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1842
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->setShareBtnListener()V

    .line 1844
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsShare;->button_icon:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsShare;->button_text:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1845
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsShare;->button_icon:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtnImg:Landroid/widget/ImageButton;

    const v2, 0x7f020320

    invoke-static {v0, v1, v2}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 1846
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtnTxt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsHongBao;->button_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1848
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1849
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1850
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1852
    :cond_3
    return-void
.end method

.method private bottomJustShowStateBtn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1822
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1824
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1825
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1826
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1827
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1828
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1829
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1830
    :cond_3
    return-void
.end method

.method private bottomShowShareAndHongbaoBtn()V
    .locals 7

    .prologue
    const v6, 0x7f090004

    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 1882
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1883
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1884
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 1885
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1886
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->setShareBtnListener()V

    .line 1888
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1889
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1890
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->setHongBaoBtnListener()V

    .line 1892
    :cond_2
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsHongBao;->button_icon:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsHongBao;->button_text:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1893
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsHongBao;->button_icon:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtnImg:Landroid/widget/ImageButton;

    const v4, 0x7f02008f

    invoke-static {v2, v3, v4}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 1894
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtnTxt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsHongBao;->button_text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1896
    :cond_3
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsShare;->button_icon:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsShare;->button_text:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1897
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsShare;->button_icon:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtnImg:Landroid/widget/ImageButton;

    const v4, 0x7f020320

    invoke-static {v2, v3, v4}, Lcom/didi/beatles/imageloader/BtsImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 1898
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtnTxt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsHongBao;->button_text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1900
    :cond_4
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1901
    .local v0, param:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1902
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1903
    .local v1, param1:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1904
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1905
    return-void
.end method

.method private checkOrderStatus(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    .locals 3
    .parameter "btsOrderDriverStriveResult"

    .prologue
    const/4 v2, 0x0

    .line 2293
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 2294
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_msg:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_cancel:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_confirm:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2298
    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_msg:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_confirm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2300
    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderCheck;->order_check_cancel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 2306
    :goto_0
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2307
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2308
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2309
    return-void

    .line 2302
    :cond_0
    const v1, 0x7f0b0088

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    const v1, 0x7f0b0361

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2304
    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doAddText(Ljava/lang/String;ZI)Z
    .locals 9
    .parameter "str"
    .parameter "bCustom"
    .parameter "idx"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1415
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->idxTextTag(Ljava/lang/String;)I

    move-result v2

    .line 1416
    .local v2, tempIdx:I
    if-ltz v2, :cond_1

    .line 1417
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTagItem;

    .line 1418
    .local v0, item:Lcom/didi/beatles/ui/component/BtsTagItem;
    iput-boolean v5, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->tagCustomEdit:Z

    .line 1419
    iput v2, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->idx:I

    .line 1420
    iget-object v5, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1458
    .end local v0           #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_0
    :goto_0
    return v4

    .line 1423
    :cond_1
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1424
    .local v1, tagCnt:I
    iget v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TAG_CNT:I

    if-ne v1, v6, :cond_2

    .line 1425
    invoke-direct {p0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshLeftTag(I)V

    move v4, v5

    .line 1426
    goto :goto_0

    .line 1428
    :cond_2
    new-instance v0, Lcom/didi/beatles/ui/component/BtsTagItem;

    invoke-direct {v0}, Lcom/didi/beatles/ui/component/BtsTagItem;-><init>()V

    .line 1429
    .restart local v0       #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    iput-object p1, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    .line 1430
    iput-boolean p2, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->tagCustomEdit:Z

    .line 1431
    iput p3, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->idx:I

    .line 1432
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030042

    iget-object v8, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v6, v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 1434
    .local v3, view:Landroid/widget/CheckedTextView;
    iput-object v3, v0, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    .line 1435
    invoke-virtual {v3, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1436
    new-instance v5, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$15;

    invoke-direct {v5, p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$15;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1448
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v5, v3, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->addView(Landroid/view/View;I)V

    .line 1449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "btsTagEditLayout height= add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v6}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1450
    add-int/lit8 v1, v1, 0x1

    .line 1451
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v1, v5, :cond_3

    .line 1452
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1453
    :cond_3
    invoke-direct {p0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshLeftTag(I)V

    .line 1454
    iget v5, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TAG_CNT:I

    if-ne v1, v5, :cond_0

    .line 1455
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1456
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->inputListener:Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;

    invoke-static {v5, v6, v7}, Lcom/didi/beatles/common/utils/BtsSoftInputUtils;->hiddenSoftInput(Landroid/app/Activity;Landroid/widget/EditText;Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;)V

    goto/16 :goto_0
.end method

.method private getTopAndBottom()[I
    .locals 4

    .prologue
    .line 443
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 444
    .local v2, topAndBottom:[I
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    .line 445
    .local v1, top:I
    const/4 v3, 0x0

    aput v1, v2, v3

    .line 446
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 447
    .local v0, bottom:I
    const/4 v3, 0x1

    aput v0, v2, v3

    .line 448
    return-object v2
.end method

.method private getcancelOrderEvent()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 887
    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$8;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$8;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    .line 921
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    return-object v0
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 339
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "from"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I

    .line 340
    const-string v1, "show"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mShowAddRoute:Z

    .line 341
    const-string v1, "ORDER_UI_PARAM_OID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    const v1, 0x7f0b005b

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 344
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->finish()V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const-string v1, "ORDER_UI_PARAM_ROUTE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->routeId:Ljava/lang/String;

    .line 348
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->routeId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    const-string v1, "0"

    iput-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->routeId:Ljava/lang/String;

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initTitlebar()V

    .line 359
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initLocationView()V

    .line 360
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->loadingLayout:Landroid/widget/RelativeLayout;

    .line 361
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->loadingLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 362
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/map/BtsMapView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    .line 363
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->line1:Landroid/view/View;

    .line 364
    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->line2:Landroid/view/View;

    .line 366
    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    .line 367
    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsScrollView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    .line 368
    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtn:Landroid/widget/RelativeLayout;

    .line 369
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    .line 371
    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtnImg:Landroid/widget/ImageButton;

    .line 372
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtnTxt:Landroid/widget/TextView;

    .line 373
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtnImg:Landroid/widget/ImageButton;

    .line 374
    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtnTxt:Landroid/widget/TextView;

    .line 376
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initPassengerProfileLayout()V

    .line 377
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initXingChengLayout()V

    .line 378
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLayout:Landroid/widget/LinearLayout;

    .line 379
    const v0, 0x7f080113

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanTextview:Landroid/widget/TextView;

    .line 380
    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLabelTextview:Landroid/widget/TextView;

    .line 382
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    .line 384
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsFreeDeliver:Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;

    .line 385
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initWatiPay()V

    .line 386
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initCommentPassenger()V

    .line 387
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initOrderOverLayout()V

    .line 388
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshViewStatus()V

    .line 389
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    new-instance v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$2;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$2;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->setOnGestureListener(Lcom/didi/beatles/ui/component/BtsScrollView$OnGestureListener;)V

    .line 415
    iget v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 416
    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$3;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    :cond_0
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showAddRouteDialog()V

    .line 424
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method private initCommentPassenger()V
    .locals 2

    .prologue
    .line 1022
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    .line 1023
    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    .line 1024
    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    .line 1025
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    .line 1026
    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    .line 1027
    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTagTV:Landroid/widget/TextView;

    .line 1028
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTxtTV:Landroid/widget/TextView;

    .line 1029
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1030
    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsSubmitCommentBtn:Landroid/widget/Button;

    .line 1031
    return-void
.end method

.method private initEditTagLayout()V
    .locals 2

    .prologue
    .line 1515
    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    .line 1516
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$16;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$16;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1528
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$17;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$17;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1551
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$18;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$18;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1583
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1588
    :goto_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshLeftTag(I)V

    .line 1589
    return-void

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private initLocationView()V
    .locals 2

    .prologue
    .line 429
    const v1, 0x7f0800c9

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 430
    .local v0, locationIcon:Landroid/widget/ImageView;
    new-instance v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$4;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$4;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    return-void
.end method

.method private initMainScroll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "status"
    .parameter "subStatus"

    .prologue
    const/16 v1, 0x8

    .line 700
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    if-nez v0, :cond_0

    .line 701
    const v0, 0x7f0800d8

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsScrollView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    .line 702
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->setVisibility(I)V

    .line 734
    :cond_1
    :goto_0
    return-void

    .line 709
    :cond_2
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 710
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 711
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->setVisibility(I)V

    .line 712
    :cond_3
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_WAIT_ARRIVE:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    :cond_4
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_WAIT_ARRIVE:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 717
    :cond_5
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 718
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->switchToWaitPay()V

    .line 719
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 722
    :cond_6
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 723
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->switchToEditComment()V

    goto :goto_0

    .line 724
    :cond_7
    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 725
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->switchToOrderOverLayout()V

    goto :goto_0

    .line 726
    :cond_8
    const-string v0, "5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 729
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->switchToOrderCanceled()V

    goto/16 :goto_0

    .line 730
    :cond_9
    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->switchToOrderCanceled()V

    goto/16 :goto_0
.end method

.method private initMap()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    if-nez v0, :cond_1

    .line 455
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/map/BtsMapView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    .line 456
    :cond_1
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->clearMap()V

    .line 457
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/map/BtsMapHelper;->initMap(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;)V

    .line 458
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->addRoute()V

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->isMapInit:Z

    goto :goto_0
.end method

.method private initOrderOverLayout()V
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverOrderOverlayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 993
    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverOrderOverlayout:Landroid/widget/RelativeLayout;

    .line 994
    :cond_0
    const v0, 0x7f0800f5

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsRealPrice:Landroid/widget/TextView;

    .line 995
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mingxiBtnLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 996
    const v0, 0x7f0800f7

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mingxiBtnLayout:Landroid/widget/RelativeLayout;

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsNoTagsLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 998
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsNoTagsLayout:Landroid/widget/RelativeLayout;

    .line 999
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHaveTagsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    .line 1000
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHaveTagsLayout:Landroid/widget/LinearLayout;

    .line 1001
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsAddTagBtn:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    .line 1002
    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsAddTagBtn:Landroid/widget/LinearLayout;

    .line 1003
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsAddTagBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1005
    :cond_4
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->meToOtherTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    if-nez v0, :cond_5

    .line 1006
    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->meToOtherTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    .line 1007
    :cond_5
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->otherToMeTitleLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_6

    .line 1008
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->otherToMeTitleLayout:Landroid/widget/RelativeLayout;

    .line 1009
    :cond_6
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->otherToMeTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    if-nez v0, :cond_7

    .line 1010
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->otherToMeTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    .line 1011
    :cond_7
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsOtherToTaTags:Landroid/widget/TextView;

    if-nez v0, :cond_8

    .line 1013
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsOtherToTaTags:Landroid/widget/TextView;

    .line 1014
    :cond_8
    return-void
.end method

.method private initPassengerProfileLayout()V
    .locals 1

    .prologue
    .line 1615
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    .line 1616
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->init()V

    .line 1617
    return-void
.end method

.method private initTagSelectionLayout()V
    .locals 17

    .prologue
    .line 1266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v13}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->removeAllViews()V

    .line 1267
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v13, v13, Lcom/didi/beatles/model/order/BtsOrderDriver;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    if-eqz v13, :cond_0

    .line 1268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v13, v13, Lcom/didi/beatles/model/order/BtsOrderDriver;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v13, v13, Lcom/didi/beatles/model/order/BtsCommentDetail;->allowTags:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mTags:[Ljava/lang/String;

    .line 1269
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mTags:[Ljava/lang/String;

    if-nez v13, :cond_1

    .line 1270
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mTags:[Ljava/lang/String;

    .line 1271
    :cond_1
    const/4 v7, 0x4

    .line 1272
    .local v7, maxLineNum:I
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v12

    .line 1273
    .local v12, windowWidth:I
    const/16 v13, 0x1e0

    if-gt v12, v13, :cond_2

    .line 1274
    const/4 v7, 0x2

    .line 1276
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mTags:[Ljava/lang/String;

    array-length v4, v13

    .line 1277
    .local v4, len:I
    const/4 v5, 0x1

    .line 1278
    .local v5, lineNum:I
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09000d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sub-int v9, v13, v14

    .line 1279
    .local v9, sizeWidth:I
    const/4 v6, 0x0

    .line 1280
    .local v6, lineWidth:I
    const/4 v1, 0x0

    .line 1281
    .local v1, childWidth:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 1282
    move v8, v2

    .line 1283
    .local v8, pos:I
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f030042

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckedTextView;

    .line 1285
    .local v11, text:Landroid/widget/CheckedTextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mTags:[Ljava/lang/String;

    aget-object v13, v13, v2

    invoke-virtual {v11, v13}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mTags:[Ljava/lang/String;

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->idxTextTag(Ljava/lang/String;)I

    move-result v10

    .line 1287
    .local v10, tempIdx:I
    if-ltz v10, :cond_3

    .line 1288
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1290
    :cond_3
    new-instance v13, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v8}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$14;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Landroid/widget/CheckedTextView;I)V

    invoke-virtual {v11, v13}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/widget/CheckedTextView;->measure(II)V

    .line 1304
    invoke-virtual {v11}, Landroid/widget/CheckedTextView;->getMeasuredWidth()I

    move-result v13

    const/high16 v14, 0x4100

    invoke-static {v14}, Lcom/didi/common/util/WindowUtil;->dip2px(F)I

    move-result v14

    add-int v1, v13, v14

    .line 1305
    add-int v13, v6, v1

    if-le v13, v9, :cond_5

    .line 1306
    move v6, v1

    .line 1307
    add-int/lit8 v5, v5, 0x1

    .line 1308
    if-le v5, v7, :cond_6

    .line 1324
    .end local v8           #pos:I
    .end local v10           #tempIdx:I
    .end local v11           #text:Landroid/widget/CheckedTextView;
    :cond_4
    return-void

    .line 1313
    .restart local v8       #pos:I
    .restart local v10       #tempIdx:I
    .restart local v11       #text:Landroid/widget/CheckedTextView;
    :cond_5
    add-int/2addr v6, v1

    .line 1315
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

    .line 1316
    new-instance v3, Lcom/didi/beatles/ui/component/BtsTagItem;

    invoke-direct {v3}, Lcom/didi/beatles/ui/component/BtsTagItem;-><init>()V

    .line 1317
    .local v3, item:Lcom/didi/beatles/ui/component/BtsTagItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mTags:[Ljava/lang/String;

    aget-object v13, v13, v8

    iput-object v13, v3, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    .line 1318
    const/4 v13, 0x0

    iput-boolean v13, v3, Lcom/didi/beatles/ui/component/BtsTagItem;->tagCustomEdit:Z

    .line 1319
    iput v8, v3, Lcom/didi/beatles/ui/component/BtsTagItem;->idx:I

    .line 1320
    iput-object v11, v3, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    .line 1321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mSelectTags:Ljava/util/Map;

    iget-object v14, v3, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    invoke-interface {v13, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagsForCommentLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v13, v11}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->addView(Landroid/view/View;)V

    .line 1281
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private initTitlebar()V
    .locals 2

    .prologue
    .line 542
    const v0, 0x7f0800de

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 543
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawableListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->hideRight()V

    .line 545
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method private initWatiPay()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 738
    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverFeeDetailView:Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;

    if-nez v0, :cond_1

    .line 740
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverFeeDetailView:Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;

    .line 741
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverFeeDetailView:Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->init()V

    .line 743
    :cond_1
    return-void
.end method

.method private initXingChengLayout()V
    .locals 1

    .prologue
    .line 1667
    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsXingchengRLayout:Landroid/view/View;

    .line 1668
    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDayTextView:Landroid/widget/TextView;

    .line 1669
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDayTime:Landroid/widget/TextView;

    .line 1671
    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bts_from_textview:Landroid/widget/TextView;

    .line 1672
    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bts_to_textview:Landroid/widget/TextView;

    .line 1674
    const v0, 0x7f08014a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsFromValueTextView:Landroid/widget/TextView;

    .line 1675
    const v0, 0x7f08014c

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsToValueTextView:Landroid/widget/TextView;

    .line 1676
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsXingchengFee:Landroid/widget/TextView;

    .line 1677
    return-void
.end method

.method private isAvalibleRouteId()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2548
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-nez v1, :cond_1

    .line 2552
    :cond_0
    :goto_0
    return v0

    .line 2550
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2552
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mergeStriveResultToOrder(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    .line 2252
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->substatus:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    .line 2253
    iget v0, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->minutes_to_go:I

    sput v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->minutesToGo:I

    .line 2254
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->minutes_to_go:I

    iput v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->minutesToGo:I

    .line 2255
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->price:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->price:Ljava/lang/String;

    .line 2256
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->price_details:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->priceDetails:Ljava/util/ArrayList;

    .line 2257
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->passenger_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->passenger_id:Ljava/lang/String;

    .line 2258
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->phone_num:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->phone_num:Ljava/lang/String;

    .line 2259
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->session_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->session_id:Ljava/lang/String;

    .line 2260
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-boolean v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->can_call:Z

    iput-boolean v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->can_call:Z

    .line 2261
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-boolean v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->can_im:Z

    iput-boolean v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->can_im:Z

    .line 2262
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->call_disabled_msg:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->call_disabled_msg:Ljava/lang/String;

    .line 2263
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->im_disabled_msg:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->im_disabled_msg:Ljava/lang/String;

    .line 2264
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->alterMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->alterMessage:Ljava/lang/String;

    .line 2265
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->alterGoStr:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->alterGoStr:Ljava/lang/String;

    .line 2266
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->alterCancleStr:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->alterCancleStr:Ljava/lang/String;

    .line 2267
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->alterGoUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->alterGoUrl:Ljava/lang/String;

    .line 2268
    iget-object v0, p1, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->order_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    .line 2269
    return-void
.end method

.method private refreshBottomBottoms()V
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-nez v0, :cond_0

    .line 932
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomHiddenAll()V

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    if-nez v0, :cond_1

    .line 934
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomHiddenAll()V

    .line 946
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsShare;->shareEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsHongBao;->hongBaoEnable:Z

    if-eqz v0, :cond_2

    .line 937
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomShowShareAndHongbaoBtn()V

    goto :goto_0

    .line 938
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsShare;->shareEnable:Z

    if-eqz v0, :cond_3

    .line 939
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomJustShowShareBtn()V

    goto :goto_0

    .line 940
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsHongBao;->hongBaoEnable:Z

    if-eqz v0, :cond_4

    .line 941
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomJustShowHongbaoBtn()V

    goto :goto_0

    .line 943
    :cond_4
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomHiddenAll()V

    goto :goto_0
.end method

.method private refreshHoldOrderStateBtn()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1752
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-nez v4, :cond_1

    .line 1814
    :cond_0
    :goto_0
    return-void

    .line 1755
    :cond_1
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsFreeDeliver:Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->setVisibility(I)V

    .line 1757
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v2, v4, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    .line 1758
    .local v2, status:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v4, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    .line 1759
    .local v3, subStatus:Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1760
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomJustShowStateBtn()V

    .line 1761
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1762
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1763
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    const v5, 0x7f0b002a

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1764
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->striveOrderListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1765
    :cond_2
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1766
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1767
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    const v5, 0x7f0b003e

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1768
    :cond_3
    const-string v4, "2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1769
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1770
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    const v5, 0x7f0b0043

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1772
    :cond_4
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1773
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomJustShowStateBtn()V

    .line 1774
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1775
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_5

    .line 1776
    new-instance v4, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$MyHandler;

    invoke-direct {v4, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$MyHandler;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    iput-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mHandler:Landroid/os/Handler;

    .line 1777
    :cond_5
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1778
    sget v4, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->minutesToGo:I

    const/16 v5, 0x3c

    if-ge v4, v5, :cond_6

    .line 1779
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    const v5, 0x7f0b0041

    invoke-virtual {p0, v5}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    sget v7, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->minutesToGo:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1786
    :goto_1
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Lcom/didi/beatles/common/alarm/BtsCommonAlarmManager;->startDriverAlarm(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 1781
    :cond_6
    sget v4, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->minutesToGo:I

    div-int/lit8 v0, v4, 0x3c

    .line 1782
    .local v0, hour:I
    sget v4, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->minutesToGo:I

    rem-int/lit8 v1, v4, 0x3c

    .line 1783
    .local v1, minutes:I
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    const v5, 0x7f0b003f

    invoke-virtual {p0, v5}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1787
    .end local v0           #hour:I
    .end local v1           #minutes:I
    :cond_7
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1788
    invoke-static {}, Lcom/didi/beatles/common/alarm/BtsCommonAlarmManager;->stopDriverAlarm()V

    .line 1789
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1790
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    const v5, 0x7f0b0049

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1791
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->arrivedPasngerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1793
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/didi/beatles/model/BtsConfig;->isOpenFree:Z

    if-eqz v4, :cond_0

    .line 1794
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsFreeDeliver:Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;

    iget-object v5, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v5, v5, Lcom/didi/beatles/model/order/BtsOrderDriver;->freePayDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->setPayDescription(Ljava/lang/CharSequence;)V

    .line 1795
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsFreeDeliver:Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;

    invoke-virtual {v4, v8}, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 1798
    :cond_8
    const-string v4, "2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1799
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomHiddenAll()V

    .line 1800
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 1802
    :cond_9
    const-string v4, "3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1803
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomJustShowShareBtn()V

    goto/16 :goto_0

    .line 1804
    :cond_a
    const-string v4, "4"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1805
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomJustShowShareBtn()V

    goto/16 :goto_0

    .line 1806
    :cond_b
    const-string v4, "5"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1807
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1808
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1809
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHoldOrderStateBtn:Landroid/widget/Button;

    const v5, 0x7f0b003d

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 1810
    :cond_c
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1811
    const-string v4, "2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

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

    .line 1382
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTagTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTagTV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTxtTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTxtTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1386
    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1387
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsSubmitCommentBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1388
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setBackgroundResource(I)V

    .line 1393
    :goto_0
    iget v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TAG_CNT:I

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_4

    .line 1395
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTagTV:Landroid/widget/TextView;

    const v1, 0x7f0b001b

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TAG_CNT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1396
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTagTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, v5, v6}, Lcom/didi/beatles/common/utils/BtsViewUtil;->changeColor(Landroid/widget/TextView;IIII)V

    .line 1403
    :goto_1
    return-void

    .line 1390
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsSubmitCommentBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1391
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1399
    :cond_4
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTagTV:Landroid/widget/TextView;

    const v1, 0x7f0b0016

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TAG_CNT:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTagTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

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

    .line 1348
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTagTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1349
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTagTV:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1350
    :cond_0
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTxtTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-ne v4, v11, :cond_1

    .line 1351
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTxtTV:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1352
    :cond_1
    iget v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TXT_IN_TAG:I

    if-le p1, v4, :cond_2

    .line 1353
    iget v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TXT_IN_TAG:I

    sub-int v0, p1, v4

    .line 1354
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

    .line 1355
    .local v3, len:I
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTxtTV:Landroid/widget/TextView;

    const v5, 0x7f0b0018

    invoke-virtual {p0, v5}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TXT_IN_TAG:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTxtTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

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

    .line 1358
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsSubmitCommentBtn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1372
    .end local v0           #chao:I
    .end local v3           #len:I
    :goto_0
    return-void

    .line 1360
    :cond_2
    iget v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TXT_IN_TAG:I

    sub-int v2, v4, p1

    .line 1361
    .local v2, l:I
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTxtTV:Landroid/widget/TextView;

    const v5, 0x7f0b0017

    invoke-virtual {p0, v5}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    const/4 v1, 0x0

    .line 1363
    .local v1, endI:I
    const/16 v4, 0xa

    if-ge v2, v4, :cond_3

    .line 1364
    const/4 v1, 0x6

    .line 1368
    :goto_1
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->leftTxtTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07003f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v4, v5, v6, v1, v12}, Lcom/didi/beatles/common/utils/BtsViewUtil;->changeColor(Landroid/widget/TextView;IIII)V

    .line 1370
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsSubmitCommentBtn:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1366
    :cond_3
    const/4 v1, 0x7

    goto :goto_1

    .line 1356
    :array_0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private refreshLiuyanData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "status"
    .parameter "subStatus"

    .prologue
    const/16 v2, 0x8

    .line 656
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-nez v0, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->extra_info:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 659
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 665
    :goto_1
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 671
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 661
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLabelTextview:Landroid/widget/TextView;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 663
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->extra_info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 674
    :cond_3
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 675
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 676
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 677
    :cond_4
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 679
    :cond_5
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 680
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 682
    :cond_6
    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 683
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 685
    :cond_7
    const-string v0, "5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 687
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsLiuyanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 688
    :cond_8
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method private refreshPassengerProfile()V
    .locals 5

    .prologue
    .line 1623
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-nez v2, :cond_1

    .line 1649
    :cond_0
    :goto_0
    return-void

    .line 1625
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    .line 1626
    .local v0, status:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    .line 1627
    .local v1, subStatus:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->setPassengerData(Lcom/didi/beatles/model/order/BtsOrderDriver;Landroid/view/View$OnClickListener;)V

    .line 1629
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1630
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1631
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1632
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1634
    :cond_2
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1635
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1636
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1638
    :cond_3
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1639
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1641
    :cond_4
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1642
    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1643
    const-string v2, "5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1644
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1645
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1646
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0
.end method

.method private refreshTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "status"
    .parameter "subStatus"

    .prologue
    const v7, 0x7f0b0056

    const v6, 0x7f0b0050

    const v3, 0x7f0b0011

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 599
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 605
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 609
    :cond_2
    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 612
    :cond_3
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 613
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    if-eqz v0, :cond_4

    .line 614
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b0036

    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getcancelOrderEvent()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 616
    :cond_4
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 617
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0, v7}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 618
    :cond_5
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0, v7}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto :goto_0

    .line 621
    :cond_6
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 622
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v0, :cond_7

    .line 623
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    invoke-static {v1, v2, v5, v4}, Lcom/didi/beatles/common/BtsCommonListeners;->getComplainListener(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 625
    :cond_7
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto/16 :goto_0

    .line 628
    :cond_8
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 629
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 630
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {p0, v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    invoke-static {v2, v3, v5, v4}, Lcom/didi/beatles/common/BtsCommonListeners;->getComplainListener(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 633
    :cond_9
    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 634
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 635
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {p0, v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    invoke-static {v2, v3, v5, v4}, Lcom/didi/beatles/common/BtsCommonListeners;->getComplainListener(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 638
    :cond_a
    const-string v0, "5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 639
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v0, :cond_b

    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 640
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {p0, v3}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    invoke-static {v2, v3, v5, v4}, Lcom/didi/beatles/common/BtsCommonListeners;->getComplainListener(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 642
    :cond_b
    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 643
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0, v6}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto/16 :goto_0

    .line 644
    :cond_c
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 645
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0, v6}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto/16 :goto_0

    .line 646
    :cond_d
    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    goto/16 :goto_0

    .line 650
    :cond_e
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0, v6}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 651
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->hideRight()V

    goto/16 :goto_0
.end method

.method private refreshViewStatus()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-nez v0, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-boolean v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->isMapInit:Z

    if-nez v0, :cond_3

    const-string v0, "0"

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    :cond_2
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initMap()V

    .line 580
    :cond_3
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshPassengerProfile()V

    .line 581
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshXingChengData()V

    .line 582
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshHoldOrderStateBtn()V

    .line 583
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshLiuyanData(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initMainScroll(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v0, "3"

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "0"

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_4

    .line 587
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->switchToEditComment()V

    .line 589
    :cond_4
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->setDatas([Lcom/didi/beatles/model/order/BtsUserRate;)V

    goto :goto_0
.end method

.method private refreshXingChengData()V
    .locals 6

    .prologue
    const v5, 0x7f070021

    .line 1703
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-nez v2, :cond_1

    .line 1746
    :cond_0
    :goto_0
    return-void

    .line 1705
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    .line 1706
    .local v0, status:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    .line 1707
    .local v1, subStatus:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDayTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDayTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v4, v4, Lcom/didi/beatles/model/order/BtsOrderDriver;->text_setup_time:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->setSetUpTime(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1708
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsFromValueTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->from_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1709
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsToValueTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->to_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1710
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsXingchengFee:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->price:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1711
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1712
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1713
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1714
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1716
    :cond_2
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1717
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1718
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1720
    :cond_3
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1721
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1724
    :cond_4
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1726
    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1728
    const-string v2, "5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1729
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDayTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1730
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDayTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1731
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsFromValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1733
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsToValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1736
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bts_from_textview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1738
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bts_to_textview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1741
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1742
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1743
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0
.end method

.method private sendPassenger(ZZ)V
    .locals 4
    .parameter "isAsk"
    .parameter "isFree"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2013
    const v2, 0x7f0b0032

    invoke-virtual {p0, v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 2015
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    new-instance v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$22;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-static {v3, v2, v0, v1}, Lcom/didi/beatles/net/BtsRequest;->driverConfirmSended(Ljava/lang/String;IILcom/didi/beatles/net/BtsResponseListener;)V

    .line 2078
    return-void

    :cond_0
    move v2, v1

    .line 2015
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private setHongBaoBtnListener()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1924
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->hongbaoBtn:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsHongBao;->share:Lcom/didi/beatles/model/order/BtsShare;

    invoke-static {v3}, Lcom/didi/beatles/common/utils/BtsShareUtil;->getShareInfo(Lcom/didi/beatles/model/order/BtsShare;)Lcom/didi/beatles/model/BtsShareMode;

    move-result-object v3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/didi/beatles/common/BtsCommonListeners;->getShareListener(Landroid/app/Activity;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;ZZ)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1927
    return-void
.end method

.method private setOrder(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 2466
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    .line 2467
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    .line 2468
    return-void
.end method

.method private setSetUpTime(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5
    .parameter "day"
    .parameter "hour"
    .parameter "msg"

    .prologue
    const/4 v4, -0x1

    .line 1680
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1681
    const-string v3, ""

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1683
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1697
    :cond_0
    :goto_0
    return-void

    .line 1687
    :cond_1
    const-string v3, "|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1688
    const-string v3, "|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1689
    .local v2, pos:I
    if-eq v2, v4, :cond_0

    .line 1690
    const/4 v3, 0x0

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1691
    .local v0, day_tmp:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1692
    .local v1, hour_tmp:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1693
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setShareBtnListener()V
    .locals 7

    .prologue
    .line 1914
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtn:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    invoke-static {v3}, Lcom/didi/beatles/common/utils/BtsShareUtil;->getShareInfo(Lcom/didi/beatles/model/order/BtsShare;)Lcom/didi/beatles/model/BtsShareMode;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/didi/beatles/common/BtsCommonListeners;->getShareListener(Landroid/app/Activity;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;ZZ)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1916
    return-void
.end method

.method private showAddRouteDialog()V
    .locals 3

    .prologue
    .line 286
    iget-boolean v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mShowAddRoute:Z

    if-nez v1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->isHasRoute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isFristAddRoute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setFristAddRouteFlag(Z)V

    .line 300
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 301
    .local v0, mDialogHelper:Lcom/didi/common/helper/DialogHelper;
    const-string v1, ""

    const v2, 0x7f0b007d

    invoke-virtual {p0, v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 304
    const v1, 0x7f0b007c

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 305
    const v1, 0x7f0b007b

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(I)V

    .line 306
    new-instance v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$1;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$1;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 322
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showComfirmDialog(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 1981
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 1982
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const-string v1, ""

    iget-object v2, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->alert_msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 1984
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->alert_cancel_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 1985
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->alert_go_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 1986
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    new-instance v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$20;

    invoke-direct {v1, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$20;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2000
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2001
    return-void
.end method

.method private showReStriveConfirm(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 2161
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->isViewValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2162
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-virtual {p0, v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$25;

    invoke-direct {v3, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$25;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->showConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;

    .line 2179
    :cond_0
    return-void
.end method

.method private showRetryComfirm(Lcom/didi/beatles/model/order/BtsOrderDriver;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 2413
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2455
    :goto_0
    return-void

    .line 2417
    :cond_0
    const-string v0, ""

    .line 2418
    .local v0, msg:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 2419
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 2424
    :goto_1
    iget v1, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;->errno:I

    const v2, 0xf6c12

    if-ne v1, v2, :cond_2

    .line 2425
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u77e5\u9053\u4e86"

    new-instance v3, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$28;

    invoke-direct {v3, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$28;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-static {p0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->showOkDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)V

    goto :goto_0

    .line 2421
    :cond_1
    const v1, 0x7f0b003b

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2433
    :cond_2
    const v1, 0x7f0b0023

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$29;

    invoke-direct {v3, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$29;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->showConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;

    goto :goto_0
.end method

.method private showRetrySubmitComment(Ljava/lang/String;I)V
    .locals 4
    .parameter "errMsg"
    .parameter "errno"

    .prologue
    .line 1238
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$13;

    invoke-direct {v3, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$13;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->showConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;

    .line 1258
    :cond_0
    return-void
.end method

.method private showStriveConfirm()V
    .locals 4

    .prologue
    .line 2081
    const v0, 0x7f0b00af

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b00b0

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b00ae

    invoke-virtual {p0, v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$23;

    invoke-direct {v3, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$23;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/didi/beatles/helper/BtsDialogHelper;->showConfirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;

    .line 2119
    return-void
.end method

.method private showStrivedDialog(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 2144
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->isViewValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0065

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$24;

    invoke-direct {v2, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$24;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/didi/beatles/helper/BtsDialogHelper;->showOkDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)V

    .line 2153
    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "from"
    .parameter "orderId"
    .parameter "route_id"

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->startActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 249
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "activity"
    .parameter "from"
    .parameter "orderId"
    .parameter "route_id"
    .parameter "showAddRoute"

    .prologue
    .line 252
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    const v2, 0x7f0b005b

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 266
    :goto_0
    return-void

    .line 257
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "ORDER_UI_PARAM_OID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v2, "ORDER_UI_PARAM_ROUTE_ID"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v2, "from"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v2, "show"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    const/16 v2, 0x77

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

.method private striveOrder()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2122
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2141
    :cond_0
    :goto_0
    return-void

    .line 2124
    :cond_1
    const-string v0, "pbdxmgrorder01_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2125
    const-string v0, "pbdxwporder02_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2127
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v6

    .line 2128
    .local v6, info:Lcom/didi/beatles/model/role/BtsRoleInfo;
    invoke-virtual {v6}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->base_state:Z

    if-nez v0, :cond_2

    .line 2129
    invoke-static {p0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->startActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 2134
    :cond_2
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/didi/beatles/helper/BtsPermissionUtils;->checkAndShowLocationPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 2135
    .local v7, result:Z
    if-eqz v7, :cond_0

    .line 2139
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    const-string v2, "delete_item"

    invoke-virtual {v0, v1, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2140
    iget v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->routeId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->striveResponse:Lcom/didi/beatles/net/BtsResponseListener;

    invoke-static/range {v0 .. v5}, Lcom/didi/beatles/net/BtsRequest;->driverStriveOrder(ILjava/lang/String;Ljava/lang/String;JLcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0
.end method

.method private submitComment()V
    .locals 9

    .prologue
    .line 1147
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v7, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->inputListener:Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;

    invoke-static {v6, v7, v8}, Lcom/didi/beatles/common/utils/BtsSoftInputUtils;->hiddenSoftInput(Landroid/app/Activity;Landroid/widget/EditText;Lcom/didi/beatles/common/utils/BtsSoftInputUtils$OnSoftInputChangeListener;)V

    .line 1149
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1186
    :goto_0
    return-void

    .line 1151
    :cond_0
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1152
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->actionDone()V

    .line 1154
    :cond_1
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1155
    const v6, 0x7f0b000b

    invoke-static {v6}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    goto :goto_0

    .line 1158
    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1159
    .local v3, tagArr:Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1161
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 1162
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/beatles/ui/component/BtsTagItem;

    iget-object v5, v6, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    .line 1163
    .local v5, tmpTxt:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TXT_IN_TAG:I

    if-le v6, v7, :cond_3

    .line 1164
    const/4 v6, 0x0

    iget v7, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->MAX_TXT_IN_TAG:I

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1166
    :cond_3
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1168
    .end local v5           #tmpTxt:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1169
    .local v4, tags:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1170
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v6, "["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1171
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mUserRateContainer:Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    if-eqz v6, :cond_6

    .line 1172
    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    array-length v6, v6

    if-ge v0, v6, :cond_6

    .line 1173
    const-string v6, "{"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\"rate_cid\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v7, v7, Lcom/didi/beatles/model/order/BtsOrderDriver;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

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

    .line 1175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\"rate_tag\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v7, v7, Lcom/didi/beatles/model/order/BtsOrderDriver;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/didi/beatles/model/order/BtsUserRate;->mRateDetails:[Ljava/lang/String;

    iget-object v8, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v8, v8, Lcom/didi/beatles/model/order/BtsOrderDriver;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

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

    .line 1176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\"rate_tagid\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v7, v7, Lcom/didi/beatles/model/order/BtsOrderDriver;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/didi/beatles/model/order/BtsUserRate;->mChoice:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1177
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsOrderDriver;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_5

    .line 1178
    const-string v6, "},"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1172
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1180
    :cond_5
    const-string v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1184
    :cond_6
    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1185
    iget-object v6, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->onDriverCommentResponse:Lcom/didi/beatles/net/BtsResponseListener;

    invoke-static {v6, v4, v7, v8}, Lcom/didi/beatles/net/BtsRequest;->submitTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto/16 :goto_0
.end method

.method private switchToEditComment()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1050
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->switchToOrderOverLayout()V

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    const-string v0, "pbdwcomment01_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1058
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1059
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsSubmitCommentBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->submitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->line1:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->line2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1064
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0, v3}, Lcom/didi/beatles/map/BtsMapView;->setVisibility(I)V

    .line 1066
    :cond_3
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshBottomBottoms()V

    .line 1067
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 1068
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    invoke-virtual {v0, v2}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->setVisibility(I)V

    .line 1069
    :cond_4
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_WAIT_PAY:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1070
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 1071
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1072
    :cond_5
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomHiddenAll()V

    .line 1073
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateDownToUpAnim(Landroid/view/View;Z)Z

    .line 1074
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateDownToUpAnim(Landroid/view/View;Z)Z

    .line 1076
    :cond_6
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverOrderOverlayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_7

    .line 1077
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initOrderOverLayout()V

    .line 1078
    :cond_7
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverOrderOverlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 1079
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverOrderOverlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1080
    :cond_8
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_ORDER_OVER:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1081
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1082
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomHiddenAll()V

    .line 1083
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverOrderOverlayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateDownToUpAnim(Landroid/view/View;Z)Z

    .line 1084
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateDownToUpAnim(Landroid/view/View;Z)Z

    .line 1086
    :cond_9
    const-string v0, "3"

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1087
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1088
    :cond_a
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initTagSelectionLayout()V

    .line 1089
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initEditTagLayout()V

    .line 1090
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->smoothScrollTo(II)V

    .line 1091
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_EDIT_COMMENT:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_EDIT_COMMENT:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private switchToOrderCanceled()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x8

    .line 955
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->setVisibility(I)V

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/map/BtsMapView;->setVisibility(I)V

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->cancelLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    .line 963
    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->cancelLayout:Landroid/widget/LinearLayout;

    .line 964
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->cancelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 965
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->cancelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 966
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 967
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 968
    :cond_4
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 969
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    invoke-virtual {v0, v4}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->setVisibility(I)V

    .line 970
    :cond_5
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsShare;->shareEnable:Z

    if-eqz v0, :cond_8

    .line 971
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomJustShowShareBtn()V

    .line 972
    iget-object v7, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->shareBtn:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->titleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x11

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    invoke-static {v0}, Lcom/didi/beatles/common/utils/BtsShareUtil;->getShareInfo(Lcom/didi/beatles/model/order/BtsShare;)Lcom/didi/beatles/model/BtsShareMode;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/didi/beatles/common/BtsCommonListeners;->getShareListener(Landroid/app/Activity;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;ZZ)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 974
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsShare;->shareEnable:Z

    if-nez v0, :cond_7

    .line 975
    :cond_6
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomHiddenAll()V

    .line 980
    :cond_7
    :goto_0
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsWhyCancelTV:Landroid/widget/TextView;

    .line 981
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 982
    .local v6, btsCancelTitle:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_terminate_by:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsWhyCancelTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->orderCancelDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    return-void

    .line 978
    .end local v6           #btsCancelTitle:Landroid/widget/TextView;
    :cond_8
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->bottomHiddenAll()V

    goto :goto_0
.end method

.method private switchToOrderOverLayout()V
    .locals 14

    .prologue
    const v13, 0x7f0800f6

    const v12, 0x7f0800f4

    const/4 v5, 0x1

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 793
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_ORDER_OVER:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0, v11}, Lcom/didi/beatles/map/BtsMapView;->setVisibility(I)V

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsScrollView;->getVisibility()I

    move-result v0

    if-ne v0, v11, :cond_2

    .line 800
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0, v10}, Lcom/didi/beatles/ui/component/BtsScrollView;->setVisibility(I)V

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderDriver;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 804
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverOrderOverlayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    .line 805
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->initOrderOverLayout()V

    .line 806
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverOrderOverlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v11, :cond_4

    .line 807
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverOrderOverlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 808
    :cond_4
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 809
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 810
    :cond_5
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->getVisibility()I

    move-result v0

    if-ne v0, v11, :cond_6

    .line 811
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    invoke-virtual {v0, v10}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->setVisibility(I)V

    .line 812
    :cond_6
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsRealPrice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->paySuccessPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v0, :cond_7

    .line 814
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mingxiBtnLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v2, v2, Lcom/didi/beatles/model/order/BtsOrderDriver;->paySuccessDetailUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v3, v3, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-static {v1, v2, v3, v4, v5}, Lcom/didi/beatles/common/BtsCommonListeners;->getPriceDetailListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    :cond_7
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_EDIT_COMMENT:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 819
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverOrderOverlayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v5}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateUpToDownAnim(Landroid/view/View;Z)Z

    .line 820
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsCommentLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v10}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateUpToDownAnim(Landroid/view/View;Z)Z

    .line 822
    :cond_8
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshBottomBottoms()V

    .line 823
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderDriver;->isCommentPassenger()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 824
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_EDIT_COMMENT:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsHongBao;->hongBaoEnable:Z

    if-eqz v0, :cond_9

    .line 825
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v9, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    .line 826
    .local v9, btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    iget-object v1, v9, Lcom/didi/beatles/model/order/BtsHongBao;->alertIcon:Ljava/lang/String;

    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$IconType;->PINK:Lcom/didi/common/ui/component/CommonDialog$IconType;

    iget-object v3, v9, Lcom/didi/beatles/model/order/BtsHongBao;->alertTitle:Ljava/lang/String;

    iget-object v4, v9, Lcom/didi/beatles/model/order/BtsHongBao;->alertContent:Ljava/lang/String;

    iget-object v5, v9, Lcom/didi/beatles/model/order/BtsHongBao;->alertContent:Ljava/lang/String;

    iget-object v6, v9, Lcom/didi/beatles/model/order/BtsHongBao;->alertConfirmTitle:Ljava/lang/String;

    iget-object v7, v9, Lcom/didi/beatles/model/order/BtsHongBao;->alertCancelTitle:Ljava/lang/String;

    new-instance v8, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$7;

    invoke-direct {v8, p0, v9}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$7;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;Lcom/didi/beatles/model/order/BtsHongBao;)V

    invoke-static/range {v0 .. v8}, Lcom/didi/beatles/helper/BtsDialogHelper;->showConfirm(Landroid/content/Context;Ljava/lang/String;Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)Lcom/didi/common/ui/component/CommonDialog;

    .line 844
    .end local v9           #btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;
    :cond_9
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHaveTagsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->meToOtherTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v0, v10}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->meToOtherTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->removeAllViews()V

    .line 847
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->meToOtherTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsCommentDetail;->toPassengerComment:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->addAllTags([Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    invoke-virtual {v0}, Lcom/didi/beatles/model/order/BtsOrderDriver;->isCommentDriver()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 849
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->otherToMeTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->otherToMeTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v0, v10}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->otherToMeTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->removeAllViews()V

    .line 852
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->otherToMeTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsCommentDetail;->toDriverComment:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->addAllTags([Ljava/lang/String;)V

    .line 858
    :goto_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsNoTagsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 867
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_ORDER_OVER:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 868
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_ORDER_OVER:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    :cond_b
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->isFree:Z

    if-eqz v0, :cond_e

    .line 872
    invoke-virtual {p0, v13}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 873
    invoke-virtual {p0, v12}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 878
    :goto_2
    return-void

    .line 854
    :cond_c
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->otherToMeTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->otherToMeTagsLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v0, v11}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->setVisibility(I)V

    goto :goto_0

    .line 861
    :cond_d
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsNoTagsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsHaveTagsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    if-eqz v0, :cond_a

    .line 864
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsOtherToTaTags:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v1, v1, Lcom/didi/beatles/model/order/BtsCommentDetail;->toOther:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 875
    :cond_e
    invoke-virtual {p0, v13}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 876
    invoke-virtual {p0, v12}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private switchToWaitPay()V
    .locals 6

    .prologue
    const v5, 0x7f0800dd

    const v4, 0x7f0800dc

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 751
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsScrollView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 752
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    invoke-virtual {v0, v2}, Lcom/didi/beatles/ui/component/BtsScrollView;->setVisibility(I)V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0, v3}, Lcom/didi/beatles/map/BtsMapView;->setVisibility(I)V

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 757
    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 759
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 760
    :cond_3
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 761
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    invoke-virtual {v0, v2}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->setVisibility(I)V

    .line 762
    :cond_4
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 763
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_WAIT_ARRIVE:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 764
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/didi/beatles/common/utils/BtsAnimationUtil;->translateUpToDownAnim(Landroid/view/View;Z)Z

    .line 767
    :cond_5
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_WAIT_PAY:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 768
    :cond_6
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->pageStack:Ljava/util/Stack;

    sget-object v1, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;->PT_WAIT_PAY:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$PageType;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :cond_7
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverFeeDetailView:Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;

    if-nez v0, :cond_8

    .line 771
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverFeeDetailView:Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;

    .line 772
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverFeeDetailView:Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->init()V

    .line 774
    :cond_8
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsDriverFeeDetailView:Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsDriverFeeDetailView;->setFeeData(Lcom/didi/beatles/model/order/BtsOrderDriver;)V

    .line 776
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-boolean v0, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->isFree:Z

    if-eqz v0, :cond_9

    .line 777
    invoke-virtual {p0, v4}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 778
    invoke-virtual {p0, v5}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 784
    :goto_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mainScrollView:Lcom/didi/beatles/ui/component/BtsScrollView;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsPayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/beatles/ui/component/BtsScrollView;->smoothScrollTo(II)V

    .line 785
    return-void

    .line 780
    :cond_9
    invoke-virtual {p0, v4}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 781
    invoke-virtual {p0, v5}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
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
    .line 2273
    .local p1, unreadMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v1, :cond_0

    .line 2274
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->session_id:Ljava/lang/String;

    .line 2275
    .local v0, sessionId:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2276
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->updateMessageStatus(Z)V

    .line 2279
    .end local v0           #sessionId:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected doDelText(Ljava/lang/String;)V
    .locals 6
    .parameter "string"

    .prologue
    const/4 v5, 0x0

    .line 1468
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1469
    .local v2, mTagCnt:I
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->tagEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1470
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1471
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/ui/component/BtsTagItem;

    .line 1472
    .local v1, item:Lcom/didi/beatles/ui/component/BtsTagItem;
    iget-object v4, v1, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1473
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v4, v0}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->removeViewAt(I)V

    .line 1474
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1475
    add-int/lit8 v4, v2, -0x1

    invoke-direct {p0, v4}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->refreshLeftTag(I)V

    .line 1482
    iget-object v4, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mSelectTags:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/beatles/ui/component/BtsTagItem;

    .local v3, tagItem:Lcom/didi/beatles/ui/component/BtsTagItem;
    if-eqz v3, :cond_0

    .line 1483
    iget-object v4, v3, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1485
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btsTagEditLayout height= del "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsTagEditLayout:Lcom/didi/beatles/ui/component/BtsFlowLayout;

    invoke-virtual {v5}, Lcom/didi/beatles/ui/component/BtsFlowLayout;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1489
    .end local v1           #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    .end local v3           #tagItem:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_1
    return-void

    .line 1470
    .restart local v1       #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected doResetAddTagsStatus()V
    .locals 5

    .prologue
    .line 1332
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1333
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1334
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/ui/component/BtsTagItem;

    .line 1335
    .local v2, item:Lcom/didi/beatles/ui/component/BtsTagItem;
    iget-object v3, v2, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1336
    iget-object v3, v2, Lcom/didi/beatles/ui/component/BtsTagItem;->mView:Landroid/widget/CheckedTextView;

    iget-object v4, v2, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1338
    .end local v2           #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 557
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->clearMap()V

    .line 561
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->finish()V

    .line 562
    return-void
.end method

.method protected idxTextTag(Ljava/lang/String;)I
    .locals 4
    .parameter "text"

    .prologue
    .line 1499
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1500
    .local v2, mTagCnt:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1501
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mAddTags:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/ui/component/BtsTagItem;

    .line 1502
    .local v1, item:Lcom/didi/beatles/ui/component/BtsTagItem;
    iget-object v3, v1, Lcom/didi/beatles/ui/component/BtsTagItem;->tagText:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1506
    .end local v0           #i:I
    .end local v1           #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :goto_1
    return v0

    .line 1500
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1506
    .end local v1           #item:Lcom/didi/beatles/ui/component/BtsTagItem;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1652
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

    .line 1653
    invoke-super {p0, p1, p2, p3}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onActivityResult(IILandroid/content/Intent;)V

    .line 1654
    packed-switch p1, :pswitch_data_0

    .line 1662
    :cond_0
    :goto_0
    return-void

    .line 1656
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1657
    iget v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->routeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->listener:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForDriver(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0

    .line 1654
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->finish()V

    .line 567
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1941
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1946
    :goto_0
    return-void

    .line 1943
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->switchToEditComment()V

    goto :goto_0

    .line 1941
    :pswitch_data_0
    .packed-switch 0x7f0800ff
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 271
    iput-object p0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->instance:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    .line 272
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->setContentView(I)V

    .line 273
    new-instance v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;-><init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->listener:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;

    .line 274
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 275
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->handleIntent()V

    .line 276
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->init()V

    .line 277
    iget v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->routeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->listener:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForDriver(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 279
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->onDestroy()V

    .line 2473
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/helper/BtsPushHelper;->removeOrderChangeListener(Ljava/lang/String;)V

    .line 2474
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/simple/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 2475
    invoke-static {}, Lcom/didi/beatles/common/BtsCommonListeners;->clearAllListeners()V

    .line 2476
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onDestroy()V

    .line 2477
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onNewIntent(Landroid/content/Intent;)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->setIntent(Landroid/content/Intent;)V

    .line 330
    const-string v0, "ORDER_UI_PARAM_OID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    .line 331
    const-string v0, "from"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I

    .line 332
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->routeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->routeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->listener:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForDriver(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 336
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 2481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->isMapInit:Z

    .line 2482
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->onPause()V

    .line 2483
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onPause()V

    .line 2485
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->onRestart()V

    .line 2490
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onRestart()V

    .line 2491
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 2495
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v1}, Lcom/didi/beatles/map/BtsMapView;->onResume()V

    .line 2497
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onResume()V

    .line 2500
    :try_start_0
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2504
    :goto_0
    return-void

    .line 2501
    :catch_0
    move-exception v0

    .line 2502
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->onStart()V

    .line 2509
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onStart()V

    .line 2510
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mapView:Lcom/didi/beatles/map/BtsMapView;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapView;->onStop()V

    .line 2515
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onStop()V

    .line 2516
    return-void
.end method

.method public orderStatusEvent(Lcom/didi/beatles/push/model/BtsPushOrderStatus;)V
    .locals 4
    .parameter "btsPushOrderStatus"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "order_status"
    .end annotation

    .prologue
    .line 2565
    if-nez p1, :cond_1

    .line 2574
    :cond_0
    :goto_0
    return-void

    .line 2568
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    iget-object v1, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2571
    iget-object v0, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    .line 2573
    iget v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->mFrom:I

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->orderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->routeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->listener:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$OrderResponseListener;

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->getOrderInfoForDriver(ILjava/lang/String;Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    goto :goto_0
.end method

.method public reloadImMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "sessionId"
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "reload_im_message"
    .end annotation

    .prologue
    .line 2283
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2284
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->order:Lcom/didi/beatles/model/order/BtsOrderDriver;

    iget-object v0, v1, Lcom/didi/beatles/model/order/BtsOrderDriver;->session_id:Ljava/lang/String;

    .line 2285
    .local v0, session:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2286
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->passengerProfileView:Lcom/didi/beatles/ui/component/BtsPassengerProfileView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/beatles/ui/component/BtsPassengerProfileView;->updateMessageStatus(Z)V

    .line 2289
    .end local v0           #session:Ljava/lang/String;
    :cond_0
    return-void
.end method
