.class public final Lct/ar;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/ar$b;,
        Lct/ar$c;,
        Lct/ar$d;,
        Lct/ar$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lct/ar;->a:I

    sput v0, Lct/ar;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;[IIILjava/util/ArrayList;Ljava/util/ArrayList;)Ljava/net/Socket;
    .locals 7

    const/4 v1, 0x0

    const-string v0, "ParallelResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFastSocketByDnsAndDefault start. domain:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ports:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",parallelNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",defaultTryList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lct/ar$b;

    invoke-direct {v2, p0, p1, p2, p3}, Lct/ar$b;-><init>(Ljava/lang/String;[III)V

    invoke-static {}, Lct/as;->a()Lct/as;

    move-result-object v0

    invoke-virtual {v0, v2}, Lct/as;->a(Lct/as$a;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Lct/ar$d;

    invoke-direct {v5, p4, p2}, Lct/ar$d;-><init>(Ljava/util/ArrayList;I)V

    invoke-static {}, Lct/as;->a()Lct/as;

    move-result-object v0

    invoke-virtual {v0, v5}, Lct/as;->a(Lct/as$a;)Z

    move v0, v1

    :cond_0
    iget-boolean v6, v2, Lct/ar$b;->d:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v5, Lct/ar$d;->d:Z

    if-nez v6, :cond_4

    :cond_1
    iget-boolean v6, v2, Lct/ar$b;->d:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v2, Lct/ar$b;->b:Z

    if-eqz v6, :cond_3

    iget-object v6, v2, Lct/ar$b;->a:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    if-nez v0, :cond_2

    iget-object v0, v2, Lct/ar$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    :cond_2
    iget-object v6, v2, Lct/ar$b;->c:Ljava/net/Socket;

    if-eqz v6, :cond_3

    iget-object v6, v2, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v2, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v0, v2, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    long-to-int v1, v1

    sput v1, Lct/ar;->b:I

    :goto_0
    return-object v0

    :cond_3
    iget-boolean v6, v5, Lct/ar$d;->d:Z

    if-eqz v6, :cond_0

    iget-object v6, v5, Lct/ar$d;->a:Ljava/net/Socket;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lct/ar$d;->a:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lct/ar$d;->a:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    sput v1, Lct/ar;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    long-to-int v0, v0

    sput v0, Lct/ar;->b:I

    iget-object v0, v5, Lct/ar$d;->a:Ljava/net/Socket;

    goto :goto_0

    :cond_4
    iget-boolean v0, v2, Lct/ar$b;->d:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v2, Lct/ar$b;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, v2, Lct/ar$b;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lct/ar$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v2, Lct/ar$b;->c:Ljava/net/Socket;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v2, Lct/ar$b;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v2, Lct/ar$b;->c:Ljava/net/Socket;

    goto :goto_0

    :cond_5
    iget-boolean v0, v5, Lct/ar$d;->d:Z

    if-eqz v0, :cond_6

    iget-object v0, v5, Lct/ar$d;->a:Ljava/net/Socket;

    if-eqz v0, :cond_6

    iget-object v0, v5, Lct/ar$d;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v5, Lct/ar$d;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v5, Lct/ar$d;->a:Ljava/net/Socket;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;I)Ljava/net/Socket;
    .locals 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [Lct/ar$a;

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_2

    new-instance v5, Lct/ar$a;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/r;

    invoke-direct {v5, v0, p1}, Lct/ar$a;-><init>(Lct/r;I)V

    aput-object v5, v7, v2

    invoke-static {}, Lct/as;->a()Lct/as;

    move-result-object v0

    aget-object v5, v7, v2

    invoke-virtual {v0, v5}, Lct/as;->a(Lct/as$a;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v2, v3

    move v0, v1

    :goto_2
    if-nez v0, :cond_9

    move v0, v4

    move v5, v1

    :goto_3
    if-ge v5, v6, :cond_3

    aget-object v8, v7, v5

    iget-boolean v8, v8, Lct/ar$a;->d:Z

    if-eqz v8, :cond_5

    aget-object v8, v7, v5

    iget-object v8, v8, Lct/ar$a;->a:Ljava/net/Socket;

    if-eqz v8, :cond_5

    aget-object v8, v7, v5

    iget-object v8, v8, Lct/ar$a;->a:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_5

    aget-object v8, v7, v5

    iget-object v8, v8, Lct/ar$a;->a:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->isClosed()Z

    move-result v8

    if-nez v8, :cond_5

    aget-object v2, v7, v5

    iget-object v2, v2, Lct/ar$a;->a:Ljava/net/Socket;

    :cond_3
    if-eqz v2, :cond_8

    :goto_4
    if-ge v1, v6, :cond_7

    if-eq v1, v5, :cond_4

    aget-object v0, v7, v1

    iput-boolean v4, v0, Lct/ar$a;->b:Z

    aget-object v0, v7, v1

    iget-boolean v0, v0, Lct/ar$a;->d:Z

    if-eqz v0, :cond_4

    aget-object v0, v7, v1

    iget-object v0, v0, Lct/ar$a;->a:Ljava/net/Socket;

    if-eqz v0, :cond_4

    :try_start_0
    aget-object v0, v7, v1

    iget-object v0, v0, Lct/ar$a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_5
    aget-object v0, v7, v1

    iput-object v3, v0, Lct/ar$a;->a:Ljava/net/Socket;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    aget-object v8, v7, v5

    iget-boolean v8, v8, Lct/ar$a;->d:Z

    if-nez v8, :cond_6

    move v0, v1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_6
    const-string v1, "ParallelResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFastSocket end. socket:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-wide/16 v8, 0x32

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_9
    move-object v0, v2

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;[II)Ljava/util/ArrayList;
    .locals 5

    const-string v0, "ParallelResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDnsIpList start. domain:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ports:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lct/as;->a()Lct/as;

    move-result-object v0

    new-instance v1, Lct/ar$c;

    invoke-direct {v1, p0, p1}, Lct/ar$c;-><init>(Ljava/lang/String;[I)V

    invoke-virtual {v0, v1}, Lct/as;->a(Lct/as$a;)Z

    div-int/lit8 v2, p2, 0x32

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    iget-boolean v3, v1, Lct/ar$c;->d:Z

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v0, "ParallelResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDnsIpList end. _dnsIpList:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lct/ar$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lct/ar$c;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const-string v0, "ParallelResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDnsIpList. _dnsIpList size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lct/ar$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, v1, Lct/ar$c;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static a([Ljava/net/InetAddress;[I)Ljava/util/ArrayList;
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v2, p0

    if-lez v2, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p0

    array-length v2, p1

    mul-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_0

    new-instance v4, Lct/r;

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aget v6, p1, v2

    invoke-direct {v4, v5, v6}, Lct/r;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :cond_2
    return-object v0
.end method
