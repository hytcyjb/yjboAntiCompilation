.class Lcom/crashlytics/android/a/g;
.super Ljava/lang/Object;
.source "CheckForUpdatesResponseTransform.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/crashlytics/android/a/f;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 31
    :goto_0
    return-object v0

    .line 24
    :cond_0
    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    const-string v2, "version_string"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    const-string v3, "build_version"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    const-string v3, "display_version"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    const-string v5, "identifier"

    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    const-string v6, "instance_identifier"

    invoke-virtual {p1, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    new-instance v0, Lcom/crashlytics/android/a/f;

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
