.class public Lcom/crashlytics/android/a/c;
.super Lio/fabric/sdk/android/h;
.source "Beta.java"

# interfaces
.implements Lio/fabric/sdk/android/services/common/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/h",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/fabric/sdk/android/services/common/k;"
    }
.end annotation


# instance fields
.field private final a:Lio/fabric/sdk/android/services/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/a/b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/crashlytics/android/a/h;

.field private c:Lcom/crashlytics/android/a/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lio/fabric/sdk/android/h;-><init>()V

    .line 40
    new-instance v0, Lio/fabric/sdk/android/services/a/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/a/b;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/a/c;->a:Lio/fabric/sdk/android/services/a/b;

    .line 41
    new-instance v0, Lcom/crashlytics/android/a/h;

    invoke-direct {v0}, Lcom/crashlytics/android/a/h;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/a/c;->b:Lcom/crashlytics/android/a/h;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/crashlytics/android/a/d;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 185
    .line 189
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "crashlytics-build.properties"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 191
    if-eqz v2, :cond_2

    .line 192
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/a/d;->a(Ljava/io/InputStream;)Lcom/crashlytics/android/a/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    .line 194
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v3, "Beta"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/crashlytics/android/a/d;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " build properties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/crashlytics/android/a/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/crashlytics/android/a/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/crashlytics/android/a/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object v0, v1

    .line 201
    :goto_0
    if-eqz v2, :cond_0

    .line 203
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 210
    :cond_0
    :goto_1
    return-object v0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 198
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 199
    :goto_2
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v4, "Beta"

    const-string v5, "Error reading Beta build properties"

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    if-eqz v2, :cond_0

    .line 203
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 204
    :catch_2
    move-exception v1

    .line 205
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 201
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_1

    .line 203
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 206
    :cond_1
    :goto_4
    throw v0

    .line 204
    :catch_3
    move-exception v1

    .line 205
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 201
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 198
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 157
    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p2, v0}, Lcom/crashlytics/android/a/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v2, "Beta"

    const-string v3, "App was possibly installed by Beta. Getting device token"

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/a/c;->a:Lio/fabric/sdk/android/services/a/b;

    iget-object v2, p0, Lcom/crashlytics/android/a/c;->b:Lcom/crashlytics/android/a/h;

    invoke-virtual {v0, p1, v2}, Lio/fabric/sdk/android/services/a/b;->a(Landroid/content/Context;Lio/fabric/sdk/android/services/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    move-object v1, v0

    .line 171
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Failed to load the Beta device token"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v2, "Beta"

    const-string v3, "App was not installed by Beta. Skipping device token"

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h()Lio/fabric/sdk/android/services/settings/f;
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->a()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/q;->b()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    iget-object v0, v0, Lio/fabric/sdk/android/services/settings/s;->f:Lio/fabric/sdk/android/services/settings/f;

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(ILandroid/app/Application;)Lcom/crashlytics/android/a/j;
    .locals 3
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 98
    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/crashlytics/android/a/c;->E()Lio/fabric/sdk/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/c;->e()Lio/fabric/sdk/android/a;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lcom/crashlytics/android/a/c;->E()Lio/fabric/sdk/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/c;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 105
    new-instance v0, Lcom/crashlytics/android/a/b;

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/a/b;-><init>(Lio/fabric/sdk/android/a;Ljava/util/concurrent/ExecutorService;)V

    .line 108
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/crashlytics/android/a/i;

    invoke-direct {v0}, Lcom/crashlytics/android/a/i;-><init>()V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "1.1.4.92"

    return-object v0
.end method

.method a(Lio/fabric/sdk/android/services/settings/f;Lcom/crashlytics/android/a/d;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    if-eqz p1, :cond_0

    iget-object v0, p1, Lio/fabric/sdk/android/services/settings/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 139
    const/16 v0, 0xb

    if-ge p2, v0, :cond_1

    .line 143
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_1
    const-string v0, "io.crash.air"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "com.crashlytics.sdk.android:beta"

    return-object v0
.end method

.method protected c_()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/crashlytics/android/a/c;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v1, v0}, Lcom/crashlytics/android/a/c;->a(ILandroid/app/Application;)Lcom/crashlytics/android/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/a/c;->c:Lcom/crashlytics/android/a/j;

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method protected d()Ljava/lang/Boolean;
    .locals 9

    .prologue
    .line 61
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Beta kit initializing..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/crashlytics/android/a/c;->D()Landroid/content/Context;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Lcom/crashlytics/android/a/c;->C()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lio/fabric/sdk/android/services/common/IdManager;->j()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "A Beta device token was not found for this app"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v2, "Beta"

    const-string v4, "Beta device token is present, checking for app updates."

    invoke-interface {v0, v2, v4}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/crashlytics/android/a/c;->h()Lio/fabric/sdk/android/services/settings/f;

    move-result-object v4

    .line 76
    invoke-direct {p0, v1}, Lcom/crashlytics/android/a/c;->a(Landroid/content/Context;)Lcom/crashlytics/android/a/d;

    move-result-object v5

    .line 78
    invoke-virtual {p0, v4, v5}, Lcom/crashlytics/android/a/c;->a(Lio/fabric/sdk/android/services/settings/f;Lcom/crashlytics/android/a/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/crashlytics/android/a/c;->c:Lcom/crashlytics/android/a/j;

    new-instance v6, Lio/fabric/sdk/android/services/c/d;

    invoke-direct {v6, p0}, Lio/fabric/sdk/android/services/c/d;-><init>(Lio/fabric/sdk/android/h;)V

    new-instance v7, Lio/fabric/sdk/android/services/common/p;

    invoke-direct {v7}, Lio/fabric/sdk/android/services/common/p;-><init>()V

    new-instance v8, Lio/fabric/sdk/android/services/network/b;

    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    invoke-direct {v8, v2}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/k;)V

    move-object v2, p0

    invoke-interface/range {v0 .. v8}, Lcom/crashlytics/android/a/j;->a(Landroid/content/Context;Lcom/crashlytics/android/a/c;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/settings/f;Lcom/crashlytics/android/a/d;Lio/fabric/sdk/android/services/c/c;Lio/fabric/sdk/android/services/common/j;Lio/fabric/sdk/android/services/network/c;)V

    .line 90
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/crashlytics/android/a/c;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/crashlytics/android/a/c;->C()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->j()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/crashlytics/android/a/c;->D()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    sget-object v2, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->FONT_TOKEN:Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-object v1
.end method

.method g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/crashlytics/android/a/c;->D()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
