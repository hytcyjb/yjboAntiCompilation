.class public Lcom/xiaomi/channel/commonutils/misc/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/commonutils/misc/b$a;,
        Lcom/xiaomi/channel/commonutils/misc/b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/channel/commonutils/misc/b$a;

.field private b:Landroid/os/Handler;

.field private volatile c:Z

.field private final d:Z

.field private volatile e:Lcom/xiaomi/channel/commonutils/misc/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/channel/commonutils/misc/b;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/b;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/channel/commonutils/misc/b;->c:Z

    new-instance v0, Lcom/xiaomi/channel/commonutils/misc/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/channel/commonutils/misc/c;-><init>(Lcom/xiaomi/channel/commonutils/misc/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/b;->b:Landroid/os/Handler;

    iput-boolean p1, p0, Lcom/xiaomi/channel/commonutils/misc/b;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/channel/commonutils/misc/b;Lcom/xiaomi/channel/commonutils/misc/b$b;)Lcom/xiaomi/channel/commonutils/misc/b$b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/misc/b;->e:Lcom/xiaomi/channel/commonutils/misc/b$b;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/channel/commonutils/misc/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/channel/commonutils/misc/b;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/xiaomi/channel/commonutils/misc/b;)Lcom/xiaomi/channel/commonutils/misc/b$b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/b;->e:Lcom/xiaomi/channel/commonutils/misc/b$b;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/channel/commonutils/misc/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/b;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaomi/channel/commonutils/misc/b$b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/b;->a:Lcom/xiaomi/channel/commonutils/misc/b$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/channel/commonutils/misc/b$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/commonutils/misc/b$a;-><init>(Lcom/xiaomi/channel/commonutils/misc/b;)V

    iput-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/b;->a:Lcom/xiaomi/channel/commonutils/misc/b$a;

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/b;->a:Lcom/xiaomi/channel/commonutils/misc/b$a;

    iget-boolean v1, p0, Lcom/xiaomi/channel/commonutils/misc/b;->d:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/b$a;->setDaemon(Z)V

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/b;->a:Lcom/xiaomi/channel/commonutils/misc/b$a;

    invoke-virtual {v0}, Lcom/xiaomi/channel/commonutils/misc/b$a;->start()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/b;->a:Lcom/xiaomi/channel/commonutils/misc/b$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/channel/commonutils/misc/b$a;->a(Lcom/xiaomi/channel/commonutils/misc/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/xiaomi/channel/commonutils/misc/b$b;J)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/misc/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/channel/commonutils/misc/d;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/channel/commonutils/misc/d;-><init>(Lcom/xiaomi/channel/commonutils/misc/b;Lcom/xiaomi/channel/commonutils/misc/b$b;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
