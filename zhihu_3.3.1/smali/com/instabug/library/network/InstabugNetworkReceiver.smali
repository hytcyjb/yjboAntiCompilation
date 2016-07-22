.class public Lcom/instabug/library/network/InstabugNetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstabugNetworkReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 21
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 22
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    const-string v0, "Network state changed, checking local cache"

    invoke-static {v0}, Lcom/instabug/library/g/b;->a(Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/instabug/library/network/InstabugNetworkReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 29
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instabug/library/network/UploadCacheService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 33
    :cond_0
    return-void
.end method
