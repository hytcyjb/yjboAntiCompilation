.class public Lcom/xiaomi/smack/b;
.super Lcom/xiaomi/smack/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/smack/b$b;,
        Lcom/xiaomi/smack/b$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Object;

.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field private o:Lcom/xiaomi/kenai/jbosh/s;

.field private final p:Lcom/xiaomi/smack/a;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/util/concurrent/ExecutorService;

.field private w:Ljava/io/PipedWriter;

.field private x:Ljava/lang/Thread;

.field private y:Lcom/xiaomi/smack/i;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/a;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/smack/j;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/l;)V

    iput-boolean v1, p0, Lcom/xiaomi/smack/b;->q:Z

    iput-boolean v1, p0, Lcom/xiaomi/smack/b;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/b;->s:Z

    iput-boolean v1, p0, Lcom/xiaomi/smack/b;->t:Z

    iput-boolean v1, p0, Lcom/xiaomi/smack/b;->u:Z

    iput-object v2, p0, Lcom/xiaomi/smack/b;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaomi/smack/b;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaomi/smack/b;->z:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/b;->A:Ljava/lang/Object;

    iput-object p2, p0, Lcom/xiaomi/smack/b;->p:Lcom/xiaomi/smack/a;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/smack/b;)Ljava/io/PipedWriter;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/b;->w:Ljava/io/PipedWriter;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/smack/b;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/b;->x:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/smack/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smack/b;->u:Z

    return v0
.end method

