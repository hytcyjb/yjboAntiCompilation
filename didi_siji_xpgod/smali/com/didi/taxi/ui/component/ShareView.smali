.class public Lcom/didi/taxi/ui/component/ShareView;
.super Landroid/widget/LinearLayout;
.source "ShareView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/component/ShareView$ShareListener;
    }
.end annotation


# static fields
.field public static final SHARE_BIG_IMAGE_TYPE:I = 0x1

.field public static final SHARE_SCREEN_IMAGE_TYPE:I = 0x2

.field public static final SHARE_SMALL_URL_TYPE:I = 0x3


# instance fields
.field private mBtnCancel:Lx/Button;

.field protected mContext:Landroid/content/Context;

.field private mListener:Lcom/didi/taxi/ui/component/ShareView$ShareListener;

.field protected mQqView:Lcom/didi/common/ui/component/PayShareItemView;

.field protected mQzoneView:Lcom/didi/common/ui/component/PayShareItemView;

.field private mReportModel:Lcom/didi/taxi/ui/component/ShareReportModel;

.field private mShareEditDialog:Lcom/didi/frame/dialog/ShareEditDialog;

.field private mSinaView:Lcom/didi/common/ui/component/PayShareItemView;

.field private mTxView:Lcom/didi/common/ui/component/PayShareItemView;

.field private mWbContent:Ljava/lang/String;

.field private mWbDraw:Landroid/graphics/Bitmap;

.field private mWbPic:Ljava/lang/String;

.field private mWbTitle:Ljava/lang/String;

.field private mWbUrl:Ljava/lang/String;

.field private mWxCircleView:Lcom/didi/common/ui/component/PayShareItemView;

.field private mWxContent:Ljava/lang/String;

.field private mWxFirendsView:Lcom/didi/common/ui/component/PayShareItemView;

.field private mWxIconDraw:Landroid/graphics/Bitmap;

.field private mWxIconUrl:Ljava/lang/String;

.field private mWxImageDraw:Landroid/graphics/Bitmap;

.field private mWxImageUrl:Ljava/lang/String;

.field private mWxJumpUrl:Ljava/lang/String;

.field private mWxModleId:I

.field private mWxMomentsContent:Ljava/lang/String;

.field private mWxMomentsIconDraw:Landroid/graphics/Bitmap;

.field private mWxMomentsIconUrl:Ljava/lang/String;

.field private mWxMomentsImageDraw:Landroid/graphics/Bitmap;

.field private mWxMomentsImageUrl:Ljava/lang/String;

.field private mWxMomentsJumpUrl:Ljava/lang/String;

.field private mWxMomentsTitle:Ljava/lang/String;

.field private mWxTitle:Ljava/lang/String;

.field private redShareChannelParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxModleId:I

    .line 118
    const-string v0, "share_channel="

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->redShareChannelParam:Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/didi/taxi/ui/component/ShareView;->mContext:Landroid/content/Context;

    .line 142
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/ShareView;->init()V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxModleId:I

    .line 118
    const-string v0, "share_channel="

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->redShareChannelParam:Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/didi/taxi/ui/component/ShareView;->mContext:Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/ShareView;->init()V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxModleId:I

    .line 118
    const-string v0, "share_channel="

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->redShareChannelParam:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/didi/taxi/ui/component/ShareView;->mContext:Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/ShareView;->init()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/component/ShareView;)Lcom/didi/frame/dialog/ShareEditDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mShareEditDialog:Lcom/didi/frame/dialog/ShareEditDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/component/ShareView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbUrl:Ljava/lang/String;

    return-object v0
.end method

