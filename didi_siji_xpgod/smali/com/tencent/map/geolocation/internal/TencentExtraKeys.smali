.class public Lcom/tencent/map/geolocation/internal/TencentExtraKeys;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field public static final ALLOW_EXCEPTION_UPLOAD:Z = true

.field public static final ALLOW_GPS:Ljava/lang/String; = "allow_gps"

.field public static final ALLOW_LOCAL_DEFLECT:Z = true

.field public static final ALLOW_QUICK_SCAN:Z = false

.field public static final ALLOW_START_TENCENTMAP:Z = false

.field public static final DEFAULT_TENCENT_LOG:Lcom/tencent/map/geolocation/internal/TencentLog; = null

.field public static final DIDI_INTERNAL:Z = true

.field public static final LOCATION_KEY_ADMIN_LEVEL1:Ljava/lang/String; = "admin_level_1"

.field public static final LOCATION_KEY_ADMIN_LEVEL2:Ljava/lang/String; = "admin_level_2"

.field public static final LOCATION_KEY_ADMIN_LEVEL3:Ljava/lang/String; = "admin_level_3"

.field public static final LOCATION_KEY_LOCALITY:Ljava/lang/String; = "locality"

.field public static final LOCATION_KEY_NATION:Ljava/lang/String; = "nation"

.field public static final LOCATION_KEY_ROUTE:Ljava/lang/String; = "route"

.field public static final LOCATION_KEY_SUBLOCALITY:Ljava/lang/String; = "sublocality"

.field public static final LOCATION_SOURCE_CELL:Ljava/lang/String; = "cell"

.field public static final LOCATION_SOURCE_GPS:Ljava/lang/String; = "gps"

.field public static final LOCATION_SOURCE_WIFI:Ljava/lang/String; = "wifi"

.field public static MOCK_LOCATION_FILTER:Z = false

.field public static final ONLY_MY_EXCEPTION:Z = true

.field public static final RAW_DATA:Ljava/lang/String; = "raw_data"

.field public static final REQUEST_RAW_DATA:Ljava/lang/String; = "request_raw_data"

.field public static final SAVE_EXCEPTION_TRACE_TO_LOCAL:Z = false

.field public static final START_LOCAL_SERVER:Z = false

.field public static final STRICT_CELL_FILTER:Z = true

.field public static final TENCENT_INTERNAL:Z = true

.field public static final TRY_NLP:Z

.field private static sLogDir:Ljava/io/File;

.field private static sTencentLog:Lcom/tencent/map/geolocation/internal/TencentLog;

.field private static sTencentLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/map/geolocation/internal/TencentLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->MOCK_LOCATION_FILTER:Z

    .line 168
    new-instance v0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys$1;

    invoke-direct {v0}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys$1;-><init>()V

    sput-object v0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->DEFAULT_TENCENT_LOG:Lcom/tencent/map/geolocation/internal/TencentLog;

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->sTencentLogs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addTencentLog(Lcom/tencent/map/geolocation/internal/TencentLog;)V
    .locals 2
    .parameter

    .prologue
    .line 384
    const-class v1, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->sTencentLogs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    sget-object v0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->sTencentLogs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_0
    monitor-exit v1

    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static enableMockLocationFilter(Z)V
    .locals 0
    .parameter

    .prologue
    .line 87
    sput-boolean p0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->MOCK_LOCATION_FILTER:Z

    .line 88
    return-void
.end method

