.class public Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;
.super Lcom/didi/common/base/BaseLayout;
.source "DDriveWaitForArrivalDriverBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$CallListener;
    }
.end annotation


# instance fields
.field private callListener:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$CallListener;

.field private carOrder:Lcom/didi/car/model/CarOrder;

.field private context:Landroid/content/Context;

.field private isFromHistory:Z

.field listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mDid:Ljava/lang/String;

.field private mDriverBarManager:Lcom/didi/ddrive/managers/DriverBarManager;

.field private mDriverLayout:Lx/RelativeLayout;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08027b
    .end annotation
.end field

.field private mGradeValue:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080285
    .end annotation
.end field

.field private mImgAvaBG:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f08027e
    .end annotation
.end field

.field private mImgAvatar:Lcom/didi/frame/driverinfo/DriverCirclePhoto;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "redirect"
        id = 0x7f08027d
    .end annotation
.end field

.field private mImgBtnPhone:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "call"
        id = 0x7f080287
    .end annotation
.end field

.field private mPhone:Ljava/lang/String;

.field private mRatingBar:Lcom/didi/car/ui/component/CarDriverBarHalfStarView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080284
    .end annotation
.end field

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

.field private timeout:Z

.field private tripCancel:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 99
    iput-boolean v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->timeout:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->tripCancel:Z

    .line 145
    iput-boolean v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->isFromHistory:Z

    .line 269
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 117
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->context:Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->init()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    iput-boolean v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->timeout:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->tripCancel:Z

    .line 145
    iput-boolean v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->isFromHistory:Z

    .line 269
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 111
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->context:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->init()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    iput-boolean v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->timeout:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->tripCancel:Z

    .line 145
    iput-boolean v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->isFromHistory:Z

    .line 269
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$2;-><init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 105
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->context:Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->init()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;)Lcom/didi/frame/driverinfo/DriverCirclePhoto;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mImgAvatar:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->actionCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mDid:Ljava/lang/String;

    return-object v0
.end method

.method private actionCall(Ljava/lang/String;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 281
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
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

    .line 283
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 285
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    .line 286
    .local v1, sendable:Lcom/didi/frame/Sendable;
    if-eqz v1, :cond_0

    .line 287
    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 288
    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/didi/taxi/net/TaxiRequest;->sendOnlineLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method

.method private expiredDialog()V
    .locals 3

    .prologue
    .line 258
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 259
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 260
    const v1, 0x7f0b0342

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0341

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 263
    const v1, 0x7f0b028e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 264
    const v1, 0x7f0b0257

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 266
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 267
    return-void
.end method

.method private getDriverPhoto(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 207
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$1;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$1;-><init>(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/didi/ddrive/managers/DriverBarManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/DriverBarManager;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mDriverBarManager:Lcom/didi/ddrive/managers/DriverBarManager;

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->setClickable(Z)V

    .line 124
    return-void
.end method

.method private showGrade(F)V
    .locals 2
    .parameter "starGrade"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mGradeValue:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mRatingBar:Lcom/didi/car/ui/component/CarDriverBarHalfStarView;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarDriverBarHalfStarView;->setLevel(F)V

    .line 204
    return-void
.end method


# virtual methods
.method public call(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 236
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->tripCancel:Z

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "pdjxwfp_06_ck"

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dj_orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mDriverBarManager:Lcom/didi/ddrive/managers/DriverBarManager;

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriverBarManager;->contactDriver()V

    .line 244
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 245
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :goto_1
    return-void

    .line 240
    :cond_0
    const-string v0, "pdjxontrip_06_ck"

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dj_orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_1
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->timeout:Z

    if-eqz v0, :cond_2

    .line 249
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getServicePhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    .line 250
    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->expiredDialog()V

    goto :goto_1

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->actionCall(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 128
    const v0, 0x7f030085

    return v0
.end method

.method public redirect(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 294
    iget-boolean v2, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->tripCancel:Z

    if-eqz v2, :cond_0

    .line 295
    const-string v2, "pdjxwfp_05_ck"

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dj_orderid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 301
    :goto_0
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 302
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-wide v3, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mDid:Ljava/lang/String;

    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-object v4, v4, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->token:Ljava/lang/String;

    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getDriveCountHideFlag()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/didi/ddrive/util/DDriveH5Util;->getDriverDetailUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 307
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 308
    return-void

    .line 298
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_0
    const-string v2, "pdjxontrip_05_ck"

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dj_orderid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCallListener(Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$CallListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->callListener:Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar$CallListener;

    .line 140
    return-void
.end method

.method public setDriver(Lcom/didi/ddrive/net/http/response/DriverBriefInfo;)V
    .locals 9
    .parameter "driver"

    .prologue
    const/16 v8, 0x8

    const/high16 v6, 0x4080

    const/4 v7, 0x0

    .line 156
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mDriverLayout:Lx/RelativeLayout;

    invoke-virtual {v3, v7}, Lx/RelativeLayout;->setVisibility(I)V

    .line 157
    const-string v3, "morning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "driver starLevel =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->driveringAge:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "driver.driveringAge is =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->driveringCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v3, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->mob:Ljava/lang/String;

    iput-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    .line 160
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    .line 161
    .local v1, order:Lcom/didi/ddrive/model/DDriveOrder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v1, Lcom/didi/ddrive/model/DDriveOrder;->did:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mDid:Ljava/lang/String;

    .line 162
    iget-object v3, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->headTitleUrl:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->getDriverPhoto(Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mTxtName:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget v3, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->starLevel:F

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_0

    .line 165
    iput v6, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->starLevel:F

    .line 167
    :cond_0
    iget v3, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->starLevel:F

    invoke-direct {p0, v3}, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->showGrade(F)V

    .line 168
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mTxtOrderCount:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mTxtCompany:Landroid/widget/TextView;

    const v4, 0x7f0b0310

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->driveringAge:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    .line 174
    .local v0, drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getDriveCountHideFlag()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 175
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mTxtPlateboard:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mTxtCompany:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 178
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mTxtCompany:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    invoke-static {}, Lcom/didi/common/util/Utils;->isInChristmasDay()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mDriverLayout:Lx/RelativeLayout;

    const v4, 0x7f02019d

    invoke-virtual {v3, v4}, Lx/RelativeLayout;->setBackgroundResource(I)V

    .line 187
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mImgAvaBG:Lx/ImageView;

    invoke-virtual {v3, v7}, Lx/ImageView;->setVisibility(I)V

    .line 192
    :goto_1
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mImgBtnPhone:Lx/ImageView;

    const v4, 0x7f020282

    invoke-virtual {v3, v4}, Lx/ImageView;->setBackgroundResource(I)V

    .line 194
    return-void

    .line 180
    :cond_1
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mTxtPlateboard:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mTxtPlateboard:Landroid/widget/TextView;

    const v4, 0x7f0b0311

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->driveringCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mDriverLayout:Lx/RelativeLayout;

    const v4, 0x7f07001c

    invoke-virtual {v3, v4}, Lx/RelativeLayout;->setBackgroundResource(I)V

    .line 190
    iget-object v3, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->mImgAvaBG:Lx/ImageView;

    invoke-virtual {v3, v8}, Lx/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setFromHistory(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 151
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

    .line 152
    iput-boolean p1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->isFromHistory:Z

    .line 153
    return-void
.end method

.method public setTripCancel(Z)V
    .locals 0
    .parameter "tripCancel"

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/didi/ddrive/ui/component/DDriveWaitForArrivalDriverBar;->tripCancel:Z

    .line 316
    return-void
.end method
