.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/db;
.super Ljava/lang/Object;
.source "NetContext.java"


# static fields
.field private static b:Lcom/tencent/tencentmap/mapsdk/maps/a/db;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a()Lcom/tencent/tencentmap/mapsdk/maps/a/db;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/db;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/db;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/db;

    .line 23
    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/db;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/db;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/db;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static d()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 81
    :try_start_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/db;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a:Landroid/content/Context;

    .line 82
    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 83
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 84
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 89
    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static e()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 122
    :try_start_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/db;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a:Landroid/content/Context;

    .line 123
    const-string v4, "connectivity"

    .line 122
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 124
    .local v1, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 125
    .local v0, active:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 138
    .end local v0           #active:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 128
    .restart local v0       #active:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 129
    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    .line 130
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 131
    const/4 v2, 0x1

    goto :goto_0

    .line 129
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    .end local v0           #active:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->a:Landroid/content/Context;

    .line 38
    :cond_0
    return-void
.end method
