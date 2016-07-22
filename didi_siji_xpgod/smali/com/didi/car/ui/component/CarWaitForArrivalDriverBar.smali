.class public Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;
.super Lcom/didi/common/base/BaseLayout;
.source "CarWaitForArrivalDriverBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$CallListener;
    }
.end annotation


# instance fields
.field private callListener:Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$CallListener;

.field private carOrder:Lcom/didi/car/model/CarOrder;

.field private context:Landroid/content/Context;

.field private isFromHistory:Z

.field listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mDid:Ljava/lang/String;

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

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 87
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->timeout:Z

    .line 126
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->isFromHistory:Z

    .line 229
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$2;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 103
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->context:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->init()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->timeout:Z

    .line 126
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->isFromHistory:Z

    .line 229
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$2;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 97
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->context:Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->init()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->timeout:Z

    .line 126
    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->isFromHistory:Z

    .line 229
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$2;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 91
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->context:Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->init()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;)Lcom/didi/frame/driverinfo/DriverCirclePhoto;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mImgAvatar:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->actionCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mDid:Ljava/lang/String;

    return-object v0
.end method

.method private actionCall(Ljava/lang/String;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 243
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 245
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/didi/taxi/net/TaxiRequest;->sendOnlineLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private expiredDialog()V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 220
    const v1, 0x7f0b0342

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0341

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 223
    const v1, 0x7f0b028e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 224
    const v1, 0x7f0b0257

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 226
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 227
    return-void
.end method

.method private getDriverPhoto(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 176
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$1;-><init>(Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->setClickable(Z)V

    .line 109
    return-void
.end method

.method private showGrade(F)V
    .locals 2
    .parameter "starGrade"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mGradeValue:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mRatingBar:Lcom/didi/car/ui/component/CarDriverBarHalfStarView;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarDriverBarHalfStarView;->setLevel(F)V

    .line 173
    return-void
.end method


# virtual methods
.method public call(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 205
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 206
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->timeout:Z

    if-eqz v0, :cond_1

    .line 210
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getServicePhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->expiredDialog()V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->actionCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 113
    const v0, 0x7f03006d

    return v0
.end method

.method public redirect(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 249
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    const-class v1, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    const-class v2, Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    const-string v3, "did"

    iget-object v4, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mDid:Ljava/lang/String;

    const-string v5, "url"

    iget-object v6, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->url:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/didi/common/ui/component/UiHelper;->jumpActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public setCallListener(Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$CallListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->callListener:Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar$CallListener;

    .line 123
    return-void
.end method

.method public setDriver(Lcom/didi/car/model/CarDriver;)V
    .locals 9
    .parameter "driver"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 135
    iget-object v1, p1, Lcom/didi/car/model/CarDriver;->did:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mDid:Ljava/lang/String;

    .line 136
    iget-object v1, p1, Lcom/didi/car/model/CarDriver;->phone:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;

    .line 137
    iget-object v1, p1, Lcom/didi/car/model/CarDriver;->avatarUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->getDriverPhoto(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mTxtName:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/didi/car/model/CarDriver;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget v1, p1, Lcom/didi/car/model/CarDriver;->level:F

    invoke-direct {p0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->showGrade(F)V

    .line 140
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mTxtOrderCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b030a

    new-array v4, v7, [Ljava/lang/Object;

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

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mTxtCompany:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/didi/car/model/CarDriver;->carType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mTxtPlateboard:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/didi/car/model/CarDriver;->card:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-boolean v1, p1, Lcom/didi/car/model/CarDriver;->timeout:Z

    iput-boolean v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->timeout:Z

    .line 145
    invoke-static {}, Lcom/didi/common/util/Utils;->isInChristmasDay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mDriverLayout:Lx/RelativeLayout;

    const v2, 0x7f02019d

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setBackgroundResource(I)V

    .line 147
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mImgAvaBG:Lx/ImageView;

    invoke-virtual {v1, v8}, Lx/ImageView;->setVisibility(I)V

    .line 155
    :goto_0
    iget-boolean v1, p1, Lcom/didi/car/model/CarDriver;->timeout:Z

    if-eqz v1, :cond_2

    .line 156
    iget v1, p1, Lcom/didi/car/model/CarDriver;->protectStatus:I

    if-ne v1, v7, :cond_1

    const v0, 0x7f020281

    .line 161
    .local v0, backRes:I
    :goto_1
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mImgBtnPhone:Lx/ImageView;

    invoke-virtual {v1, v0}, Lx/ImageView;->setBackgroundResource(I)V

    .line 163
    return-void

    .line 149
    .end local v0           #backRes:I
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mDriverLayout:Lx/RelativeLayout;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setBackgroundResource(I)V

    .line 150
    iget-object v1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->mImgAvaBG:Lx/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lx/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_1
    const v0, 0x7f020280

    goto :goto_1

    .line 158
    :cond_2
    iget v1, p1, Lcom/didi/car/model/CarDriver;->protectStatus:I

    if-ne v1, v7, :cond_3

    const v0, 0x7f020283

    .restart local v0       #backRes:I
    :goto_2
    goto :goto_1

    .end local v0           #backRes:I
    :cond_3
    const v0, 0x7f020282

    goto :goto_2
.end method

.method public setFromHistory(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 130
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

    .line 131
    iput-boolean p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalDriverBar;->isFromHistory:Z

    .line 132
    return-void
.end method
