.class public Lcom/didi/common/receiver/NetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/receiver/NetReceiver$NetListener;,
        Lcom/didi/common/receiver/NetReceiver$NetState;
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;


# instance fields
.field private ResetHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 98
    new-instance v0, Lcom/didi/common/receiver/NetReceiver$1;

    invoke-direct {v0, p0}, Lcom/didi/common/receiver/NetReceiver$1;-><init>(Lcom/didi/common/receiver/NetReceiver;)V

    iput-object v0, p0, Lcom/didi/common/receiver/NetReceiver;->ResetHandler:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method public static getActiveNetwork(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 89
    if-nez p0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 92
    .local v1, mConnMgr:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 95
    .local v0, aActiveInfo:Landroid/net/NetworkInfo;
    goto :goto_0
.end method

.method public static setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 34
    sput-object p0, Lcom/didi/common/receiver/NetReceiver;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method public static setNetListener(Lcom/didi/common/receiver/NetReceiver$NetListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 38
    sput-object p0, Lcom/didi/common/receiver/NetReceiver;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

    .line 39
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0x3e9

    .line 43
    const-string v5, "NetReceiver----onReceive-"

    invoke-static {v5}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Lcom/didi/common/receiver/NetReceiver;->getActiveNetwork(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 45
    .local v3, netInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 46
    :cond_0
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->disconnPush()V

    .line 53
    :goto_0
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 54
    .local v1, manager:Landroid/net/ConnectivityManager;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 55
    .local v0, gprs:Landroid/net/NetworkInfo;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 57
    .local v4, wifi:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 58
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 59
    .local v2, msg:Landroid/os/Message;
    sget-object v5, Lcom/didi/common/receiver/NetReceiver$NetState;->GPRS:Lcom/didi/common/receiver/NetReceiver$NetState;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetReceiver----onReceive-grps--netListener:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/didi/common/receiver/NetReceiver;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 61
    sget-object v5, Lcom/didi/common/receiver/NetReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_1

    .line 62
    sget-object v5, Lcom/didi/common/receiver/NetReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    :cond_1
    sget-object v5, Lcom/didi/common/receiver/NetReceiver;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

    if-eqz v5, :cond_2

    .line 65
    sget-object v5, Lcom/didi/common/receiver/NetReceiver;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

    invoke-interface {v5}, Lcom/didi/common/receiver/NetReceiver$NetListener;->callback()V

    .line 86
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    .line 49
    .end local v0           #gprs:Landroid/net/NetworkInfo;
    .end local v1           #manager:Landroid/net/ConnectivityManager;
    .end local v4           #wifi:Landroid/net/NetworkInfo;
    :cond_3
    iget-object v5, p0, Lcom/didi/common/receiver/NetReceiver;->ResetHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    iget-object v5, p0, Lcom/didi/common/receiver/NetReceiver;->ResetHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 67
    .restart local v0       #gprs:Landroid/net/NetworkInfo;
    .restart local v1       #manager:Landroid/net/ConnectivityManager;
    .restart local v4       #wifi:Landroid/net/NetworkInfo;
    :cond_4
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 68
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 69
    .restart local v2       #msg:Landroid/os/Message;
    sget-object v5, Lcom/didi/common/receiver/NetReceiver$NetState;->WIFI:Lcom/didi/common/receiver/NetReceiver$NetState;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetReceiver----onReceive-wifi--netListener:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/didi/common/receiver/NetReceiver;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 71
    sget-object v5, Lcom/didi/common/receiver/NetReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_5

    .line 72
    sget-object v5, Lcom/didi/common/receiver/NetReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    :cond_5
    sget-object v5, Lcom/didi/common/receiver/NetReceiver;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

    if-eqz v5, :cond_2

    .line 75
    sget-object v5, Lcom/didi/common/receiver/NetReceiver;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

    invoke-interface {v5}, Lcom/didi/common/receiver/NetReceiver$NetListener;->callback()V

    goto :goto_1

    .line 78
    .end local v2           #msg:Landroid/os/Message;
    :cond_6
    const-string v5, "NetReceiver----onReceive-others-:"

    invoke-static {v5}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 79
    sget-object v5, Lcom/didi/common/receiver/NetReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_2

    .line 80
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 81
    .restart local v2       #msg:Landroid/os/Message;
    sget-object v5, Lcom/didi/common/receiver/NetReceiver$NetState;->DISCONNECTED:Lcom/didi/common/receiver/NetReceiver$NetState;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    sget-object v5, Lcom/didi/common/receiver/NetReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
