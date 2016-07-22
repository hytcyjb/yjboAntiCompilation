.class public Lcom/didi/frame/DepartureActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "DepartureActivity.java"


# instance fields
.field private adapter:Lcom/didi/frame/departure/DepartureResultAdapter;

.field private addr:Lcom/didi/common/model/Address;

.field private addrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation
.end field

.field private backWithNone:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

.field private callBack:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

.field private count:I

.field private custom:Landroid/widget/LinearLayout;

.field private customListener:Landroid/view/View$OnClickListener;

.field private departicon:Landroid/widget/ImageView;

.field private fail:Landroid/widget/TextView;

.field private index:I

.field private itemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private listView:Landroid/widget/ListView;

.field private loadFail:Landroid/widget/RelativeLayout;

.field private loading:Landroid/widget/RelativeLayout;

.field private location:Lx/ImageView;

.field private mLastDepartureAddress:Lcom/didi/common/model/Address;

.field private mapView:Lcom/didi/common/ui/component/SoSoMapView;

.field private myLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private resend:Landroid/widget/TextView;

.field private search:Lcom/didi/frame/departure/DepartSearchTitle;

.field private searchViewListener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

.field private searchid:Ljava/lang/String;

.field private shakeAnim:Landroid/view/animation/Animation;

.field private sugAdapter:Lcom/didi/frame/departure/DepartureSearchAdapter;

.field private sugItemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private sugList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation
.end field

.field private sugListView:Landroid/widget/ListView;

.field private sugloading:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    .line 343
    new-instance v0, Lcom/didi/frame/DepartureActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/DepartureActivity$4;-><init>(Lcom/didi/frame/DepartureActivity;)V

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->searchViewListener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    .line 533
    new-instance v0, Lcom/didi/frame/DepartureActivity$6;

    invoke-direct {v0, p0}, Lcom/didi/frame/DepartureActivity$6;-><init>(Lcom/didi/frame/DepartureActivity;)V

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->callBack:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    .line 546
    new-instance v0, Lcom/didi/frame/DepartureActivity$7;

    invoke-direct {v0, p0}, Lcom/didi/frame/DepartureActivity$7;-><init>(Lcom/didi/frame/DepartureActivity;)V

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->backWithNone:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    .line 559
    new-instance v0, Lcom/didi/frame/DepartureActivity$8;

    invoke-direct {v0, p0}, Lcom/didi/frame/DepartureActivity$8;-><init>(Lcom/didi/frame/DepartureActivity;)V

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 576
    new-instance v0, Lcom/didi/frame/DepartureActivity$9;

    invoke-direct {v0, p0}, Lcom/didi/frame/DepartureActivity$9;-><init>(Lcom/didi/frame/DepartureActivity;)V

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->itemListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 606
    new-instance v0, Lcom/didi/frame/DepartureActivity$10;

    invoke-direct {v0, p0}, Lcom/didi/frame/DepartureActivity$10;-><init>(Lcom/didi/frame/DepartureActivity;)V

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->customListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/DepartureActivity;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/didi/frame/DepartureActivity;->animation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/frame/DepartureActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/frame/DepartureActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugloading:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/frame/DepartureActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->setCustomAddress()V

    return-void
.end method

