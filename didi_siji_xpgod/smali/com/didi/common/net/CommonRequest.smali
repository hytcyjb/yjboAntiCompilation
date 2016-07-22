.class public Lcom/didi/common/net/CommonRequest;
.super Ljava/lang/Object;
.source "CommonRequest.java"


# static fields
.field public static BASE_COMMON_URL:Ljava/lang/String; = null

.field public static DNS_URL:Ljava/lang/String; = null

.field public static final MAP_TYPE:Ljava/lang/String; = "soso"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/didi/beatles/utils/BtsHttpFileUtils;->isActionLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    sget-object v0, Lcom/didi/beatles/utils/BtsHttpFileUtils;->map:Ljava/util/Map;

    .line 90
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "common"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/didi/common/net/CommonRequest;->BASE_COMMON_URL:Ljava/lang/String;

    .line 97
    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const-string v1, "http://hdns.diditaxi.com.cn/host"

    sput-object v1, Lcom/didi/common/net/CommonRequest;->DNS_URL:Ljava/lang/String;

    return-void

    .line 92
    :cond_0
    const-string v1, "http://common.diditaxi.com.cn/"

    sput-object v1, Lcom/didi/common/net/CommonRequest;->BASE_COMMON_URL:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/model/CommonConfig;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-static {p0}, Lcom/didi/common/net/CommonRequest;->onGetConfig(Lcom/didi/common/model/CommonConfig;)V

    return-void
.end method

.method public static addPushUser()V
    .locals 5

    .prologue
    .line 941
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 943
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 944
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 946
    const-string v2, "passenger/addpush"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/net/CommonRequest$4;

    invoke-direct {v3}, Lcom/didi/common/net/CommonRequest$4;-><init>()V

    new-instance v4, Lcom/didi/common/model/BaseObject;

    invoke-direct {v4}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 957
    return-void
.end method

