.class public Lcom/didi/frame/push/PushHelper;
.super Ljava/lang/Object;
.source "PushHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/push/PushHelper$ReConnectionListener;,
        Lcom/didi/frame/push/PushHelper$PushHelperListener;
    }
.end annotation


# static fields
.field public static DEFAULT_PUSH_FILE_IP:Ljava/lang/String; = null

.field public static DEFAULT_PUSH_FILE_PORT:Ljava/lang/String; = null

.field public static DEFAULT_PUSH_IP:Ljava/lang/String; = null

.field public static DEFAULT_PUSH_PORT:Ljava/lang/String; = null

.field public static final KEY_PUSH_FILE_IP:Ljava/lang/String; = "file_ip"

.field public static final KEY_PUSH_FILE_PORT:Ljava/lang/String; = "file_port"

.field public static final KEY_PUSH_IP:Ljava/lang/String; = "push_ip"

.field public static final KEY_PUSH_PORT:Ljava/lang/String; = "push_port"

.field private static sConnectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/frame/push/PushHelper$ReConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sPushConnFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    invoke-static {}, Lcom/didi/beatles/utils/BtsHttpFileUtils;->isActionLocation()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 30
    sget-object v0, Lcom/didi/beatles/utils/BtsHttpFileUtils;->map:Ljava/util/Map;

    .line 31
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "push1"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    .local v2, push1:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 33
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, push:[Ljava/lang/String;
    aget-object v4, v1, v5

    if-nez v4, :cond_2

    const-string v4, "gwp.diditaxi.qq.com"

    :goto_0
    sput-object v4, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_IP:Ljava/lang/String;

    .line 35
    aget-object v4, v1, v6

    if-nez v4, :cond_3

    const-string v4, "25269"

    :goto_1
    sput-object v4, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_PORT:Ljava/lang/String;

    .line 37
    .end local v1           #push:[Ljava/lang/String;
    :cond_0
    const-string v4, "push2"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 38
    .local v3, push2:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 39
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 40
    .restart local v1       #push:[Ljava/lang/String;
    aget-object v4, v1, v5

    if-nez v4, :cond_4

    const-string v4, "imcache.diditaxi.com.cn"

    :goto_2
    sput-object v4, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_FILE_IP:Ljava/lang/String;

    .line 41
    aget-object v4, v1, v6

    if-nez v4, :cond_5

    const-string v4, "11116"

    :goto_3
    sput-object v4, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_FILE_PORT:Ljava/lang/String;

    .line 83
    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #push:[Ljava/lang/String;
    .end local v2           #push1:Ljava/lang/String;
    .end local v3           #push2:Ljava/lang/String;
    :cond_1
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/didi/frame/push/PushHelper;->sConnectionListeners:Ljava/util/ArrayList;

    return-void

    .line 34
    .restart local v0       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #push:[Ljava/lang/String;
    .restart local v2       #push1:Ljava/lang/String;
    :cond_2
    aget-object v4, v1, v5

    goto :goto_0

    .line 35
    :cond_3
    aget-object v4, v1, v6

    goto :goto_1

    .line 40
    .restart local v3       #push2:Ljava/lang/String;
    :cond_4
    aget-object v4, v1, v5

    goto :goto_2

    .line 41
    :cond_5
    aget-object v4, v1, v6

    goto :goto_3

    .line 54
    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #push:[Ljava/lang/String;
    .end local v2           #push1:Ljava/lang/String;
    .end local v3           #push2:Ljava/lang/String;
    :cond_6
    const-string v4, "gwp.diditaxi.qq.com"

    sput-object v4, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_IP:Ljava/lang/String;

    .line 55
    const-string v4, "25269"

    sput-object v4, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_PORT:Ljava/lang/String;

    .line 56
    const-string v4, "imcache.diditaxi.com.cn"

    sput-object v4, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_FILE_IP:Ljava/lang/String;

    .line 57
    const-string v4, "11116"

    sput-object v4, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_FILE_PORT:Ljava/lang/String;

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->notifyReconn()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->addPushUser()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/didi/frame/push/PushHelper;->sPushConnFlag:Z

    return v0
.end method

.method static synthetic access$300()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->getPushConnectionArgs()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/didi/frame/push/PushHelper;->sConnectionListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static addPushUser()V
    .locals 1

    .prologue
    .line 392
    new-instance v0, Lcom/didi/frame/push/PushHelper$2;

    invoke-direct {v0}, Lcom/didi/frame/push/PushHelper$2;-><init>()V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void
.end method

.method public static configPush()V
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/push/PushHelper;->getPushConfigArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/push/Push;->doConfigPush([Ljava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method

.method public static connPush()V
    .locals 3

    .prologue
    .line 202
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, token:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tokenPusher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 205
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/didi/frame/push/PushHelper;->sPushConnFlag:Z

    .line 210
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 211
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/push/PushHelper;->getPushConnectionArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/frame/push/Push;->doCreatePushConnection([Ljava/lang/Object;)V

    .line 214
    :cond_1
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->setFileChannelPush()V

    goto :goto_0
.end method

.method public static disconnPush()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/frame/push/PushHelper;->sPushConnFlag:Z

    .line 219
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/push/Push;->doClosePushConnection()V

    .line 222
    :cond_0
    return-void
.end method

.method private static getPushConfigArgs()[Ljava/lang/Object;
    .locals 18

    .prologue
    .line 246
    const/16 v14, 0x400

    .line 247
    .local v14, msgQueueCapacity:I
    const/16 v6, 0x400

    .line 248
    .local v6, connChannelTaskQueueCapaicity:I
    const/4 v1, 0x5

    .line 249
    .local v1, connChannelDNSTimeout:I
    const/4 v0, 0x5

    .line 250
    .local v0, connChannelConnectTimeout:I
    const/16 v2, 0x1e

    .line 251
    .local v2, connChannelHeartBeatInterval:I
    const/4 v3, 0x3

    .line 252
    .local v3, connChannelHeartBeatRetryCount:I
    const/4 v4, 0x5

    .line 253
    .local v4, connChannelHeartBeatRetryInterval:I
    const v5, 0x19000

    .line 254
    .local v5, connChannelRecvBufferSize:I
    const/16 v12, 0x400

    .line 255
    .local v12, fileChannelTaskQueueCapaicity:I
    const/4 v10, 0x1

    .line 256
    .local v10, fileChannelConnectionNumber:I
    const/4 v11, 0x5

    .line 257
    .local v11, fileChannelDNSTimeout:I
    const/4 v9, 0x5

    .line 258
    .local v9, fileChannelConnectTimeout:I
    const/16 v13, 0xf

    .line 259
    .local v13, fileChannelTaskTimeout:I
    const/16 v7, 0x10

    .line 260
    .local v7, dnsCacheCapcity:I
    const/16 v8, 0x78

    .line 262
    .local v8, dnsCacheTimeout:I
    const/16 v15, 0xf

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0xa

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0xb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0xc

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0xe

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    return-object v15
.end method

.method private static getPushConnectionArgs()[Ljava/lang/Object;
    .locals 23

    .prologue
    .line 288
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v16

    .line 289
    .local v16, token:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v12

    .line 290
    .local v12, phone:Ljava/lang/String;
    const-string v19, "push_ip"

    invoke-static/range {v19 .. v19}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 291
    .local v14, pushIp:Ljava/lang/String;
    const-string v19, "push_port"

    invoke-static/range {v19 .. v19}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 293
    .local v13, portStr:Ljava/lang/String;
    invoke-static {v14}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "Not Found"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 294
    :cond_0
    sget-object v14, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_IP:Ljava/lang/String;

    .line 296
    :cond_1
    invoke-static {v13}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    const-string v19, "Not Found"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 297
    :cond_2
    sget-object v13, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_PORT:Ljava/lang/String;

    .line 300
    :cond_3
    const/4 v15, 0x0

    .line 302
    .local v15, pushPort:I
    invoke-static {}, Lcom/didi/common/util/LogUtil;->isDebugMode()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 303
    sget-object v14, Lcom/didi/common/util/Constant;->PUSH_TEST_URL:Ljava/lang/String;

    .line 304
    sget-object v13, Lcom/didi/common/util/Constant;->PUSH_TEST_PORT:Ljava/lang/String;

    .line 305
    invoke-static {v14}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 306
    sget-object v14, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_IP:Ljava/lang/String;

    .line 308
    :cond_4
    invoke-static {v13}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 309
    sget-object v13, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_PORT:Ljava/lang/String;

    .line 314
    :cond_5
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 318
    :goto_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PushHelper puship:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " port:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 320
    const-string v10, "android"

    .line 321
    .local v10, osType:Ljava/lang/String;
    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 322
    .local v11, osVer:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, model:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, clientVer:Ljava/lang/String;
    const/4 v8, 0x0

    .line 325
    .local v8, netWork:Ljava/lang/String;
    const-wide/16 v19, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 326
    .local v5, lng:Ljava/lang/Double;
    const-wide/16 v19, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 327
    .local v4, lat:Ljava/lang/Double;
    const/4 v9, 0x0

    .line 329
    .local v9, operator:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/util/Utils;->getNetWorkType()[Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, netTypes:[Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v19, v7, v19

    if-nez v19, :cond_6

    const-string v8, ""

    .line 331
    :goto_1
    const/16 v19, 0x0

    aget-object v19, v7, v19

    if-nez v19, :cond_7

    const-string v9, ""

    .line 334
    :goto_2
    :try_start_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    .line 335
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 341
    :goto_3
    new-instance v18, Lcom/didi/frame/protobuffer/UserAgent$Builder;

    invoke-direct/range {v18 .. v18}, Lcom/didi/frame/protobuffer/UserAgent$Builder;-><init>()V

    .line 342
    .local v18, userAgentBuilder:Lcom/didi/frame/protobuffer/UserAgent$Builder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/didi/frame/protobuffer/UserAgent$Builder;->os_type(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;

    .line 343
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/didi/frame/protobuffer/UserAgent$Builder;->os_ver(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;

    .line 344
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/didi/frame/protobuffer/UserAgent$Builder;->model(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;

    .line 345
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/didi/frame/protobuffer/UserAgent$Builder;->client_ver(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;

    .line 346
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/didi/frame/protobuffer/UserAgent$Builder;->network(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;

    .line 347
    const-string v19, "%d,%3.5f,%3.5f"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Lcom/didi/frame/protobuffer/CoordinateType;->GCJ_02:Lcom/didi/frame/protobuffer/CoordinateType;

    invoke-virtual/range {v22 .. v22}, Lcom/didi/frame/protobuffer/CoordinateType;->getValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v5, v20, v21

    const/16 v21, 0x2

    aput-object v4, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/didi/frame/protobuffer/UserAgent$Builder;->location(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;

    .line 349
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/didi/frame/protobuffer/UserAgent$Builder;->carrier_operator(Ljava/lang/String;)Lcom/didi/frame/protobuffer/UserAgent$Builder;

    .line 351
    invoke-virtual/range {v18 .. v18}, Lcom/didi/frame/protobuffer/UserAgent$Builder;->build()Lcom/didi/frame/protobuffer/UserAgent;

    move-result-object v17

    .line 353
    .local v17, userAgent:Lcom/didi/frame/protobuffer/UserAgent;
    const/16 v19, 0xd

    move/from16 v0, v19

    new-array v1, v0, [Ljava/lang/Object;

    .line 354
    .local v1, args:[Ljava/lang/Object;
    const/16 v19, 0x0

    aput-object v14, v1, v19

    .line 355
    const/16 v19, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v1, v19

    .line 356
    const/16 v19, 0x2

    aput-object v12, v1, v19

    .line 357
    const/16 v19, 0x3

    aput-object v16, v1, v19

    .line 358
    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v17}, Lcom/didi/frame/protobuffer/UserAgent;->toByteArray()[B

    move-result-object v20

    aput-object v20, v1, v19

    .line 359
    const/16 v19, 0x5

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v1, v19

    .line 360
    return-object v1

    .line 315
    .end local v1           #args:[Ljava/lang/Object;
    .end local v2           #clientVer:Ljava/lang/String;
    .end local v4           #lat:Ljava/lang/Double;
    .end local v5           #lng:Ljava/lang/Double;
    .end local v6           #model:Ljava/lang/String;
    .end local v7           #netTypes:[Ljava/lang/String;
    .end local v8           #netWork:Ljava/lang/String;
    .end local v9           #operator:Ljava/lang/String;
    .end local v10           #osType:Ljava/lang/String;
    .end local v11           #osVer:Ljava/lang/String;
    .end local v17           #userAgent:Lcom/didi/frame/protobuffer/UserAgent;
    .end local v18           #userAgentBuilder:Lcom/didi/frame/protobuffer/UserAgent$Builder;
    :catch_0
    move-exception v3

    .line 316
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 330
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #clientVer:Ljava/lang/String;
    .restart local v4       #lat:Ljava/lang/Double;
    .restart local v5       #lng:Ljava/lang/Double;
    .restart local v6       #model:Ljava/lang/String;
    .restart local v7       #netTypes:[Ljava/lang/String;
    .restart local v8       #netWork:Ljava/lang/String;
    .restart local v9       #operator:Ljava/lang/String;
    .restart local v10       #osType:Ljava/lang/String;
    .restart local v11       #osVer:Ljava/lang/String;
    :cond_6
    const/16 v19, 0x1

    aget-object v8, v7, v19

    goto/16 :goto_1

    .line 331
    :cond_7
    const/16 v19, 0x0

    aget-object v9, v7, v19

    goto/16 :goto_2

    .line 336
    :catch_1
    move-exception v3

    .line 337
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method private static getPushFileChannelArgs()[Ljava/lang/Object;
    .locals 7

    .prologue
    .line 364
    const-string v5, "file_ip"

    invoke-static {v5}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, fileChannelIp:Ljava/lang/String;
    const-string v5, "file_port"

    invoke-static {v5}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, fileChannelPortStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    sget-object v2, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_FILE_IP:Ljava/lang/String;

    .line 371
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    sget-object v4, Lcom/didi/frame/push/PushHelper;->DEFAULT_PUSH_FILE_PORT:Ljava/lang/String;

    .line 375
    :cond_1
    const/4 v3, 0x0

    .line 377
    .local v3, fileChannelPort:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 382
    :goto_0
    const/16 v5, 0xd

    new-array v0, v5, [Ljava/lang/Object;

    .line 383
    .local v0, args:[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object v2, v0, v5

    .line 384
    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 385
    return-object v0

    .line 378
    .end local v0           #args:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 379
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static initPush()V
    .locals 3

    .prologue
    .line 185
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/didi/frame/push/PushHelper$PushHelperListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/didi/frame/push/PushHelper$PushHelperListener;-><init>(Lcom/didi/frame/push/PushHelper$1;)V

    invoke-static {v0, v1}, Lcom/didi/frame/push/Push;->createInstance(Landroid/content/Context;Lcom/didi/frame/push/Push$PushListener;)V

    .line 186
    return-void
.end method

.method public static isConnected()Z
    .locals 1

    .prologue
    .line 401
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/push/Push;->isConnected()Z

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static notifyReconn()V
    .locals 1

    .prologue
    .line 408
    new-instance v0, Lcom/didi/frame/push/PushHelper$3;

    invoke-direct {v0}, Lcom/didi/frame/push/PushHelper$3;-><init>()V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 417
    return-void
.end method

.method public static registReconnectionListener(Lcom/didi/frame/push/PushHelper$ReConnectionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 420
    if-eqz p0, :cond_0

    .line 421
    sget-object v0, Lcom/didi/frame/push/PushHelper;->sConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_0
    return-void
.end method

.method public static registerLoginListener()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/didi/frame/push/PushHelper$1;

    invoke-direct {v0}, Lcom/didi/frame/push/PushHelper$1;-><init>()V

    invoke-static {v0}, Lcom/didi/common/listener/ListenerHub;->addLoginListener(Lcom/didi/common/listener/LoginListener;)V

    .line 177
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/push/Push;->doExitPush()V

    .line 237
    :cond_0
    return-void
.end method

.method public static setFileChannelPush()V
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/didi/frame/push/Push;->getInstance()Lcom/didi/frame/push/Push;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/push/PushHelper;->getPushFileChannelArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/push/Push;->doSetFileChannelPushMessage([Ljava/lang/Object;)V

    .line 228
    :cond_0
    return-void
.end method

.method public static unRegistReconnectionListener(Lcom/didi/frame/push/PushHelper$ReConnectionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 426
    sget-object v0, Lcom/didi/frame/push/PushHelper;->sConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 427
    return-void
.end method
