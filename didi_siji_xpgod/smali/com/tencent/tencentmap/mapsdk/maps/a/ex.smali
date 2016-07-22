.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ex;
.super Ljava/lang/Object;
.source "AuthenticationInSearch.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ex;->a:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ex;->a:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 28
    :try_start_0
    iget-object v13, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ex;->a:Ljava/lang/String;

    invoke-static {v13}, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;->doGet2(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v7

    .line 37
    .local v7, resp:Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;
    if-eqz v7, :cond_0

    iget-object v13, v7, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;->bytResponse:[B

    if-nez v13, :cond_1

    .line 115
    .end local v7           #resp:Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;
    :cond_0
    :goto_0
    return-object v12

    .line 40
    .restart local v7       #resp:Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;
    :cond_1
    iget-object v0, v7, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;->strCharset:Ljava/lang/String;

    .line 41
    .local v0, codingType:Ljava/lang/String;
    iget-object v8, v7, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;->bytResponse:[B

    .line 43
    .local v8, resultData:[B
    const/4 v10, 0x0

    .line 45
    .local v10, strJson:Ljava/lang/String;
    :try_start_1
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v10           #strJson:Ljava/lang/String;
    .local v11, strJson:Ljava/lang/String;
    move-object v10, v11

    .line 50
    .end local v11           #strJson:Ljava/lang/String;
    .restart local v10       #strJson:Ljava/lang/String;
    :goto_1
    :try_start_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    .line 58
    .local v9, root:Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 60
    .local v4, jsonDetail:Lorg/json/JSONObject;
    :try_start_3
    const-string v13, "detail"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .line 65
    :goto_2
    const/4 v3, 0x0

    .line 66
    .local v3, jsonCfg:Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 68
    :try_start_4
    const-string v13, "cfg"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v3

    .line 74
    :cond_2
    :goto_3
    const/4 v6, 0x0

    .line 75
    .local v6, jsonRtt:Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    .line 77
    :try_start_5
    const-string v13, "rtt"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v6

    .line 84
    :cond_3
    :goto_4
    const/4 v2, -0x1

    .line 85
    .local v2, itimeInterval:I
    if-eqz v6, :cond_4

    .line 87
    :try_start_6
    const-string v13, "refresh_time"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v2

    .line 93
    :goto_5
    sget-object v13, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$UpdateTrafficTimer;

    if-eqz v13, :cond_4

    const/4 v13, -0x1

    if-eq v2, v13, :cond_4

    .line 94
    sget-object v13, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;->a:Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$UpdateTrafficTimer;

    invoke-interface {v13, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$UpdateTrafficTimer;->setTrafficInterval(I)V

    .line 95
    sput v2, Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil;->b:I

    .line 99
    :cond_4
    :try_start_7
    const-string v13, "info"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v5

    .line 107
    .local v5, jsonInfo:Lorg/json/JSONObject;
    :try_start_8
    const-string v13, "error"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    move-result v1

    .line 115
    .local v1, iErrorCode:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_0

    .line 46
    .end local v1           #iErrorCode:I
    .end local v2           #itimeInterval:I
    .end local v3           #jsonCfg:Lorg/json/JSONObject;
    .end local v4           #jsonDetail:Lorg/json/JSONObject;
    .end local v5           #jsonInfo:Lorg/json/JSONObject;
    .end local v6           #jsonRtt:Lorg/json/JSONObject;
    .end local v9           #root:Lorg/json/JSONObject;
    :catch_0
    move-exception v13

    invoke-virtual {v13}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 61
    .restart local v4       #jsonDetail:Lorg/json/JSONObject;
    .restart local v9       #root:Lorg/json/JSONObject;
    :catch_1
    move-exception v13

    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 69
    .restart local v3       #jsonCfg:Lorg/json/JSONObject;
    :catch_2
    move-exception v13

    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 78
    .restart local v6       #jsonRtt:Lorg/json/JSONObject;
    :catch_3
    move-exception v13

    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 88
    .restart local v2       #itimeInterval:I
    :catch_4
    move-exception v13

    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 111
    .restart local v5       #jsonInfo:Lorg/json/JSONObject;
    :catch_5
    move-exception v13

    goto :goto_0

    .line 103
    .end local v5           #jsonInfo:Lorg/json/JSONObject;
    :catch_6
    move-exception v13

    goto :goto_0

    .line 54
    .end local v2           #itimeInterval:I
    .end local v3           #jsonCfg:Lorg/json/JSONObject;
    .end local v4           #jsonDetail:Lorg/json/JSONObject;
    .end local v6           #jsonRtt:Lorg/json/JSONObject;
    .end local v9           #root:Lorg/json/JSONObject;
    :catch_7
    move-exception v13

    goto :goto_0

    .line 35
    .end local v0           #codingType:Ljava/lang/String;
    .end local v7           #resp:Lcom/tencent/tencentmap/mapsdk/maps/model/NetUtil$NetResponse2;
    .end local v8           #resultData:[B
    .end local v10           #strJson:Ljava/lang/String;
    :catch_8
    move-exception v13

    goto :goto_0
.end method
