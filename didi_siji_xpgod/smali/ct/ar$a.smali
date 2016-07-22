.class public final Lct/ar$a;
.super Lct/as$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public volatile b:Z

.field private c:Lct/r;

.field private e:I


# direct methods
.method public constructor <init>(Lct/r;I)V
    .locals 1

    invoke-direct {p0}, Lct/as$a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lct/ar$a;->a:Ljava/net/Socket;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/ar$a;->b:Z

    const/16 v0, 0x2710

    iput v0, p0, Lct/ar$a;->e:I

    iput-object p1, p0, Lct/ar$a;->c:Lct/r;

    iput p2, p0, Lct/ar$a;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v5, 0x0

    const-string v0, "ConnectIpRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isDaemon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isDaemon()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v0, "ConnectIpRunnable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ConnectIpRunnable run start. ip:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lct/ar$a;->c:Lct/r;

    iget-object v4, v4, Lct/r;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",port:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lct/ar$a;->c:Lct/r;

    iget v4, v4, Lct/r;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lct/ar$a;->c:Lct/r;

    iget-object v3, v3, Lct/r;->a:Ljava/lang/String;

    iget-object v4, p0, Lct/ar$a;->c:Lct/r;

    iget v4, v4, Lct/r;->b:I

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    :try_start_0
    iget v4, p0, Lct/ar$a;->e:I

    invoke-virtual {v3, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v3, p0, Lct/ar$a;->a:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lct/ar$a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lct/ar$a;->a:Ljava/net/Socket;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lct/ar$a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iput-object v5, p0, Lct/ar$a;->a:Ljava/net/Socket;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/ar$a;->d:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v0, "ConnectIpRunnable"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ConnectIpRunnable run end. ip:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lct/ar$a;->c:Lct/r;

    iget-object v6, v6, Lct/r;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lct/ar$a;->c:Lct/r;

    iget v6, v6, Lct/r;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",_sk:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lct/ar$a;->a:Ljava/net/Socket;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v1, v3, v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v5, p0, Lct/ar$a;->a:Ljava/net/Socket;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
