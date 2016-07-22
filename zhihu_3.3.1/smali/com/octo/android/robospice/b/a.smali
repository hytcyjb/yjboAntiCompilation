.class public Lcom/octo/android/robospice/b/a;
.super Ljava/lang/Object;
.source "DefaultNetworkStateChecker.java"

# interfaces
.implements Lcom/octo/android/robospice/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 38
    :goto_0
    if-nez v0, :cond_1

    .line 39
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application doesn\'t declare <uses-permission android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :cond_1
    return v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 20
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 21
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 22
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 23
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_1

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 27
    :goto_1
    return v0

    .line 22
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 27
    goto :goto_1
.end method

.method public b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, p1, v0}, Lcom/octo/android/robospice/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 33
    const-string v0, "android.permission.INTERNET"

    invoke-direct {p0, p1, v0}, Lcom/octo/android/robospice/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 34
    return-void
.end method
