.class public Lcom/didi/common/booking/BookingView;
.super Lcom/didi/common/base/BaseLayout;
.source "BookingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/booking/BookingView$BookingListener;
    }
.end annotation


# instance fields
.field private final MSG_TYPE_DATE_TIME:I

.field private mBookingListener:Lcom/didi/common/booking/BookingView$BookingListener;

.field private mBtnCity:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "selectCity"
        id = 0x7f080080
    .end annotation
.end field

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

.field private mCity:Ljava/lang/String;

.field private mCityId:Ljava/lang/String;

.field private mEstimatePriceLayout:Lx/RelativeLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "selectPrice"
        id = 0x7f080083
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLayoutBooking:Landroid/widget/RelativeLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080079
    .end annotation
.end field

.field private mLayoutPickedTime:Lx/RelativeLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "selectTime"
        id = 0x7f08007b
    .end annotation
.end field

.field private mSubmitListener:Landroid/view/View$OnClickListener;

.field private mTime:J

.field private mTimeTxt:Ljava/lang/String;

.field private mTxtPickedDate:Lx/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08007d
    .end annotation
.end field

.field private mTxtPickedDay:Lx/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08007c
    .end annotation
.end field

.field private mTxtPickedHourMinute:Lx/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08007e
    .end annotation
.end field

.field private mTxtPrice:Lcom/didi/common/richtextview/RichTextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "selectPrice"
        id = 0x7f080084
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/common/booking/BookingView;->MSG_TYPE_DATE_TIME:I

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/common/booking/BookingView;->mTime:J

    .line 103
    new-instance v0, Lcom/didi/common/booking/BookingView$1;

    invoke-direct {v0, p0}, Lcom/didi/common/booking/BookingView$1;-><init>(Lcom/didi/common/booking/BookingView;)V

    iput-object v0, p0, Lcom/didi/common/booking/BookingView;->mHandler:Landroid/os/Handler;

    .line 210
    new-instance v0, Lcom/didi/common/booking/BookingView$3;

    invoke-direct {v0, p0}, Lcom/didi/common/booking/BookingView$3;-><init>(Lcom/didi/common/booking/BookingView;)V

    iput-object v0, p0, Lcom/didi/common/booking/BookingView;->mSubmitListener:Landroid/view/View$OnClickListener;

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/common/booking/BookingView;->MSG_TYPE_DATE_TIME:I

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/common/booking/BookingView;->mTime:J

    .line 103
    new-instance v0, Lcom/didi/common/booking/BookingView$1;

    invoke-direct {v0, p0}, Lcom/didi/common/booking/BookingView$1;-><init>(Lcom/didi/common/booking/BookingView;)V

    iput-object v0, p0, Lcom/didi/common/booking/BookingView;->mHandler:Landroid/os/Handler;

    .line 210
    new-instance v0, Lcom/didi/common/booking/BookingView$3;

    invoke-direct {v0, p0}, Lcom/didi/common/booking/BookingView$3;-><init>(Lcom/didi/common/booking/BookingView;)V

    iput-object v0, p0, Lcom/didi/common/booking/BookingView;->mSubmitListener:Landroid/view/View$OnClickListener;

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/common/booking/BookingView;->MSG_TYPE_DATE_TIME:I

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/common/booking/BookingView;->mTime:J

    .line 103
    new-instance v0, Lcom/didi/common/booking/BookingView$1;

    invoke-direct {v0, p0}, Lcom/didi/common/booking/BookingView$1;-><init>(Lcom/didi/common/booking/BookingView;)V

    iput-object v0, p0, Lcom/didi/common/booking/BookingView;->mHandler:Landroid/os/Handler;

    .line 210
    new-instance v0, Lcom/didi/common/booking/BookingView$3;

    invoke-direct {v0, p0}, Lcom/didi/common/booking/BookingView$3;-><init>(Lcom/didi/common/booking/BookingView;)V

    iput-object v0, p0, Lcom/didi/common/booking/BookingView;->mSubmitListener:Landroid/view/View$OnClickListener;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/booking/BookingView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mTimeTxt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/common/booking/BookingView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/didi/common/booking/BookingView;->mTimeTxt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/common/booking/BookingView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/didi/common/booking/BookingView;->setBookTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/booking/BookingView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/didi/common/booking/BookingView;->mTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/didi/common/booking/BookingView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/didi/common/booking/BookingView;->mTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/didi/common/booking/BookingView;)Lcom/didi/common/booking/BookingView$BookingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBookingListener:Lcom/didi/common/booking/BookingView$BookingListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/didi/common/booking/BookingView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/didi/common/booking/BookingView;->mCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/didi/common/booking/BookingView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/didi/common/booking/BookingView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/didi/common/booking/BookingView;->mCityId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/didi/common/booking/BookingView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnCity:Landroid/widget/TextView;

    return-object v0
.end method

