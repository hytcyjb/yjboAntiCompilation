.class public Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "TaxiBookingFragment.java"

# interfaces
.implements Lcom/didi/common/booking/BookingView$BookingListener;


# static fields
.field public static final ORDER_WAIT_ANSWER:I


# instance fields
.field private isclick:Z

.field private mBookingView:Lcom/didi/common/booking/BookingView;

.field private mOnBackClickListener:Landroid/view/View$OnClickListener;

.field private taxiOrder:Lcom/didi/taxi/model/TaxiOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 144
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$1;-><init>(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->isclick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->isclick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->back()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;)Lcom/didi/common/booking/BookingView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;)Lcom/didi/taxi/model/TaxiOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->onBookingOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method private back()V
    .locals 0

    .prologue
    .line 77
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->backward()V

    .line 78
    return-void
.end method

.method private checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 301
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->check()Z

    move-result v0

    .line 302
    .local v0, flag:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 303
    if-nez v0, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->validate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "taxibooking  failreplay4auto errno:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->sendOrder()V

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 311
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/didi/common/booking/BookingView;->setEnabled(Z)V

    .line 313
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorCode()I

    move-result v2

    const/16 v3, 0x3fa

    if-ne v2, v3, :cond_2

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "taxibooking  recovery order errno:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->jumpToRecovery(Lcom/didi/taxi/model/TaxiOrder;)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    .line 319
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 320
    .local v1, kv:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "error_info"

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-string v3, "txt_call_fail"

    const-string v4, ""

    invoke-static {v2, v3, v4, v1}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method private clearData()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/common/booking/BookingView;->setTimeTxt(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method private fillOrder()V
    .locals 4

    .prologue
    .line 359
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v2}, Lcom/didi/common/booking/BookingView;->getBookingTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/didi/taxi/model/TaxiOrder;->setTransportTime(J)V

    .line 360
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    .line 361
    .local v0, commonAttri:Lcom/didi/common/model/CommonAttributes;
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/taxi/model/TaxiOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 362
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/taxi/model/TaxiOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 363
    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    iput-object v1, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    .line 364
    sget-object v1, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    iput-object v1, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 365
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v1}, Lcom/didi/common/booking/BookingView;->getCity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BookCityId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v2}, Lcom/didi/common/booking/BookingView;->getCityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v1}, Lcom/didi/common/booking/BookingView;->getCityId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    .line 368
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v1}, Lcom/didi/common/booking/BookingView;->getTimeTxt()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    .line 369
    return-void
.end method