.method private doScreenShot()V
    .locals 2

    .prologue
    .line 722
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lutil/ImageUtil;->takeScreenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 723
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbDraw:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsImageDraw:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxImageDraw:Landroid/graphics/Bitmap;

    .line 724
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300f4

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 304
    .local v0, view:Landroid/view/View;
    const v1, 0x7f07003a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 305
    const v1, 0x7f08055b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/PayShareItemView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxCircleView:Lcom/didi/common/ui/component/PayShareItemView;

    .line 306
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxCircleView:Lcom/didi/common/ui/component/PayShareItemView;

    const v2, 0x7f0202dd

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b050d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/PayShareItemView;->setInfo(ILjava/lang/String;)V

    .line 307
    const v1, 0x7f08055c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/PayShareItemView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxFirendsView:Lcom/didi/common/ui/component/PayShareItemView;

    .line 308
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxFirendsView:Lcom/didi/common/ui/component/PayShareItemView;

    const v2, 0x7f0202db

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b050e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/PayShareItemView;->setInfo(ILjava/lang/String;)V

    .line 309
    const v1, 0x7f08055d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/PayShareItemView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mSinaView:Lcom/didi/common/ui/component/PayShareItemView;

    .line 310
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mSinaView:Lcom/didi/common/ui/component/PayShareItemView;

    const v2, 0x7f0202d9

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0503

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/PayShareItemView;->setInfo(ILjava/lang/String;)V

    .line 311
    const v1, 0x7f080560

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/PayShareItemView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mTxView:Lcom/didi/common/ui/component/PayShareItemView;

    .line 312
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mTxView:Lcom/didi/common/ui/component/PayShareItemView;

    const v2, 0x7f0202d7

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0509

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/PayShareItemView;->setInfo(ILjava/lang/String;)V

    .line 313
    const v1, 0x7f080561

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mBtnCancel:Lx/Button;

    .line 314
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mBtnCancel:Lx/Button;

    invoke-virtual {v1, p0}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxCircleView:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v1, p0}, Lcom/didi/common/ui/component/PayShareItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxFirendsView:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v1, p0}, Lcom/didi/common/ui/component/PayShareItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mSinaView:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v1, p0}, Lcom/didi/common/ui/component/PayShareItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mTxView:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v1, p0}, Lcom/didi/common/ui/component/PayShareItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    const v1, 0x7f08055f

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/PayShareItemView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mQqView:Lcom/didi/common/ui/component/PayShareItemView;

    .line 322
    const v1, 0x7f08055e

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/component/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/PayShareItemView;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mQzoneView:Lcom/didi/common/ui/component/PayShareItemView;

    .line 323
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mQqView:Lcom/didi/common/ui/component/PayShareItemView;

    const v2, 0x7f0202d3

    const v3, 0x7f0b0500

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/PayShareItemView;->setInfo(ILjava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mQzoneView:Lcom/didi/common/ui/component/PayShareItemView;

    const v2, 0x7f0202d5

    const v3, 0x7f0b0501

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/ui/component/PayShareItemView;->setInfo(ILjava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mQqView:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v1, p0}, Lcom/didi/common/ui/component/PayShareItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mQzoneView:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v1, p0}, Lcom/didi/common/ui/component/PayShareItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    return-void
.end method

.method private showSinaWeiBo()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mSinaView:Lcom/didi/common/ui/component/PayShareItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/PayShareItemView;->setVisibility(I)V

    .line 151
    return-void
.end method


# virtual methods
.method protected addAppSharePublicLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "log"
    .parameter "eventId"
    .parameter "channel"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mReportModel:Lcom/didi/taxi/ui/component/ShareReportModel;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mReportModel:Lcom/didi/taxi/ui/component/ShareReportModel;

    iput-object p3, v0, Lcom/didi/taxi/ui/component/ShareReportModel;->channel:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mReportModel:Lcom/didi/taxi/ui/component/ShareReportModel;

    iput-object p2, v0, Lcom/didi/taxi/ui/component/ShareReportModel;->event_id:Ljava/lang/String;

    .line 333
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->mReportModel:Lcom/didi/taxi/ui/component/ShareReportModel;

    invoke-virtual {v2}, Lcom/didi/taxi/ui/component/ShareReportModel;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method

