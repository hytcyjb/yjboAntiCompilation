.class public Lcom/didi/beatles/net/BtsUrls;
.super Ljava/lang/Object;
.source "BtsUrls.java"


# static fields
.field public static final BTS_URL_ADD_ROUTE:Ljava/lang/String; = "driver/route/add"

.field public static final BTS_URL_ADD_TAGS:Ljava/lang/String; = "user/order/addtag"

.field public static final BTS_URL_APM:Ljava/lang/String; = "user/user/apm"

.field public static final BTS_URL_ARROUND_DRIVERS:Ljava/lang/String; = "passenger/driver/getaround"

.field public static final BTS_URL_ARROUND_PASSENGERS:Ljava/lang/String; = "driver/passenger/getaround"

.field public static final BTS_URL_BTS_CONFIG:Ljava/lang/String; = "user/user/getcityconfig"

.field public static final BTS_URL_CALCULATE_COST:Ljava/lang/String; = "passenger/order/calculatecost"

.field public static final BTS_URL_CHECK_ORDER_PAY_STATUS:Ljava/lang/String; = "platform/order/getpayorderdetail"

.field public static final BTS_URL_CREATE_ORDER:Ljava/lang/String; = "passenger/order/create"

.field public static final BTS_URL_DEL_ROUTE:Ljava/lang/String; = "driver/route/delete"

.field public static final BTS_URL_DRIVER_MATCH_LIST:Ljava/lang/String; = "driver/order/matchlist"

.field public static final BTS_URL_DRIVER_NEARBY_LIST:Ljava/lang/String; = "driver/order/nearbylist"

.field public static final BTS_URL_DRIVER_ORDER_CONFIRMARRIVE:Ljava/lang/String; = "driver/order/confirmarrive"

.field public static final BTS_URL_DRIVER_ORDER_GETINFO:Ljava/lang/String; = "driver/order/getinfo"

.field public static final BTS_URL_DRIVER_ORDER_STRIVE:Ljava/lang/String; = "driver/order/strive"

.field public static final BTS_URL_DRIVER_PENDING_ORDER_LIST:Ljava/lang/String; = "driver/order/getongoing"

.field public static final BTS_URL_GET_RAND_NICKNAME:Ljava/lang/String; = "user/profile/randomnick"

.field public static final BTS_URL_GET_ROUTE_LIST:Ljava/lang/String; = "driver/route/getlist"

.field public static final BTS_URL_GUIDE_BOOK_HOME:Ljava/lang/String; = "http://static.xiaojukeji.com/didialift/hybrid/pages/help/help-homePage.html"

.field public static final BTS_URL_H5_DRIVER_AUTH_INDEX:Ljava/lang/String; = "driver/auth/index"

.field public static final BTS_URL_H5_DRIVER_CANCEL_ORDER:Ljava/lang/String; = "driver/order/terminate"

.field public static final BTS_URL_H5_DRIVER_COMPLAIN:Ljava/lang/String; = "driver/passenger/complain"

.field public static final BTS_URL_H5_PASSANGER_CANCEL_ORDER:Ljava/lang/String; = "passenger/order/terminate"

.field public static final BTS_URL_H5_PASSANGER_COMPLAIN:Ljava/lang/String; = "passenger/driver/complain"

.field public static final BTS_URL_H5_PROFILE_PAGE:Ljava/lang/String; = "user/user/home"

.field public static final BTS_URL_H5_USER_AUTH_INDEX:Ljava/lang/String; = "user/auth/index"

.field public static final BTS_URL_IM_USER_LIST:Ljava/lang/String; = "im/user/getinfo"

.field public static final BTS_URL_MODIFY_ROUTE:Ljava/lang/String; = "driver/route/update"

.field public static final BTS_URL_PASSENGER_CANCEL_ORDER:Ljava/lang/String; = "passenger/order/cancel"

.field public static final BTS_URL_PASSENGER_GET_DRIVER_NUM_LIST:Ljava/lang/String; = "passenger/order/getpushnum"

.field public static final BTS_URL_PASSENGER_ORDER_GETINFO:Ljava/lang/String; = "passenger/order/getinfo"

.field public static final BTS_URL_PASSENGER_ORDER_TERMINATE:Ljava/lang/String; = "passenger/order/terminate"

.field public static final BTS_URL_PASSENGER_REGISTER:Ljava/lang/String; = "comm/api/updateprofile"

.field public static final BTS_URL_PASSENGER_VALUATION:Ljava/lang/String; = "http://static.xiaojukeji.com/didialift/hybrid/pages/help/help-passengerValuation.html"

.field public static final BTS_URL_PASSENGRR_PENDING_ORDER_LIST:Ljava/lang/String; = "passenger/order/getongoing"

.field public static final BTS_URL_PASSGENGER_LOGOUT_WITH_CID:Ljava/lang/String; = "passenger/logout"

.field public static final BTS_URL_PRE_PAY:Ljava/lang/String; = "passenger/order/pay"

.field public static final BTS_URL_PROFILE_GET:Ljava/lang/String; = "user/profile/get"

.field public static final BTS_URL_PROFILE_SET:Ljava/lang/String; = "user/profile/setting"

.field public static final BTS_URL_USER_INFO:Ljava/lang/String; = "user/user/home"

.field public static H5_HOST:Ljava/lang/String;

.field public static HOST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Lcom/didi/beatles/utils/BtsHttpFileUtils;->isActionLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    sget-object v0, Lcom/didi/beatles/utils/BtsHttpFileUtils;->map:Ljava/util/Map;

    .line 16
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "api"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    .line 17
    const-string v1, "h5"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/didi/beatles/net/BtsUrls;->H5_HOST:Ljava/lang/String;

    .line 30
    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v1, "http://api.didialift.com/beatles/api/"

    sput-object v1, Lcom/didi/beatles/net/BtsUrls;->HOST:Ljava/lang/String;

    .line 28
    const-string v1, "http://api.didialift.com/beatles/h5/"

    sput-object v1, Lcom/didi/beatles/net/BtsUrls;->H5_HOST:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
