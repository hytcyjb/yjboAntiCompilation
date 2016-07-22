.class public Lcom/android/volley/toolbox/o;
.super Ljava/lang/Object;
.source "Volley.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/android/volley/h;
    .locals 1
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/o;->a(Landroid/content/Context;Lcom/android/volley/toolbox/f;)Lcom/android/volley/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/android/volley/toolbox/f;)Lcom/android/volley/h;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/volley/toolbox/o;->a(Landroid/content/Context;Lcom/android/volley/toolbox/f;I)Lcom/android/volley/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/android/volley/toolbox/f;I)Lcom/android/volley/h;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "volley"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    const-string v0, "volley/0"

    .line 49
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    :goto_0
    if-nez p1, :cond_0

    .line 56
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    .line 57
    new-instance p1, Lcom/android/volley/toolbox/g;

    invoke-direct {p1}, Lcom/android/volley/toolbox/g;-><init>()V

    .line 65
    :cond_0
    :goto_1
    new-instance v2, Lcom/android/volley/toolbox/a;

    invoke-direct {v2, p1}, Lcom/android/volley/toolbox/a;-><init>(Lcom/android/volley/toolbox/f;)V

    .line 68
    const/4 v0, -0x1

    if-gt p2, v0, :cond_2

    .line 71
    new-instance v0, Lcom/android/volley/h;

    new-instance v3, Lcom/android/volley/toolbox/c;

    invoke-direct {v3, v1}, Lcom/android/volley/toolbox/c;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3, v2}, Lcom/android/volley/h;-><init>(Lcom/android/volley/a;Lcom/android/volley/f;)V

    .line 79
    :goto_2
    invoke-virtual {v0}, Lcom/android/volley/h;->a()V

    .line 81
    return-object v0

    .line 61
    :cond_1
    new-instance p1, Lcom/android/volley/toolbox/d;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/volley/toolbox/d;-><init>(Lorg/apache/http/client/HttpClient;)V

    goto :goto_1

    .line 76
    :cond_2
    new-instance v0, Lcom/android/volley/h;

    new-instance v3, Lcom/android/volley/toolbox/c;

    invoke-direct {v3, v1, p2}, Lcom/android/volley/toolbox/c;-><init>(Ljava/io/File;I)V

    invoke-direct {v0, v3, v2}, Lcom/android/volley/h;-><init>(Lcom/android/volley/a;Lcom/android/volley/f;)V

    goto :goto_2

    .line 52
    :catch_0
    move-exception v2

    goto :goto_0
.end method