.method public static commonLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "phone"
    .parameter "ticket"
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/CommonToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p4, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/CommonToken;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 256
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "cell"

    invoke-static {v0, v2, p0}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    const-string v2, "ticket"

    invoke-static {v0, v2, p1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    const-string v2, "lat"

    invoke-static {v0, v2, p2}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    const-string v2, "lng"

    invoke-static {v0, v2, p3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    const-string v2, "platform"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    const-string v2, "ostype"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    const-string v2, "cid"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getClientIdString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    const-string v2, "passenger/login"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/CommonToken;

    invoke-direct {v3}, Lcom/didi/common/model/CommonToken;-><init>()V

    invoke-virtual {v2, v1, v0, p4, v3}, Lcom/didi/common/net/CommonHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 265
    return-void
.end method

.method private static createCommonPushUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "params"

    .prologue
    .line 1171
    const-string v0, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1172
    const-string v0, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1173
    const-string v0, "deviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1174
    const-string v0, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1175
    const-string v0, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1176
    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1177
    const-string v0, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1178
    const-string v0, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1179
    const-string v0, "datatype"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1180
    const-string v0, "cancel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/common/util/Constant;->SIGN_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1181
    const-string v0, "maptype"

    const-string v1, "soso"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1183
    const-string v0, "city_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1184
    const-string v0, "sig"

    invoke-static {p1}, Lcom/didi/common/util/Signature;->generateSignature(Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1185
    const-string v0, "pixels"

    sget-object v1, Lcom/didi/common/util/Constant;->SCREEN_PIXELS:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1186
    const-string v0, "mac"

    sget-object v1, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1187
    const-string v0, "cpu"

    sget-object v1, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1188
    const-string v0, "android_id"

    sget-object v1, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1189
    const-string v0, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1190
    const-string v0, "uuid"

    sget-object v1, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCommonPushUrl imei: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/common/net/CommonRequest;->BASE_COMMON_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createCommonReverseGeoTopUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "params"

    .prologue
    .line 1097
    const-string v0, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1098
    const-string v0, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1099
    const-string v0, "deviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1100
    const-string v0, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1101
    const-string v0, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1102
    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1103
    const-string v0, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1104
    const-string v0, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1105
    const-string v0, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1106
    const-string v0, "datatype"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1107
    const-string v0, "cancel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/common/util/Constant;->SIGN_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1108
    const-string v0, "maptype"

    const-string v1, "soso"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1110
    const-string v0, "city_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1111
    const-string v0, "sig"

    invoke-static {p1}, Lcom/didi/common/util/Signature;->generateSignature(Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1112
    const-string v0, "pixels"

    sget-object v1, Lcom/didi/common/util/Constant;->SCREEN_PIXELS:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1113
    const-string v0, "mac"

    sget-object v1, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1114
    const-string v0, "cpu"

    sget-object v1, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1115
    const-string v0, "android_id"

    sget-object v1, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1116
    const-string v0, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1117
    const-string v0, "uuid"

    sget-object v1, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/common/net/CommonRequest;->BASE_COMMON_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createCommonSmsGw(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "params"

    .prologue
    .line 1129
    const-string v0, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1130
    const-string v0, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1131
    const-string v0, "deviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1132
    const-string v0, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1133
    const-string v0, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1134
    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1135
    const-string v0, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1136
    const-string v0, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1137
    const-string v0, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1138
    const-string v0, "datatype"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1139
    const-string v0, "cancel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/common/util/Constant;->SIGN_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1140
    const-string v0, "maptype"

    const-string v1, "soso"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1141
    const-string v0, "fav/update"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1142
    const-string v0, "0.0"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1143
    const-string v0, "lng"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getLongitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1148
    :goto_0
    const-string v0, "0.0"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1149
    const-string v0, "lat"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getLatitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1157
    :cond_0
    :goto_1
    const-string v0, "city_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1158
    const-string v0, "sig"

    invoke-static {p1}, Lcom/didi/common/util/Signature;->generateSignature(Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1159
    const-string v0, "pixels"

    sget-object v1, Lcom/didi/common/util/Constant;->SCREEN_PIXELS:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1160
    const-string v0, "mac"

    sget-object v1, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1161
    const-string v0, "cpu"

    sget-object v1, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1162
    const-string v0, "android_id"

    sget-object v1, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1163
    const-string v0, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1164
    const-string v0, "uuid"

    sget-object v1, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1165
    const-string v0, "role"

    const-string v1, "1"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://smsgw.xiaojukeji.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1145
    :cond_1
    const-string v0, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1151
    :cond_2
    const-string v0, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "params"

    .prologue
    .line 1056
    const-string v0, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1057
    const-string v0, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1058
    const-string v0, "deviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1059
    const-string v0, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1060
    const-string v0, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1061
    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1062
    const-string v0, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1063
    const-string v0, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1064
    const-string v0, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1065
    const-string v0, "datatype"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1066
    const-string v0, "cancel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/common/util/Constant;->SIGN_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1067
    const-string v0, "maptype"

    const-string v1, "soso"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1068
    const-string v0, "fav/update"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    const-string v0, "0.0"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    const-string v0, "lng"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getLongitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1075
    :goto_0
    const-string v0, "0.0"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    const-string v0, "lat"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getLatitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1084
    :cond_0
    :goto_1
    const-string v0, "city_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1085
    const-string v0, "sig"

    invoke-static {p1}, Lcom/didi/common/util/Signature;->generateSignature(Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1086
    const-string v0, "pixels"

    sget-object v1, Lcom/didi/common/util/Constant;->SCREEN_PIXELS:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1087
    const-string v0, "mac"

    sget-object v1, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1088
    const-string v0, "cpu"

    sget-object v1, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1089
    const-string v0, "android_id"

    sget-object v1, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1090
    const-string v0, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1091
    const-string v0, "uuid"

    sget-object v1, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/common/net/CommonRequest;->BASE_COMMON_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1072
    :cond_1
    const-string v0, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1078
    :cond_2
    const-string v0, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static createDepartureUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "params"

    .prologue
    .line 554
    const-string v0, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    const-string v0, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 556
    const-string v0, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    const-string v0, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 558
    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 559
    const-string v0, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    const-string v0, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 561
    const-string v0, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    const-string v0, "datatype"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    const-string v0, "maptype"

    const-string v1, "soso"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 564
    const-string v0, "mac"

    sget-object v1, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 565
    const-string v0, "cpu"

    sget-object v1, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 566
    const-string v0, "android_id"

    sget-object v1, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 567
    const-string v0, "uuid"

    sget-object v1, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    const-string v0, "sig"

    invoke-static {p1}, Lcom/didi/common/util/Signature;->generateSignature(Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/common/net/CommonRequest;->BASE_COMMON_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteOrders(Lcom/didi/common/net/ResponseListener;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/OrderHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 758
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    .local p1, orders:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/OrderHistory;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 759
    .local v2, oidBuf:Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/OrderHistory;

    .line 761
    .local v3, order:Lcom/didi/common/model/OrderHistory;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/didi/common/model/OrderHistory;->oid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/didi/common/model/OrderHistory;->product:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, oid:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 764
    .end local v1           #oid:Ljava/lang/String;
    .end local v3           #order:Lcom/didi/common/model/OrderHistory;
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 765
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 768
    :cond_1
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v4

    .line 769
    .local v4, params:Lcom/didi/common/net/HttpParams;
    const-string v6, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 770
    const-string v6, "oid"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 772
    const-string v6, "passenger/deleteorder"

    invoke-static {v6, v4}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v5

    .line 773
    .local v5, url:Ljava/lang/String;
    new-instance v6, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v6}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v7, Lcom/didi/common/model/BaseObject;

    invoke-direct {v7}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v6, v5, v4, p0, v7}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 774
    return-void
.end method

.method public static doFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 5
    .parameter "content"
    .parameter "area"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 641
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 642
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 643
    const-string v2, "area"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 644
    const-string v2, "feedback"

    invoke-static {v0, v2, p0}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    const-string v2, "passenger/feedback"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 647
    return-void
.end method

.method public static doGetActivityInfo(Lcom/didi/common/net/ResponseListener;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/ActivityData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/ActivityData;>;"
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v1

    .line 652
    .local v1, lng:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v2

    .line 654
    .local v2, params:Lcom/didi/common/net/HttpParams;
    const-string v4, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 655
    const-string v4, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 656
    const-string v4, "lng"

    invoke-static {v2, v4, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 657
    const-string v4, "lat"

    invoke-static {v2, v4, v0}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    const-string v4, "ad/get"

    invoke-static {v4, v2}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, url:Ljava/lang/String;
    new-instance v4, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v4}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v5, Lcom/didi/common/model/ActivityData;

    invoke-direct {v5}, Lcom/didi/common/model/ActivityData;-><init>()V

    invoke-virtual {v4, v3, v2, p0, v5}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 662
    return-void
.end method

.method public static doGetDNSHost(Lcom/didi/common/net/ResponseListener;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/DnsConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1022
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/DnsConfig;>;"
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, lng:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v2

    .line 1025
    .local v2, params:Lcom/didi/common/net/HttpParams;
    const-string v4, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1026
    const-string v4, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1027
    const-string v4, "lng"

    invoke-static {v2, v4, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1028
    const-string v4, "lat"

    invoke-static {v2, v4, v0}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1030
    const-string v4, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1031
    const-string v4, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1032
    const-string v4, "deviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1033
    const-string v4, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1034
    const-string v4, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1035
    const-string v4, "os"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1036
    const-string v4, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1037
    const-string v4, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1038
    const-string v4, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1039
    const-string v4, "datatype"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1040
    const-string v4, "maptype"

    const-string v5, "soso"

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1041
    const-string v4, "city_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1042
    const-string v4, "sig"

    invoke-static {v2}, Lcom/didi/common/util/Signature;->generateSignature(Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1043
    const-string v4, "pixels"

    sget-object v5, Lcom/didi/common/util/Constant;->SCREEN_PIXELS:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1044
    const-string v4, "mac"

    sget-object v5, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1045
    const-string v4, "cpu"

    sget-object v5, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1046
    const-string v4, "android_id"

    sget-object v5, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1047
    const-string v4, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1048
    const-string v4, "uuid"

    sget-object v5, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1050
    sget-object v3, Lcom/didi/common/net/CommonRequest;->DNS_URL:Ljava/lang/String;

    .line 1051
    .local v3, url:Ljava/lang/String;
    new-instance v4, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v4}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v5, Lcom/didi/common/model/DnsConfig;

    invoke-direct {v5}, Lcom/didi/common/model/DnsConfig;-><init>()V

    invoke-virtual {v4, v3, v2, p0, v5}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 1053
    return-void
.end method

.method public static doQueryHasNewMsg(Lcom/didi/common/net/ResponseListener;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/MessageHasNew;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/MessageHasNew;>;"
    const/4 v8, 0x1

    .line 670
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v1

    .line 672
    .local v1, params:Lcom/didi/common/net/HttpParams;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, cityId:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, token:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 677
    :cond_0
    const-string v5, "doQuery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u67e5\u8be2\u6d88\u606f\u4e2d\u5fc3\u7ea2\u70b9\uff0ccityId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " phone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :goto_0
    return-void

    .line 681
    :cond_1
    const-string v5, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    const-string v5, "city_id"

    invoke-static {v1, v5, v0}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 683
    const-string v5, "phone"

    const-string v6, "*&^%$#@!"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/didi/common/util/DesEncryptUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    const-string v5, "area"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/config/Preferences;->getCurrentCity()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 685
    const-string v5, "platform"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 687
    const-string v5, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    const-string v5, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    const-string v5, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    const-string v5, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 691
    const-string v5, "os"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 692
    const-string v5, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 693
    const-string v5, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 694
    const-string v5, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    const-string v5, "datatype"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    const-string v5, "maptype"

    const-string v6, "soso"

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 698
    const-string v5, "sig"

    invoke-static {v1}, Lcom/didi/common/util/Signature;->generateSignature(Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 699
    const-string v5, "pixels"

    sget-object v6, Lcom/didi/common/util/Constant;->SCREEN_PIXELS:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 700
    const-string v5, "mac"

    sget-object v6, Lcom/didi/common/util/Constant;->MAC:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 701
    const-string v5, "cpu"

    sget-object v6, Lcom/didi/common/util/Constant;->CPU_ID:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 702
    const-string v5, "android_id"

    sget-object v6, Lcom/didi/common/util/Constant;->ANDROID_ID:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 703
    const-string v5, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 704
    const-string v5, "uuid"

    sget-object v6, Lcom/didi/common/util/Constant;->MD5_SERIALNO:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 706
    sget-object v4, Lcom/didi/common/util/Constant;->NOTICE_QUERYHASNEWMSG:Ljava/lang/String;

    .line 707
    .local v4, url:Ljava/lang/String;
    const-string v5, "hasNewMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/didi/common/net/HttpParams;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    new-instance v5, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v5}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v6, Lcom/didi/common/model/MessageHasNew;

    invoke-direct {v6}, Lcom/didi/common/model/MessageHasNew;-><init>()V

    invoke-virtual {v5, v4, v1, p0, v6}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    goto/16 :goto_0
.end method

.method public static doRecoveryCheck(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/RecoveryConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 897
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/RecoveryConfig;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 898
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 899
    const-string v2, "passenger/orderrecover"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 900
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/RecoveryConfig;

    invoke-direct {v3}, Lcom/didi/common/model/RecoveryConfig;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 901
    return-void
.end method

.method public static doSmsRecommend(Ljava/util/HashSet;Lcom/didi/common/net/ResponseListener;)Z
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/didi/common/database/Contact;",
            ">;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, contacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/didi/common/database/Contact;>;"
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {p0}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 612
    const/4 v6, 0x0

    .line 635
    :goto_0
    return v6

    .line 613
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 614
    .local v4, phoneBuffer:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 615
    .local v2, nameBuffer:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 616
    .local v0, contact:Lcom/didi/common/database/Contact;
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 617
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/didi/common/database/Contact;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 618
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contact:Lcom/didi/common/database/Contact;
    check-cast v0, Lcom/didi/common/database/Contact;

    .line 619
    .restart local v0       #contact:Lcom/didi/common/database/Contact;
    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {v0}, Lcom/didi/common/database/Contact;->getContactNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    invoke-virtual {v0}, Lcom/didi/common/database/Contact;->getContactName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 629
    :cond_2
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v3

    .line 630
    .local v3, params:Lcom/didi/common/net/HttpParams;
    const-string v6, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    const-string v6, "phonestr"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 632
    const-string v6, "namestr"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 633
    const-string v6, "passenger/recommend"

    invoke-static {v6, v3}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v5

    .line 634
    .local v5, url:Ljava/lang/String;
    new-instance v6, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v6}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v7, Lcom/didi/common/model/BaseObject;

    invoke-direct {v7}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v6, v5, v3, p1, v7}, Lcom/didi/common/net/CommonHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 635
    const/4 v6, 0x1

    goto :goto_0

    .line 625
    .end local v3           #params:Lcom/didi/common/net/HttpParams;
    .end local v5           #url:Ljava/lang/String;
    :cond_3
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static doUpdate(Lcom/didi/common/net/ResponseListener;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "md5"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/CommonUpdateConfig;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/CommonUpdateConfig;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 298
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "apptype"

    const-string v3, "1"

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    const-string v2, "md5"

    invoke-static {v0, v2, p1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    const-string v2, "config/update"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/CommonUpdateConfig;

    invoke-direct {v3}, Lcom/didi/common/model/CommonUpdateConfig;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 302
    return-void
.end method

.method public static editCommenAddress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "name"
    .parameter "displayName"
    .parameter "cityId"
    .parameter "uid"
    .parameter "addr"
    .parameter "lng"
    .parameter "lat"
    .parameter "cotype"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p8, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 321
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    const-string v2, "name"

    invoke-static {v0, v2, p0}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    const-string v2, "displayname"

    invoke-static {v0, v2, p1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    const-string v2, "city_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    const-string v2, "uid"

    invoke-static {v0, v2, p3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    invoke-static {p4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    move-object p4, p1

    .line 329
    :cond_0
    const-string v2, "addr"

    invoke-static {v0, v2, p4}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    const-string v2, "lat"

    invoke-static {v0, v2, p6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    const-string v2, "lng"

    invoke-static {v0, v2, p5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    const-string v2, "cotype"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    const-string v2, "fav/update"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p8, v3}, Lcom/didi/common/net/CommonHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 335
    return-void
.end method

.method public static getActivityShare(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "source"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/ActivityShare;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/ActivityShare;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 780
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 781
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 782
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 783
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 784
    const-string v2, "source"

    invoke-static {v0, v2, p0}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 785
    const-string v2, "ad/share"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiviyShare ad/share params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 787
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/ActivityShare;

    invoke-direct {v3}, Lcom/didi/common/model/ActivityShare;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 789
    return-void
.end method

.method public static getAddrLists(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/AddressList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/AddressList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 376
    .local v0, params:Lcom/didi/common/net/HttpParams;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 377
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    const-string v2, "fav/gets"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/AddressList;

    invoke-direct {v3}, Lcom/didi/common/model/AddressList;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 380
    return-void
.end method

.method public static getAddrRecommend(ZLjava/lang/String;ZLcom/didi/common/net/ResponseListener;)V
    .locals 11
    .parameter "isInstantOrder"
    .parameter "area"
    .parameter "isStart"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/PoiList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/PoiList;>;"
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddressTitle()Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, start:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddressTitle()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, end:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 350
    .local v4, setuptime:J
    :goto_0
    if-eqz p2, :cond_1

    const/4 v3, 0x0

    .line 352
    .local v3, qtype:I
    :goto_1
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v2

    .line 353
    .local v2, params:Lcom/didi/common/net/HttpParams;
    const-string v8, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    const-string v8, "setuptime"

    invoke-static {v4, v5}, Lcom/didi/common/util/TimeUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    const-string v8, "area"

    invoke-static {v2, v8, p1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    const-string v8, "from"

    invoke-static {v2, v8, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    const-string v8, "to"

    invoke-static {v2, v8, v0}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    const-string v8, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    const-string v8, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    const-string v8, "qtype"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    const-string v8, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    const-string v9, "productline"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v8

    sget-object v10, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v8, v10, :cond_2

    const/4 v8, 0x0

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v9, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    const-string v8, "geo/addressrecommend"

    invoke-static {v8, v2}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v7

    .line 364
    .local v7, url:Ljava/lang/String;
    new-instance v1, Lcom/didi/common/model/PoiList;

    invoke-direct {v1}, Lcom/didi/common/model/PoiList;-><init>()V

    .line 365
    .local v1, list:Lcom/didi/common/model/PoiList;
    const/4 v8, 0x3

    iput v8, v1, Lcom/didi/common/model/PoiList;->type:I

    .line 366
    new-instance v8, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v8}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    invoke-virtual {v8, v7, v2, p3, v1}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 367
    return-void

    .line 349
    .end local v1           #list:Lcom/didi/common/model/PoiList;
    .end local v2           #params:Lcom/didi/common/net/HttpParams;
    .end local v3           #qtype:I
    .end local v4           #setuptime:J
    .end local v7           #url:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/TimeHelper;->getOrderTime()J

    move-result-wide v4

    goto/16 :goto_0

    .line 350
    .restart local v4       #setuptime:J
    :cond_1
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 362
    .restart local v2       #params:Lcom/didi/common/net/HttpParams;
    .restart local v3       #qtype:I
    :cond_2
    const/4 v8, 0x1

    goto :goto_2
.end method

.method public static getAdvertisementList(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/AdvertisementList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 736
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/AdvertisementList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 737
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 738
    const-string v2, "appversion"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getAdvertisementVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getLongitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 740
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getLatitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 741
    const-string v2, "config/start"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/AdvertisementList;

    invoke-direct {v3}, Lcom/didi/common/model/AdvertisementList;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 743
    return-void
.end method

.method public static getAgeList(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/ui/userinfo/AgeList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 845
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/ui/userinfo/AgeList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 846
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 847
    const-string v2, "list_type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 848
    const-string v2, "comm/api/getcfglist"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/ui/userinfo/AgeList;

    invoke-direct {v3}, Lcom/didi/common/ui/userinfo/AgeList;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 850
    return-void
.end method

.method public static getAvailabeAddress(IILcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "style"
    .parameter "only"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/AddressList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/AddressList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 482
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 483
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 486
    const-string v2, "productline"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    const-string v2, "toponly"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    const-string v2, "accuracy"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressList()Lcom/didi/common/model/AddressList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 490
    const-string v2, "appcityid"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressList()Lcom/didi/common/model/AddressList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/model/AddressList;->getCityId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    :goto_0
    const-string v2, "geo/reversecoding"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/AddressList;

    invoke-direct {v3}, Lcom/didi/common/model/AddressList;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 496
    return-void

    .line 492
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    const-string v2, "appcityid"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getBusinessConfig(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BusinessConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 965
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BusinessConfig;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 966
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 967
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 968
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 969
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 970
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressList()Lcom/didi/common/model/AddressList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 971
    const-string v2, "appcityid"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressList()Lcom/didi/common/model/AddressList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/model/AddressList;->getCityId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 975
    :goto_0
    const-string v2, "comm/api/getconfig"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 976
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BusinessConfig;

    invoke-direct {v3}, Lcom/didi/common/model/BusinessConfig;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 977
    return-void

    .line 973
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    const-string v2, "appcityid"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getCities(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/CityIndexList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/CityIndexList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 270
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "version"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getCityListVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    const-string v2, "geo/cities"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/CityIndexList;

    invoke-direct {v3}, Lcom/didi/common/model/CityIndexList;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 273
    return-void
.end method

.method public static getCommonBaseUrlParamString(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "params"

    .prologue
    .line 980
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 981
    .local v0, commonParams:Lcom/didi/common/net/HttpParams;
    const-string v1, "vcode"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 982
    const-string v1, "dviceid"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 983
    const-string v1, "appversion"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 984
    const-string v1, "model"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 985
    const-string v1, "os"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 986
    const-string v1, "imei"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 987
    const-string v1, "suuid"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 988
    const-string v1, "channel"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 989
    const-string v1, "cancel"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 990
    const-string v1, "datatype"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 991
    const-string v1, "sig"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 992
    const-string v1, "fav/update"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 993
    const-string v1, "lng"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 994
    const-string v1, "lat"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 996
    :cond_0
    const-string v1, "city_id"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 997
    const-string v1, "mac"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 998
    const-string v1, "cpu"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 999
    const-string v1, "android_id"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1000
    const-string v1, "uuid"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1001
    const-string v1, "networkType"

    invoke-static {p1, v0, v1}, Lcom/didi/common/net/CommonRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCommonBizPlugConfig(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/CommonBizPlugConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/CommonBizPlugConfig;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 202
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "configversion"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getFoundConfigVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    const-string v2, "source"

    const-string v3, "plug"

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    const-string v2, "config/extend"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----game:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 210
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/CommonBizPlugConfig;

    invoke-direct {v3}, Lcom/didi/common/model/CommonBizPlugConfig;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 211
    return-void
.end method

.method public static getConfig(Lcom/didi/common/net/ResponseListener;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/CommonConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/CommonConfig;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 400
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "apptype"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    const-string v2, "ostype"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getLongitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getLatitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    const-string v2, "configversion"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getCommonConfigVersion1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    const-string v2, "cid"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getClientIdString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    const-string v2, "config/app"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, url:Ljava/lang/String;
    const-string v2, "Btsconfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/net/CommonRequest$1;

    invoke-direct {v3, p0}, Lcom/didi/common/net/CommonRequest$1;-><init>(Lcom/didi/common/net/ResponseListener;)V

    new-instance v4, Lcom/didi/common/model/CommonConfig;

    invoke-direct {v4}, Lcom/didi/common/model/CommonConfig;-><init>()V

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 440
    return-void
.end method

.method public static getDepartureAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "lat"
    .parameter "lng"
    .parameter "name"
    .parameter "address"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/AddressList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 537
    .local p4, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/AddressList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 538
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "lat"

    invoke-static {v0, v2, p0}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DepartureLatLng="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 540
    const-string v2, "lng"

    invoke-static {v0, v2, p1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 541
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    const-string v2, "productline"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 543
    const-string v2, "toponly"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 544
    const-string v2, "accuracy"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 545
    const-string v2, "displayname"

    invoke-static {v0, v2, p2}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    const-string v2, "address"

    invoke-static {v0, v2, p3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 547
    const-string v2, "poiservice/reversegeolist"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createDepartureUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DepartureUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 550
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/AddressList;

    invoke-direct {v3}, Lcom/didi/common/model/AddressList;-><init>()V

    invoke-virtual {v2, v1, v0, p4, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 551
    return-void
.end method

.method public static getGameConfig(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/CommonGame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/CommonGame;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 168
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "configversion"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getGameVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-string v2, "source"

    const-string v3, "game"

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string v2, "config/extend"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----game:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 182
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/CommonGame;

    invoke-direct {v3}, Lcom/didi/common/model/CommonGame;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 183
    return-void
.end method

.method public static getGuide(Lcom/didi/common/net/ResponseListener;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarGuideList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 793
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarGuideList;>;"
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, lng:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v2

    .line 796
    .local v2, params:Lcom/didi/common/net/HttpParams;
    const-string v4, "lng"

    invoke-static {v2, v4, v1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 797
    const-string v4, "lat"

    invoke-static {v2, v4, v0}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 798
    const-string v4, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 799
    const-string v4, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 800
    const-string v4, "configversion"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getAnnouncementVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 801
    const-string v4, "config/board"

    invoke-static {v4, v2}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v3

    .line 802
    .local v3, url:Ljava/lang/String;
    new-instance v4, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v4}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v5, Lcom/didi/car/model/CarGuideList;

    invoke-direct {v5}, Lcom/didi/car/model/CarGuideList;-><init>()V

    invoke-virtual {v4, v3, v2, p0, v5}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 803
    return-void
.end method

.method public static getHistory(JILcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "time"
    .parameter "count"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/OrderHistoryList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/OrderHistoryList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 284
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    const-string v2, "apptime"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    const-string v2, "pagenum"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    const-string v2, "platform"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    const-string v2, "comm/api/gethistory"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HistoryUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 291
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/OrderHistoryList;

    invoke-direct {v3}, Lcom/didi/common/model/OrderHistoryList;-><init>()V

    invoke-virtual {v2, v1, v0, p3, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 292
    return-void
.end method

.method public static getHotSubPoi(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 8
    .parameter "currenttime"
    .parameter "lat"
    .parameter "lng"
    .parameter "dlat"
    .parameter "dlng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/AddressList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p6, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/AddressList;>;"
    const/4 v2, 0x0

    move-wide v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/didi/common/net/CommonRequest;->getHotSubPoi(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 529
    return-void
.end method

.method public static getHotSubPoi(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 8
    .parameter "currentTime"
    .parameter "is_history"
    .parameter "lat"
    .parameter "lng"
    .parameter "dlat"
    .parameter "dlng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/AddressList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/AddressList;>;"
    const/4 v5, 0x1

    .line 499
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v1

    .line 500
    .local v1, params:Lcom/didi/common/net/HttpParams;
    const-string v4, "lat"

    invoke-static {v1, v4, p5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 501
    const-string v4, "lng"

    invoke-static {v1, v4, p6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
    const-string v4, "dlat"

    invoke-static {v1, v4, p3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    const-string v4, "dlng"

    invoke-static {v1, v4, p4}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    const-string v4, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 505
    const-string v4, "phone"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getPhone()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    const-string v6, "is_history"

    if-eqz p2, :cond_0

    const-string v4, "1"

    :goto_0
    invoke-static {v1, v6, v4}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    sget-object v6, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v4, v6, :cond_1

    const/4 v2, 0x0

    .line 509
    .local v2, style:I
    :goto_1
    const-string v4, "productline"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v4, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    const-string v4, "accuracy"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/soso/location/LocationController;->getAccuracy()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v1, v4, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 511
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressList()Lcom/didi/common/model/AddressList;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 512
    const-string v4, "appcityid"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressList()Lcom/didi/common/model/AddressList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/model/AddressList;->getCityId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    :goto_2
    const-string v4, "poiservice/reversegeotop"

    invoke-static {v4, v1}, Lcom/didi/common/net/CommonRequest;->createCommonReverseGeoTopUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, url:Ljava/lang/String;
    const-string v4, "maplistener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/didi/common/net/HttpParams;->getParamString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    new-instance v0, Lcom/didi/common/model/AddressList;

    invoke-direct {v0}, Lcom/didi/common/model/AddressList;-><init>()V

    .line 522
    .local v0, mCommonHotDragAddress:Lcom/didi/common/model/AddressList;
    iput-wide p0, v0, Lcom/didi/common/model/AddressList;->currentTimeMills:J

    .line 523
    iput-boolean v5, v0, Lcom/didi/common/model/AddressList;->isReveseTop:Z

    .line 524
    new-instance v4, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v4}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    invoke-virtual {v4, v3, v1, p7, v0}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 525
    return-void

    .line 506
    .end local v0           #mCommonHotDragAddress:Lcom/didi/common/model/AddressList;
    .end local v2           #style:I
    .end local v3           #url:Ljava/lang/String;
    :cond_0
    const-string v4, "0"

    goto :goto_0

    :cond_1
    move v2, v5

    .line 508
    goto :goto_1

    .line 514
    .restart local v2       #style:I
    :cond_2
    const-string v4, "appcityid"

    const-string v6, "0"

    invoke-static {v1, v4, v6}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static getLineLatLng(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "city"
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/map/modle/LineLatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 746
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/map/modle/LineLatLng;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 747
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    const-string v2, "city"

    invoke-static {v0, v2, p0}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 749
    const-string v2, "start"

    invoke-static {v0, v2, p1}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 750
    const-string v2, "dest"

    invoke-static {v0, v2, p2}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 751
    const-string v2, "cond"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 752
    const-string v2, "geo/route"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/map/modle/LineLatLng;

    invoke-direct {v3}, Lcom/didi/map/modle/LineLatLng;-><init>()V

    invoke-virtual {v2, v1, v0, p3, v3}, Lcom/didi/common/net/CommonHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 754
    return-void
.end method

.method public static getMenuCommonBizConfig(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/CommonBizConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/CommonBizConfig;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 188
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "configversion"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getFoundConfigVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    const-string v2, "source"

    const-string v3, "biz"

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    const-string v2, "config/extend"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----game:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 196
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/CommonBizConfig;

    invoke-direct {v3}, Lcom/didi/common/model/CommonBizConfig;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 197
    return-void
.end method

.method public static getMyAccount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/common/util/Constant;->MY_ACCOUNT_WEB_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMyWallet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/common/net/CommonRequest;->BASE_COMMON_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "passenger/wallet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNoticeUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/common/net/CommonRequest;->BASE_COMMON_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config/manual"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPoiSuggestion(Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/net/ResponseListener;)V
    .locals 7
    .parameter "query"
    .parameter "city"
    .parameter "isDepart"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/PoiList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/PoiList;>;"
    const/4 v4, 0x1

    .line 231
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v1

    .line 232
    .local v1, params:Lcom/didi/common/net/HttpParams;
    const-string v3, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    const-string v3, "city"

    invoke-static {p1}, Lcom/didi/common/util/Utils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    const-string v3, "query"

    invoke-static {p0}, Lcom/didi/common/util/Utils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    const-string v3, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    if-eqz p2, :cond_0

    .line 237
    const-string v3, "productline"

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    :goto_0
    const-string v3, "geo/suggestion"

    invoke-static {v3, v1}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, url:Ljava/lang/String;
    new-instance v0, Lcom/didi/common/model/PoiList;

    invoke-direct {v0}, Lcom/didi/common/model/PoiList;-><init>()V

    .line 242
    .local v0, list:Lcom/didi/common/model/PoiList;
    iput v4, v0, Lcom/didi/common/model/PoiList;->type:I

    .line 243
    new-instance v3, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v3}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    invoke-virtual {v3, v2, v1, p3, v0}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 244
    return-void

    .line 239
    .end local v0           #list:Lcom/didi/common/model/PoiList;
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    const-string v5, "productline"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    sget-object v6, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v3, v6, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public static getRefundUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, strBuilder:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/didi/common/util/Constant;->ENTRIPRISE_REMIMBURSEMENT_RULES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getServiceCodeChannel(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "phone"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/CommonSMSCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/CommonSMSCode;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 126
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "phone"

    invoke-static {v0, v2, p0}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string v2, "getloginsms"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonSmsGw(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/CommonSMSCode;

    invoke-direct {v3}, Lcom/didi/common/model/CommonSMSCode;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 129
    return-void
.end method

.method private static getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTradeList(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/ui/userinfo/TradeList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 836
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/ui/userinfo/TradeList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 837
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 838
    const-string v2, "list_type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 839
    const-string v2, "comm/api/getcfglist"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 840
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/ui/userinfo/TradeList;

    invoke-direct {v3}, Lcom/didi/common/ui/userinfo/TradeList;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 841
    return-void
.end method

.method public static getUserInfo(Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/ui/userinfo/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 807
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/ui/userinfo/UserInfo;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 808
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 809
    const-string v2, "comm/api/getprofile"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-direct {v3}, Lcom/didi/common/ui/userinfo/UserInfo;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 811
    return-void
.end method

.method public static getVirtualMobile(Lcom/didi/common/net/ResponseListener;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/CommonVirtualMobile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/CommonVirtualMobile;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 579
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 580
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 581
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 582
    const-string v3, "productline"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v4, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    const-string v2, "virtual_mobile/config"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/CommonVirtualMobile;

    invoke-direct {v3}, Lcom/didi/common/model/CommonVirtualMobile;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 585
    return-void

    .line 582
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getVoucherRedPointerFlag(Lcom/didi/common/net/ResponseListener;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/VoucherRedPointData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 889
    .local p0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/VoucherRedPointData;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 890
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 891
    const-string v2, "passenger/getredpoint"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, url:Ljava/lang/String;
    const-string v2, "redPoi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/VoucherRedPointData;

    invoke-direct {v3}, Lcom/didi/common/model/VoucherRedPointData;-><init>()V

    invoke-virtual {v2, v1, v0, p0, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 894
    return-void
.end method

.method private static onGetConfig(Lcom/didi/common/model/CommonConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 447
    if-nez p0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/common/net/CommonRequest$2;

    invoke-direct {v1, p0}, Lcom/didi/common/net/CommonRequest$2;-><init>(Lcom/didi/common/model/CommonConfig;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 459
    const-string v0, "config"

    const-string v1, "\u540c\u6b65\u4fdd\u5b58config"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/didi/common/net/CommonRequest;->performGetCloseInputConfig()V

    goto :goto_0
.end method

.method private static performGetCloseInputConfig()V
    .locals 3

    .prologue
    .line 465
    new-instance v0, Lcom/didi/common/net/CommonRequest$3;

    invoke-direct {v0}, Lcom/didi/common/net/CommonRequest$3;-><init>()V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 473
    return-void
.end method

.method private static put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "params"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1007
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, stringValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 1010
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V
    .locals 2
    .parameter "params"
    .parameter "commonParams"
    .parameter "key"

    .prologue
    .line 1014
    invoke-virtual {p0, p2}, Lcom/didi/common/net/HttpParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, stringValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1017
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static searchPoi(Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/net/ResponseListener;)V
    .locals 6
    .parameter "query"
    .parameter "city"
    .parameter "isDepart"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/PoiList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/PoiList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v1

    .line 152
    .local v1, params:Lcom/didi/common/net/HttpParams;
    const-string v3, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    const-string v3, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const-string v3, "city"

    invoke-static {p1}, Lcom/didi/common/util/Utils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string v3, "query"

    invoke-static {p0}, Lcom/didi/common/util/Utils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    if-eqz p2, :cond_0

    .line 157
    const-string v3, "productline"

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    :goto_0
    new-instance v0, Lcom/didi/common/model/PoiList;

    invoke-direct {v0}, Lcom/didi/common/model/PoiList;-><init>()V

    .line 161
    .local v0, list:Lcom/didi/common/model/PoiList;
    const-string v3, "geo/search"

    invoke-static {v3, v1}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, url:Ljava/lang/String;
    new-instance v3, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v3}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    invoke-virtual {v3, v2, v1, p3, v0}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 163
    return-void

    .line 159
    .end local v0           #list:Lcom/didi/common/model/PoiList;
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    const-string v4, "productline"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    sget-object v5, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v3, v5, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static sendLocationCallNearDrivers(Lcom/didi/frame/business/Business;IILcom/didi/common/net/ResponseListener;)V
    .locals 10
    .parameter "business"
    .parameter "type"
    .parameter "orderStat"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/frame/business/Business;",
            "II",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/NearDrivers;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 904
    .local p3, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/NearDrivers;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v5

    .line 905
    .local v5, params:Lcom/didi/common/net/HttpParams;
    const-string v7, "phone_num"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getPhone()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 906
    const-string v7, "role"

    sget-object v8, Lcom/didi/frame/protobuffer/Role;->Passenger:Lcom/didi/frame/protobuffer/Role;

    invoke-virtual {v8}, Lcom/didi/frame/protobuffer/Role;->getValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 907
    const-string v7, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 908
    const-wide/16 v1, 0x0

    .line 909
    .local v1, lat:D
    const-wide/16 v3, 0x0

    .line 911
    .local v3, lng:D
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 912
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/NumberUtil;->strToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 913
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/NumberUtil;->strToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 918
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendLocationCallNearDrivers lat:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lng:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getPhone():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getPhone()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 919
    const-string v7, "lat"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 920
    const-string v7, "lng"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 921
    const-string v7, "radius"

    const/16 v8, 0x1388

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 922
    sget-object v7, Lcom/didi/frame/protobuffer/Product;->ProductPrivate:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v7}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v0

    .line 923
    .local v0, channel:I
    sget-object v7, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne p0, v7, :cond_2

    .line 924
    sget-object v7, Lcom/didi/frame/protobuffer/Product;->ProductTaxi:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v7}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v0

    .line 928
    :cond_0
    :goto_1
    const-string v7, "product_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 929
    const-string v7, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 930
    const-string v7, "order_stat"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 931
    const-string v7, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 932
    const-string v7, "platform"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 933
    const-string v7, "ostype"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 934
    const-string v7, "cid"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/config/Preferences;->getClientIdString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 935
    const-string v7, "gulfstream/realtimeDriverStat/get_driver_loc_json"

    invoke-static {v7, v5}, Lcom/didi/common/net/CommonRequest;->createCommonPushUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v6

    .line 936
    .local v6, url:Ljava/lang/String;
    new-instance v7, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v7}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v8, Lcom/didi/common/model/NearDrivers;

    invoke-direct {v8}, Lcom/didi/common/model/NearDrivers;-><init>()V

    invoke-virtual {v7, v6, v5, p3, v8}, Lcom/didi/common/net/CommonHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 937
    return-void

    .line 915
    .end local v0           #channel:I
    .end local v6           #url:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v1

    .line 916
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v3

    goto/16 :goto_0

    .line 925
    .restart local v0       #channel:I
    :cond_2
    sget-object v7, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne p0, v7, :cond_0

    .line 926
    sget-object v7, Lcom/didi/frame/protobuffer/Product;->ProductFast:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v7}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v0

    goto :goto_1
.end method

.method public static sendTracelog(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 6
    .parameter "logPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 854
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    new-instance v2, Lnet/tsz/afinal/http/AjaxParams;

    invoke-direct {v2}, Lnet/tsz/afinal/http/AjaxParams;-><init>()V

    .line 856
    .local v2, params:Lnet/tsz/afinal/http/AjaxParams;
    :try_start_0
    const-string v3, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v3, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v3, "ostype"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v3, "usertype"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v3, "__x_log"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/http/AjaxParams;->put(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 866
    .local v0, builder:Landroid/net/Uri$Builder;
    sget-object v3, Lcom/didi/common/net/CommonRequest;->BASE_COMMON_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 867
    const-string v3, "app/tracelog"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 868
    const-string v3, "vcode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 869
    const-string v3, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 870
    const-string v3, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 871
    const-string v3, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 872
    const-string v3, "os"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 873
    const-string v3, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 874
    const-string v3, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 875
    const-string v3, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 876
    const-string v3, "datatype"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 877
    const-string v3, "maptype"

    const-string v4, "soso"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 878
    const-string v3, "lng"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getLongitudeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 879
    const-string v3, "lat"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getLatitudeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 880
    const-string v3, "city_id"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getCurrentCityId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 881
    const-string v3, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 882
    const-string v3, "appKey"

    const-string v4, "taxiPassengerAndroid"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 884
    new-instance v3, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v3}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/didi/common/model/BaseObject;

    invoke-direct {v5}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v3, v4, v2, p1, v5}, Lcom/didi/common/net/CommonHttpRequest;->post(Ljava/lang/String;Lnet/tsz/afinal/http/AjaxParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 885
    return-void

    .line 861
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :catch_0
    move-exception v1

    .line 862
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static setVirutalMobileStatus(ILcom/didi/common/net/ResponseListener;)V
    .locals 5
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 596
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "lat"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    const-string v2, "lng"

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    const-string v3, "productline"

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v4, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    const-string v2, "open_status"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 601
    const-string v2, "virutal_mobile/set"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/BaseObject;

    invoke-direct {v3}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 603
    return-void

    .line 599
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static updateUserInfo(Ljava/util/List;Lcom/didi/common/net/ResponseListener;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 815
    .local p0, infoParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v2

    .line 816
    .local v2, params:Lcom/didi/common/net/HttpParams;
    const-string v4, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 817
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 818
    .local v1, nvp:Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 820
    .end local v1           #nvp:Lorg/apache/http/NameValuePair;
    :cond_0
    const-string v4, "comm/api/updateprofile"

    invoke-static {v4, v2}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v3

    .line 821
    .local v3, url:Ljava/lang/String;
    new-instance v4, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v4}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v5, Lcom/didi/common/model/BaseObject;

    invoke-direct {v5}, Lcom/didi/common/model/BaseObject;-><init>()V

    invoke-virtual {v4, v3, v2, p1, v5}, Lcom/didi/common/net/CommonHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 822
    return-void
.end method

.method public static uploadShareRe(IILcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "shareType"
    .parameter "activityId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/ActivityData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 725
    .local p2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/ActivityData;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 726
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 727
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 728
    const-string v2, "sharetype"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 729
    const-string v2, "activityid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 730
    const-string v2, "ad/record"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/model/ActivityData;

    invoke-direct {v3}, Lcom/didi/common/model/ActivityData;-><init>()V

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/didi/common/net/CommonHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 732
    return-void
.end method

.method public static uploadUserAvatar(Ljava/io/File;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "avatarFile"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/ui/userinfo/UploadAvatarResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 826
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/ui/userinfo/UploadAvatarResult;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 827
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/net/CommonRequest;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/common/net/CommonRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 828
    const-string v2, "head_file"

    invoke-virtual {v0, v2, p0}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    .line 829
    const-string v2, "ext"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/FileUtil;->getExtensionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v2, "comm/api/updateprofile"

    invoke-static {v2, v0}, Lcom/didi/common/net/CommonRequest;->createCommonUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 831
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/net/CommonHttpRequest;

    invoke-direct {v2}, Lcom/didi/common/net/CommonHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/common/ui/userinfo/UploadAvatarResult;

    invoke-direct {v3}, Lcom/didi/common/ui/userinfo/UploadAvatarResult;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/common/net/CommonHttpRequest;->post(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 832
    return-void
.end method