.method public hideSinaWeiBo()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mSinaView:Lcom/didi/common/ui/component/PayShareItemView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/PayShareItemView;->setVisibility(I)V

    .line 147
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 687
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 716
    :goto_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mListener:Lcom/didi/taxi/ui/component/ShareView$ShareListener;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mListener:Lcom/didi/taxi/ui/component/ShareView$ShareListener;

    invoke-interface {v0, p1}, Lcom/didi/taxi/ui/component/ShareView$ShareListener;->onShareClicked(Landroid/view/View;)V

    .line 719
    :cond_0
    return-void

    .line 689
    :pswitch_0
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->shareWeixinCircle()V

    goto :goto_0

    .line 693
    :pswitch_1
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->shareWeixin()V

    goto :goto_0

    .line 697
    :pswitch_2
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->shareSinaWeibo()V

    goto :goto_0

    .line 701
    :pswitch_3
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->shareTencentWeibo()V

    goto :goto_0

    .line 705
    :pswitch_4
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->shareQQ()V

    goto :goto_0

    .line 709
    :pswitch_5
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->shareQZone()V

    goto :goto_0

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x7f08055b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setListener(Lcom/didi/taxi/ui/component/ShareView$ShareListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/didi/taxi/ui/component/ShareView;->mListener:Lcom/didi/taxi/ui/component/ShareView$ShareListener;

    .line 155
    return-void
.end method

.method public setRedShare(Lcom/didi/taxi/model/TaxiRedRecordInfo;)V
    .locals 3
    .parameter "red"

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxTitle:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxContent:Ljava/lang/String;

    .line 180
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsJumpUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedPicUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconUrl:Ljava/lang/String;

    .line 183
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbTitle:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbUrl:Ljava/lang/String;

    .line 185
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mWeiboContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbContent:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mWeiboSharepic:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbPic:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbPic:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getWeiboShareOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/ShareView;->showSinaWeiBo()V

    .line 195
    :goto_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_1

    .line 196
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getQqShareOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mQqView:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v0, v2}, Lcom/didi/common/ui/component/PayShareItemView;->setVisibility(I)V

    .line 199
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getQzoneShareOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mQzoneView:Lcom/didi/common/ui/component/PayShareItemView;

    invoke-virtual {v0, v2}, Lcom/didi/common/ui/component/PayShareItemView;->setVisibility(I)V

    .line 203
    :cond_1
    return-void

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->hideSinaWeiBo()V

    goto :goto_0
.end method

.method public setReportModel(Lcom/didi/taxi/ui/component/ShareReportModel;)V
    .locals 0
    .parameter "reportModel"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/didi/taxi/ui/component/ShareView;->mReportModel:Lcom/didi/taxi/ui/component/ShareReportModel;

    .line 131
    return-void
.end method

.method public setShare(Lcom/didi/beatles/model/BtsShareMode;)V
    .locals 2
    .parameter "sharemodel"

    .prologue
    .line 225
    iget-object v0, p1, Lcom/didi/beatles/model/BtsShareMode;->titleWX:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxTitle:Ljava/lang/String;

    .line 226
    iget-object v0, p1, Lcom/didi/beatles/model/BtsShareMode;->contentWX:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxContent:Ljava/lang/String;

    .line 227
    iget-object v0, p1, Lcom/didi/beatles/model/BtsShareMode;->picWXUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsJumpUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    .line 228
    iget-object v0, p1, Lcom/didi/beatles/model/BtsShareMode;->titleWB:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbContent:Ljava/lang/String;

    .line 229
    iget-object v0, p1, Lcom/didi/beatles/model/BtsShareMode;->picWB:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbPic:Ljava/lang/String;

    .line 230
    iget v0, p1, Lcom/didi/beatles/model/BtsShareMode;->localImg:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/didi/beatles/model/BtsShareMode;->localImg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsIconDraw:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconDraw:Landroid/graphics/Bitmap;

    .line 235
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareView sharemodel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsShareMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 236
    iget-boolean v0, p1, Lcom/didi/beatles/model/BtsShareMode;->isShowSina:Z

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/ShareView;->showSinaWeiBo()V

    .line 239
    iget-object v0, p1, Lcom/didi/beatles/model/BtsShareMode;->weiboTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbTitle:Ljava/lang/String;

    .line 240
    iget-object v0, p1, Lcom/didi/beatles/model/BtsShareMode;->weiboContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbContent:Ljava/lang/String;

    .line 241
    iget-object v0, p1, Lcom/didi/beatles/model/BtsShareMode;->weiboLogo:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbPic:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Lcom/didi/beatles/model/BtsShareMode;->weiboUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbUrl:Ljava/lang/String;

    .line 246
    :goto_1
    return-void

    .line 233
    :cond_0
    iget-object v0, p1, Lcom/didi/beatles/model/BtsShareMode;->picWX:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconUrl:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->hideSinaWeiBo()V

    goto :goto_1
