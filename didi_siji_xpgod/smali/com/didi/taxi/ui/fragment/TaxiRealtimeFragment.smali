.class public Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "TaxiRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$15;
    }
.end annotation


# static fields
.field public static final HUAWEI_VOICE:I = 0x9

.field private static final VOICE_TIME:Ljava/lang/String; = "voice_time"


# instance fields
.field private callFragmentListener:Lcom/didi/frame/MainActivity$CallFragmentListener;

.field private changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

.field private cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

.field private externalData:Lcom/didi/common/model/ExternalData;

.field externalListener:Lcom/didi/common/model/ExternalData$ExternalListener;

.field fragmentStateListener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

.field private isLoad:Z

.field private isSupportVoice:Z

.field private listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

.field private mHandler:Landroid/os/Handler;

.field private mLocationListener:Lcom/didi/soso/location/LocationInterface;

.field private mMapDragListener:Lcom/didi/map/MapDragListener;

.field private mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

.field private mView:Lcom/didi/frame/realtime/RealTimeCallView;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

.field private samsungs:[Ljava/lang/String;

.field private taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

.field private voicePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SM-G9250"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SM-G9200"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SM-G9208"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SM-G9209"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->samsungs:[Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$1;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mMapDragListener:Lcom/didi/map/MapDragListener;

    .line 256
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$4;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    .line 264
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$5;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 286
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$6;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    .line 422
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$8;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->fragmentStateListener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

    .line 430
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$9;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

    .line 712
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$11;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$11;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    .line 718
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$12;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    .line 742
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$13;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->callFragmentListener:Lcom/didi/frame/MainActivity$CallFragmentListener;

    .line 759
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$14;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalListener:Lcom/didi/common/model/ExternalData$ExternalListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/common/model/ExternalData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/common/model/ExternalData;)Lcom/didi/common/model/ExternalData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->isSupportVoice:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getTaxiDrivers()V

    return-void
.end method

.method static synthetic access$102(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->isSupportVoice:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Lcom/didi/taxi/model/TaxiOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/taxi/model/TaxiOrder;)Lcom/didi/taxi/model/TaxiOrder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->voicePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->voicePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/common/model/ExternalData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->setRealtimeCallView(Lcom/didi/common/model/ExternalData;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->deleAll(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->setLocationView()V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onVoice(Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onHome(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onCompany(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/common/model/AddressList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onGetAddressList(Lcom/didi/common/model/AddressList;I)V

    return-void
.end method

.method private addCityListener()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->addCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 254
    return-void
.end method

.method private checkIMUnread()V
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getIMUnreadFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    const v1, 0x7f020171

    invoke-static {v0, v1}, Lcom/didi/frame/MainActivity;->setTitleBar(Landroid/view/View$OnClickListener;I)V

    .line 183
    :cond_0
    return-void
.end method

.method private commitPreferenceImmediately()V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->getInstance()Lcom/didi/common/config/preference/PreferenceEditorProxy;

    move-result-object v0

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$2;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$2;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commitImmediately(Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;)V

    .line 149
    return-void
.end method

.method private deleAll(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 732
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    :goto_0
    return-void

    .line 735
    :cond_0
    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->deleteDir(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private forward()V
    .locals 2

    .prologue
    .line 563
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 565
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 577
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward()V

    .line 578
    return-void

    .line 567
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 568
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 570
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isOnlyUpdateName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setType(I)V

    goto :goto_0

    .line 574
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setType(I)V

    goto :goto_0
.end method

.method private getConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-static {v2}, Lcom/didi/common/net/CommonRequest;->getConfig(Lcom/didi/common/net/ResponseListener;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCarConfigVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/didi/car/net/CarRequest;->getConfig(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 246
    return-void
.end method

.method private getDataFromCommonAddr()V
    .locals 6

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 316
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "from_common_addr"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 317
    .local v1, mFrom:Z
    const-string v4, "item"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 318
    .local v2, mItem:I
    if-nez v1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 320
    :cond_0
    sget-object v4, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v4}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v3

    check-cast v3, Lcom/didi/taxi/model/TaxiOrder;

    .line 321
    .local v3, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    sget-object v4, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 322
    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 323
    invoke-direct {p0, v3}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onHome(Lcom/didi/taxi/model/TaxiOrder;)V

    .line 327
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    goto :goto_0

    .line 324
    :cond_2
    const/4 v4, 0x7

    if-ne v2, v4, :cond_1

    .line 325
    invoke-direct {p0, v3}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onCompany(Lcom/didi/taxi/model/TaxiOrder;)V

    goto :goto_1
.end method

.method private getTaxiDrivers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 404
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isMyMarkerRemove()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(DD)V

    .line 408
    :goto_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-eq v0, v1, :cond_0

    .line 409
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 410
    :cond_0
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->isLoad:Z

    if-eqz v0, :cond_3

    .line 420
    :cond_1
    :goto_1
    return-void

    .line 407
    :cond_2
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateMyMarkerAddress()V

    goto :goto_0

    .line 412
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->isLoad:Z

    .line 414
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 415
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->fragmentStateListener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

    invoke-static {v0, v1, v4, v2}, Lcom/didi/common/helper/DriversHelper;->showTaxiDrivers(Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V

    goto :goto_1

    .line 417
    :cond_4
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->fragmentStateListener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

    invoke-static {v0, v1, v4, v2}, Lcom/didi/common/helper/DriversHelper;->showTaxiDrivers(Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V

    goto :goto_1
.end method

.method private getVoiceTime()I
    .locals 3

    .prologue
    .line 369
    const/16 v1, 0xf

    .line 370
    .local v1, time:I
    const-string v2, "voice_time"

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, string:Ljava/lang/String;
    const-string v2, "Not Found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 374
    :cond_0
    return v1
.end method

.method private initDeparture()V
    .locals 4

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useDepart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setLastLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 191
    :cond_0
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 193
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->setDepartMarker(DD)V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mMapDragListener:Lcom/didi/map/MapDragListener;

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setDepartMarkerDragListener(Lcom/didi/map/IMapDragListener;)V

    .line 196
    return-void
.end method

.method private isValidCity()Z
    .locals 2

    .prologue
    .line 617
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, currentCity:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    const/4 v1, 0x0

    .line 621
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onCompany(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 4
    .parameter "taxiOrder"

    .prologue
    const/4 v3, 0x7

    .line 542
    const-string v1, "sc_go_company"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 545
    .local v0, bun:Landroid/os/Bundle;
    const-string v1, "from"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 546
    const-string v1, "item"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 547
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/frame/FragmentMgr;->showLoginFragment(Landroid/os/Bundle;)V

    .line 560
    .end local v0           #bun:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 550
    :cond_0
    sget-object v1, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {p1, v1}, Lcom/didi/taxi/model/TaxiOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 552
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasCompanyAddress()Z

    move-result v1

    if-nez v1, :cond_1

    .line 553
    invoke-direct {p0, v3}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->updateAddr(I)V

    goto :goto_0

    .line 557
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->getCompanyAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 558
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->getCompanyAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/didi/taxi/model/TaxiOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 559
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->forward()V

    goto :goto_0
.end method

.method private onGetAddressList(Lcom/didi/common/model/AddressList;I)V
    .locals 8
    .parameter "addressList"
    .parameter "addressType"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 678
    invoke-static {p1}, Lcom/didi/common/model/BaseObject;->isAvailable(Lcom/didi/common/model/BaseObject;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 680
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5, v7, p2}, Lcom/didi/frame/FragmentMgr;->showCommonAddrFragment(II)V

    .line 710
    :goto_0
    return-void

    .line 683
    :cond_0
    const/4 v2, 0x0

    .line 684
    .local v2, flag:Z
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    .line 685
    .local v1, alist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    invoke-static {v1}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 686
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 687
    .local v0, address:Lcom/didi/common/model/Address;
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->save()V

    .line 688
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isHome()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    if-ne p2, v5, :cond_2

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 689
    const/4 v2, 0x1

    .line 690
    :cond_2
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCompany()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x7

    if-ne p2, v5, :cond_1

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 691
    const/4 v2, 0x1

    goto :goto_1

    .line 694
    .end local v0           #address:Lcom/didi/common/model/Address;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz v2, :cond_4

    .line 696
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->forward()V

    goto :goto_0

    .line 698
    :cond_4
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    .line 699
    .local v4, pref:Lcom/didi/common/config/Preferences;
    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getHomeName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 700
    invoke-virtual {v4, v6}, Lcom/didi/common/config/Preferences;->setHomeAddr(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v4, v6}, Lcom/didi/common/config/Preferences;->setHomeName(Ljava/lang/String;)V

    .line 703
    :cond_5
    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getCompanyName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 704
    invoke-virtual {v4, v6}, Lcom/didi/common/config/Preferences;->setCompanyAddr(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v4, v6}, Lcom/didi/common/config/Preferences;->setCompanyName(Ljava/lang/String;)V

    .line 708
    :cond_6
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v5

    invoke-virtual {v5, v7, p2}, Lcom/didi/frame/FragmentMgr;->showCommonAddrFragment(II)V

    goto :goto_0
.end method

.method private onHome(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 4
    .parameter "taxiOrder"

    .prologue
    const/4 v3, 0x6

    .line 515
    const-string v1, "sc_go_home"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 518
    .local v0, bun:Landroid/os/Bundle;
    const-string v1, "from"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    const-string v1, "item"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/frame/FragmentMgr;->showLoginFragment(Landroid/os/Bundle;)V

    .line 534
    .end local v0           #bun:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 523
    :cond_0
    sget-object v1, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {p1, v1}, Lcom/didi/taxi/model/TaxiOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 525
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasHomeAddress()Z

    move-result v1

    if-nez v1, :cond_1

    .line 526
    invoke-direct {p0, v3}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->updateAddr(I)V

    goto :goto_0

    .line 531
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->getHomeAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 532
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->getHomeAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/didi/taxi/model/TaxiOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 533
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->forward()V

    goto :goto_0
.end method

.method private onTargetAddressSelected()V
    .locals 2

    .prologue
    .line 656
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 657
    .local v0, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 658
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onText(Lcom/didi/taxi/model/TaxiOrder;)V

    .line 659
    return-void
.end method

.method private onText(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 1
    .parameter "taxiOrder"

    .prologue
    .line 504
    sget-object v0, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {p1, v0}, Lcom/didi/taxi/model/TaxiOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 505
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/didi/taxi/model/TaxiOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 506
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->forward()V

    .line 507
    return-void
.end method

.method private onVoice(Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;J)V
    .locals 3
    .parameter "taxiOrder"
    .parameter "voicePath"
    .parameter "voiceTime"

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------------voice size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/didi/common/util/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " voicetime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1, p2}, Lcom/didi/taxi/model/TaxiOrder;->setVoicePath(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1, p3, p4}, Lcom/didi/taxi/model/TaxiOrder;->setVoiceTime(J)V

    .line 478
    sget-object v0, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    invoke-virtual {p1, v0}, Lcom/didi/taxi/model/TaxiOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 479
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 480
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 481
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->forward()V

    .line 482
    return-void
.end method

.method private redirectToSearch()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 633
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->removePoupView()V

    .line 634
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/didi/common/search/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 635
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "search_extra_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 636
    const-string v1, "search_extra_order_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 638
    return-void
.end method

.method private removeLocationView()V
    .locals 0

    .prologue
    .line 282
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->removeChangeListener()V

    .line 283
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->hideLocation()V

    .line 284
    return-void
.end method

.method private setLocationView()V
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setViewMargin(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V

    .line 279
    return-void
.end method

.method private setRealtimeCallView(Lcom/didi/common/model/ExternalData;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getVoiceTime()I

    move-result v0

    .line 355
    .local v0, time:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orderStyleCreate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getCreateOrderStyle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;

    iget-boolean v1, v1, Lcom/didi/common/model/ExternalData;->isSupprotVoice:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;

    iget-object v1, v1, Lcom/didi/common/model/ExternalData;->source:Ljava/lang/String;

    sget-object v2, Lcom/didi/common/model/ExternalData$Source;->HUAWEI:Lcom/didi/common/model/ExternalData$Source;

    invoke-virtual {v2}, Lcom/didi/common/model/ExternalData$Source;->name()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 358
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->resetBottomStyle(I)V

    .line 363
    :goto_0
    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    invoke-static {v1, v2, v3, v4}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setTimerDown(JJ)V

    .line 364
    add-int/lit8 v1, v0, -0x7

    int-to-long v1, v1

    add-int/lit8 v3, v0, -0xa

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setVoiceNoticeChangeTime(JJ)V

    .line 365
    return-void

    .line 360
    :cond_0
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->getBottomStyle()I

    move-result v1

    invoke-static {v1}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->resetBottomStyle(I)V

    goto :goto_0
.end method

.method private setRedirectListener()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 250
    return-void
.end method

.method private setSwitcher()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->setContentViewAnimated(Landroid/view/View;)V

    .line 400
    return-void
.end method

.method private showInvalidServiceDialog()V
    .locals 3

    .prologue
    .line 625
    const v2, 0x7f0b0251

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, tip:Ljava/lang/String;
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 627
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 629
    return-void
.end method

.method private showPopoupAnnouncement(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 332
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$7;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Landroid/view/View;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    return-void
.end method

.method private updateAddr(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 663
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$10;

    invoke-direct {v0, p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$10;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;I)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getAddrLists(Lcom/didi/common/net/ResponseListener;)V

    .line 675
    return-void
.end method


# virtual methods
.method public doInBack()V
    .locals 1

    .prologue
    .line 167
    const-string v0, "doInBackNow"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getTaxiDrivers()V

    .line 169
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getConfig()V

    .line 170
    return-void
.end method

.method protected jumpToSearch()V
    .locals 1

    .prologue
    .line 597
    invoke-static {}, Lcom/didi/common/helper/SoundHelper;->playClick()V

    .line 598
    invoke-static {}, Lcom/didi/common/util/Utils;->isLocated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    const v0, 0x7f0b03e6

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    .line 600
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setEditViewEnble()V

    .line 609
    :goto_0
    return-void

    .line 603
    :cond_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->isValidCity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 604
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->showInvalidServiceDialog()V

    .line 605
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setEditViewEnble()V

    goto :goto_0

    .line 608
    :cond_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->redirectToSearch()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/MainActivity;

    .line 155
    .local v0, activity:Lcom/didi/frame/MainActivity;
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->callFragmentListener:Lcom/didi/frame/MainActivity$CallFragmentListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/MainActivity;->addCallFragmentListener(Lcom/didi/frame/MainActivity$CallFragmentListener;)V

    .line 156
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 642
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 643
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 645
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 647
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onTargetAddressSelected()V

    goto :goto_0

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 124
    new-instance v0, Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    .line 125
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;->setFragmentListener(Lcom/didi/frame/realtime/RealtimeCallViewListener;)V

    .line 126
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->setCurrentCity()V

    .line 127
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 128
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->commitPreferenceImmediately()V

    .line 130
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    invoke-static {v0}, Lcom/didi/soso/location/ListenerCollection;->addLocationLister(Lcom/didi/soso/location/LocationInterface;)V

    .line 131
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->checkSwitcher(Lcom/didi/frame/business/Business;)V

    .line 138
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 161
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/MainActivity;

    .line 162
    .local v0, activity:Lcom/didi/frame/MainActivity;
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->callFragmentListener:Lcom/didi/frame/MainActivity$CallFragmentListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/MainActivity;->removeCallFragmentListener(Lcom/didi/frame/MainActivity$CallFragmentListener;)V

    .line 163
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 388
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->stopCarAnimationDrivers()V

    .line 389
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->removePoupView()V

    .line 390
    invoke-static {}, Lcom/didi/map/MapController;->hideMapLogo()V

    .line 391
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->removeLocationView()V

    .line 392
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 393
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->removeCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 394
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    invoke-static {v0}, Lcom/didi/soso/location/ListenerCollection;->removeLocationListener(Lcom/didi/soso/location/LocationInterface;)V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->isLoad:Z

    .line 396
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 588
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 589
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->showMenu()V

    .line 590
    const/4 v0, 0x1

    .line 592
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 175
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->pauseCarAnimationDrivers()V

    .line 176
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 380
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->setSwitcher()V

    .line 381
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setEditViewEnble()V

    .line 382
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->showCarAnimationDrivers()V

    .line 383
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 296
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 297
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 298
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->showPopoupAnnouncement(Landroid/view/View;)V

    .line 299
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->setLocationView()V

    .line 300
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->setRedirectListener()V

    .line 301
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->addCityListener()V

    .line 302
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->initDeparture()V

    .line 303
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->checkIMUnread()V

    .line 304
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->externalData:Lcom/didi/common/model/ExternalData;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->setRealtimeCallView(Lcom/didi/common/model/ExternalData;)V

    .line 306
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->setUserLogo()V

    .line 310
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->getDataFromCommonAddr()V

    .line 311
    return-void
.end method