.method static synthetic d(Lcom/xiaomi/smack/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/b;->A:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/smack/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMACK-BOSH: Already connected to a server."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-boolean v2, p0, Lcom/xiaomi/smack/b;->u:Z

    iput-object v6, p0, Lcom/xiaomi/smack/b;->b:Ljava/lang/String;

    iput-object v6, p0, Lcom/xiaomi/smack/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3, v7}, Lcom/xiaomi/smack/b;->a(IILjava/lang/Exception;)V

    iget-object v2, p0, Lcom/xiaomi/smack/b;->p:Lcom/xiaomi/smack/a;

    invoke-virtual {v2}, Lcom/xiaomi/smack/a;->c()Ljava/net/URI;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMACK-BOSH: connecting using uri:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/smack/b;->p:Lcom/xiaomi/smack/a;

    invoke-virtual {v3}, Lcom/xiaomi/smack/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/kenai/jbosh/v$a;->a(Ljava/net/URI;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/v$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/kenai/jbosh/v$a;->a()Lcom/xiaomi/kenai/jbosh/v;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/smack/b;->n:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Lcom/xiaomi/push/service/XMPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/kenai/jbosh/s;->a(Lcom/xiaomi/kenai/jbosh/v;Landroid/content/Context;)Lcom/xiaomi/kenai/jbosh/s;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/smack/b;->o:Lcom/xiaomi/kenai/jbosh/s;

    new-instance v2, Lcom/xiaomi/smack/c;

    invoke-direct {v2, p0}, Lcom/xiaomi/smack/c;-><init>(Lcom/xiaomi/smack/b;)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/smack/b;->v:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/xiaomi/smack/b;->o:Lcom/xiaomi/kenai/jbosh/s;

    new-instance v3, Lcom/xiaomi/smack/b$a;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Lcom/xiaomi/smack/b$a;-><init>(Lcom/xiaomi/smack/b;Lcom/xiaomi/smack/c;)V

    invoke-virtual {v2, v3}, Lcom/xiaomi/kenai/jbosh/s;->a(Lcom/xiaomi/kenai/jbosh/x;)V

    new-instance v2, Lcom/xiaomi/smack/i;

    invoke-direct {v2, p0}, Lcom/xiaomi/smack/i;-><init>(Lcom/xiaomi/smack/b;)V

    iput-object v2, p0, Lcom/xiaomi/smack/b;->y:Lcom/xiaomi/smack/i;

    iget-object v2, p0, Lcom/xiaomi/smack/b;->o:Lcom/xiaomi/kenai/jbosh/s;

    iget-object v3, p0, Lcom/xiaomi/smack/b;->y:Lcom/xiaomi/smack/i;

    invoke-virtual {v2, v3}, Lcom/xiaomi/kenai/jbosh/s;->a(Lcom/xiaomi/kenai/jbosh/z;)V

    iget-object v2, p0, Lcom/xiaomi/smack/b;->p:Lcom/xiaomi/smack/a;

    invoke-virtual {v2}, Lcom/xiaomi/smack/a;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/smack/b;->b()V

    iget-boolean v2, p0, Lcom/xiaomi/smack/b;->s:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/smack/b;->h:Lcom/xiaomi/smack/debugger/a;

    invoke-interface {v2}, Lcom/xiaomi/smack/debugger/a;->c()Lcom/xiaomi/smack/o;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/smack/b;->h:Lcom/xiaomi/smack/debugger/a;

    invoke-interface {v2}, Lcom/xiaomi/smack/debugger/a;->c()Lcom/xiaomi/smack/o;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/smack/b;->a(Lcom/xiaomi/smack/o;Lcom/xiaomi/smack/filter/a;)V

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/smack/b;->h:Lcom/xiaomi/smack/debugger/a;

    invoke-interface {v2}, Lcom/xiaomi/smack/debugger/a;->d()Lcom/xiaomi/smack/o;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/smack/b;->h:Lcom/xiaomi/smack/debugger/a;

    invoke-interface {v2}, Lcom/xiaomi/smack/debugger/a;->d()Lcom/xiaomi/smack/o;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/xiaomi/smack/b;->b(Lcom/xiaomi/smack/o;Lcom/xiaomi/smack/filter/a;)V

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/smack/b;->o:Lcom/xiaomi/kenai/jbosh/s;

    invoke-static {}, Lcom/xiaomi/kenai/jbosh/ai;->d()Lcom/xiaomi/kenai/jbosh/ai$a;

    move-result-object v3

    const-string v7, "xm"

    const-string v8, "version"

    invoke-static {v7, v8}, Lcom/xiaomi/kenai/jbosh/ag;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ag;

    move-result-object v7

    const-string v8, "102"

    invoke-virtual {v3, v7, v8}, Lcom/xiaomi/kenai/jbosh/ai$a;->a(Lcom/xiaomi/kenai/jbosh/ag;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ai$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/kenai/jbosh/ai$a;->a()Lcom/xiaomi/kenai/jbosh/ai;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/kenai/jbosh/s;->a(Lcom/xiaomi/kenai/jbosh/ai;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/xiaomi/smack/b;->A:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/smack/b;->j()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    :try_start_2
    iget-object v3, p0, Lcom/xiaomi/smack/b;->A:Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/smack/s;->b()I

    move-result v7

    mul-int/lit8 v7, v7, 0x6

    int-to-long v7, v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0}, Lcom/xiaomi/smack/b;->j()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/b;->u:Z

    iget-object v0, p0, Lcom/xiaomi/smack/b;->p:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/smack/x;

    const-string v7, "BOSH connection timeout"

    invoke-direct {v1, v7}, Lcom/xiaomi/smack/x;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/stats/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout reached for the connection to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/b;->p:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/smack/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/xiaomi/smack/b;->p:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->a()Lcom/xiaomi/network/Fallback;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/b;->p:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/network/Fallback;->a(Ljava/lang/String;JJLjava/lang/Exception;)V

    new-instance v0, Lcom/xiaomi/smack/x;

    new-instance v1, Lcom/xiaomi/smack/packet/h;

    sget-object v2, Lcom/xiaomi/smack/packet/h$a;->r:Lcom/xiaomi/smack/packet/h$a;

    invoke-direct {v1, v2, v7}, Lcom/xiaomi/smack/packet/h;-><init>(Lcom/xiaomi/smack/packet/h$a;Ljava/lang/String;)V

    invoke-direct {v0, v7, v1}, Lcom/xiaomi/smack/x;-><init>(Ljava/lang/String;Lcom/xiaomi/smack/packet/h;)V

    throw v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/smack/b;->p:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/stats/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v1, Lcom/xiaomi/smack/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/smack/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/smack/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/smack/b;->p:Lcom/xiaomi/smack/a;

    invoke-virtual {v0}, Lcom/xiaomi/smack/a;->a()Lcom/xiaomi/network/Fallback;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/b;->p:Lcom/xiaomi/smack/a;

    invoke-virtual {v1}, Lcom/xiaomi/smack/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/network/Fallback;->a(Ljava/lang/String;JJ)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method

.method protected a(Lcom/xiaomi/kenai/jbosh/ai;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/smack/b;->j()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/kenai/jbosh/aa;

    const-string v1, "Not connected to a server!"

    invoke-direct {v0, v1}, Lcom/xiaomi/kenai/jbosh/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Body mustn\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/kenai/jbosh/ai;->e()Lcom/xiaomi/kenai/jbosh/ai$a;

    move-result-object v0

    const-string v1, "xm"

    const-string v2, "sid"

    invoke-static {v1, v2}, Lcom/xiaomi/kenai/jbosh/ag;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/kenai/jbosh/ai$a;->a(Lcom/xiaomi/kenai/jbosh/ag;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ai$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/ai$a;->a()Lcom/xiaomi/kenai/jbosh/ai;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/smack/b;->o:Lcom/xiaomi/kenai/jbosh/s;

    invoke-virtual {v0, p1}, Lcom/xiaomi/kenai/jbosh/s;->a(Lcom/xiaomi/kenai/jbosh/ai;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/xiaomi/push/service/w$b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/smack/t;

    invoke-direct {v0}, Lcom/xiaomi/smack/t;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/smack/b;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p0}, Lcom/xiaomi/smack/t;->a(Lcom/xiaomi/push/service/w$b;Ljava/lang/String;Lcom/xiaomi/smack/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/xiaomi/smack/packet/d;)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/smack/b;->u:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/kenai/jbosh/ai;->d()Lcom/xiaomi/kenai/jbosh/ai$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/smack/packet/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/kenai/jbosh/ai$a;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ai$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/ai$a;->a()Lcom/xiaomi/kenai/jbosh/ai;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/smack/b;->a(Lcom/xiaomi/kenai/jbosh/ai;)V
    :try_end_0
    .catch Lcom/xiaomi/kenai/jbosh/aa; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/smack/b;->c(Lcom/xiaomi/smack/packet/d;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/smack/x;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/x;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/xiaomi/smack/x;

    const-string v1, "try send packet while the connection is done."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/x;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/xiaomi/smack/packet/f;ILjava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/smack/b;->o()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/smack/b;->b(Lcom/xiaomi/smack/packet/f;ILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/xiaomi/smack/b;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/xiaomi/smack/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/smack/b;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/b;->s:Z

    goto :goto_0
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smack/b;->n:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/smack/h;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1}, Lcom/xiaomi/smack/h;-><init>(Lcom/xiaomi/smack/b;ILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$e;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/smack/packet/f;

    sget-object v1, Lcom/xiaomi/smack/packet/f$b;->b:Lcom/xiaomi/smack/packet/f$b;

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/f;-><init>(Lcom/xiaomi/smack/packet/f$b;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/smack/packet/f;->l(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/smack/packet/f;->n(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/smack/b;->a(Lcom/xiaomi/smack/packet/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a([Lcom/xiaomi/smack/packet/d;)V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/xiaomi/smack/b;->u:Z

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v4}, Lcom/xiaomi/smack/packet/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/kenai/jbosh/ai;->d()Lcom/xiaomi/kenai/jbosh/ai$a;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/kenai/jbosh/ai$a;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ai$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/kenai/jbosh/ai$a;->a()Lcom/xiaomi/kenai/jbosh/ai;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/smack/b;->a(Lcom/xiaomi/kenai/jbosh/ai;)V
    :try_end_0
    .catch Lcom/xiaomi/kenai/jbosh/aa; {:try_start_0 .. :try_end_0} :catch_0

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/xiaomi/smack/b;->c(Lcom/xiaomi/smack/packet/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/smack/x;

    invoke-direct {v1, v0}, Lcom/xiaomi/smack/x;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/xiaomi/smack/x;

    const-string v1, "try send packet while connection is done."

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/x;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/b;->y:Lcom/xiaomi/smack/i;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 2

    new-instance v0, Lcom/xiaomi/smack/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/smack/d;-><init>(Lcom/xiaomi/smack/b;)V

    iput-object v0, p0, Lcom/xiaomi/smack/b;->j:Ljava/io/Writer;

    :try_start_0
    new-instance v0, Ljava/io/PipedWriter;

    invoke-direct {v0}, Ljava/io/PipedWriter;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/smack/b;->w:Ljava/io/PipedWriter;

    new-instance v0, Ljava/io/PipedReader;

    iget-object v1, p0, Lcom/xiaomi/smack/b;->w:Ljava/io/PipedWriter;

    invoke-direct {v0, v1}, Ljava/io/PipedReader;-><init>(Ljava/io/PipedWriter;)V

    iput-object v0, p0, Lcom/xiaomi/smack/b;->i:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lcom/xiaomi/smack/j;->b()V

    iget-object v0, p0, Lcom/xiaomi/smack/b;->o:Lcom/xiaomi/kenai/jbosh/s;

    new-instance v1, Lcom/xiaomi/smack/e;

    invoke-direct {v1, p0}, Lcom/xiaomi/smack/e;-><init>(Lcom/xiaomi/smack/b;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/kenai/jbosh/s;->a(Lcom/xiaomi/kenai/jbosh/z;)V

    iget-object v0, p0, Lcom/xiaomi/smack/b;->o:Lcom/xiaomi/kenai/jbosh/s;

    new-instance v1, Lcom/xiaomi/smack/f;

    invoke-direct {v1, p0}, Lcom/xiaomi/smack/f;-><init>(Lcom/xiaomi/smack/b;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/kenai/jbosh/s;->a(Lcom/xiaomi/kenai/jbosh/y;)V

    new-instance v0, Lcom/xiaomi/smack/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/smack/g;-><init>(Lcom/xiaomi/smack/b;)V

    iput-object v0, p0, Lcom/xiaomi/smack/b;->x:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/xiaomi/smack/b;->x:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/xiaomi/smack/b;->x:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected b(Lcom/xiaomi/smack/packet/d;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/b;->v:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/smack/b$b;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/smack/b$b;-><init>(Lcom/xiaomi/smack/b;Lcom/xiaomi/smack/packet/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method protected b(Lcom/xiaomi/smack/packet/f;ILjava/lang/Exception;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/xiaomi/smack/b;->a:Ljava/lang/String;

    iput-object v4, p0, Lcom/xiaomi/smack/b;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/b;->u:Z

    iput-boolean v1, p0, Lcom/xiaomi/smack/b;->q:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2, p3}, Lcom/xiaomi/smack/b;->a(IILjava/lang/Exception;)V

    iput-boolean v1, p0, Lcom/xiaomi/smack/b;->s:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/b;->k:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/b;->o:Lcom/xiaomi/kenai/jbosh/s;

    invoke-static {}, Lcom/xiaomi/kenai/jbosh/ai;->d()Lcom/xiaomi/kenai/jbosh/ai$a;

    move-result-object v1

    const-string v2, "xmpp"

    const-string v3, "xm"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/kenai/jbosh/ai$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/ai$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/kenai/jbosh/ai$a;->a()Lcom/xiaomi/kenai/jbosh/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/kenai/jbosh/s;->b(Lcom/xiaomi/kenai/jbosh/ai;)V

    const-wide/16 v0, 0x96

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/smack/b;->o:Lcom/xiaomi/kenai/jbosh/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/b;->o:Lcom/xiaomi/kenai/jbosh/s;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/s;->a()V

    iput-object v4, p0, Lcom/xiaomi/smack/b;->o:Lcom/xiaomi/kenai/jbosh/s;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/b;->w:Ljava/io/PipedWriter;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/smack/b;->w:Ljava/io/PipedWriter;

    invoke-virtual {v0}, Ljava/io/PipedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    iput-object v4, p0, Lcom/xiaomi/smack/b;->i:Ljava/io/Reader;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/b;->i:Ljava/io/Reader;

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/smack/b;->i:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput-object v4, p0, Lcom/xiaomi/smack/b;->i:Ljava/io/Reader;

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/smack/b;->j:Ljava/io/Writer;

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/smack/b;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    iput-object v4, p0, Lcom/xiaomi/smack/b;->j:Ljava/io/Writer;

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/smack/b;->v:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/smack/b;->v:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/smack/b;->h()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/m;

    :try_start_4
    invoke-interface {v0, p2, p3}, Lcom/xiaomi/smack/m;->a(ILjava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v2, "SMACK-BOSH: Error while shut down connection"

    invoke-static {v2, v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    iput-object v4, p0, Lcom/xiaomi/smack/b;->x:Ljava/lang/Thread;

    return-void

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/smack/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMACK-BOSH: scheduling empty request for ping"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/smack/b;->o:Lcom/xiaomi/kenai/jbosh/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/b;->o:Lcom/xiaomi/kenai/jbosh/s;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/s;->b()V

    :cond_0
    return-void
.end method