.method private initOrder()V
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 110
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 111
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const v4, 0x7f07003f

    .line 114
    new-instance v2, Lcom/didi/common/booking/BookingView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/didi/common/booking/BookingView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    .line 115
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v2, p0}, Lcom/didi/common/booking/BookingView;->setListener(Lcom/didi/common/booking/BookingView$BookingListener;)V

    .line 116
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-nez v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/didi/common/booking/BookingView;->initCity(Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getDepartureTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/common/booking/BookingView;->setTimeTxt(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, from:Ljava/lang/String;
    const/4 v1, 0x0

    .line 123
    .local v1, to:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 128
    :cond_1
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/didi/common/booking/BookingView;->setFromText(Ljava/lang/String;I)V

    .line 130
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/didi/common/booking/BookingView;->setToText(Ljava/lang/String;I)V

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/common/booking/BookingView;->initCity(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v2}, Lcom/didi/common/booking/BookingView;->initControlPanel()V

    goto :goto_0
.end method

.method private jumpToRecovery(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 4
    .parameter "order"

    .prologue
    .line 327
    new-instance v1, Lcom/didi/common/model/RecoveryConfig;

    invoke-direct {v1}, Lcom/didi/common/model/RecoveryConfig;-><init>()V

    .line 328
    .local v1, re:Lcom/didi/common/model/RecoveryConfig;
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    iput-object v2, v1, Lcom/didi/common/model/RecoveryConfig;->business:Lcom/didi/frame/business/Business;

    .line 329
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/model/RecoveryConfig;->oid:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOtype()I

    move-result v2

    iput v2, v1, Lcom/didi/common/model/RecoveryConfig;->type:I

    .line 331
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/model/RecoveryConfig;->msg:Ljava/lang/String;

    .line 332
    invoke-static {}, Lcom/didi/frame/recovery/RecoveryHelper;->getInstance()Lcom/didi/frame/recovery/RecoveryHelper;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-virtual {v2, v3}, Lcom/didi/frame/recovery/RecoveryHelper;->getRecoveryBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/recovery/RecoveryBusiness;

    move-result-object v0

    .line 333
    .local v0, bus:Lcom/didi/frame/recovery/RecoveryBusiness;
    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-static {}, Lcom/didi/frame/recovery/RecoveryHelper;->getInstance()Lcom/didi/frame/recovery/RecoveryHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/didi/frame/recovery/RecoveryHelper;->showConfirmDialog(Lcom/didi/frame/recovery/RecoveryBusiness;Lcom/didi/common/model/RecoveryConfig;)V

    goto :goto_0
.end method

.method private onBookingOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 4
    .parameter "order"

    .prologue
    const/4 v3, 0x0

    .line 339
    if-eqz p1, :cond_0

    .line 340
    const v0, 0x7f0b035d

    invoke-virtual {p1, v0}, Lcom/didi/taxi/model/TaxiOrder;->replaceEmptyErrorMessage(I)V

    .line 342
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    :goto_0
    return-void

    .line 346
    :cond_1
    sput v3, Lcom/didi/common/base/DidiApp;->mAsyncRecallCount:I

    .line 347
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/Preferences;->setCreateOrderTimes(J)V

    .line 350
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setOid(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iput v3, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 352
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 353
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTaxiDriverMarkerList()V

    .line 354
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward()V

    .line 355
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->clearData()V

    goto :goto_0
.end method

.method private onCitySelected(Ljava/lang/String;)V
    .locals 5
    .parameter "cityString"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 226
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, c:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v4

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    aget-object v1, v0, v3

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v2}, Lcom/didi/common/booking/BookingView;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/didi/common/booking/BookingView;->setCity(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 230
    aget-object v1, v0, v4

    invoke-static {v1}, Lcom/didi/common/database/CityListHelper;->setOpenCarForBookingCity(Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method

.method private onEndAddressSelected()V
    .locals 4

    .prologue
    .line 243
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 244
    .local v0, endAddress:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07003f

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/booking/BookingView;->setToText(Ljava/lang/String;I)V

    .line 245
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    :cond_0
    return-void
.end method

.method private onStartAddressSelected()V
    .locals 4

    .prologue
    .line 236
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 237
    .local v0, startAddress:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07003f

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/booking/BookingView;->setFromText(Ljava/lang/String;I)V

    .line 238
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    :cond_0
    return-void
.end method

.method private performLoadAnnouncement()V
    .locals 3

    .prologue
    .line 166
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$2;-><init>(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method private redirectToSearch(Z)V
    .locals 5
    .parameter "isStart"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    .line 198
    if-eqz p1, :cond_0

    move v2, v1

    .line 199
    .local v2, type:I
    :goto_0
    if-eqz p1, :cond_1

    .line 200
    .local v1, requestCode:I
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/search/SearchActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "search_extra_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const-string v3, "search_extra_order_type"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 204
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #requestCode:I
    .end local v2           #type:I
    :cond_0
    move v2, v3

    .line 198
    goto :goto_0

    .restart local v2       #type:I
    :cond_1
    move v1, v3

    .line 199
    goto :goto_1
.end method

.method private sendOrder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->getTimeTemp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$3;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment$3;-><init>(Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;)V

    invoke-static {v2, v2, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->createBookingOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 298
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 138
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 139
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 140
    const v1, 0x7f0b0200

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 141
    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 142
    return-void
.end method

.method private validate()Z
    .locals 5

    .prologue
    const v4, 0x7f0b01e5

    const/4 v2, 0x0

    .line 372
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    .line 373
    .local v1, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 374
    .local v0, end:Lcom/didi/common/model/Address;
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 375
    :cond_0
    invoke-virtual {p0, v4}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    .line 399
    :cond_1
    :goto_0
    return v2

    .line 379
    :cond_2
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getFromText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getToText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 380
    :cond_3
    invoke-virtual {p0, v4}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_4
    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 384
    :cond_5
    invoke-virtual {p0, v4}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_6
    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 388
    const v3, 0x7f0b01e6

    invoke-virtual {p0, v3}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_7
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    invoke-virtual {v3}, Lcom/didi/common/booking/BookingView;->getTimeTxt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 393
    const v3, 0x7f0b01e8

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0

    .line 397
    :cond_8
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 209
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 211
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 213
    :pswitch_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->onStartAddressSelected()V

    goto :goto_0

    .line 216
    :pswitch_2
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->onEndAddressSelected()V

    goto :goto_0

    .line 219
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "city_select_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, cityString:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->onCitySelected(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->clearData()V

    .line 192
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->back()V

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public onCitySelected()V
    .locals 3

    .prologue
    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, p0, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 414
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->setTitleBar()V

    .line 92
    sget-boolean v0, Lcom/didi/common/util/Constant;->isBookingSendable:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->initOrder()V

    .line 95
    sput-boolean v1, Lcom/didi/common/util/Constant;->isClearRemark:Z

    .line 96
    invoke-static {}, Lcom/didi/common/util/Utils;->setSyncTime()V

    .line 97
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->initView()V

    .line 98
    invoke-static {v1}, Lcom/didi/frame/carpool/CarPoolHelper;->enableTrigger(Z)V

    .line 99
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->mBookingView:Lcom/didi/common/booking/BookingView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 105
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->stop()V

    .line 106
    return-void
.end method

.method public onFromSelected()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->redirectToSearch(Z)V

    .line 253
    return-void
.end method

.method public onGetOrderTime(J)V
    .locals 1
    .parameter "mOrderTime"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-nez v0, :cond_0

    .line 405
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, p1, p2}, Lcom/didi/taxi/model/TaxiOrder;->setTransportTime(J)V

    .line 408
    return-void
.end method

.method public onPriceSelected()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 187
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStart()V

    .line 177
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStop()V

    .line 182
    return-void
.end method

.method public onSubmitClicked()V
    .locals 4

    .prologue
    .line 262
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 263
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->fillOrder()V

    .line 264
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->validate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b01f8

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 267
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->start()V

    .line 268
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->sendOrder()V

    .line 269
    const-string v0, "taxibooking create order"

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onToSelected()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->redirectToSearch(Z)V

    .line 258
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 160
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 161
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;->performLoadAnnouncement()V

    .line 162
    return-void
.end method
