.class public Lcom/xiaomi/stats/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stats/f$a;
    }
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/xiaomi/xmpush/thrift/b;->c:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/b;->a()I

    move-result v0

    sput v0, Lcom/xiaomi/stats/f;->a:I

    return-void
.end method

.method public static a()V
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/xiaomi/stats/f;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/stats/f;->a(II)V

    return-void
.end method

.method public static declared-synchronized a(II)V
    .locals 5

    const-class v1, Lcom/xiaomi/stats/f;

    monitor-enter v1

    const v0, 0xffffff

    if-ge p1, v0, :cond_0

    shl-int/lit8 v0, p0, 0x18

    or-int/2addr v0, p1

    :try_start_0
    sget-object v2, Lcom/xiaomi/stats/f$a;->a:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string v0, "stats key should less than 16777215"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(IIILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/stats/e;->a()Lcom/xiaomi/stats/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaomi/stats/e;->a(IIILjava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(IILjava/lang/String;)V
    .locals 7

    const-class v1, Lcom/xiaomi/stats/f;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    shl-int/lit8 v0, p0, 0x18

    or-int/2addr v0, p1

    sget-object v4, Lcom/xiaomi/stats/f$a;->a:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/xiaomi/stats/e;->a()Lcom/xiaomi/stats/e;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/stats/f$a;->a:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v2, v5

    long-to-int v0, v2

    invoke-virtual {v4, p0, p1, v0, p2}, Lcom/xiaomi/stats/e;->a(IIILjava/lang/String;)V

    sget-object v0, Lcom/xiaomi/stats/f$a;->a:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string v0, "stats key not found"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/w$b;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/stats/a;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stats/a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/w$b;)V

    invoke-virtual {v0}, Lcom/xiaomi/stats/a;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/stats/c;->a(Ljava/lang/Exception;)Lcom/xiaomi/stats/c$a;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/stats/e;->a()Lcom/xiaomi/stats/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stats/e;->e()Lcom/xiaomi/xmpush/thrift/e;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/e;->a(I)Lcom/xiaomi/xmpush/thrift/e;

    iget-object v0, v0, Lcom/xiaomi/stats/c$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/e;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v1, p0}, Lcom/xiaomi/xmpush/thrift/e;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-static {}, Lcom/xiaomi/stats/e;->a()Lcom/xiaomi/stats/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/stats/e;->a(Lcom/xiaomi/xmpush/thrift/e;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Lcom/xiaomi/stats/e;->a()Lcom/xiaomi/stats/e;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/stats/e;->a(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b()V
    .locals 3

    const/4 v0, 0x0

    sget v1, Lcom/xiaomi/stats/f;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/stats/f;->a(IILjava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/stats/c;->c(Ljava/lang/Exception;)Lcom/xiaomi/stats/c$a;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/stats/e;->a()Lcom/xiaomi/stats/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stats/e;->e()Lcom/xiaomi/xmpush/thrift/e;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/stats/c$a;->a:Lcom/xiaomi/xmpush/thrift/b;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/e;->a(I)Lcom/xiaomi/xmpush/thrift/e;

    iget-object v0, v0, Lcom/xiaomi/stats/c$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/e;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-virtual {v1, p0}, Lcom/xiaomi/xmpush/thrift/e;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;

    invoke-static {}, Lcom/xiaomi/stats/e;->a()Lcom/xiaomi/stats/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/stats/e;->a(Lcom/xiaomi/xmpush/thrift/e;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaomi/stats/e;->a()Lcom/xiaomi/stats/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/stats/e;->d()Lcom/xiaomi/xmpush/thrift/f;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/xiaomi/xmpush/thrift/x;->a(Lorg/apache/thrift/b;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/string/a;->a([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stat encoded size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