.method private doCity(Ljava/lang/String;)V
    .locals 3
    .parameter "cty"

    .prologue
    .line 161
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getSimpleCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    :cond_0
    move-object v0, p1

    .line 165
    .local v0, city:Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/didi/common/booking/BookingView$2;

    invoke-direct {v2, p0, v0}, Lcom/didi/common/booking/BookingView$2;-><init>(Lcom/didi/common/booking/BookingView;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 197
    return-void
.end method

.method private setBookTime()V
    .locals 5

    .prologue
    .line 119
    iget-object v3, p0, Lcom/didi/common/booking/BookingView;->mTimeTxt:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/didi/common/booking/BookingView;->mTimeTxt:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/common/util/Utils;->getDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, day:Ljava/lang/String;
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/common/booking/BookingView;->mTimeTxt:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/Utils;->getDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, date:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/common/booking/BookingView;->mTimeTxt:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/common/util/Utils;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, time:Ljava/lang/String;
    invoke-direct {p0, v1, v0, v2}, Lcom/didi/common/booking/BookingView;->setTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
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

    .line 288
    iget-object v1, p0, Lcom/didi/common/booking/BookingView;->mLayoutPickedTime:Lx/RelativeLayout;

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 289
    iget-object v1, p0, Lcom/didi/common/booking/BookingView;->mBtnTimePicker:Landroid/view/View;

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->hide(Landroid/view/View;)V

    .line 290
    iget-object v1, p0, Lcom/didi/common/booking/BookingView;->mTxtPickedDay:Lx/TextView;

    invoke-virtual {v1, p1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, parts:[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 293
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 294
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

    .line 295
    :cond_0
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 296
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

    .line 297
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

    .line 299
    iget-object v1, p0, Lcom/didi/common/booking/BookingView;->mTxtPickedDate:Lx/TextView;

    invoke-virtual {v1, p2}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/didi/common/booking/BookingView;->mTxtPickedHourMinute:Lx/TextView;

    invoke-virtual {v1, p3}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :cond_2
    return-void
.end method


# virtual methods
.method public getBookingTime()J
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/didi/common/booking/BookingView;->mTime:J

    return-wide v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method public getFromText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnFrom:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeTxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mTimeTxt:Ljava/lang/String;

    return-object v0
.end method

.method public getToText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnTo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/didi/common/booking/BookingView;->mCity:Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1}, Lcom/didi/common/booking/BookingView;->doCity(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public initControlPanel()V
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showDefaultContent()V

    .line 151
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mSubmitListener:Landroid/view/View$OnClickListener;

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method protected onInit()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mLayoutBooking:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 141
    const v0, 0x7f03000c

    return v0
.end method

.method public selectCity(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 220
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 221
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBookingListener:Lcom/didi/common/booking/BookingView$BookingListener;

    invoke-interface {v0}, Lcom/didi/common/booking/BookingView$BookingListener;->onCitySelected()V

    .line 222
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->hideContentPins()V

    .line 223
    return-void
.end method

.method public selectEndAddress(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 235
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 236
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBookingListener:Lcom/didi/common/booking/BookingView$BookingListener;

    invoke-interface {v0}, Lcom/didi/common/booking/BookingView$BookingListener;->onToSelected()V

    .line 237
    return-void
.end method

.method public selectPrice(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBookingListener:Lcom/didi/common/booking/BookingView$BookingListener;

    invoke-interface {v0}, Lcom/didi/common/booking/BookingView$BookingListener;->onPriceSelected()V

    .line 331
    return-void
.end method

.method public selectStartAddress(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 227
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 228
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBookingListener:Lcom/didi/common/booking/BookingView$BookingListener;

    invoke-interface {v0}, Lcom/didi/common/booking/BookingView$BookingListener;->onFromSelected()V

    .line 229
    return-void
.end method

.method public selectTime(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 203
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    const v3, 0x7f05000b

    invoke-virtual {v2, v3}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 204
    iget-object v2, p0, Lcom/didi/common/booking/BookingView;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 205
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 206
    new-instance v1, Lcom/didi/common/ui/datepicker/BookingDatePicker;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lcom/didi/common/ui/datepicker/BookingDatePicker;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/os/Message;)V

    .line 207
    .local v1, popup:Lcom/didi/common/ui/datepicker/BookingDatePicker;
    invoke-virtual {v1}, Lcom/didi/common/ui/datepicker/BookingDatePicker;->showDialog()V

    .line 208
    return-void
.end method

.method public setCity(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "city"
    .parameter "cityId"
    .parameter "resetAddress"

    .prologue
    const v4, 0x7f070021

    const/4 v3, 0x0

    const v2, 0x7f07003f

    .line 307
    if-eqz p3, :cond_1

    .line 308
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnFrom:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnTo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnFrom:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnTo:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    :goto_0
    iput-object p1, p0, Lcom/didi/common/booking/BookingView;->mCity:Ljava/lang/String;

    .line 318
    iput-object p2, p0, Lcom/didi/common/booking/BookingView;->mCityId:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnCity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/booking/BookingView;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mCityId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setOrderCityId(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnCity:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0, v3}, Lcom/didi/common/booking/BookingView;->initCity(Ljava/lang/String;)V

    .line 326
    :cond_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnFrom:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnTo:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setFromText(Ljava/lang/String;I)V
    .locals 1
    .parameter "from"
    .parameter "color"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnFrom:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnFrom:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    return-void
.end method

.method public setListener(Lcom/didi/common/booking/BookingView$BookingListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/didi/common/booking/BookingView;->mBookingListener:Lcom/didi/common/booking/BookingView$BookingListener;

    .line 241
    return-void
.end method

.method public setTimeTxt(Ljava/lang/String;)V
    .locals 0
    .parameter "mTimeTxt"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/didi/common/booking/BookingView;->mTimeTxt:Ljava/lang/String;

    .line 257
    invoke-direct {p0}, Lcom/didi/common/booking/BookingView;->setBookTime()V

    .line 258
    return-void
.end method

.method public setToText(Ljava/lang/String;I)V
    .locals 1
    .parameter "to"
    .parameter "color"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnTo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mBtnTo:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    return-void
.end method

.method public showEstimatePriceLayout(Ljava/lang/String;)V
    .locals 2
    .parameter "estimatePrice"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mEstimatePriceLayout:Lx/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/didi/common/booking/BookingView;->mTxtPrice:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v0, p1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    return-void
.end method
