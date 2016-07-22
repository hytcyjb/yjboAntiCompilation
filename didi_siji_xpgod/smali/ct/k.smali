.class final Lct/k;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lct/j;


# direct methods
.method constructor <init>(Lct/j;)V
    .locals 0

    iput-object p1, p0, Lct/k;->a:Lct/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    :try_start_0
    const-string v0, "AccessSchedulerTrigger"

    const-string v1, "Network changed"

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lct/k;->a:Lct/j;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lct/j;->a(Lct/j;I)I

    const-string v0, "AccessSchedulerTrigger"

    const-string v1, "no active network now"

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lct/aw;->a(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lct/aw;->b()V

    const/4 v1, 0x1

    invoke-static {v1}, Lct/aw;->a(Z)V

    invoke-static {}, Lct/aw;->f()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lct/k;->a:Lct/j;

    invoke-static {v3}, Lct/j;->a(Lct/j;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    iget-object v2, p0, Lct/k;->a:Lct/j;

    invoke-static {v2}, Lct/j;->b(Lct/j;)I

    move-result v2

    if-eq v1, v2, :cond_1

    const-string v1, "AccessSchedulerTrigger"

    const-string v2, "onAccessSchedulerTriggered by network change"

    invoke-static {v1, v2}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lct/k;->a:Lct/j;

    invoke-virtual {v1}, Lct/j;->b()V

    iget-object v1, p0, Lct/k;->a:Lct/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lct/j;->a(Lct/j;J)J

    :cond_1
    iget-object v1, p0, Lct/k;->a:Lct/j;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v1, v0}, Lct/j;->a(Lct/j;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lct/k;->a:Lct/j;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lct/j;->a(Lct/j;I)I

    const-string v0, "AccessSchedulerTrigger"

    const-string v1, "network not available or not connected"

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lct/aw;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
