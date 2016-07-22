.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/cz;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    .locals 2
    .parameter "url"
    .parameter "userAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tencentmap/mapsdk/maps/a/de;,
            Lcom/tencent/tencentmap/mapsdk/maps/a/dh;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/de;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/de;-><init>()V

    throw v0

    .line 155
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p0, p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a(ZLjava/lang/String;Ljava/lang/String;[B)Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 156
    :catch_0
    move-exception v0

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    .locals 1
    .parameter "url"
    .parameter "userAgent"
    .parameter "postData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tencentmap/mapsdk/maps/a/de;,
            Lcom/tencent/tencentmap/mapsdk/maps/a/dh;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/db;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/de;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/de;-><init>()V

    throw v0

    .line 179
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dg;->a(ZLjava/lang/String;Ljava/lang/String;[B)Lcom/tencent/tencentmap/mapsdk/maps/a/dd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 180
    :catch_0
    move-exception v0

    throw v0
.end method
