.class public Lcom/didi/beatles/map/BtsDriversHelper;
.super Ljava/lang/Object;
.source "BtsDriversHelper.java"


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static btsDrivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/BtsUserAround$UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static btsPasngers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/BtsUserAround$UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mRetryDriversCount:I

.field private static mRetryPasngersCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput v0, Lcom/didi/beatles/map/BtsDriversHelper;->mRetryDriversCount:I

    .line 27
    sput v0, Lcom/didi/beatles/map/BtsDriversHelper;->mRetryPasngersCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    sput p0, Lcom/didi/beatles/map/BtsDriversHelper;->mRetryPasngersCount:I

    return p0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/didi/beatles/map/BtsDriversHelper;->btsPasngers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    sput-object p0, Lcom/didi/beatles/map/BtsDriversHelper;->btsPasngers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(DDLjava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lcom/didi/beatles/map/BtsDriversHelper;->showOnMap(DDLjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/beatles/model/BtsUserAround;DD)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lcom/didi/beatles/map/BtsDriversHelper;->onGetPasngersFail(Lcom/didi/beatles/model/BtsUserAround;DD)V

    return-void
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    sput p0, Lcom/didi/beatles/map/BtsDriversHelper;->mRetryDriversCount:I

    return p0
.end method

.method static synthetic access$500()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/didi/beatles/map/BtsDriversHelper;->btsDrivers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    sput-object p0, Lcom/didi/beatles/map/BtsDriversHelper;->btsDrivers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/didi/beatles/model/BtsUserAround;DD)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lcom/didi/beatles/map/BtsDriversHelper;->onGetDriversFail(Lcom/didi/beatles/model/BtsUserAround;DD)V

    return-void
.end method

.method private static getBtsAroundDrivers(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 103
    new-instance v0, Lcom/didi/beatles/map/BtsDriversHelper$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/didi/beatles/map/BtsDriversHelper$2;-><init>(DD)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/beatles/net/BtsRequest;->getBtsArroundDrivers(DDLcom/didi/beatles/net/BtsResponseListener;)V

    .line 133
    return-void
.end method

.method private static getBtsAroundPasngers(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 69
    new-instance v0, Lcom/didi/beatles/map/BtsDriversHelper$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/didi/beatles/map/BtsDriversHelper$1;-><init>(DD)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/beatles/net/BtsRequest;->getBtsArroundPasngers(DDLcom/didi/beatles/net/BtsResponseListener;)V

    .line 99
    return-void
.end method

.method public static isAvalible()Z
    .locals 4

    .prologue
    .line 179
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    const-class v3, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-virtual {v2, v3}, Lcom/didi/frame/FragmentMgr;->getFragment(Ljava/lang/Class;)Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v1

    .line 180
    .local v1, frag:Lcom/didi/common/ui/fragment/SlideFragment;
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/FragmentMgr;->isBtsRealtimeFragment()Z

    move-result v0

    .line 181
    .local v0, flag:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/didi/common/ui/fragment/SlideFragment;->isPaused()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    const/4 v2, 0x1

    .line 183
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static onGetDriversFail(Lcom/didi/beatles/model/BtsUserAround;DD)V
    .locals 0
    .parameter "list"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 167
    return-void
.end method

.method private static onGetPasngersFail(Lcom/didi/beatles/model/BtsUserAround;DD)V
    .locals 0
    .parameter "list"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 175
    return-void
.end method

.method public static showBtsArroundDrivers(ZDD)V
    .locals 2
    .parameter "reload"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 39
    const-string v0, "pbpxhome02_sw"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static showBtsArroundPasngers(ZDD)V
    .locals 3
    .parameter "reload"
    .parameter "lat"
    .parameter "lng"

    .prologue
    const/4 v2, 0x0

    .line 55
    const-string v0, "pbdxhome01_sw"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 56
    const-string v0, "pbdxhome02_sw"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private static showBtsUsersOnMap(DDLjava/util/ArrayList;F)V
    .locals 2
    .parameter "lat"
    .parameter "lng"
    .parameter
    .parameter "zoom"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/BtsUserAround$UserInfo;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p4, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/BtsUserAround$UserInfo;>;"
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 143
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 144
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getUserRoleType()I

    move-result v0

    invoke-static {p4, v0}, Lcom/didi/map/marker/MarkerController;->addBtsUserMarkers(Ljava/util/ArrayList;I)V

    .line 145
    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-nez v0, :cond_1

    .line 146
    invoke-static {p0, p1, p2, p3, p4}, Lcom/didi/map/MapController;->zoomCenterWithBts(DDLjava/util/ArrayList;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {p0, p1, p2, p3, p5}, Lcom/didi/map/MapController;->setMapCenterZoom(DDF)V

    goto :goto_0
.end method

.method private static showOnMap(DDLjava/util/ArrayList;)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/BtsUserAround$UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p4, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/BtsUserAround$UserInfo;>;"
    invoke-static {}, Lcom/didi/beatles/map/BtsDriversHelper;->isAvalible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v5, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/didi/beatles/map/BtsDriversHelper;->showBtsUsersOnMap(DDLjava/util/ArrayList;F)V

    .line 139
    :cond_0
    return-void
.end method
