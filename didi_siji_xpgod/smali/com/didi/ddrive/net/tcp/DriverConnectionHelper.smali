.class public Lcom/didi/ddrive/net/tcp/DriverConnectionHelper;
.super Ljava/lang/Object;
.source "DriverConnectionHelper.java"


# static fields
.field public static final CONNECTION_TAG:Ljava/lang/String; = "driver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 5

    .prologue
    .line 14
    invoke-static {}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->getInstance()Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;

    move-result-object v0

    .line 15
    .local v0, cm:Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;
    const-string v3, "driver"

    invoke-virtual {v0, v3}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->newConnection(Ljava/lang/String;)Lcom/didi/ddrive/net/tcp/tcp/Connection;

    move-result-object v1

    .line 16
    .local v1, connection:Lcom/didi/ddrive/net/tcp/tcp/Connection;
    if-nez v1, :cond_0

    .line 27
    :goto_0
    return-void

    .line 20
    :cond_0
    new-instance v3, Lcom/didi/ddrive/net/tcp/DriverConfigProvider;

    const-string v4, "driver"

    invoke-direct {v3, v4}, Lcom/didi/ddrive/net/tcp/DriverConfigProvider;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->registerConfigProvider(Lcom/didi/ddrive/net/tcp/tcp/ConfigProvider;)V

    .line 22
    new-instance v2, Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;

    invoke-direct {v2}, Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;-><init>()V

    .line 23
    .local v2, dispatcher:Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;
    const-string v3, "driver"

    invoke-virtual {v0, v3, v2}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->registerLifeCycleListener(Ljava/lang/String;Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;)V

    .line 24
    const-string v3, "driver"

    invoke-virtual {v0, v3, v2}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->registerMessageReceiver(Ljava/lang/String;Lcom/didi/ddrive/net/tcp/tcp/MessageReceiver;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->doConnect(Lcom/didi/ddrive/net/tcp/tcp/Connection;)V

    goto :goto_0
.end method
