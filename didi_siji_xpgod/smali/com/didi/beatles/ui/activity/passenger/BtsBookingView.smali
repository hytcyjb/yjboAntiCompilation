.class public Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;
.super Lcom/didi/common/base/BaseLayout;
.source "BtsBookingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;
    }
.end annotation


# instance fields
.field private final MSG_TYPE_DATE_TIME:I

.field private endAdress:Lcom/didi/common/model/Address;

.field private mBookingBtn:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "nowBookingOrder"
        id = 0x7f0800a7
    .end annotation
.end field

.field private mBookingListener:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;

.field private mBtnFrom:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "selectStartAddress"
        id = 0x7f080081
    .end annotation
.end field

.field private mBtnTimePicker:Landroid/view/View;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "selectTime"
        id = 0x7f08007a
    .end annotation
.end field

.field private mBtnTo:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "selectEndAddress"
        id = 0x7f080082
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExtra_info:Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0800a6
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mLayoutBooking:Landroid/widget/RelativeLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080079
    .end annotation
.end field

.field private mLayoutPickedTime:Landroid/widget/RelativeLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "selectTime"
        id = 0x7f08007b
    .end annotation
.end field

.field private mOrderPrice:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0800a5
    .end annotation
.end field

.field private mRemark:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "remarkMessage"
        id = 0x7f0800a3
    .end annotation
.end field

.field private mTime:J

.field private mTimeTxt:Ljava/lang/String;

.field private mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0800a1
    .end annotation
.end field

.field private mTxtPickedDate:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08007d
    .end annotation
.end field

.field private mTxtPickedDay:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08007c
    .end annotation
.end field

.field private mTxtPickedHourMinute:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08007e
    .end annotation
.end field

.field private mswitchBtn:Landroid/widget/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "switchFromAndTo"
        id = 0x7f0800a2
    .end annotation
.end field

.field private startAdress:Lcom/didi/common/model/Address;

.field private valuationText:Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "jumpWeb"
        id = 0x7f0800a8
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->MSG_TYPE_DATE_TIME:I

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTime:J

    .line 114
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->MSG_TYPE_DATE_TIME:I

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTime:J

    .line 114
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->MSG_TYPE_DATE_TIME:I

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTime:J

    .line 114
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$1;-><init>(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mHandler:Landroid/os/Handler;

    .line 96
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTimeTxt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTimeTxt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setBookTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;)Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBookingListener:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;

    return-object v0
.end method

