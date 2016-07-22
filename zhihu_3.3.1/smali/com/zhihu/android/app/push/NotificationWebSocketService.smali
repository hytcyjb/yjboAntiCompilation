.class public Lcom/zhihu/android/app/push/NotificationWebSocketService;
.super Landroid/app/Service;
.source "NotificationWebSocketService.java"


# instance fields
.field private a:Lrx/i;

.field private b:Lcom/zhihu/android/app/push/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zhihu/android/app/push/NotificationWebSocketService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    const-string v1, "com.zhihu.android.action.connect_websocket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService;->b:Lcom/zhihu/android/app/push/c;

    invoke-virtual {v0}, Lcom/zhihu/android/app/push/c;->c()Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/zhihu/android/app/push/NotificationWebSocketService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhihu/android/app/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/zhihu/android/app/push/NotificationWebSocketService;->stopSelf()V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService;->b:Lcom/zhihu/android/app/push/c;

    invoke-static {}, Lcom/zhihu/android/app/a/b;->a()Lcom/zhihu/android/app/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/b;->b()Lcom/zhihu/android/app/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/app/a/a;->d()Lcom/zhihu/android/api/model/Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/android/api/model/Token;->getCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/android/app/push/c;->a(Ljava/lang/String;)V

    .line 104
    const-string v0, "doConnect"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService;->a:Lrx/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService;->a:Lrx/i;

    invoke-interface {v0}, Lrx/i;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService;->a:Lrx/i;

    invoke-interface {v0}, Lrx/i;->unsubscribe()V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService;->b:Lcom/zhihu/android/app/push/c;

    invoke-virtual {v0}, Lcom/zhihu/android/app/push/c;->a()Lrx/b;

    move-result-object v0

    .line 109
    invoke-static {}, Lrx/a/b/a;->a()Lrx/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/b;->observeOn(Lrx/e;)Lrx/b;

    move-result-object v0

    new-instance v1, Lcom/zhihu/android/app/push/NotificationWebSocketService$1;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/push/NotificationWebSocketService$1;-><init>(Lcom/zhihu/android/app/push/NotificationWebSocketService;)V

    .line 110
    invoke-virtual {v0, v1}, Lrx/b;->subscribe(Lrx/h;)Lrx/i;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService;->a:Lrx/i;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zhihu/android/app/push/NotificationWebSocketService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const-string v1, "com.zhihu.android.action.disconnect_websocket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 135
    const-string v0, "doDisconnect"

    invoke-static {v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService;->b:Lcom/zhihu/android/app/push/c;

    invoke-virtual {v0}, Lcom/zhihu/android/app/push/c;->b()V

    .line 137
    invoke-virtual {p0}, Lcom/zhihu/android/app/push/NotificationWebSocketService;->stopSelf()V

    .line 138
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    new-instance v0, Lcom/zhihu/android/app/push/c;

    const-string v1, "ws://apilive.zhihu.com/apilive"

    invoke-direct {v0, v1}, Lcom/zhihu/android/app/push/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService;->b:Lcom/zhihu/android/app/push/c;

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 143
    iget-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService;->a:Lrx/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService;->a:Lrx/i;

    invoke-interface {v0}, Lrx/i;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService;->a:Lrx/i;

    invoke-interface {v0}, Lrx/i;->unsubscribe()V

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhihu/android/app/push/NotificationWebSocketService;->a:Lrx/i;

    .line 147
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    if-nez p1, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/zhihu/android/app/push/NotificationWebSocketService;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/zhihu/android/app/push/NotificationWebSocketService;->b()V

    .line 79
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "com.zhihu.android.action.connect_websocket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    invoke-direct {p0}, Lcom/zhihu/android/app/push/NotificationWebSocketService;->b()V

    .line 87
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 84
    :cond_3
    const-string v1, "com.zhihu.android.action.disconnect_websocket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/zhihu/android/app/push/NotificationWebSocketService;->c()V

    goto :goto_1
.end method