.method public static getLocationSource(Lcom/tencent/map/geolocation/TencentLocation;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 336
    if-nez p0, :cond_0

    .line 337
    const-string v0, ""

    .line 347
    :goto_0
    return-object v0

    .line 339
    :cond_0
    invoke-static {p0}, Lcom/tencent/map/geolocation/TencentLocationUtils;->isFromGps(Lcom/tencent/map/geolocation/TencentLocation;)Z

    move-result v0

    .line 340
    invoke-static {p0}, Lcom/tencent/map/geolocation/TencentLocationUtils;->isFromNetwork(Lcom/tencent/map/geolocation/TencentLocation;)Z

    move-result v1

    .line 341
    invoke-interface {p0}, Lcom/tencent/map/geolocation/TencentLocation;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "wifi_ap_num"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 342
    if-eqz v0, :cond_1

    .line 343
    const-string v0, "gps"

    goto :goto_0

    .line 344
    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x3

    if-lt v2, v0, :cond_2

    .line 345
    const-string v0, "wifi"

    goto :goto_0

    .line 347
    :cond_2
    const-string v0, "cell"

    goto :goto_0
.end method

.method public static declared-synchronized getLogDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 445
    const-class v0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->sLogDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getRawData(Lcom/tencent/map/geolocation/TencentLocation;)[B
    .locals 2
    .parameter

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/tencent/map/geolocation/TencentLocation;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "raw_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getRawGps(Lcom/tencent/map/geolocation/TencentLocation;)Landroid/location/Location;
    .locals 2
    .parameter

    .prologue
    .line 229
    if-nez p0, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/tencent/map/geolocation/TencentLocation;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "raw_gps"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    goto :goto_0
.end method

.method public static getRawQuery(Lcom/tencent/map/geolocation/TencentLocation;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/tencent/map/geolocation/TencentLocation;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "raw_query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getTencentLog()Lcom/tencent/map/geolocation/internal/TencentLog;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/eclipse/jdt/annotation/Nullable;
    .end annotation

    .prologue
    .line 404
    const-class v0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->sTencentLog:Lcom/tencent/map/geolocation/internal/TencentLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTencentLogs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/map/geolocation/internal/TencentLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    const-class v0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->sTencentLogs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isAllowGps(Lcom/tencent/map/geolocation/TencentLocationRequest;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 297
    if-nez p0, :cond_0

    .line 300
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "allow_gps"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isAllowedLevel(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 309
    packed-switch p0, :pswitch_data_0

    .line 319
    :pswitch_0
    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    .line 323
    :goto_0
    :pswitch_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized isDebugEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 427
    const-class v1, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->sTencentLog:Lcom/tencent/map/geolocation/internal/TencentLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isRequestRawData(Lcom/tencent/map/geolocation/TencentLocationRequest;)Z
    .locals 2
    .parameter

    .prologue
    .line 267
    if-nez p0, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 270
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "request_raw_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized removeTencentLog(Lcom/tencent/map/geolocation/internal/TencentLog;)Z
    .locals 2
    .parameter

    .prologue
    .line 392
    const-class v1, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->sTencentLogs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setAllowGps(Lcom/tencent/map/geolocation/TencentLocationRequest;Z)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 287
    if-eqz p0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "allow_gps"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    :cond_0
    return-object p0
.end method

.method public static declared-synchronized setLogDir(Ljava/io/File;)V
    .locals 2
    .parameter

    .prologue
    .line 439
    const-class v0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->sLogDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit v0

    return-void

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setRawData(Lcom/tencent/map/geolocation/TencentLocation;[B)Lcom/tencent/map/geolocation/TencentLocation;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-interface {p0}, Lcom/tencent/map/geolocation/TencentLocation;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "raw_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 205
    return-object p0
.end method

.method public static setRawGps(Lcom/tencent/map/geolocation/TencentLocation;Landroid/location/Location;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 239
    if-nez p0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-interface {p0}, Lcom/tencent/map/geolocation/TencentLocation;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "raw_gps"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public static setRawQuery(Lcom/tencent/map/geolocation/TencentLocation;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 220
    if-nez p0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-interface {p0}, Lcom/tencent/map/geolocation/TencentLocation;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "raw_query"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setRequestRawData(Lcom/tencent/map/geolocation/TencentLocationRequest;Z)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 257
    if-eqz p0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "request_raw_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    :cond_0
    return-object p0
.end method

.method public static declared-synchronized setTencentLog(Lcom/tencent/map/geolocation/internal/TencentLog;)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    const-class v1, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->sTencentLog:Lcom/tencent/map/geolocation/internal/TencentLog;

    .line 378
    sget-object v0, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->sTencentLogs:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    monitor-exit v1

    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
