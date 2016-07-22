.class Lcom/didi/game/activity/FoundWebActivity$7;
.super Ljava/lang/Object;
.source "FoundWebActivity.java"

# interfaces
.implements Lcom/didi/common/ui/webview/OldJavaScriptBridge$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/game/activity/FoundWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/activity/FoundWebActivity;


# direct methods
.method constructor <init>(Lcom/didi/game/activity/FoundWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/didi/game/activity/FoundWebActivity$7;->this$0:Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 10
    .parameter "jsonObject"

    .prologue
    const/4 v7, 0x0

    .line 360
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GameCenterWebActivity checkInstall json="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 361
    if-nez p1, :cond_0

    .line 362
    const v7, 0x7f0b0162

    invoke-static {v7}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 363
    const-string v7, ""

    .line 400
    :goto_0
    return-object v7

    .line 365
    :cond_0
    const-string v8, "games"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 366
    .local v0, array:Lorg/json/JSONArray;
    if-nez v0, :cond_2

    move v3, v7

    .line 369
    .local v3, len:I
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 370
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 371
    .local v6, tmpObj:Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    .line 372
    const-string v8, "packageName"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/didi/game/common/utils/DiDiUtils;->getPackageApkInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 373
    .local v5, tmpInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_3

    .line 375
    :try_start_0
    const-string v8, "gameVersionCode"

    iget v9, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 376
    const-string v8, "isInstall"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v5           #tmpInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 366
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v6           #tmpObj:Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_1

    .line 377
    .restart local v2       #i:I
    .restart local v3       #len:I
    .restart local v5       #tmpInfo:Landroid/content/pm/PackageInfo;
    .restart local v6       #tmpObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 378
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 382
    .end local v1           #e:Lorg/json/JSONException;
    :cond_3
    :try_start_1
    const-string v8, "isInstall"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 383
    :catch_1
    move-exception v1

    .line 384
    .restart local v1       #e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 389
    .end local v1           #e:Lorg/json/JSONException;
    .end local v5           #tmpInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #tmpObj:Lorg/json/JSONObject;
    :cond_4
    invoke-static {}, Lcom/didi/common/util/Utils;->getNetworkType()Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, netType:Ljava/lang/String;
    const-string v8, "WIFI"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 391
    const-string v8, "h5game_wifi"

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 399
    :cond_5
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkInstall return==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 392
    :cond_6
    const-string v8, "2G"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 393
    const-string v8, "h5game_2G"

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    .line 394
    :cond_7
    const-string v8, "3G"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 395
    const-string v8, " h5game_3G"

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    .line 396
    :cond_8
    const-string v8, "4G"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 397
    const-string v8, "h5game_4G"

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4
.end method