.method static synthetic access$1300(Lcom/didi/frame/DepartureActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->onInputEmptyBack()V

    return-void
.end method

.method static synthetic access$1400(Lcom/didi/frame/DepartureActivity;)Lcom/didi/common/ui/component/SoSoMapView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->mapView:Lcom/didi/common/ui/component/SoSoMapView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/didi/frame/DepartureActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/didi/frame/DepartureActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/didi/frame/DepartureActivity;->count:I

    return v0
.end method

.method static synthetic access$1800(Lcom/didi/frame/DepartureActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->resend:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/didi/frame/DepartureActivity;Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/DepartureActivity;->onGetPoiSug(Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/frame/DepartureActivity;Landroid/widget/ListView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/didi/frame/DepartureActivity;->disableListClick(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/didi/frame/DepartureActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/DepartureActivity;->onPoiSugFail(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/didi/frame/DepartureActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->departicon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/didi/frame/DepartureActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/didi/frame/DepartureActivity;->index:I

    return p1
.end method

.method static synthetic access$2300(Lcom/didi/frame/DepartureActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/didi/frame/DepartureActivity;Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/didi/frame/DepartureActivity;->upLoadAddressSug(Lcom/didi/common/model/Address;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/didi/frame/DepartureActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->addTraceLog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/didi/frame/DepartureActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/didi/frame/DepartureActivity;)Lcom/didi/common/model/Address;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->addr:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/didi/frame/DepartureActivity;Lcom/didi/common/model/Address;)Lcom/didi/common/model/Address;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity;->addr:Lcom/didi/common/model/Address;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/didi/frame/DepartureActivity;)Lcom/didi/frame/departure/DepartureResultAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->adapter:Lcom/didi/frame/departure/DepartureResultAdapter;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/didi/frame/DepartureActivity;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->backWithNone:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/frame/DepartureActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/didi/frame/DepartureActivity;->enableListClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/didi/frame/DepartureActivity;Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/didi/frame/DepartureActivity;->upLoadAddressGeo(Lcom/didi/common/model/Address;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/didi/frame/DepartureActivity;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/didi/frame/DepartureActivity;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity;->latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/didi/frame/DepartureActivity;DD)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/frame/DepartureActivity;->getAddressList(DD)V

    return-void
.end method

.method static synthetic access$3300(Lcom/didi/frame/DepartureActivity;Lcom/didi/common/model/AddressList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/didi/frame/DepartureActivity;->onUpdateAddressList(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/didi/frame/DepartureActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->loadFail:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/didi/frame/DepartureActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->loading:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/frame/DepartureActivity;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->callBack:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/frame/DepartureActivity;)Lcom/didi/frame/departure/DepartSearchTitle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/frame/DepartureActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/didi/frame/DepartureActivity;->getPoiSug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/frame/DepartureActivity;Lcom/didi/common/model/PoiList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/didi/frame/DepartureActivity;->onSearchSuccess(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/frame/DepartureActivity;Lcom/didi/common/model/PoiList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/didi/frame/DepartureActivity;->onSearchFail(Lcom/didi/common/model/PoiList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/frame/DepartureActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->custom:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addTraceLog()V
    .locals 4

    .prologue
    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 308
    .local v0, kv:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "depart_list_index"

    iget v2, p0, Lcom/didi/frame/DepartureActivity;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_0

    .line 310
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "depart_list"

    const-string v3, "taxi_depart_list"

    invoke-static {v1, v2, v3, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "depart_list"

    const-string v3, "car_depart_list"

    invoke-static {v1, v2, v3, v0}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private animation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->shakeAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/didi/frame/DepartureActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/didi/frame/DepartureActivity$11;-><init>(Lcom/didi/frame/DepartureActivity;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 638
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->departicon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->shakeAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 639
    return-void
.end method

.method private back()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->mapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SoSoMapView;->onStop()V

    .line 263
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->mapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SoSoMapView;->onDestroy()V

    .line 264
    invoke-virtual {p0}, Lcom/didi/frame/DepartureActivity;->finish()V

    .line 265
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/DepartureActivity;->overridePendingTransition(II)V

    .line 266
    return-void
.end method

.method private disableListClick(Landroid/widget/ListView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 254
    :cond_0
    return-void
.end method

.method private empityShow(Ljava/lang/String;I)Z
    .locals 1
    .parameter "sug"
    .parameter "cou"

    .prologue
    .line 485
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/didi/frame/DepartureActivity;->count:I

    if-ne v0, p2, :cond_0

    .line 486
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->resend:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    .line 487
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->fail:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    .line 488
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 489
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->onDataChange()V

    .line 490
    const/4 v0, 0x1

    .line 492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableListClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 259
    :cond_0
    return-void
.end method

.method private getAddressList(DD)V
    .locals 4
    .parameter "lat"
    .parameter "lng"

    .prologue
    const/4 v3, 0x0

    .line 642
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 643
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->loading:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    .line 645
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->loadFail:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/didi/frame/DepartureActivity$12;

    invoke-direct {v2, p0}, Lcom/didi/frame/DepartureActivity$12;-><init>(Lcom/didi/frame/DepartureActivity;)V

    invoke-static {v0, v1, v3, v3, v2}, Lcom/didi/common/net/CommonRequest;->getDepartureAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 673
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->adapter:Lcom/didi/frame/departure/DepartureResultAdapter;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartureResultAdapter;->notifyDataSetChanged()V

    .line 674
    return-void
.end method

.method private getAddressList(DDLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "lat"
    .parameter "lng"
    .parameter "name"
    .parameter "addr"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 678
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->loading:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V

    .line 679
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/didi/frame/DepartureActivity$13;

    invoke-direct {v2, p0}, Lcom/didi/frame/DepartureActivity$13;-><init>(Lcom/didi/frame/DepartureActivity;)V

    invoke-static {v0, v1, p5, p6, v2}, Lcom/didi/common/net/CommonRequest;->getDepartureAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 708
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->adapter:Lcom/didi/frame/departure/DepartureResultAdapter;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartureResultAdapter;->notifyDataSetChanged()V

    .line 709
    return-void
.end method

.method private getPoiSug(Ljava/lang/String;)V
    .locals 3
    .parameter "sug"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    .line 417
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugloading:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V

    .line 418
    iget v0, p0, Lcom/didi/frame/DepartureActivity;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/frame/DepartureActivity;->count:I

    .line 419
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/didi/frame/DepartureActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/didi/frame/DepartureActivity$5;-><init>(Lcom/didi/frame/DepartureActivity;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/didi/common/net/CommonRequest;->getPoiSuggestion(Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/net/ResponseListener;)V

    .line 444
    return-void
.end method

.method private hideView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 248
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 249
    return-void
.end method

.method private initAddressList()V
    .locals 2

    .prologue
    .line 195
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->loading:Landroid/widget/RelativeLayout;

    .line 196
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->loadFail:Landroid/widget/RelativeLayout;

    .line 197
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;

    .line 198
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Lcom/didi/frame/departure/DepartureResultAdapter;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/didi/frame/departure/DepartureResultAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->adapter:Lcom/didi/frame/departure/DepartureResultAdapter;

    .line 201
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->adapter:Lcom/didi/frame/departure/DepartureResultAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 203
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->itemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    return-void
.end method

.method private initException()V
    .locals 2

    .prologue
    .line 227
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->resend:Landroid/widget/TextView;

    .line 228
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->resend:Landroid/widget/TextView;

    new-instance v1, Lcom/didi/frame/DepartureActivity$3;

    invoke-direct {v1, p0}, Lcom/didi/frame/DepartureActivity$3;-><init>(Lcom/didi/frame/DepartureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->fail:Landroid/widget/TextView;

    .line 236
    return-void
.end method

.method private initFirstData()V
    .locals 7

    .prologue
    .line 207
    const/4 v5, 0x0

    .local v5, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 208
    .local v6, addr:Ljava/lang/String;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->myLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 209
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 211
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepartName()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepartAddressDetail()Ljava/lang/String;

    move-result-object v6

    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setLastLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 221
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v3, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/didi/frame/DepartureActivity;->getAddressList(DDLjava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_1
    return-void

    .line 214
    :cond_2
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 215
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isOnlyUpdateName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressTitle()Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressDetail()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private initLoading()V
    .locals 1

    .prologue
    .line 239
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugloading:Landroid/widget/RelativeLayout;

    .line 240
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugloading:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    .line 241
    return-void
.end method

.method private initMapView()V
    .locals 5

    .prologue
    .line 135
    const v1, 0x7f080036

    invoke-virtual {p0, v1}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/SoSoMapView;

    iput-object v1, p0, Lcom/didi/frame/DepartureActivity;->mapView:Lcom/didi/common/ui/component/SoSoMapView;

    .line 136
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->mapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/SoSoMapView;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/departure/DepartureMap;->setMap(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;)V

    .line 137
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v1

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/frame/departure/DepartureMap;->setMapCenter(DD)V

    .line 142
    :goto_0
    new-instance v0, Lcom/didi/frame/DepartureActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/DepartureActivity$1;-><init>(Lcom/didi/frame/DepartureActivity;)V

    .line 159
    .local v0, listener:Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;
    invoke-static {v0}, Lcom/didi/frame/departure/DepartureMap;->setListener(Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;)V

    .line 160
    return-void

    .line 140
    .end local v0           #listener:Lcom/didi/frame/departure/DepartureMap$DepartureMapListener;
    :cond_0
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/frame/departure/DepartureMap;->setMapCenter(DD)V

    goto :goto_0
.end method

.method private initOtherView()V
    .locals 2

    .prologue
    .line 181
    const v0, 0x7f040018

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->shakeAnim:Landroid/view/animation/Animation;

    .line 182
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->location:Lx/ImageView;

    .line 183
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->location:Lx/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx/ImageView;->setClickable(Z)V

    .line 184
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->location:Lx/ImageView;

    new-instance v1, Lcom/didi/frame/DepartureActivity$2;

    invoke-direct {v1, p0}, Lcom/didi/frame/DepartureActivity$2;-><init>(Lcom/didi/frame/DepartureActivity;)V

    invoke-virtual {v0, v1}, Lx/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->departicon:Landroid/widget/ImageView;

    .line 192
    return-void
.end method

.method private initSearchTitle()V
    .locals 3

    .prologue
    .line 163
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/departure/DepartSearchTitle;

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;

    .line 164
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->searchViewListener:Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/departure/DepartSearchTitle;->setListener(Lcom/didi/frame/departure/DepartSearchTitle$DepartSearchListener;Z)V

    .line 165
    const v0, 0x7f080047

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->custom:Landroid/widget/LinearLayout;

    .line 166
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->custom:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->customListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->custom:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method private initSugList()V
    .locals 2

    .prologue
    .line 171
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugListView:Landroid/widget/ListView;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugList:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Lcom/didi/frame/departure/DepartureSearchAdapter;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->sugList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/didi/frame/departure/DepartureSearchAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugAdapter:Lcom/didi/frame/departure/DepartureSearchAdapter;

    .line 174
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->sugAdapter:Lcom/didi/frame/departure/DepartureSearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 176
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->sugItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugListView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method private onDataChange()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugAdapter:Lcom/didi/frame/departure/DepartureSearchAdapter;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartureSearchAdapter;->notifyDataSetChanged()V

    .line 530
    return-void
.end method

.method private onGetPoiSug(Lcom/didi/common/model/PoiList;Ljava/lang/String;I)V
    .locals 3
    .parameter "poiList"
    .parameter "keyword"
    .parameter "c"

    .prologue
    .line 447
    invoke-direct {p0, p2, p3}, Lcom/didi/frame/DepartureActivity;->empityShow(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 451
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->onDataChange()V

    .line 452
    iget v0, p0, Lcom/didi/frame/DepartureActivity;->count:I

    if-ne v0, p3, :cond_0

    .line 453
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->fail:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V

    .line 454
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->custom:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V

    .line 455
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v2}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u201d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->setSearchResultState()V

    goto :goto_0

    .line 460
    :cond_3
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->fail:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    .line 461
    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 462
    invoke-virtual {p1, p2}, Lcom/didi/common/model/PoiList;->setKeyword(Ljava/lang/String;)V

    .line 463
    :cond_4
    iget v0, p0, Lcom/didi/frame/DepartureActivity;->count:I

    if-ne v0, p3, :cond_0

    .line 464
    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getSearchId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->searchid:Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 466
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 467
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->onDataChange()V

    goto/16 :goto_0
.end method

.method private onInputEmptyBack()V
    .locals 3

    .prologue
    .line 409
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 410
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "departure"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/DepartureActivity;->setResult(ILandroid/content/Intent;)V

    .line 412
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->back()V

    .line 413
    return-void
.end method

.method private onPoiSugFail(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "msg"
    .parameter "keyword"
    .parameter "c"

    .prologue
    .line 472
    invoke-direct {p0, p2, p3}, Lcom/didi/frame/DepartureActivity;->empityShow(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget v0, p0, Lcom/didi/frame/DepartureActivity;->count:I

    if-ne v0, p3, :cond_0

    .line 475
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->fail:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    .line 476
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 477
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->onDataChange()V

    .line 478
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->resend:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b04db

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->resend:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private onSearchFail(Lcom/didi/common/model/PoiList;)V
    .locals 3
    .parameter "poiList"

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->onDataChange()V

    .line 513
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    const v0, 0x7f0b04d7

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->custom:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V

    .line 516
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v2}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u201d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    return-void
.end method

.method private onSearchSuccess(Lcom/didi/common/model/PoiList;)V
    .locals 3
    .parameter "poiList"

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->onDataChange()V

    .line 498
    if-nez p1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->custom:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V

    .line 503
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v2}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u201d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getSearchId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->searchid:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/didi/common/model/PoiList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 508
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->sugAdapter:Lcom/didi/frame/departure/DepartureSearchAdapter;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartureSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private onUpdateAddressList(Lcom/didi/common/model/AddressList;)V
    .locals 4
    .parameter "addressList"

    .prologue
    const/4 v3, 0x0

    .line 712
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 713
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->loading:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    .line 714
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->listView:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addrList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 716
    if-nez p1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->loadFail:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V

    .line 733
    :goto_0
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->adapter:Lcom/didi/frame/departure/DepartureResultAdapter;

    invoke-virtual {v1}, Lcom/didi/frame/departure/DepartureResultAdapter;->notifyDataSetChanged()V

    .line 734
    return-void

    .line 719
    :cond_0
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->locToAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 720
    .local v0, addr:Lcom/didi/common/model/Address;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 721
    if-eqz v0, :cond_1

    .line 722
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 723
    :cond_1
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 724
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 726
    :cond_2
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 727
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->loadFail:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/didi/frame/DepartureActivity;->hideView(Landroid/view/View;)V

    .line 728
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/Address;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/didi/common/model/Address;->setSelect(Z)V

    goto :goto_0

    .line 730
    :cond_3
    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->loadFail:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/didi/frame/DepartureActivity;->showView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setCustomAddress()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 317
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 320
    .local v0, addr:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 321
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 322
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 323
    const-string v2, "input"

    iput-object v2, v0, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    .line 324
    iget-object v2, p0, Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v2}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 325
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, v4}, Lcom/didi/common/model/Address;->setCustom(Z)V

    .line 327
    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->modifyCurrentAddress(Lcom/didi/common/model/Address;)V

    .line 328
    invoke-static {v4}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 329
    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 330
    invoke-static {v4}, Lcom/didi/frame/departure/DepartureHelper;->setOnlyUpdateName(Z)V

    .line 331
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 332
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/didi/common/model/Address;->setType(I)V

    .line 333
    invoke-direct {p0, v0}, Lcom/didi/frame/DepartureActivity;->upLoadAddressGeo(Lcom/didi/common/model/Address;)V

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----DepartInfoCustom: lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lng="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->shouldGetDrivers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    .line 337
    :cond_0
    sput-boolean v4, Lcom/didi/map/MapDragListener;->isLastAdsorb:Z

    .line 338
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 339
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/didi/frame/DepartureActivity;->setResult(ILandroid/content/Intent;)V

    .line 340
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->back()V

    .line 341
    return-void
.end method

.method private setSearchResultState()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 520
    sget-boolean v0, Lcom/didi/common/util/Constant;->isCloseInput:Z

    if-eqz v0, :cond_0

    .line 521
    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 522
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 523
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->custom:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 526
    :cond_0
    return-void
.end method

.method private showView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 245
    return-void
.end method

.method private upLoadAddressGeo(Lcom/didi/common/model/Address;)V
    .locals 8
    .parameter "addr"

    .prologue
    const/4 v2, 0x1

    .line 297
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/didi/common/model/Address;->setKeyword(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v1

    iget v5, p0, Lcom/didi/frame/DepartureActivity;->index:I

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v6

    const-string v7, ""

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v7}, Lcom/didi/taxi/net/TaxiRequest;->logAddress(Lcom/didi/common/model/Address;Ljava/lang/String;ZZZIZLjava/lang/String;)V

    .line 299
    return-void
.end method

.method private upLoadAddressSug(Lcom/didi/common/model/Address;)V
    .locals 7
    .parameter "poi"

    .prologue
    const/4 v2, 0x1

    .line 302
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/didi/common/model/Address;->setKeyword(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->search:Lcom/didi/frame/departure/DepartSearchTitle;

    invoke-virtual {v0}, Lcom/didi/frame/departure/DepartSearchTitle;->getInput()Ljava/lang/String;

    move-result-object v1

    iget v5, p0, Lcom/didi/frame/DepartureActivity;->index:I

    iget-object v6, p0, Lcom/didi/frame/DepartureActivity;->searchid:Ljava/lang/String;

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/didi/taxi/net/TaxiRequest;->logSelectedAddress(Lcom/didi/common/model/Address;Ljava/lang/String;ZZZILjava/lang/String;)V

    .line 304
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->onInputEmptyBack()V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/didi/frame/DepartureActivity;->setContentView(I)V

    .line 90
    const v0, 0x7f04001b

    const v1, 0x7f04001c

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/DepartureActivity;->overridePendingTransition(II)V

    .line 91
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->initMapView()V

    .line 92
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->initSearchTitle()V

    .line 93
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->initOtherView()V

    .line 94
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->initAddressList()V

    .line 95
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->initSugList()V

    .line 96
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->initFirstData()V

    .line 97
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->initException()V

    .line 98
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->initLoading()V

    .line 100
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/DepartureActivity;->mLastDepartureAddress:Lcom/didi/common/model/Address;

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 124
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->mapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SoSoMapView;->onDestroy()V

    .line 125
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->mapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SoSoMapView;->onResume()V

    .line 113
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onStart()V

    .line 106
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->mapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SoSoMapView;->onStart()V

    .line 107
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onStop()V

    .line 118
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity;->mapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SoSoMapView;->onStop()V

    .line 119
    return-void
.end method

.method protected setDeparture(Lcom/didi/common/model/Address;)V
    .locals 6
    .parameter "addr"

    .prologue
    const/4 v5, 0x1

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----DepartAddress: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 272
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/didi/frame/DepartureActivity;->myLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-nez v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v1

    iget-object v3, p0, Lcom/didi/frame/DepartureActivity;->myLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v1

    iget-object v3, p0, Lcom/didi/frame/DepartureActivity;->myLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_3

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DepartUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 278
    invoke-static {p1}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 279
    invoke-static {v5}, Lcom/didi/frame/departure/DepartureHelper;->setOnlyUpdateName(Z)V

    .line 280
    invoke-static {v5}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 287
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----DepartInfo: lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->shouldGetDrivers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    .line 290
    :cond_2
    invoke-static {p1}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/DepartureActivity;->setResult(ILandroid/content/Intent;)V

    .line 293
    invoke-direct {p0}, Lcom/didi/frame/DepartureActivity;->back()V

    goto/16 :goto_0

    .line 282
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/didi/frame/departure/DepartureHelper;->setOnlyUpdateName(Z)V

    .line 283
    invoke-static {p1}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 284
    invoke-static {v5}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 285
    sput-boolean v5, Lcom/didi/map/MapDragListener;->isLastAdsorb:Z

    goto :goto_1
.end method