.end method

.method public setShare(Lcom/didi/car/model/CarPayShare;Landroid/content/Context;)V
    .locals 2
    .parameter "share"
    .parameter "context"

    .prologue
    .line 250
    iput-object p2, p0, Lcom/didi/taxi/ui/component/ShareView;->mContext:Landroid/content/Context;

    .line 251
    if-nez p1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 254
    :cond_0
    iget v0, p1, Lcom/didi/car/model/CarPayShare;->mShareTypeNew:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/ShareView;->doScreenShot()V

    .line 257
    :cond_1
    iget-object v0, p1, Lcom/didi/car/model/CarPayShare;->mWxTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxTitle:Ljava/lang/String;

    .line 258
    iget-object v0, p1, Lcom/didi/car/model/CarPayShare;->mWxContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxContent:Ljava/lang/String;

    .line 259
    iget-object v0, p1, Lcom/didi/car/model/CarPayShare;->mWxJumpUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsJumpUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    .line 260
    iget-object v0, p1, Lcom/didi/car/model/CarPayShare;->mWxShareIcon:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconUrl:Ljava/lang/String;

    .line 261
    iget-object v0, p1, Lcom/didi/car/model/CarPayShare;->mWxImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxImageUrl:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Lcom/didi/car/model/CarPayShare;->mWbContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbContent:Ljava/lang/String;

    .line 263
    iget-object v0, p1, Lcom/didi/car/model/CarPayShare;->mIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbPic:Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->hideSinaWeiBo()V

    goto :goto_0
.end method

.method public setShare(Lcom/didi/car/model/CarShareCouponInfo;)V
    .locals 2
    .parameter "share"

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 273
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getWxFriendTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxTitle:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getWxFriendText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxContent:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getWxFriendLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconUrl:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getWxShareTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsTitle:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getWxShareText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsContent:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getWxShareLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsIconUrl:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsJumpUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    .line 290
    :cond_1
    :goto_1
    iget-boolean v0, p1, Lcom/didi/car/model/CarShareCouponInfo;->isOpenWeibo:Z

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p1, Lcom/didi/car/model/CarShareCouponInfo;->weiboTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbTitle:Ljava/lang/String;

    .line 292
    iget-object v0, p1, Lcom/didi/car/model/CarShareCouponInfo;->weiboContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbContent:Ljava/lang/String;

    .line 293
    iget-object v0, p1, Lcom/didi/car/model/CarShareCouponInfo;->weiboLogo:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbPic:Ljava/lang/String;

    .line 294
    iget-object v0, p1, Lcom/didi/car/model/CarShareCouponInfo;->weiboUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbUrl:Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/ShareView;->showSinaWeiBo()V

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 282
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getPinkFriendTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxTitle:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getPinkFriendContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxContent:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getPinkFriendLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconUrl:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getPinkWxTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsTitle:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getPinkWxContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsContent:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getPinkWxLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsIconUrl:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getPinkShareUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsJumpUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    goto :goto_1

    .line 297
    :cond_3
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->hideSinaWeiBo()V

    goto/16 :goto_0
.end method

