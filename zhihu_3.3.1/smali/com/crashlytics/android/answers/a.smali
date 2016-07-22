.class public Lcom/crashlytics/android/answers/a;
.super Lio/fabric/sdk/android/h;
.source "Answers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/h",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/crashlytics/android/answers/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lio/fabric/sdk/android/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    const-string v0, "1.3.4.92"

    return-object v0
.end method

.method public a(Lio/fabric/sdk/android/services/common/i$a;)V
    .locals 2
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/p;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/p;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/i$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/p;->a(Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    const-string v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method

.method protected c_()Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->D()Landroid/content/Context;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 343
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 344
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 345
    iget v4, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 346
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, "0.0"

    .line 351
    :goto_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_1

    .line 352
    iget-wide v6, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 358
    :goto_1
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->C()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v3

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/crashlytics/android/answers/p;->a(Lio/fabric/sdk/android/h;Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Ljava/lang/String;Ljava/lang/String;J)Lcom/crashlytics/android/answers/p;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/p;

    .line 360
    iget-object v1, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/p;

    invoke-virtual {v1}, Lcom/crashlytics/android/answers/p;->a()V

    .line 362
    const/4 v0, 0x1

    .line 366
    :goto_2
    return v0

    .line 346
    :cond_0
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 354
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 355
    new-instance v3, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    goto :goto_1

    .line 363
    :catch_0
    move-exception v1

    .line 364
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Error retrieving app properties"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected d()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 372
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/settings/q;->a()Lio/fabric/sdk/android/services/settings/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/q;->b()Lio/fabric/sdk/android/services/settings/s;

    move-result-object v0

    .line 373
    if-nez v0, :cond_0

    .line 374
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Failed to retrieve settings"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 378
    :cond_0
    iget-object v1, v0, Lio/fabric/sdk/android/services/settings/s;->d:Lio/fabric/sdk/android/services/settings/m;

    iget-boolean v1, v1, Lio/fabric/sdk/android/services/settings/m;->d:Z

    if-eqz v1, :cond_1

    .line 379
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Analytics collection enabled"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/p;

    iget-object v0, v0, Lio/fabric/sdk/android/services/settings/s;->e:Lio/fabric/sdk/android/services/settings/b;

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/answers/p;->a(Lio/fabric/sdk/android/services/settings/b;Ljava/lang/String;)V

    .line 382
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Analytics collection disabled"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/crashlytics/android/answers/a;->a:Lcom/crashlytics/android/answers/p;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/p;->b()V

    .line 386
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/a;->D()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
