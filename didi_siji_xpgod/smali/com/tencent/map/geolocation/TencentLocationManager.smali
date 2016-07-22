.class public final Lcom/tencent/map/geolocation/TencentLocationManager;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field public static final BUILD:Ljava/lang/String; = "157309-didi"

.field public static final COORDINATE_TYPE_GCJ02:I = 0x1

.field public static final COORDINATE_TYPE_WGS84:I = 0x0

.field public static final VERSION:Ljava/lang/String; = "3.2.3"

.field private static d:Lcom/tencent/map/geolocation/TencentLocationManager;


# instance fields
.field private final a:[B

.field private final b:Lct/be;

.field private final c:Lct/bs;

.field private e:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

.field private f:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    .line 65
    new-instance v0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    invoke-static {}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->getLogDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->e:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    .line 66
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->e:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    invoke-static {v0}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->addTencentLog(Lcom/tencent/map/geolocation/internal/TencentLog;)V

    .line 69
    invoke-static {p1}, Lct/be;->a(Landroid/content/Context;)Lct/be;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lct/be;

    .line 70
    new-instance v0, Lct/bs;

    iget-object v1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lct/be;

    invoke-direct {v0, v1}, Lct/bs;-><init>(Lct/be;)V

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lct/bs;

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/tencent/map/geolocation/TencentLocationManager;)Lct/be;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lct/be;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/map/geolocation/TencentLocationManager;[BLjava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/map/geolocation/TencentLocationManager;->a([BLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private a([BLjava/lang/String;Z)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 310
    if-nez p1, :cond_0

    .line 311
    const-string v1, "TencentLocationManager"

    const-string v2, "send: null feedback"

    invoke-static {v1, v2}, Lct/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_0
    return v0

    .line 315
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://111.161.52.33:10001//DataWarehouse/UploadFile?type=feedback&path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    if-eqz p3, :cond_1

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_content.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lct/be;

    invoke-virtual {v2}, Lct/be;->j()Lcom/tencent/map/geolocation/internal/TencentHttpClient;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Lcom/tencent/map/geolocation/internal/TencentHttpClient;->postSync(Ljava/lang/String;[B)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    const/4 v0, 0x1

    goto :goto_0

    .line 324
    :catch_0
    move-exception v1

    const-string v1, "TencentLocationManager"

    const-string v2, "send: feedback failed"

    invoke-static {v1, v2}, Lct/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/io/File;)[B
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-static {p0}, Lcom/tencent/map/geolocation/TencentLocationManager;->b(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/map/geolocation/TencentLocationManager;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->f:Ljava/lang/Thread;

    return-object v0
.end method

.method private static b(Ljava/io/File;)[B
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 297
    :try_start_0
    invoke-static {p0}, Lct/b$a;->a(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    .line 299
    :catch_0
    move-exception v1

    goto :goto_0

    .line 301
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tencent/map/geolocation/TencentLocationManager;
    .locals 3
    .parameter

    .prologue
    .line 88
    const-class v1, Lcom/tencent/map/geolocation/TencentLocationManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 89
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "context is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 91
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "application context is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    sget-object v0, Lcom/tencent/map/geolocation/TencentLocationManager;->d:Lcom/tencent/map/geolocation/TencentLocationManager;

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Lcom/tencent/map/geolocation/TencentLocationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/map/geolocation/TencentLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/map/geolocation/TencentLocationManager;->d:Lcom/tencent/map/geolocation/TencentLocationManager;

    .line 98
    :cond_2
    sget-object v0, Lcom/tencent/map/geolocation/TencentLocationManager;->d:Lcom/tencent/map/geolocation/TencentLocationManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public final varargs feedback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->f:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/map/geolocation/TencentLocationManager$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/map/geolocation/TencentLocationManager$1;-><init>(Lcom/tencent/map/geolocation/TencentLocationManager;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 239
    :cond_0
    return-void
.end method

.method public final getCoordinateType()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lct/bs;

    invoke-virtual {v0}, Lct/bs;->c()I

    move-result v0

    return v0
.end method

.method public final getLastKnownLocation()Lcom/tencent/map/geolocation/TencentLocation;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lct/bs;

    invoke-virtual {v0}, Lct/bs;->a()Lcom/tencent/map/geolocation/TencentLocation;

    move-result-object v0

    return-object v0
.end method

.method public final removeUpdates(Lcom/tencent/map/geolocation/TencentLocationListener;)V
    .locals 4
    .parameter

    .prologue
    .line 216
    iget-object v1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lct/bs;

    invoke-virtual {v0}, Lct/bs;->b()V

    .line 219
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->e:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->e:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    invoke-static {v0}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->removeTencentLog(Lcom/tencent/map/geolocation/internal/TencentLog;)Z

    .line 221
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->e:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->shutdown(J)V

    .line 224
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final requestLocationUpdates(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/map/geolocation/TencentLocationManager;->requestLocationUpdates(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    move-result v0

    return v0
.end method

.method public final requestLocationUpdates(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "request is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    if-nez p2, :cond_1

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    if-nez p3, :cond_2

    .line 179
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "looper is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->e:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    if-nez v0, :cond_4

    .line 185
    new-instance v0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    iget-object v2, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lct/be;

    iget-object v2, v2, Lct/be;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->getLogDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->e:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    .line 192
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->e:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    invoke-static {v0}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->addTencentLog(Lcom/tencent/map/geolocation/internal/TencentLog;)V

    .line 194
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lct/bs;

    invoke-virtual {v0, p1, p2, p3}, Lct/bs;->a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->e:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->tryRestart()Z

    move-result v0

    if-nez v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->e:Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    invoke-static {v0}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->removeTencentLog(Lcom/tencent/map/geolocation/internal/TencentLog;)Z

    .line 189
    new-instance v0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;

    iget-object v2, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->b:Lct/be;

    iget-object v2, v2, Lct/be;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->getLogDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->e:Lcom/tencent/map/geolocation/internal/TencentLogImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setCoordinateType(I)V
    .locals 3
    .parameter

    .prologue
    .line 113
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->a:[B

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationManager;->c:Lct/bs;

    invoke-virtual {v0, p1}, Lct/bs;->a(I)V

    .line 117
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown coordinate type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