.method private setBookTime()V
    .locals 5

    .prologue
    .line 133
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTimeTxt:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTimeTxt:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/common/util/Utils;->getDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, day:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTimeTxt:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/Utils;->getDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, date:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTimeTxt:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/common/util/Utils;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, time:Ljava/lang/String;
    invoke-direct {p0, v1, v0, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v0           #date:Ljava/lang/String;
    .end local v1           #day:Ljava/lang/String;
    .end local v2           #time:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "day"
    .parameter "date"
    .parameter "time"

    .prologue
    const v5, 0x7f0b0404

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mLayoutPickedTime:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 143
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTxtPickedDay:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, parts:[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_2

    .line 146
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 148
    :cond_0
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 150
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 152
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTxtPickedDate:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTxtPickedHourMinute:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_2
    return-void
.end method


# virtual methods
.method public changeRemarkState(Ljava/lang/String;)V
    .locals 0
    .parameter "remarkStr"

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->initRemarkView(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public getBookingTime()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTime:J

    return-wide v0
.end method

.method public getExtraInfoTextView()Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mExtra_info:Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;

    return-object v0
.end method

.method public getFromText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBtnFrom:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriceTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mOrderPrice:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTimeTxt()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTimeTxt:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->getTimeMillis(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBar()Lcom/didi/beatles/ui/component/BtsTitleBar;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    return-object v0
.end method

.method public getToText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBtnTo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValuation()Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->valuationText:Lcom/didi/beatles/ui/activity/passenger/BtsRichTextView;

    return-object v0
.end method

.method public getViewTimeTxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTimeTxt:Ljava/lang/String;

    return-object v0
.end method

.method public initRemarkView(Ljava/lang/String;)V
    .locals 9
    .parameter "remarkStr"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 218
    const v5, 0x7f070018

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    .line 219
    .local v2, remarkColor:I
    const v3, 0x7f02003f

    .line 220
    .local v3, remarkDrwable:I
    const v1, 0x7f0200ab

    .line 221
    .local v1, remarkBg:I
    const v5, 0x7f0b00cf

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, remarkText:Ljava/lang/String;
    invoke-static {p1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 223
    const v5, 0x7f07002f

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    .line 224
    const v3, 0x7f020040

    .line 225
    move-object v4, p1

    .line 226
    const v1, 0x7f0200ac

    .line 228
    :cond_0
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    invoke-virtual {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 231
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v0, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v5, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mRemark:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 235
    return-void
.end method

.method public jumpWeb(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 293
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getCreationLink()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    new-instance v2, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 296
    .local v2, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const-string v3, "\u76f8\u5173\u534f\u8bae-\u987a\u98ce\u8f66"

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 297
    iput-object v1, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 298
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mContext:Landroid/content/Context;

    const-class v4, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "data_model"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 300
    iget-object v3, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 303
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_0
    return-void
.end method

.method public nowBookingOrder(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 306
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBookingListener:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;

    invoke-interface {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;->onSubmitClicked()V

    goto :goto_0
.end method

.method protected onInit()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mLayoutBooking:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 246
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 111
    const v0, 0x7f030011

    return v0
.end method

.method public remarkMessage(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBookingListener:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;

    invoke-interface {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;->onPriceSelected()V

    .line 291
    return-void
.end method

.method public selectEndAddress(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBookingListener:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;

    invoke-interface {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;->onToSelected()V

    .line 262
    return-void
.end method

.method public selectStartAddress(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBookingListener:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;

    invoke-interface {v0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;->onFromSelected()V

    .line 253
    return-void
.end method

.method public selectTime(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 283
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 285
    new-instance v1, Lcom/didi/beatles/ui/component/BtsBookingDatePicker;

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2, p0, v0}, Lcom/didi/beatles/ui/component/BtsBookingDatePicker;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/os/Message;)V

    .line 286
    .local v1, popup:Lcom/didi/beatles/ui/component/BtsBookingDatePicker;
    invoke-virtual {v1}, Lcom/didi/beatles/ui/component/BtsBookingDatePicker;->showDialog()V

    .line 287
    return-void
.end method

.method public setBookingTime()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTimeTxt:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->getTimeMillis(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTime:J

    .line 168
    return-void
.end method

.method public setFromText(Lcom/didi/common/model/Address;I)V
    .locals 2
    .parameter "from"
    .parameter "color"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->startAdress:Lcom/didi/common/model/Address;

    .line 185
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBtnFrom:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBtnFrom:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    return-void
.end method

.method public setListener(Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBookingListener:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;

    .line 160
    return-void
.end method

.method public setTimeTxt(Ljava/lang/String;)V
    .locals 0
    .parameter "mTimeTxt"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mTimeTxt:Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setBookTime()V

    .line 181
    return-void
.end method

.method public setToText(Lcom/didi/common/model/Address;I)V
    .locals 2
    .parameter "to"
    .parameter "color"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->endAdress:Lcom/didi/common/model/Address;

    .line 191
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBtnTo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBtnTo:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    return-void
.end method

.method public switchFromAndTo(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v4, 0x7f07003f

    .line 268
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBtnFrom:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBtnTo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    const-string v2, "pbp1orderpage02_ck"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->endAdress:Lcom/didi/common/model/Address;

    .line 271
    .local v0, fromAddess:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->startAdress:Lcom/didi/common/model/Address;

    .line 272
    .local v1, toAddess:Lcom/didi/common/model/Address;
    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setFromText(Lcom/didi/common/model/Address;I)V

    .line 273
    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->setToText(Lcom/didi/common/model/Address;I)V

    .line 274
    iget-object v2, p0, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView;->mBookingListener:Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;

    invoke-interface {v2, v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsBookingView$BtsBookingListener;->onSwitchAdress(Lcom/didi/common/model/Address;Lcom/didi/common/model/Address;)V

    .line 276
    .end local v0           #fromAddess:Lcom/didi/common/model/Address;
    .end local v1           #toAddess:Lcom/didi/common/model/Address;
    :cond_0
    return-void
.end method