.method public setShare(Lcom/didi/common/model/ActivityShare;)V
    .locals 2
    .parameter "sharemodel"

    .prologue
    .line 206
    iget-object v0, p1, Lcom/didi/common/model/ActivityShare;->titleWX:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxTitle:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/didi/common/model/ActivityShare;->contentWX:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxContent:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Lcom/didi/common/model/ActivityShare;->picWXUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsJumpUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    .line 209
    iget-object v0, p1, Lcom/didi/common/model/ActivityShare;->titleWB:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbContent:Ljava/lang/String;

    .line 210
    iget-object v0, p1, Lcom/didi/common/model/ActivityShare;->picWB:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbPic:Ljava/lang/String;

    .line 211
    iget v0, p1, Lcom/didi/common/model/ActivityShare;->localImg:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/didi/common/model/ActivityShare;->localImg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsIconDraw:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconDraw:Landroid/graphics/Bitmap;

    .line 216
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareView sharemodel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/ActivityShare;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 217
    iget-boolean v0, p1, Lcom/didi/common/model/ActivityShare;->isShowSina:Z

    if-eqz v0, :cond_1

    .line 218
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/ShareView;->showSinaWeiBo()V

    .line 222
    :goto_1
    return-void

    .line 214
    :cond_0
    iget-object v0, p1, Lcom/didi/common/model/ActivityShare;->picWX:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconUrl:Ljava/lang/String;

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->hideSinaWeiBo()V

    goto :goto_1
.end method

.method public setShare(Lcom/didi/taxi/model/TaxiPayShare;Landroid/content/Context;)V
    .locals 2
    .parameter "share"
    .parameter "context"

    .prologue
    .line 159
    iput-object p2, p0, Lcom/didi/taxi/ui/component/ShareView;->mContext:Landroid/content/Context;

    .line 160
    if-nez p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 163
    :cond_0
    iget v0, p1, Lcom/didi/taxi/model/TaxiPayShare;->mShareType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/ShareView;->doScreenShot()V

    .line 167
    :cond_1
    iget v0, p1, Lcom/didi/taxi/model/TaxiPayShare;->mWxModleId:I

    iput v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxModleId:I

    .line 168
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiPayShare;->mWxTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxTitle:Ljava/lang/String;

    .line 169
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiPayShare;->mWxContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxContent:Ljava/lang/String;

    .line 170
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiPayShare;->mWxIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconUrl:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiPayShare;->mWxImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxImageUrl:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiPayShare;->mWxJumpUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsJumpUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiPayShare;->mWbContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbContent:Ljava/lang/String;

    .line 174
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/ShareView;->showSinaWeiBo()V

    goto :goto_0
.end method

