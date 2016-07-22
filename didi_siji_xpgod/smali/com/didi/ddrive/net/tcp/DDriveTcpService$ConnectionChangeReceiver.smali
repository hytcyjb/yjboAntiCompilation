.class public Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DDriveTcpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/tcp/DDriveTcpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionChangeReceiver"
.end annotation


# instance fields
.field private mNetworkDispatcher:Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;

.field private mNetworkType:I

.field final synthetic this$0:Lcom/didi/ddrive/net/tcp/DDriveTcpService;


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/net/tcp/DDriveTcpService;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;->this$0:Lcom/didi/ddrive/net/tcp/DDriveTcpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;->mNetworkType:I

    .line 60
    new-instance v0, Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;

    invoke-direct {v0}, Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;->mNetworkDispatcher:Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;

    .line 61
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;->mNetworkDispatcher:Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;

    invoke-static {}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->getInstance()Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;->register(Lcom/didi/ddrive/net/tcp/network/NetworkObserver;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "paramContext"
    .parameter "paramIntent"

    .prologue
    .line 66
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 68
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 71
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 72
    sget-object v4, Lcom/didi/ddrive/net/tcp/DDriveTcpService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network Type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v4, Lcom/didi/ddrive/net/tcp/DDriveTcpService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network State = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget v3, p0, Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;->mNetworkType:I

    .line 75
    .local v3, oldType:I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;->mNetworkType:I

    .line 76
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 77
    .local v1, connected:Z
    iget v4, p0, Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;->mNetworkType:I

    if-eq v3, v4, :cond_0

    .line 86
    .end local v3           #oldType:I
    :cond_0
    :goto_0
    sget-object v4, Lcom/didi/ddrive/net/tcp/DDriveTcpService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network connected ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v4, p0, Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;->mNetworkDispatcher:Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;

    invoke-virtual {v4, v1}, Lcom/didi/ddrive/net/tcp/network/NetworkStateDispatcher;->dispatchNetworkChanged(Z)V

    .line 88
    return-void

    .line 81
    .end local v1           #connected:Z
    :cond_1
    const/4 v4, -0x1

    iput v4, p0, Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;->mNetworkType:I

    .line 82
    const/4 v1, 0x0

    .restart local v1       #connected:Z
    goto :goto_0
.end method
