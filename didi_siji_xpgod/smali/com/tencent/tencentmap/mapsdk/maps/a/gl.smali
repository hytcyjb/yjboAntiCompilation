.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gl;
.super Ljava/lang/Object;
.source "CityVerParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;,
        Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;
    .locals 15
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v3, jsonObj:Lorg/json/JSONObject;
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;-><init>()V

    .line 34
    .local v0, cityVer:Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;
    const-string v13, "domain"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;->a:Ljava/lang/String;

    .line 35
    const-string v13, "domain1"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;->b:Ljava/lang/String;

    .line 38
    const-string v13, "dirNew"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;->c:Ljava/lang/String;

    .line 39
    const-string v13, "date"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 40
    const-string v13, "date"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 41
    .local v10, updateDate:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;->d:J

    .line 45
    .end local v10           #updateDate:Ljava/lang/String;
    :cond_0
    const-string v13, "fileversion"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 46
    const-string v13, "fileversion"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;->e:I

    .line 49
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;->f:Ljava/util/ArrayList;

    .line 51
    const-string v13, "updateData"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 52
    .local v2, jsonArr:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v1, v13, :cond_2

    .line 53
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 54
    .local v5, obj:Lorg/json/JSONObject;
    const-string v13, "pinyin"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, pinyin:Ljava/lang/String;
    const-string v13, "ver"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 56
    .local v11, ver:I
    const-string v13, "size"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 57
    .local v8, size:J
    const-string v7, ""

    .line 59
    .local v7, releaseDate:Ljava/lang/String;
    :try_start_0
    const-string v13, "releasedate"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 63
    :goto_1
    const-string v4, ""

    .line 65
    .local v4, md5:Ljava/lang/String;
    :try_start_1
    const-string v13, "md5"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 69
    :goto_2
    new-instance v12, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;

    invoke-direct {v12}, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;-><init>()V

    .line 70
    .local v12, verInfo:Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;
    iget-object v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iput-object v6, v12, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;->a:Ljava/lang/String;

    .line 73
    iput v11, v12, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;->b:I

    .line 74
    iput-wide v8, v12, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;->c:J

    .line 75
    iput-object v7, v12, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;->d:Ljava/lang/String;

    .line 76
    iput-object v4, v12, Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;->e:Ljava/lang/String;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v4           #md5:Ljava/lang/String;
    .end local v5           #obj:Lorg/json/JSONObject;
    .end local v6           #pinyin:Ljava/lang/String;
    .end local v7           #releaseDate:Ljava/lang/String;
    .end local v8           #size:J
    .end local v11           #ver:I
    .end local v12           #verInfo:Lcom/tencent/tencentmap/mapsdk/maps/a/gl$b;
    :cond_2
    return-object v0

    .restart local v4       #md5:Ljava/lang/String;
    .restart local v5       #obj:Lorg/json/JSONObject;
    .restart local v6       #pinyin:Ljava/lang/String;
    .restart local v7       #releaseDate:Ljava/lang/String;
    .restart local v8       #size:J
    .restart local v11       #ver:I
    :catch_0
    move-exception v13

    goto :goto_2

    .end local v4           #md5:Ljava/lang/String;
    :catch_1
    move-exception v13

    goto :goto_1
.end method
