.class public final Lct/bu;
.super Landroid/content/BroadcastReceiver;
.source "TL"


# instance fields
.field private final a:Lct/be;

.field private b:Z


# direct methods
.method public constructor <init>(Lct/be;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-object p1, p0, Lct/bu;->a:Lct/be;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 28
    iget-boolean v0, p0, Lct/bu;->b:Z

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/bu;->b:Z

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lct/bu;->a:Lct/be;

    iget-object v1, v1, Lct/be;->a:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TxNetworkStateMonitor"

    const-string v2, "listenNetworkState: failed"

    invoke-static {v1, v2, v0}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lct/bu;->b:Z

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/bu;->b:Z

    .line 43
    :try_start_0
    iget-object v0, p0, Lct/bu;->a:Lct/be;

    iget-object v0, v0, Lct/be;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    if-nez p2, :cond_0

    .line 75
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lct/bu;->a:Lct/be;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lct/be;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {p1}, Lct/b$a;->c(Landroid/content/Context;)Z

    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lct/bu;->a:Lct/be;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lct/be;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lct/bu;->a:Lct/be;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lct/be;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method
