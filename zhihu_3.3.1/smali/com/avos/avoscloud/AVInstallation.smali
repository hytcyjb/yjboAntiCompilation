.class public final Lcom/avos/avoscloud/AVInstallation;
.super Lcom/avos/avoscloud/AVObject;
.source "AVInstallation.java"


# annotations
.annotation runtime Lcom/avos/avoscloud/AVClassName;
    value = "_Installation"
.end annotation


# static fields
.field private static final CHANNELSTAG:Ljava/lang/String; = "channel"

.field public static final transient CREATOR:Landroid/os/Parcelable$Creator; = null

.field private static final DEVICETYPETAG:Ljava/lang/String; = "deviceType"

.field public static final GCM_REGISTRATION_ID:Ljava/lang/String; = "registrationId"

.field private static final INSTALLATION:Ljava/lang/String; = "installation"

.field private static final INSTALLATIONIDTAG:Ljava/lang/String; = "installationId"

.field private static final INSTALLATION_AVNAME:Ljava/lang/String; = "_Installation"

.field private static final LOGTAG:Ljava/lang/String;

.field private static volatile currentInstallation:Lcom/avos/avoscloud/AVInstallation;


# instance fields
.field private volatile installationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const-class v0, Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVInstallation;->LOGTAG:Ljava/lang/String;

    .line 34
    const-class v0, Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "installations"

    const-string v2, "_Installation"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "_Installation"

    const-string v1, "installations"

    const-string v2, "_Installation"

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVPowerfulUtils;->createSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-class v0, Lcom/avos/avoscloud/AVInstallation;

    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->registerSubclass(Ljava/lang/Class;)V

    .line 310
    sget-object v0, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->instance:Lcom/avos/avoscloud/AVObject$AVObjectCreator;

    sput-object v0, Lcom/avos/avoscloud/AVInstallation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "_Installation"

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/AVInstallation;->installationId:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVInstallation;->requestStatistic:Z

    .line 105
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInstallation;->initialize()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject;-><init>(Landroid/os/Parcel;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/AVInstallation;->installationId:Ljava/lang/String;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVInstallation;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-static {p0}, Lcom/avos/avoscloud/AVInstallation;->writeInstallationFile(Lcom/avos/avoscloud/AVInstallation;)V

    return-void
.end method

.method private static createNewInstallation()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->genInstallationId()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/avos/avoscloud/AVInstallation;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVInstallation;-><init>()V

    sput-object v1, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    .line 63
    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVInstallation;->setInstallationId(Ljava/lang/String;)V

    .line 64
    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    const-string v2, "installationId"

    invoke-virtual {v1, v2, v0}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->saveCurrentInstalationToLocal()V

    .line 66
    return-void
.end method

.method private static deviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const-string v0, "android"

    return-object v0
.end method

.method private static genInstallationId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 70
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 72
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 79
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 81
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to get wifi mac address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/avos/avoscloud/AVInstallation;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->readInstallationFile()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->createNewInstallation()V

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVInstallation;->initialize()V

    .line 57
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery",
            "<",
            "Lcom/avos/avoscloud/AVInstallation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "_Installation"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 228
    return-object v0
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string v0, "installationId"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 117
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "installationId"

    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 120
    :cond_1
    const-string v0, "deviceType"

    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->deviceType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 121
    const-string v0, "timeZone"

    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->timezone()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVInstallation;->put(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static readInstallationFile()Lcom/avos/avoscloud/AVInstallation;
    .locals 4

    .prologue
    .line 183
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call AVOSCloud.initialize at first in Application"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    const-string v1, ""

    .line 188
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "installation"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 192
    const-string v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 193
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVInstallation;

    sput-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    .line 194
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    .line 210
    :goto_0
    return-object v0

    .line 196
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sget v2, Lcom/avos/avoscloud/AVInstallation;->UUID_LEN:I

    if-ne v0, v2, :cond_2

    .line 198
    new-instance v0, Lcom/avos/avoscloud/AVInstallation;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVInstallation;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    .line 199
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInstallation;->setInstallationId(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->saveCurrentInstalationToLocal()V

    .line 202
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 208
    sget-object v2, Lcom/avos/avoscloud/AVInstallation;->LOGTAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 210
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static saveCurrentInstalationToLocal()V
    .locals 2

    .prologue
    .line 96
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVInstallation;->currentInstallation:Lcom/avos/avoscloud/AVInstallation;

    invoke-static {v0}, Lcom/avos/avoscloud/AVInstallation;->writeInstallationFile(Lcom/avos/avoscloud/AVInstallation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->LOGTAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static timezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method protected static updateCurrentInstallation()V
    .locals 2

    .prologue
    .line 271
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "try to update installation to fix date type data"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 274
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->readInstallationFile()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    new-instance v1, Lcom/avos/avoscloud/AVInstallation$1;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVInstallation$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInstallation;->fetchInBackground(Lcom/avos/avoscloud/GetCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    const-string v1, "failed to update installation"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static writeInstallationFile(Lcom/avos/avoscloud/AVInstallation;)V
    .locals 5
    .parameter

    .prologue
    .line 214
    if-eqz p0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInstallation;->initialize()V

    .line 216
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "installation"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 224
    :cond_0
    return-void
.end method


# virtual methods
.method protected alwaysSaveAllKeyValues()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method protected alwaysUsePost()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/avos/avoscloud/AVInstallation;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method protected isDirty()Z
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/avos/avoscloud/AVInstallation;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVInstallation;->operationQueue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVInstallation;->getUpdatedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVInstallation;->getUpdatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDataSynchronized()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lcom/avos/avoscloud/AVObject;->onDataSynchronized()V

    .line 166
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVInstallation;->onSaveSuccess()V

    .line 167
    return-void
.end method

.method protected onSaveFailure()V
    .locals 2

    .prologue
    .line 174
    const-string v0, "roll back installationId since error there"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 175
    const-class v1, Lcom/avos/avoscloud/AVInstallation;

    monitor-enter v1

    .line 176
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->readInstallationFile()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->createNewInstallation()V

    .line 179
    :cond_0
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSaveSuccess()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    .line 157
    :try_start_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVInstallation;->writeInstallationFile(Lcom/avos/avoscloud/AVInstallation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    sget-object v1, Lcom/avos/avoscloud/AVInstallation;->LOGTAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method protected rebuildInstanceData()V
    .locals 1

    .prologue
    .line 306
    invoke-super {p0}, Lcom/avos/avoscloud/AVObject;->rebuildInstanceData()V

    .line 307
    const-string v0, "installationId"

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVInstallation;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVInstallation;->installationId:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/avos/avoscloud/AVObject;->remove(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method setInstallationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/avos/avoscloud/AVInstallation;->installationId:Ljava/lang/String;

    .line 44
    return-void
.end method