.method protected shareQQ()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 583
    const-string v1, "activity_qq_click"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 584
    const-string v1, "g_app_public_log"

    const-string v2, "pay_share_channel_ck"

    const-string v3, "5"

    invoke-virtual {p0, v1, v2, v3}, Lcom/didi/taxi/ui/component/ShareView;->addAppSharePublicLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 587
    const-string v1, "my_trip_qq_click"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 593
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbDraw:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 594
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 595
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbDraw:Landroid/graphics/Bitmap;

    .line 602
    :cond_1
    :goto_1
    new-instance v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 603
    .local v0, modelQQ:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxTitle:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 604
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->redShareChannelParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 610
    :goto_2
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxContent:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 611
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconUrl:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 612
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbDraw:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 613
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/didi/taxi/ui/component/ShareView$5;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/component/ShareView$5;-><init>(Lcom/didi/taxi/ui/component/ShareView;)V

    invoke-static {v1, v0, v2}, Lcom/didi/common/util/DiDiShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 631
    return-void

    .line 588
    .end local v0           #modelQQ:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    :cond_2
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    :cond_3
    const-string v1, " wanliu_my_trip_qq_click "

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    :cond_4
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    :cond_5
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbDraw:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 607
    .restart local v0       #modelQQ:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->redShareChannelParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method protected shareQZone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 634
    const-string v1, "activity_qzone_click"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 635
    const-string v1, "g_app_public_log"

    const-string v2, "pay_share_channel_ck"

    const-string v3, "4"

    invoke-virtual {p0, v1, v2, v3}, Lcom/didi/taxi/ui/component/ShareView;->addAppSharePublicLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 638
    const-string v1, "my_trip_qzone_click"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 644
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbDraw:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 645
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 646
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbDraw:Landroid/graphics/Bitmap;

    .line 653
    :cond_1
    :goto_1
    new-instance v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 654
    .local v0, modelQZone:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxTitle:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 655
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->redShareChannelParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 661
    :goto_2
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxContent:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 662
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconUrl:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 663
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbDraw:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 664
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/didi/taxi/ui/component/ShareView$6;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/component/ShareView$6;-><init>(Lcom/didi/taxi/ui/component/ShareView;)V

    invoke-static {v1, v0, v2}, Lcom/didi/common/util/DiDiShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 683
    return-void

    .line 639
    .end local v0           #modelQZone:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    :cond_2
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    :cond_3
    const-string v1, " wanliu_my_trip_qzone_click "

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    :cond_4
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    :cond_5
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbDraw:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 658
    .restart local v0       #modelQZone:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->redShareChannelParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method protected shareSinaWeibo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 449
    const-string v3, "activity_sina_click"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 450
    const-string v3, "g_app_public_log"

    const-string v4, "pay_share_channel_ck"

    const-string v5, "3"

    invoke-virtual {p0, v3, v4, v5}, Lcom/didi/taxi/ui/component/ShareView;->addAppSharePublicLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    const-string v3, "taxi_my_trip_sina_click"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 455
    :cond_0
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 456
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    const-string v4, "pay_share_channel_ck"

    const-string v5, "3"

    invoke-static {v3, v4, v5}, Lcom/didi/car/helper/CarDynamicLogHelper;->createShareLog(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_2
    iget-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mShareEditDialog:Lcom/didi/frame/dialog/ShareEditDialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mShareEditDialog:Lcom/didi/frame/dialog/ShareEditDialog;

    invoke-virtual {v3}, Lcom/didi/frame/dialog/ShareEditDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 460
    iget-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mShareEditDialog:Lcom/didi/frame/dialog/ShareEditDialog;

    invoke-virtual {v3}, Lcom/didi/frame/dialog/ShareEditDialog;->dismiss()V

    .line 462
    :cond_3
    iget-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbDraw:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    .line 463
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 464
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05001b

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbDraw:Landroid/graphics/Bitmap;

    .line 471
    :cond_4
    :goto_0
    new-instance v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v3, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v3}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    invoke-direct {v1, v3}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 472
    .local v1, modelsina:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    iget-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbTitle:Ljava/lang/String;

    iput-object v3, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 473
    iget-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbUrl:Ljava/lang/String;

    iput-object v3, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 475
    iget-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbPic:Ljava/lang/String;

    iput-object v3, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 476
    iget-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbDraw:Landroid/graphics/Bitmap;

    iput-object v3, v1, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 477
    sget-object v3, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v3}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 479
    .local v2, platform:Lcn/sharesdk/framework/Platform;
    invoke-static {}, Lcom/didi/common/config/PhoneStatusConfig;->getInstance()Lcom/didi/common/config/PhoneStatusConfig;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/PhoneStatusConfig;->getPhoneBingWeiboStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->isValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 482
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 483
    new-instance v3, Lcom/didi/frame/dialog/ShareEditDialog;

    iget-object v4, p0, Lcom/didi/taxi/ui/component/ShareView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/didi/frame/dialog/ShareEditDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mShareEditDialog:Lcom/didi/frame/dialog/ShareEditDialog;

    .line 484
    iget-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mShareEditDialog:Lcom/didi/frame/dialog/ShareEditDialog;

    iget-object v4, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbContent:Ljava/lang/String;

    iget-object v6, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbPic:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/didi/frame/dialog/ShareEditDialog;->setDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mShareEditDialog:Lcom/didi/frame/dialog/ShareEditDialog;

    new-instance v4, Lcom/didi/taxi/ui/component/ShareView$3;

    invoke-direct {v4, p0, v1}, Lcom/didi/taxi/ui/component/ShareView$3;-><init>(Lcom/didi/taxi/ui/component/ShareView;Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V

    invoke-virtual {v3, v4}, Lcom/didi/frame/dialog/ShareEditDialog;->setListener(Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)V

    .line 544
    iget-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mShareEditDialog:Lcom/didi/frame/dialog/ShareEditDialog;

    invoke-virtual {v3}, Lcom/didi/frame/dialog/ShareEditDialog;->show()V

    .line 570
    :cond_5
    :goto_1
    return-void

    .line 465
    .end local v1           #modelsina:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    .end local v2           #platform:Lcn/sharesdk/framework/Platform;
    :cond_6
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 467
    :cond_7
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050004

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/taxi/ui/component/ShareView;->mWbDraw:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 548
    .restart local v1       #modelsina:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    .restart local v2       #platform:Lcn/sharesdk/framework/Platform;
    :cond_8
    invoke-virtual {v2, v6}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 549
    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getPlatformActionListener()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    .line 550
    .local v0, backListener:Lcn/sharesdk/framework/PlatformActionListener;
    new-instance v3, Lcom/didi/taxi/ui/component/ShareView$4;

    invoke-direct {v3, p0, v2, v0}, Lcom/didi/taxi/ui/component/ShareView$4;-><init>(Lcom/didi/taxi/ui/component/ShareView;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 567
    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->authorize()V

    goto :goto_1
.end method

.method protected shareTencentWeibo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 574
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    const-string v0, "my_trip_tencent_click"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v0}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    :cond_2
    const-string v0, " wanliu_my_trip_txweibo_click "

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected shareWeixin()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 395
    const-string v1, "activity_friend_click"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 396
    const-string v1, "g_app_public_log"

    const-string v2, "pay_share_channel_ck"

    const-string v3, "2"

    invoke-virtual {p0, v1, v2, v3}, Lcom/didi/taxi/ui/component/ShareView;->addAppSharePublicLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    const-string v1, "taxi_my_trip_friend_circ_click"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 400
    :cond_0
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 401
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    const-string v2, "pay_share_channel_ck"

    const-string v3, "2"

    invoke-static {v1, v2, v3}, Lcom/didi/car/helper/CarDynamicLogHelper;->createShareLog(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_2
    const/16 v1, 0xb

    sput v1, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->from:I

    .line 404
    new-instance v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 406
    .local v0, modelwchat:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    iget v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxModleId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 407
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxImageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 408
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxImageDraw:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 409
    iget-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 410
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 411
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 429
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/didi/taxi/ui/component/ShareView$2;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/component/ShareView$2;-><init>(Lcom/didi/taxi/ui/component/ShareView;)V

    invoke-static {v1, v0, v2}, Lcom/didi/common/util/DiDiShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 446
    return-void

    .line 412
    :cond_4
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 413
    :cond_5
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 417
    :cond_6
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconUrl:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 418
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxTitle:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxContent:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 421
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->redShareChannelParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 426
    :goto_1
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconDraw:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 424
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxJumpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->redShareChannelParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    goto :goto_1
.end method

.method protected shareWeixinCircle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 339
    const-string v1, "activity_friend_circ_click"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 340
    const-string v1, "g_app_public_log"

    const-string v2, "pay_share_channel_ck"

    const-string v3, "1"

    invoke-virtual {p0, v1, v2, v3}, Lcom/didi/taxi/ui/component/ShareView;->addAppSharePublicLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;

    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OneKeyShareModel;-><init>(Lcn/sharesdk/framework/Platform;)V

    .line 342
    .local v0, modelmoment:Lcn/sharesdk/onekeyshare/OneKeyShareModel;
    const/16 v1, 0xa

    sput v1, Lcom/sdu/didi/psnger/wxapi/WXEntryActivity;->from:I

    .line 344
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const-string v1, "taxi_my_trip_friend_click"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 347
    :cond_0
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 348
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    const-string v2, "pay_share_channel_ck"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/didi/car/helper/CarDynamicLogHelper;->createShareLog(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_2
    iget v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxModleId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 351
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsImageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 352
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsImageDraw:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 353
    iget-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 354
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 355
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    .line 373
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/didi/taxi/ui/component/ShareView$1;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/component/ShareView$1;-><init>(Lcom/didi/taxi/ui/component/ShareView;)V

    invoke-static {v1, v0, v2}, Lcom/didi/common/util/DiDiShareUtil;->show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 391
    return-void

    .line 356
    :cond_4
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 358
    :cond_5
    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/ShareView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 362
    :cond_6
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsIconUrl:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsTitle:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsContent:Ljava/lang/String;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsJumpUrl:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsJumpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->redShareChannelParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    .line 371
    :goto_1
    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxIconDraw:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 368
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->mWxMomentsJumpUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/ShareView;->redShareChannelParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    goto :goto_1
.end method
