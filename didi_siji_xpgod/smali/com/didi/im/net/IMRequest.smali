.class public Lcom/didi/im/net/IMRequest;
.super Ljava/lang/Object;
.source "IMRequest.java"


# static fields
.field public static BASE_URL:Ljava/lang/String; = null

.field public static final MAP_TYPE:Ljava/lang/String; = "soso"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "http://common.diditaxi.com.cn/"

    sput-object v0, Lcom/didi/im/net/IMRequest;->BASE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "params"

    .prologue
    .line 107
    const-string v0, "vcode"

    invoke-static {}, Lcom/didi/common/util/Utils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v0, "dviceid"

    invoke-static {}, Lcom/sdu/didi/lib/SecurityLib;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string v0, "appversion"

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v0, "model"

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v0, "imei"

    invoke-static {}, Lcom/didi/common/util/Utils;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string v0, "suuid"

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v0, "channel"

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v0, "datatype"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v0, "userlat"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    const-string v0, "userlng"

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    const-string v0, "maptype"

    const-string v1, "soso"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-string v0, "sig"

    invoke-static {p1}, Lcom/didi/common/util/Signature;->generateSignature(Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
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

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v0, "networkType"

    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/didi/im/net/IMRequest;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBtsIMCommonList(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "version"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/im/model/IMCommons;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/im/model/IMCommons;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 127
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v2, "version"

    invoke-static {v0, v2, p0}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v2, "protype"

    const-string v3, "3"

    invoke-static {v0, v2, v3}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v2, "im/getcommonsentences"

    invoke-static {v2, v0}, Lcom/didi/im/net/IMRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 133
    new-instance v2, Lcom/didi/im/net/IMHttpRequest;

    invoke-direct {v2}, Lcom/didi/im/net/IMHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/im/model/IMCommons;

    invoke-direct {v3}, Lcom/didi/im/model/IMCommons;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/im/net/IMHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 134
    return-void
.end method

.method public static getIMCommonList(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "version"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/im/model/IMCommons;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/im/model/IMCommons;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 98
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string v2, "version"

    invoke-static {v0, v2, p0}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v2, "protype"

    const-string v3, "1"

    invoke-static {v0, v2, v3}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    const-string v2, "im/getcommonsentences"

    invoke-static {v2, v0}, Lcom/didi/im/net/IMRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/im/net/IMHttpRequest;

    invoke-direct {v2}, Lcom/didi/im/net/IMHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/im/model/IMCommons;

    invoke-direct {v3}, Lcom/didi/im/model/IMCommons;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/im/net/IMHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 104
    return-void
.end method

.method public static getOrderSSID(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/im/model/IMOrderSIDHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/im/model/IMOrderSIDHistory;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 87
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "orderinfos"

    invoke-static {v0, v2, p0}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v2, "im/getsessionids"

    invoke-static {v2, v0}, Lcom/didi/im/net/IMRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/im/net/IMHttpRequest;

    invoke-direct {v2}, Lcom/didi/im/net/IMHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/im/model/IMOrderSIDHistory;

    invoke-direct {v3}, Lcom/didi/im/model/IMOrderSIDHistory;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/im/net/IMHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 93
    return-void
.end method

.method public static getSessUsrList(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "sid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/im/model/IMUserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/im/model/IMUserList;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 55
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "sessionid"

    invoke-static {v0, v2, p0}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    const-string v2, "im/getusers"

    invoke-static {v2, v0}, Lcom/didi/im/net/IMRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/im/net/IMHttpRequest;

    invoke-direct {v2}, Lcom/didi/im/net/IMHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/im/model/IMUserList;

    invoke-direct {v3}, Lcom/didi/im/model/IMUserList;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/im/net/IMHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 60
    return-void
.end method

.method public static getTaxiBaseUrlParamString(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "params"

    .prologue
    .line 136
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 137
    .local v0, commonParams:Lcom/didi/common/net/HttpParams;
    const-string v1, "vcode"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 138
    const-string v1, "dviceid"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 139
    const-string v1, "appversion"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 140
    const-string v1, "model"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 141
    const-string v1, "os"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 142
    const-string v1, "imei"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 143
    const-string v1, "suuid"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 144
    const-string v1, "channel"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 145
    const-string v1, "datatype"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 146
    const-string v1, "sig"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 147
    const-string v1, "lat"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 148
    const-string v1, "lng"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 149
    const-string v1, "maptype"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 150
    const-string v1, "cancel"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 151
    const-string v1, "networkType"

    invoke-static {p1, v0, v1}, Lcom/didi/im/net/IMRequest;->putCommonParam(Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/HttpParams;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Lcom/didi/common/net/HttpParams;->getSortedUrlParamsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTaxiOrderSSID(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 2
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/im/model/IMOrderSIDHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/im/model/IMOrderSIDHistory;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/didi/im/net/IMRequest;->getOrderSSID(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 77
    return-void
.end method

.method public static getTaxiOrderSSID(Ljava/util/List;Lcom/didi/common/net/ResponseListener;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/im/model/IMOrderSIDHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, oidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/im/model/IMOrderSIDHistory;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, oid:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 68
    .end local v1           #oid:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 72
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/didi/im/net/IMRequest;->getOrderSSID(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 73
    return-void
.end method

.method public static onCreateIMSession(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 4
    .parameter "oid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/im/model/IMSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/im/model/IMSession;>;"
    invoke-static {}, Lcom/didi/common/net/HttpParams;->newInstance()Lcom/didi/common/net/HttpParams;

    move-result-object v0

    .line 43
    .local v0, params:Lcom/didi/common/net/HttpParams;
    const-string v2, "oid"

    invoke-static {v0, v2, p0}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    const-string v2, "token"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const-string v2, "phone"

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    const-string v2, "protype"

    const-string v3, "1"

    invoke-static {v0, v2, v3}, Lcom/didi/im/net/IMRequest;->put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    const-string v2, "im/createsession"

    invoke-static {v2, v0}, Lcom/didi/im/net/IMRequest;->createUrl(Ljava/lang/String;Lcom/didi/common/net/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/im/net/IMHttpRequest;

    invoke-direct {v2}, Lcom/didi/im/net/IMHttpRequest;-><init>()V

    new-instance v3, Lcom/didi/im/model/IMSession;

    invoke-direct {v3}, Lcom/didi/im/model/IMSession;-><init>()V

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/didi/im/net/IMHttpRequest;->get(Ljava/lang/String;Lcom/didi/common/net/HttpParams;Lcom/didi/common/net/ResponseListener;Lcom/didi/common/model/BaseObject;)V

    .line 50
    return-void
.end method

.method private static put(Lcom/didi/common/net/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "params"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 156
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, stringValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
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
    .line 163
    invoke-virtual {p0, p2}, Lcom/didi/common/net/HttpParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, stringValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/didi/common/net/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
