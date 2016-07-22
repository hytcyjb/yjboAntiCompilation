.class public Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$UpdateTrafficTimer;,
        Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;
    }
.end annotation


# static fields
.field public static a:Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$UpdateTrafficTimer;

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$UpdateTrafficTimer;

    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    return-void
.end method

.method public static createRangeConnection(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter "url"
    .parameter "userAgent"
    .parameter "startBytes"
    .parameter "endBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 341
    .line 342
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v1, 0xafc8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_0

    :cond_1
    invoke-static {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_1
.end method

.method public static doGet2(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 377
    .line 378
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/dd;

    move-result-object v0

    .line 380
    .local v0, netResp:Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    if-nez v0, :cond_0

    .line 381
    const/4 v1, 0x0

    .line 394
    :goto_0
    return-object v1

    .line 383
    :cond_0
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;-><init>()V

    .line 384
    .local v1, netResp2:Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;
    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;->a:[B

    iput-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;->bytResponse:[B

    .line 385
    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;->strCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public static doPost2(Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;
    .locals 3
    .parameter "strUrl"
    .parameter "strUserAgent"
    .parameter "byts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/cz;->a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/tencentmap/mapsdk/maps/a/dd;

    move-result-object v0

    .line 350
    .local v0, netResp:Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    if-nez v0, :cond_0

    .line 351
    const/4 v1, 0x0

    .line 356
    :goto_0
    return-object v1

    .line 353
    :cond_0
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;-><init>()V

    .line 354
    .local v1, netResp2:Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;
    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;->a:[B

    iput-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;->bytResponse:[B

    .line 355
    iget-object v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dd;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;->strCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTrafficUpdateTime()I
    .locals 1

    .prologue
    .line 521
    sget v0, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;->b:I

    return v0
.end method

.method public static initNet(Landroid/content/Context;)V
    .locals 0
    .parameter "mcontex"

    .prologue
    .line 373
    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Landroid/content/Context;)V

    .line 374
    return-void
.end method

.method public static isWAPFeePage(Ljava/lang/String;)Z
    .locals 1
    .parameter "contentType"

    .prologue
    .line 118
    if-eqz p0, :cond_0

    const-string v0, "vnd.wap.wml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 3
    .parameter "mContex"

    .prologue
    const/4 v2, 0x1

    .line 53
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 55
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 57
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 63
    .end local v0           #activeNetInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setTrafficUpdateTimeListener(Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$UpdateTrafficTimer;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 517
    sput-object p0, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$UpdateTrafficTimer;

    .line 518
    return-void
.end method
