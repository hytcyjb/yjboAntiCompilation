.class public final Lct/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Lct/au;


# instance fields
.field private volatile b:Z

.field private c:I

.field private d:Ljava/util/Map;

.field private e:Ljava/net/Socket;

.field private f:I

.field private g:Lct/r;

.field private h:Ljava/io/OutputStream;

.field private i:Ljava/io/InputStream;

.field private j:Ljava/lang/Object;

.field private k:I

.field private l:I

.field private m:J

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lct/au;

    invoke-direct {v0}, Lct/au;-><init>()V

    sput-object v0, Lct/au;->a:Lct/au;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/au;->b:Z

    const/16 v0, 0x4e20

    iput v0, p0, Lct/au;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lct/au;->d:Ljava/util/Map;

    iput v2, p0, Lct/au;->f:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lct/au;->j:Ljava/lang/Object;

    iput v2, p0, Lct/au;->k:I

    iput v2, p0, Lct/au;->l:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lct/au;->m:J

    iput v2, p0, Lct/au;->n:I

    iput v2, p0, Lct/au;->o:I

    return-void
.end method

.method public static declared-synchronized a()Lct/au;
    .locals 2

    const-class v0, Lct/au;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lct/au;->a:Lct/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lct/au;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lct/au;->f:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/av;

    if-eqz v0, :cond_0

    iput p1, v0, Lct/av;->b:I

    if-eqz p2, :cond_0

    iput-object p2, v0, Lct/av;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/av;

    invoke-direct {p0, v0}, Lct/au;->b(Lct/av;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b(Lct/av;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    move v3, v1

    :cond_0
    :goto_0
    if-nez v3, :cond_5

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Lct/av;->j:J

    sub-long/2addr v4, v6

    iget v0, p1, Lct/av;->k:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    if-eqz p1, :cond_2

    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lct/av;->k()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/av;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lct/av;->k()I

    move-result v0

    invoke-virtual {p1}, Lct/av;->k()I

    move-result v4

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    invoke-direct {p0}, Lct/au;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    const-string v0, "WupTaskController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doSendData try send task:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lct/av;->k()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",sk:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lct/av;->l()[B

    move-result-object v0

    iget-object v4, p0, Lct/au;->h:Ljava/io/OutputStream;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    iget-object v4, p0, Lct/au;->h:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lct/au;->m:J

    const-string v4, "WupTaskController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doSendData: sent data len:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "WupTaskController"

    invoke-static {v4, v0}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, -0x5

    iput v4, p1, Lct/av;->b:I

    invoke-static {v0}, Lct/ay;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lct/av;->c:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_0

    :try_start_3
    iget v0, p1, Lct/av;->b:I

    invoke-direct {p0, v0}, Lct/au;->a(I)V

    iget-object v0, p0, Lct/au;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    invoke-direct {p0}, Lct/au;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    if-nez v3, :cond_3

    :try_start_5
    iget v1, p1, Lct/av;->b:I

    invoke-direct {p0, v1}, Lct/au;->a(I)V

    iget-object v1, p0, Lct/au;->h:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    invoke-direct {p0}, Lct/au;->g()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_3
    :try_start_6
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lct/au;->g()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_5
    monitor-exit p0

    return v3
.end method

.method private declared-synchronized c()I
    .locals 15

    const/4 v4, -0x7

    const/4 v3, -0x8

    const/4 v1, 0x0

    const/4 v13, 0x4

    const/4 v2, -0x6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-wide v5

    :try_start_1
    const-string v0, "WupTaskController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doReadData: try read data...sk:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v7, v0, [B

    move v0, v1

    :cond_0
    :goto_0
    if-ge v0, v13, :cond_1

    const-string v8, "WupTaskController"

    const-string v9, "try read packet size: 4 bytes"

    invoke-static {v8, v9}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lct/au;->i:Ljava/io/InputStream;

    rsub-int/lit8 v9, v0, 0x4

    invoke-virtual {v8, v7, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lct/au;->m:J

    sub-long/2addr v9, v11

    long-to-int v9, v9

    iput v9, p0, Lct/au;->n:I

    add-int/2addr v0, v8

    if-ne v0, v13, :cond_0

    :cond_1
    if-ne v0, v13, :cond_4

    invoke-static {v7}, Lct/ay;->a([B)I

    move-result v8

    if-le v8, v13, :cond_2

    const/high16 v9, 0x8

    if-le v8, v9, :cond_5

    :cond_2
    const/4 v0, -0x6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "packSizeFail:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lct/au;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    :goto_1
    monitor-exit p0

    return v0

    :cond_3
    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    goto :goto_0

    :cond_4
    const/4 v1, -0x6

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "readLen fail:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lct/au;->a(ILjava/lang/String;)V

    move v0, v2

    goto :goto_1

    :cond_5
    new-array v9, v8, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-static {v7, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :cond_6
    :goto_2
    if-ge v0, v8, :cond_8

    sub-int v7, v8, v0

    const-string v12, "WupTaskController"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "try read:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, p0, Lct/au;->i:Ljava/io/InputStream;

    invoke-virtual {v12, v9, v0, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const-string v12, "WupTaskController"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "read ret:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v7, :cond_7

    add-int/2addr v0, v7

    goto :goto_2

    :cond_7
    const/4 v12, -0x1

    if-ne v7, v12, :cond_6

    :cond_8
    if-eq v0, v8, :cond_9

    const-string v1, "WupTaskController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "read fail. readLen:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",packSize:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lct/ax;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "readLen != packSize,rspBuff:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lct/ay;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lct/au;->a(ILjava/lang/String;)V

    move v0, v2

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v10

    long-to-int v2, v7

    iput v2, p0, Lct/au;->o:I

    const-string v2, "WupTaskController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doSendReceive: read finish,readLen="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lct/bc;

    invoke-direct {v2}, Lct/bc;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v2, v9}, Lct/bc;->a([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v0, v2, Lct/bc;->a:Lct/bd;

    iget v3, v0, Lct/bd;->b:I

    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/av;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lct/av;->k()I

    move-result v7

    if-ne v7, v3, :cond_a

    iput-object v2, v0, Lct/av;->a:Lct/bc;

    const/4 v2, 0x0

    iput v2, v0, Lct/av;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v5

    long-to-int v2, v5

    iput v2, v0, Lct/av;->h:I

    iget v2, p0, Lct/au;->l:I

    iput v2, v0, Lct/av;->e:I

    iget-object v2, p0, Lct/au;->g:Lct/r;

    iput-object v2, v0, Lct/av;->i:Lct/r;

    iget-object v2, p0, Lct/au;->d:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lct/av;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const/4 v1, -0x8

    :try_start_5
    invoke-static {v0}, Lct/ay;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lct/au;->a(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v3

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "WupTaskController"

    invoke-static {v1, v0}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, -0x7

    invoke-static {v0}, Lct/ay;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lct/au;->a(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v0, v4

    goto/16 :goto_1

    :cond_a
    const/16 v0, -0x32

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lct/au;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/au;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lct/au;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lct/au;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lct/au;->h:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lct/au;->i:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lct/au;->i:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lct/au;->i:Ljava/io/InputStream;

    :cond_0
    :goto_0
    iget-object v0, p0, Lct/au;->h:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lct/au;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lct/au;->h:Ljava/io/OutputStream;

    :cond_1
    :goto_1
    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    :try_start_5
    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lct/au;->e:Ljava/net/Socket;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lct/au;->i:Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lct/au;->i:Ljava/io/InputStream;

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lct/au;->h:Ljava/io/OutputStream;

    goto :goto_1

    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lct/au;->h:Ljava/io/OutputStream;

    throw v0

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    goto :goto_2

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lct/au;->e:Ljava/net/Socket;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private declared-synchronized g()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "WupTaskController"

    const-string v3, "try reConnect..."

    invoke-static {v2, v3}, Lct/ax;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lct/at;

    invoke-direct {v2}, Lct/at;-><init>()V

    invoke-static {}, Lct/b$a;->c()Lct/b$a;

    move-result-object v3

    iget-object v3, v3, Lct/b$a;->b:Lct/d;

    iget v3, v3, Lct/d;->a:I

    iput v3, v2, Lct/at;->c:I

    invoke-static {}, Lct/b$a;->c()Lct/b$a;

    move-result-object v3

    iget-object v3, v3, Lct/b$a;->b:Lct/d;

    iget v3, v3, Lct/d;->d:I

    iput v3, v2, Lct/at;->a:I

    iput v3, v2, Lct/at;->b:I

    const-string v3, "dispatcher.3g.qq.com"

    sget-object v4, Lct/c;->a:[I

    iput-object v3, v2, Lct/at;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lct/at;->a([I)V

    invoke-static {}, Lct/t;->a()Lct/t;

    move-result-object v4

    invoke-virtual {v4, v3}, Lct/t;->a(Ljava/lang/String;)Lct/s$a;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v3, Lct/s$a;->c:Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v4, v2, Lct/at;->d:Ljava/util/ArrayList;

    :cond_0
    invoke-static {}, Lct/b$a;->c()Lct/b$a;

    move-result-object v3

    iget-object v3, v3, Lct/b$a;->a:Lct/c;

    iget-wide v3, v3, Lct/c;->b:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_3

    :cond_1
    :goto_0
    invoke-static {}, Lct/b$a;->c()Lct/b$a;

    move-result-object v1

    iget-object v1, v1, Lct/b$a;->a:Lct/c;

    invoke-virtual {v1}, Lct/c;->c()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v2, Lct/at;->e:Ljava/util/ArrayList;

    iput-boolean v0, v2, Lct/at;->f:Z

    const/4 v0, 0x0

    iput v0, p0, Lct/au;->l:I

    invoke-virtual {v2}, Lct/at;->a()V

    iget v0, v2, Lct/at;->j:I

    iput v0, p0, Lct/au;->k:I

    iget v0, v2, Lct/at;->k:I

    iput v0, p0, Lct/au;->l:I

    iget v0, v2, Lct/at;->i:I

    if-nez v0, :cond_6

    iget-object v0, v2, Lct/at;->h:Ljava/net/Socket;

    iput-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    iget-object v0, v2, Lct/at;->l:Lct/r;

    iput-object v0, p0, Lct/au;->g:Lct/r;

    const-string v0, "WupTaskController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reConnect ok. sk:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",accessIP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lct/au;->g:Lct/r;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    iget v1, p0, Lct/au;->c:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lct/au;->h:Ljava/io/OutputStream;

    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lct/au;->i:Ljava/io/InputStream;

    const-string v0, "WupTaskController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reConnect socket succ. sk:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lct/b$a;->c()Lct/b$a;

    move-result-object v7

    iget-object v7, v7, Lct/b$a;->b:Lct/d;

    iget v7, v7, Lct/d;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v3, v7

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "WupTaskController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reConnect socket fail. sk:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, -0x3

    invoke-static {v0}, Lct/ay;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lct/au;->a(ILjava/lang/String;)V

    invoke-direct {p0}, Lct/au;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_5
    iget-object v0, p0, Lct/au;->e:Ljava/net/Socket;

    if-nez v0, :cond_5

    const/4 v0, -0x3

    const-string v1, "sk is null"

    invoke-direct {p0, v0, v1}, Lct/au;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v0, -0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "close:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lct/au;->e:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lct/au;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lct/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lct/i;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, -0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ret:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lct/at;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lct/au;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const/16 v0, -0x10

    invoke-direct {p0, v0}, Lct/au;->a(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-wide/16 v0, 0xbb8

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_8
    const/4 v0, -0x4

    :try_start_7
    invoke-direct {p0, v0}, Lct/au;->a(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-wide/16 v0, 0x1388

    :try_start_8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Lct/av;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lct/av;->j:J

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lct/av;->k()I

    move-result v1

    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/av;

    if-eqz v0, :cond_1

    const-string v0, "WupTaskController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WupTaskImpl already exists. reqId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x55f0

    iput v0, p1, Lct/av;->k:I

    invoke-direct {p0, p1}, Lct/au;->b(Lct/av;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lct/au;->d()V

    :try_start_0
    iget-object v0, p1, Lct/av;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x16

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lct/au;->k:I

    iput v0, p1, Lct/av;->f:I

    iget v0, p0, Lct/au;->l:I

    iput v0, p1, Lct/av;->e:I

    iget v0, p0, Lct/au;->n:I

    iput v0, p1, Lct/av;->g:I

    iget v0, p0, Lct/au;->o:I

    iput v0, p1, Lct/av;->h:I

    const/4 v0, 0x0

    iput v0, p1, Lct/av;->b:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget v0, p1, Lct/av;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    const/16 v0, -0xe

    iput v0, p1, Lct/av;->b:I

    iget v0, p0, Lct/au;->k:I

    iput v0, p1, Lct/av;->f:I

    iget v0, p0, Lct/au;->l:I

    iput v0, p1, Lct/av;->e:I

    iget v0, p0, Lct/au;->n:I

    iput v0, p1, Lct/av;->g:I

    iget v0, p0, Lct/au;->o:I

    iput v0, p1, Lct/av;->h:I

    :cond_3
    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public final run()V
    .locals 5

    const/4 v4, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0}, Lct/au;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lct/au;->c()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WupTaskController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doReadData ok, now task num:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lct/au;->b:Z

    return-void

    :cond_1
    :try_start_1
    const-string v1, "WupTaskController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doReadData fail, now task num:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lct/au;->a(I)V

    invoke-direct {p0}, Lct/au;->f()V

    invoke-direct {p0}, Lct/au;->g()V

    invoke-direct {p0}, Lct/au;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lct/au;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lct/au;->b:Z

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lct/au;->f()V

    invoke-direct {p0}, Lct/au;->g()V

    invoke-direct {p0}, Lct/au;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lct/au;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v1, p0, Lct/au;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v0, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_4

    const-string v0, "WupTaskController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wait for readerLock... task size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lct/au;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const-string v0, "WupTaskController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readerLock waked... task size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lct/au;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
