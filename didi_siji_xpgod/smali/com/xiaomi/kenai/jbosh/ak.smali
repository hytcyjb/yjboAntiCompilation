.class final Lcom/xiaomi/kenai/jbosh/ak;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Lcom/xiaomi/kenai/jbosh/b;

.field private final c:Ljava/util/concurrent/locks/Lock;

.field private final d:Ljava/util/concurrent/locks/Condition;

.field private e:Lcom/xiaomi/kenai/jbosh/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/kenai/jbosh/ak;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/kenai/jbosh/ak;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/kenai/jbosh/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/ak;->c:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ak;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/ak;->d:Ljava/util/concurrent/locks/Condition;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request body cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/kenai/jbosh/ak;->b:Lcom/xiaomi/kenai/jbosh/b;

    return-void
.end method


# virtual methods
.method a()Lcom/xiaomi/kenai/jbosh/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ak;->b:Lcom/xiaomi/kenai/jbosh/b;

    return-object v0
.end method

.method a(Lcom/xiaomi/kenai/jbosh/al;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ak;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ak;->e:Lcom/xiaomi/kenai/jbosh/al;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HTTPResponse was already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/ak;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/xiaomi/kenai/jbosh/ak;->e:Lcom/xiaomi/kenai/jbosh/al;

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ak;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ak;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method b()Lcom/xiaomi/kenai/jbosh/al;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ak;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ak;->e:Lcom/xiaomi/kenai/jbosh/al;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ak;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/xiaomi/kenai/jbosh/ak;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Interrupted"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/ak;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ak;->e:Lcom/xiaomi/kenai/jbosh/al;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/ak;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method
