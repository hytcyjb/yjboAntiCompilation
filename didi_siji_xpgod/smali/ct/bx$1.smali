.class final Lct/bx$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/os/Handler;

.field private synthetic b:Lct/bx;


# direct methods
.method constructor <init>(Lct/bx;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lct/bx$1;->b:Lct/bx;

    iput-object p2, p0, Lct/bx$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    const/16 v12, 0x1386

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lct/bx$1;->b:Lct/bx;

    iget-object v0, v0, Lct/bx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 118
    iget-object v5, p0, Lct/bx$1;->b:Lct/bx;

    iget-object v6, p0, Lct/bx$1;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iget-object v7, v5, Lct/bx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v1, v0

    :goto_0
    iget-boolean v0, v5, Lct/bx;->g:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/bx$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v1, Lct/bx$a;->b:Lct/bx$a;

    if-ne v1, v0, :cond_1

    const-string v1, "TxRequestSender"

    const-string v4, "run: state=[shutdown]"

    invoke-static {v1, v4}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v1, v5, Lct/bx;->b:Lct/be;

    iget-object v1, v1, Lct/be;->a:Landroid/content/Context;

    invoke-static {v1}, Lct/b$a;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TxRequestSender"

    const-string v4, "run: disconnected! ignore request"

    invoke-static {v1, v4}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1386

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lct/bx$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lct/b$a;->a(Ljava/lang/String;)V

    iget-object v1, v5, Lct/bx;->b:Lct/be;

    invoke-static {v0}, Lct/bx$a;->b(Lct/bx$a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lct/bx$a;->a(Lct/bx$a;)[B

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Lct/be;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lct/b$a;->a(Ljava/lang/String;)V

    iget-wide v8, v5, Lct/bx;->c:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v5, Lct/bx;->c:J

    iget-wide v8, v5, Lct/bx;->d:J

    invoke-static {v0}, Lct/bx$a;->a(Lct/bx$a;)[B

    move-result-object v1

    array-length v1, v1

    int-to-long v10, v1

    add-long/2addr v8, v10

    iput-wide v8, v5, Lct/bx;->d:J

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lct/b$a;->b([B)[B

    move-result-object v1

    iget-wide v8, v5, Lct/bx;->e:J

    if-eqz v1, :cond_5

    array-length v1, v1

    :goto_1
    int-to-long v10, v1

    add-long/2addr v8, v10

    iput-wide v8, v5, Lct/bx;->e:J

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-static {v0}, Lct/bx$a;->d(Lct/bx$a;)I

    move-result v8

    if-ne v2, v8, :cond_6

    invoke-static {v0}, Lct/bx$a;->f(Lct/bx$a;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v4, 0x1387

    iput v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_2
    iget-object v1, v5, Lct/bx;->b:Lct/be;

    iget-object v1, v1, Lct/be;->a:Landroid/content/Context;

    invoke-static {v1}, Lct/b$a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v5, Lct/bx;->h:Lct/bw;

    :cond_4
    move-object v1, v0

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    invoke-static {v0}, Lct/bx$a;->d(Lct/bx$a;)I

    move-result v8

    if-ne v1, v8, :cond_3

    invoke-static {v0}, Lct/bx$a;->f(Lct/bx$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-static {v4}, Lct/bo;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    sget-object v8, Lct/bn;->b:Landroid/location/Location;

    if-eq v4, v8, :cond_b

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v1, v8, v9, v10, v11}, Lct/bo;->a(Landroid/location/Location;DD)V

    move v4, v2

    :goto_3
    if-eqz v4, :cond_7

    iget-object v4, v5, Lct/bx;->b:Lct/be;

    invoke-virtual {v4, v1}, Lct/be;->c(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v1

    :goto_4
    const-string v4, "TxRequestSender"

    const-string v8, "run: thread is interrupted"

    invoke-static {v4, v8, v1}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto/16 :goto_0

    :cond_7
    :try_start_2
    iget-object v1, v5, Lct/bx;->b:Lct/be;

    sget-object v4, Lct/bn;->b:Landroid/location/Location;

    invoke-virtual {v1, v4}, Lct/be;->c(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_5
    const-string v4, "TxRequestSender"

    const-string v8, "run: io error"

    invoke-static {v4, v8, v0}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lct/bx$a;->c(Lct/bx$a;)I

    iget-object v0, v5, Lct/bx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/bx$a;

    invoke-static {v0}, Lct/bx$a;->d(Lct/bx$a;)I

    move-result v0

    invoke-static {v1}, Lct/bx$a;->d(Lct/bx$a;)I

    move-result v8

    if-ne v0, v8, :cond_8

    move v0, v2

    :goto_6
    invoke-static {v1}, Lct/bx$a;->e(Lct/bx$a;)I

    move-result v4

    if-lez v4, :cond_9

    if-nez v0, :cond_9

    const-string v0, "TxRequestSender"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "retryIfNeed: times="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lct/bx$a;->e(Lct/bx$a;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v5, Lct/bx;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_9
    const-wide/16 v8, 0x1f40

    invoke-virtual {v6, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto :goto_4

    :cond_a
    move v0, v3

    goto :goto_6

    :cond_b
    move v4, v3

    goto :goto_3
.end method
