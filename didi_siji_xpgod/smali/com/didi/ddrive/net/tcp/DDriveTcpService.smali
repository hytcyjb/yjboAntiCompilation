.class public Lcom/didi/ddrive/net/tcp/DDriveTcpService;
.super Landroid/app/Service;
.source "DDriveTcpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_DRIVER_TCP:Ljava/lang/String; = "com.funcity.taxi.passenger.START_DRIVER_TCP"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mConnectionChangeReceiver:Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/didi/ddrive/net/tcp/DDriveTcpService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/ddrive/net/tcp/DDriveTcpService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    return-void
.end method

.method private initDriverTcp()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/didi/ddrive/net/tcp/DriverConnectionHelper;->init()V

    .line 33
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    new-instance v0, Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;-><init>(Lcom/didi/ddrive/net/tcp/DDriveTcpService;)V

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/DDriveTcpService;->mConnectionChangeReceiver:Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;

    .line 27
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/DDriveTcpService;->mConnectionChangeReceiver:Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/net/tcp/DDriveTcpService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->getInstance()Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->destroy()V

    .line 46
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/DDriveTcpService;->mConnectionChangeReceiver:Lcom/didi/ddrive/net/tcp/DDriveTcpService$ConnectionChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/net/tcp/DDriveTcpService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 48
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 37
    if-eqz p1, :cond_0

    const-string v0, "com.funcity.taxi.passenger.START_DRIVER_TCP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/DDriveTcpService;->initDriverTcp()V

    .line 40
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
