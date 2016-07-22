.class Lcom/crashlytics/android/answers/s;
.super Ljava/lang/Object;
.source "SessionEventTransform.java"

# interfaces
.implements Lio/fabric/sdk/android/services/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/b/a",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/crashlytics/android/answers/SessionEvent;)[B
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/answers/s;->b(Lcom/crashlytics/android/answers/SessionEvent;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)[B
    .locals 1
    .parameter

    .prologue
    .line 12
    check-cast p1, Lcom/crashlytics/android/answers/SessionEvent;

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/answers/s;->a(Lcom/crashlytics/android/answers/SessionEvent;)[B

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/crashlytics/android/answers/SessionEvent;)Lorg/json/JSONObject;
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->a:Lcom/crashlytics/android/answers/r;

    .line 46
    const-string v2, "appBundleId"

    iget-object v3, v1, Lcom/crashlytics/android/answers/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v2, "executionId"

    iget-object v3, v1, Lcom/crashlytics/android/answers/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v2, "installationId"

    iget-object v3, v1, Lcom/crashlytics/android/answers/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v2, "androidId"

    iget-object v3, v1, Lcom/crashlytics/android/answers/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v2, "advertisingId"

    iget-object v3, v1, Lcom/crashlytics/android/answers/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v2, "limitAdTrackingEnabled"

    iget-object v3, v1, Lcom/crashlytics/android/answers/r;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v2, "betaDeviceToken"

    iget-object v3, v1, Lcom/crashlytics/android/answers/r;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v2, "buildId"

    iget-object v3, v1, Lcom/crashlytics/android/answers/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v2, "osVersion"

    iget-object v3, v1, Lcom/crashlytics/android/answers/r;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v2, "deviceModel"

    iget-object v3, v1, Lcom/crashlytics/android/answers/r;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v2, "appVersionCode"

    iget-object v3, v1, Lcom/crashlytics/android/answers/r;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v2, "appVersionName"

    iget-object v1, v1, Lcom/crashlytics/android/answers/r;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v1, "timestamp"

    iget-wide v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    const-string v1, "type"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->c:Lcom/crashlytics/android/answers/SessionEvent$Type;

    invoke-virtual {v2}, Lcom/crashlytics/android/answers/SessionEvent$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "details"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/crashlytics/android/answers/SessionEvent;->d:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_0
    const-string v1, "customType"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->f:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 65
    const-string v1, "customAttributes"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/crashlytics/android/answers/SessionEvent;->f:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_1
    const-string v1, "predefinedType"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->h:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 69
    const-string v1, "predefinedAttributes"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/crashlytics/android/answers/SessionEvent;->h:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_2
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_3

    .line 74
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :cond_3
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
