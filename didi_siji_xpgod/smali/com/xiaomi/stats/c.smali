.class final Lcom/xiaomi/stats/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stats/c$a;
    }
.end annotation


# direct methods
.method static a(Ljava/lang/Exception;)Lcom/xiaomi/stats/c$a;
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/stats/c;->d(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/smack/x;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/smack/x;

    invoke-virtual {v0}, Lcom/xiaomi/smack/x;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/xiaomi/smack/x;

    invoke-virtual {p0}, Lcom/xiaomi/smack/x;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    new-instance v1, Lcom/xiaomi/stats/c$a;

    invoke-direct {v1}, Lcom/xiaomi/stats/c$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_1
    instance-of v2, p0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_3

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->m:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    instance-of v2, p0, Ljava/net/SocketException;

    if-eqz v2, :cond_9

    const-string v2, "ENETUNREACH (Network is unreachable)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->j:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    goto :goto_0

    :cond_4
    const-string v2, "ECONNREFUSED (Connection refused)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->k:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    goto :goto_0

    :cond_5
    const-string v2, "ETIMEDOUT (Connection timed out)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->m:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    goto :goto_0

    :cond_6
    const-string v2, "EACCES (Permission denied)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->i:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    goto :goto_0

    :cond_7
    const-string v2, "EINVAL (Invalid argument)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->n:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    goto :goto_0

    :cond_8
    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->o:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_9
    instance-of v2, p0, Lcom/xiaomi/kenai/jbosh/aa;

    if-eqz v2, :cond_b

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->r:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_a

    instance-of v2, v2, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->q:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    :cond_a
    iget-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    sget-object v3, Lcom/xiaomi/xmpush/thrift/b;->r:Lcom/xiaomi/xmpush/thrift/b;

    if-ne v2, v3, :cond_2

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_b
    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->p:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static b(Ljava/lang/Exception;)Lcom/xiaomi/stats/c$a;
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/stats/c;->d(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/smack/x;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/smack/x;

    invoke-virtual {v0}, Lcom/xiaomi/smack/x;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/xiaomi/smack/x;

    invoke-virtual {p0}, Lcom/xiaomi/smack/x;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    new-instance v1, Lcom/xiaomi/stats/c$a;

    invoke-direct {v1}, Lcom/xiaomi/stats/c$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_1
    instance-of v2, p0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_3

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->t:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    instance-of v2, p0, Ljava/net/SocketException;

    if-eqz v2, :cond_7

    const-string v2, "ECONNRESET (Connection reset by peer)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->u:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    goto :goto_0

    :cond_4
    const-string v2, "ETIMEDOUT (Connection timed out)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->t:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    goto :goto_0

    :cond_5
    const-string v2, "EPIPE (Broken pipe)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->v:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->w:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_7
    instance-of v2, p0, Lcom/xiaomi/kenai/jbosh/aa;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->z:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    const-string v2, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->y:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    :cond_8
    iget-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    sget-object v3, Lcom/xiaomi/xmpush/thrift/b;->z:Lcom/xiaomi/xmpush/thrift/b;

    if-ne v2, v3, :cond_2

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_9
    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->x:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static c(Ljava/lang/Exception;)Lcom/xiaomi/stats/c$a;
    .locals 4

    invoke-static {p0}, Lcom/xiaomi/stats/c;->d(Ljava/lang/Exception;)V

    instance-of v0, p0, Lcom/xiaomi/smack/x;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/smack/x;

    invoke-virtual {v0}, Lcom/xiaomi/smack/x;->a()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/xiaomi/smack/x;

    invoke-virtual {p0}, Lcom/xiaomi/smack/x;->a()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    new-instance v1, Lcom/xiaomi/stats/c$a;

    invoke-direct {v1}, Lcom/xiaomi/stats/c$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_1
    instance-of v2, p0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_3

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->B:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    instance-of v2, p0, Ljava/net/SocketException;

    if-eqz v2, :cond_7

    const-string v2, "ECONNRESET (Connection reset by peer)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->C:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    goto :goto_0

    :cond_4
    const-string v2, "ETIMEDOUT (Connection timed out)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->B:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    goto :goto_0

    :cond_5
    const-string v2, "EPIPE (Broken pipe)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->D:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->E:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_7
    instance-of v2, p0, Lcom/xiaomi/kenai/jbosh/aa;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->z:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    const-string v2, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->G:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    :cond_8
    iget-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    sget-object v3, Lcom/xiaomi/xmpush/thrift/b;->z:Lcom/xiaomi/xmpush/thrift/b;

    if-ne v2, v3, :cond_2

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_9
    sget-object v2, Lcom/xiaomi/xmpush/thrift/b;->x:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v2, v1, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    iput-object v0, v1, Lcom/xiaomi/stats/c$a;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private static d(Ljava/lang/Exception;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
