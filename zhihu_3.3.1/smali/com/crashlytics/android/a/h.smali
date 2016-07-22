.class public Lcom/crashlytics/android/a/h;
.super Ljava/lang/Object;
.source "DeviceTokenLoader.java"

# interfaces
.implements Lio/fabric/sdk/android/services/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/a/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 28
    const-string v0, ""

    .line 29
    const/4 v2, 0x0

    .line 34
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/a/h;->b(Landroid/content/Context;)Ljava/util/zip/ZipInputStream;

    move-result-object v2

    .line 35
    invoke-virtual {p0, v2}, Lcom/crashlytics/android/a/h;->a(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 43
    if-eqz v2, :cond_0

    .line 45
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 53
    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L

    div-double/2addr v2, v4

    .line 54
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v1

    const-string v4, "Beta"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Beta device token load took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "Beta"

    const-string v6, "Failed to close the APK file"

    invoke-interface {v2, v3, v6, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 36
    :catch_1
    move-exception v1

    .line 37
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v6, "Beta"

    const-string v7, "Failed to find this app in the PackageManager"

    invoke-interface {v3, v6, v7, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    if-eqz v2, :cond_0

    .line 45
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 46
    :catch_2
    move-exception v1

    .line 47
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "Beta"

    const-string v6, "Failed to close the APK file"

    invoke-interface {v2, v3, v6, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 38
    :catch_3
    move-exception v1

    .line 39
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v6, "Beta"

    const-string v7, "Failed to find the APK file"

    invoke-interface {v3, v6, v7, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    if-eqz v2, :cond_0

    .line 45
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 46
    :catch_4
    move-exception v1

    .line 47
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "Beta"

    const-string v6, "Failed to close the APK file"

    invoke-interface {v2, v3, v6, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    :catch_5
    move-exception v1

    .line 41
    :try_start_6
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v3

    const-string v6, "Beta"

    const-string v7, "Failed to read the APK file"

    invoke-interface {v3, v6, v7, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 43
    if-eqz v2, :cond_0

    .line 45
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 46
    :catch_6
    move-exception v1

    .line 47
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "Beta"

    const-string v6, "Failed to close the APK file"

    invoke-interface {v2, v3, v6, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 43
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 45
    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 48
    :cond_1
    :goto_1
    throw v0

    .line 46
    :catch_7
    move-exception v1

    .line 47
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Failed to close the APK file"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method a(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "assets/com.crashlytics.android.beta/dirfactor-device-token="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "assets/com.crashlytics.android.beta/dirfactor-device-token="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method b(Landroid/content/Context;)Ljava/util/zip/ZipInputStream;
    .locals 3
    .parameter

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method

.method public synthetic c(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/a/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
