.class public Lcom/zhihu/android/app/push/c;
.super Ljava/lang/Object;
.source "RxWebSocket.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/neovisionaries/ws/client/m;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/zhihu/android/app/push/c;->a:Ljava/lang/String;

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WebSocket-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/zhihu/android/app/push/c;->d:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/zhihu/android/app/push/c;)Lcom/neovisionaries/ws/client/m;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zhihu/android/app/push/c;->c:Lcom/neovisionaries/ws/client/m;

    return-object v0
.end method

.method static synthetic a(Lcom/zhihu/android/app/push/c;Lcom/neovisionaries/ws/client/m;)Lcom/neovisionaries/ws/client/m;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zhihu/android/app/push/c;->c:Lcom/neovisionaries/ws/client/m;

    return-object p1
.end method

.method static synthetic b(Lcom/zhihu/android/app/push/c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zhihu/android/app/push/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/zhihu/android/app/push/c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zhihu/android/app/push/c;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/b",
            "<",
            "Lcom/zhihu/android/api/model/NotificationBadge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/zhihu/android/app/push/c$1;

    invoke-direct {v0, p0}, Lcom/zhihu/android/app/push/c$1;-><init>(Lcom/zhihu/android/app/push/c;)V

    invoke-static {v0}, Lrx/b;->create(Lrx/b$f;)Lrx/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/android/app/push/c;->d:Landroid/os/Handler;

    .line 122
    invoke-static {v1}, Lrx/a/b/b;->a(Landroid/os/Handler;)Lrx/a/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/b;->subscribeOn(Lrx/e;)Lrx/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/zhihu/android/app/push/c;->b:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/zhihu/android/app/push/c;->c:Lcom/neovisionaries/ws/client/m;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/zhihu/android/app/push/c;->d:Landroid/os/Handler;

    new-instance v1, Lcom/zhihu/android/app/push/c$2;

    invoke-direct {v1, p0}, Lcom/zhihu/android/app/push/c$2;-><init>(Lcom/zhihu/android/app/push/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zhihu/android/app/push/c;->c:Lcom/neovisionaries/ws/client/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhihu/android/app/push/c;->c:Lcom/neovisionaries/ws/client/m;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/m;->a()Lcom/neovisionaries/ws/client/WebSocketState;

    move-result-object v0

    sget-object v1, Lcom/neovisionaries/ws/client/WebSocketState;->CONNECTING:Lcom/neovisionaries/ws/client/WebSocketState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhihu/android/app/push/c;->c:Lcom/neovisionaries/ws/client/m;

    invoke-virtual {v0}, Lcom/neovisionaries/ws/client/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
