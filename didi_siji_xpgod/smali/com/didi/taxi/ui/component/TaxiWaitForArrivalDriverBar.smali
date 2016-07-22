.class public Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;
.super Lcom/didi/common/base/BaseLayout;
.source "TaxiWaitForArrivalDriverBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$DriverBarListener;,
        Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$CallListener;
    }
.end annotation


# instance fields
.field private callListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$CallListener;

.field private context:Landroid/content/Context;

.field private isFromHistory:Z

.field private isVirtualMobileExpired:Z

.field listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mDid:Ljava/lang/String;

.field private mImgAvatar:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "redirect"
        id = 0x7f08027d
    .end annotation
.end field

.field private mImgBtnIM:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "im"
        id = 0x7f0805aa
    .end annotation
.end field

.field private mImgBtnPhone:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "call"
        id = 0x7f080287
    .end annotation
.end field

.field private mImgStar1:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805ae
    .end annotation
.end field

.field private mImgStar2:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805af
    .end annotation
.end field

.field private mImgStar3:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805b0
    .end annotation
.end field

.field private mImgStar4:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805b1
    .end annotation
.end field

.field private mImgStar5:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805b2
    .end annotation
.end field

.field private mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$DriverBarListener;

.field private mPhone:Ljava/lang/String;

.field private mStars:[Lx/ImageView;

.field private mTxtCompany:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080282
    .end annotation
.end field

.field private mTxtName:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08027f
    .end annotation
.end field

.field private mTxtOrderCount:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080286
    .end annotation
.end field

.field private mTxtPlateboard:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080281
    .end annotation
.end field

.field private mTxtUnRead:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805ac
    .end annotation
.end field

.field private mTxtUnReadLong:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0805ad
    .end annotation
.end field

.field private taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

.field private url:Ljava/lang/String;

.field private virtualPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isVirtualMobileExpired:Z

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isFromHistory:Z

    .line 299
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 118
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->context:Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->init()V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isVirtualMobileExpired:Z

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isFromHistory:Z

    .line 299
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 112
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->context:Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->init()V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isVirtualMobileExpired:Z

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isFromHistory:Z

    .line 299
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$2;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 106
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->context:Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->init()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mImgAvatar:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->actionCall(Ljava/lang/String;)V

    return-void
.end method

.method private actionCall(Ljava/lang/String;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 309
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 311
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 313
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    .line 314
    .local v1, sendable:Lcom/didi/frame/Sendable;
    if-eqz v1, :cond_0

    .line 315
    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 316
    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/didi/taxi/net/TaxiRequest;->sendOnlineLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    return-void
.end method

.method private expiredDialog()V
    .locals 3

    .prologue
    .line 288
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 290
    const v1, 0x7f0b0342

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0341

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 293
    const v1, 0x7f0b028e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 294
    const v1, 0x7f0b0257

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 296
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 297
    return-void
.end method

.method private getDriverPhoto(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 256
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$1;

    invoke-direct {v0, p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$1;-><init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;Ljava/lang/String;)V

    .line 284
    .local v0, driverPhotoJob:Lthread/Job;
    invoke-static {v0}, Lthread/pool/ImageThreadPool;->submit(Lthread/Job;)V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->setClickable(Z)V

    .line 124
    return-void
.end method

.method private initStars()V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x5

    new-array v0, v0, [Lx/ImageView;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mStars:[Lx/ImageView;

    .line 138
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mStars:[Lx/ImageView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mImgStar1:Lx/ImageView;

    aput-object v2, v0, v1

    .line 139
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mStars:[Lx/ImageView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mImgStar2:Lx/ImageView;

    aput-object v2, v0, v1

    .line 140
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mStars:[Lx/ImageView;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mImgStar3:Lx/ImageView;

    aput-object v2, v0, v1

    .line 141
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mStars:[Lx/ImageView;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mImgStar4:Lx/ImageView;

    aput-object v2, v0, v1

    .line 142
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mStars:[Lx/ImageView;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mImgStar5:Lx/ImageView;

    aput-object v2, v0, v1

    .line 143
    return-void
.end method

.method private showGrade(F)V
    .locals 5
    .parameter "starGrade"

    .prologue
    const/4 v4, 0x5

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 240
    int-to-float v2, v0

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mStars:[Lx/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f0200ee

    invoke-virtual {v2, v3}, Lx/ImageView;->setImageResource(I)V

    .line 245
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mStars:[Lx/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f0200ec

    invoke-virtual {v2, v3}, Lx/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 247
    :cond_1
    float-to-int v1, p1

    .line 248
    .local v1, starGradeInt:I
    int-to-float v2, v1

    sub-float v2, p1, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 249
    if-ge v1, v4, :cond_2

    if-ltz v1, :cond_2

    .line 250
    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mStars:[Lx/ImageView;

    aget-object v2, v2, v1

    const v3, 0x7f0200ed

    invoke-virtual {v2, v3}, Lx/ImageView;->setImageResource(I)V

    .line 253
    :cond_2
    return-void
.end method


# virtual methods
.method public call(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 327
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 328
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->virtualPhone:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isFromHistory:Z

    if-eqz v0, :cond_1

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget-wide v2, v2, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 333
    const-string v0, "4000001999"

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    .line 334
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->expiredDialog()V

    goto :goto_0

    .line 338
    :cond_1
    const-string v0, "call action :"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " fromhistory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isFromHistory:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mphone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " virtualphone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->virtualPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isVExpired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isVirtualMobileExpired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transporttime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget-wide v2, v2, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currenttime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->callListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$CallListener;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->virtualPhone:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->virtualPhone:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->callListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$CallListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b049b

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$CallListener;->callBack(Ljava/lang/String;)V

    .line 347
    :cond_2
    iget-boolean v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isVirtualMobileExpired:Z

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->actionCall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->virtualPhone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->actionCall(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public enableIMView()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mImgBtnIM:Lx/ImageView;

    const v1, 0x7f0201f8

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundResource(I)V

    .line 358
    return-void
.end method

.method public im(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$DriverBarListener;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$DriverBarListener;

    invoke-interface {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$DriverBarListener;->onDriverBarIMClicked()V

    .line 371
    :cond_0
    return-void
.end method

.method public invisibleIMView()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mImgBtnIM:Lx/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->invisible(Landroid/view/View;)V

    .line 362
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtUnRead:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->invisible(Landroid/view/View;)V

    .line 363
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtUnReadLong:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->invisible(Landroid/view/View;)V

    .line 364
    return-void
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->initStars()V

    .line 134
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 128
    const v0, 0x7f030101

    return v0
.end method

.method public redirect(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 374
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    const-class v1, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    const-class v2, Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    const-string v3, "did"

    iget-object v4, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mDid:Ljava/lang/String;

    const-string v5, "url"

    iget-object v6, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->url:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/didi/common/ui/component/UiHelper;->jumpActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public setCallListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$CallListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->callListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$CallListener;

    .line 185
    return-void
.end method

.method public setDriver(Lcom/didi/car/model/CarDriver;)V
    .locals 7
    .parameter "driver"

    .prologue
    .line 201
    iget-object v0, p1, Lcom/didi/car/model/CarDriver;->did:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mDid:Ljava/lang/String;

    .line 202
    iget-object v0, p1, Lcom/didi/car/model/CarDriver;->phone:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    .line 203
    iget-object v0, p1, Lcom/didi/car/model/CarDriver;->avatarUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->getDriverPhoto(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarDriver;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget v0, p1, Lcom/didi/car/model/CarDriver;->level:F

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->showGrade(F)V

    .line 206
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtOrderCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b030a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/didi/car/model/CarDriver;->orderCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtCompany:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarDriver;->carType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtPlateboard:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarDriver;->card:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public setDriver(Lcom/didi/taxi/model/TaxiDriver;)V
    .locals 9
    .parameter "driver"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 154
    iget-object v1, p1, Lcom/didi/taxi/model/TaxiDriver;->did:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mDid:Ljava/lang/String;

    .line 155
    iget-object v1, p1, Lcom/didi/taxi/model/TaxiDriver;->phone:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    .line 156
    iget-object v1, p1, Lcom/didi/taxi/model/TaxiDriver;->avatarUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->url:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->getDriverPhoto(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtName:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiDriver;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget v0, p1, Lcom/didi/taxi/model/TaxiDriver;->level:I

    .line 160
    .local v0, starGrade:I
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->showGrade(F)V

    .line 161
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtOrderCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b030a

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/didi/taxi/model/TaxiDriver;->orderCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtCompany:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiDriver;->company:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtPlateboard:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiDriver;->card:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 165
    sget-object v1, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    invoke-virtual {v1}, Lcom/didi/common/model/CommonVirtualMobile;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p1, Lcom/didi/taxi/model/TaxiDriver;->virtualmobileExpired:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mImgBtnPhone:Lx/ImageView;

    const v2, 0x7f020283

    invoke-virtual {v1, v2}, Lx/ImageView;->setBackgroundResource(I)V

    .line 167
    iget-object v1, p1, Lcom/didi/taxi/model/TaxiDriver;->virtualMobile:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->virtualPhone:Ljava/lang/String;

    .line 168
    iput-boolean v7, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isVirtualMobileExpired:Z

    .line 175
    :goto_0
    iget-boolean v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isFromHistory:Z

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v3

    iget-wide v3, v3, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mImgBtnPhone:Lx/ImageView;

    const v2, 0x7f020280

    invoke-virtual {v1, v2}, Lx/ImageView;->setBackgroundResource(I)V

    .line 180
    :cond_0
    return-void

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mImgBtnPhone:Lx/ImageView;

    const v2, 0x7f020282

    invoke-virtual {v1, v2}, Lx/ImageView;->setBackgroundResource(I)V

    .line 171
    iget-object v1, p1, Lcom/didi/taxi/model/TaxiDriver;->phone:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    .line 172
    iput-boolean v8, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isVirtualMobileExpired:Z

    goto :goto_0
.end method

.method public setFromHistory(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFromHistory :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 197
    iput-boolean p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->isFromHistory:Z

    .line 198
    return-void
.end method

.method public setIMUnRead(I)V
    .locals 3
    .parameter "count"

    .prologue
    const/16 v2, 0x63

    .line 212
    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mImgBtnIM:Lx/ImageView;

    invoke-virtual {v0}, Lx/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtUnRead:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->show(Landroid/view/View;)V

    .line 214
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtUnRead:Landroid/widget/TextView;

    if-le p1, v2, :cond_0

    const-string v0, "99+"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/16 v0, 0x9

    if-le p1, v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtUnRead:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->invisible(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtUnReadLong:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->show(Landroid/view/View;)V

    .line 219
    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtUnReadLong:Landroid/widget/TextView;

    if-le p1, v2, :cond_1

    const-string v0, "99+"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :goto_2
    return-void

    .line 214
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtUnReadLong:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->invisible(Landroid/view/View;)V

    .line 222
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtUnRead:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->show(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtUnRead:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtUnRead:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->invisible(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mTxtUnReadLong:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->invisible(Landroid/view/View;)V

    goto :goto_2
.end method

.method public setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$DriverBarListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mListener:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$DriverBarListener;

    .line 189
    return-void
.end method
