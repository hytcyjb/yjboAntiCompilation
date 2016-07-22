.class public final Lct/w;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Byte;

.field private b:Lct/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[B)Lct/y;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lct/ab;
        }
    .end annotation

    invoke-static {p0, p1}, Lct/w;->b(Ljava/lang/String;[B)Lct/y;

    move-result-object v0

    return-object v0
.end method

.method private a(ILct/aa;)Z
    .locals 4

    iget-object v0, p0, Lct/w;->b:Lct/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lct/w;->b:Lct/a;

    invoke-interface {v0}, Lct/a;->a()Lct/ai;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v1, Lct/ai;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lct/ai;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    iput-object v0, p0, Lct/w;->a:Ljava/lang/Byte;

    iget-object v0, p0, Lct/w;->a:Ljava/lang/Byte;

    if-nez v0, :cond_0

    iget v0, v1, Lct/ai;->b:I

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lct/w;->a:Ljava/lang/Byte;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lct/w;->a:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput v0, p2, Lct/aa;->q:I

    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    iget-object v2, p0, Lct/w;->a:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->floatValue()F

    move-result v2

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;[B)Lct/y;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lct/ab;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-static {p0}, Lct/ay;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    aput v3, v1, v2

    new-instance v2, Lct/y;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lct/y;-><init>(Ljava/lang/String;[I)V

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lct/y;->e:Ljava/lang/String;

    iput-object p1, v2, Lct/y;->i:[B

    iput-object p0, v2, Lct/y;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    new-instance v0, Lct/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url format error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lct/ab;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lct/y;)Lct/z;
    .locals 27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lct/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lct/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lct/o;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lct/o;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lct/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lct/a;
    :try_end_0
    .catch Lct/l; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lct/w;->b:Lct/a;
    :try_end_1
    .catch Lct/l; {:try_start_1 .. :try_end_1} :catch_c

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const-string v4, ""

    sget-boolean v7, Lct/aw;->c:Z

    if-nez v7, :cond_4

    if-eqz v2, :cond_4c

    const-string v7, "HttpAccessClientImpl"

    const-string v8, "got accessScheduler"

    invoke-static {v7, v8}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v7, v0, Lct/y;->a:Ljava/lang/String;

    invoke-interface {v2, v7}, Lct/a;->a(Ljava/lang/String;)Lct/s$a;

    move-result-object v7

    if-eqz v7, :cond_4d

    iget-object v2, v7, Lct/s$a;->c:Ljava/util/List;

    iget-object v4, v7, Lct/s$a;->b:Ljava/lang/String;

    :goto_1
    if-eqz v2, :cond_4c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4c

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p1

    iget v5, v0, Lct/y;->n:I

    if-le v2, v5, :cond_4b

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lct/y;->n:I

    invoke-interface {v3, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move-object v5, v2

    move/from16 v26, v3

    move-object v3, v4

    move/from16 v4, v26

    :goto_3
    move-object/from16 v0, p1

    iget-object v6, v0, Lct/y;->c:[I

    if-eqz v6, :cond_0

    array-length v2, v6

    if-lez v2, :cond_0

    array-length v7, v6

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v7, :cond_1

    aget v8, v6, v2

    new-instance v9, Lct/r;

    move-object/from16 v0, p1

    iget-object v10, v0, Lct/y;->a:Ljava/lang/String;

    invoke-direct {v9, v10, v8}, Lct/r;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_0
    move-exception v2

    move-object/from16 v26, v2

    move-object v2, v3

    move-object/from16 v3, v26

    :goto_5
    invoke-virtual {v3}, Lct/l;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v2, Lct/r;

    move-object/from16 v0, p1

    iget-object v6, v0, Lct/y;->a:Ljava/lang/String;

    const/16 v7, 0x50

    invoke-direct {v2, v6, v7}, Lct/r;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lct/r;

    const-string v7, "HttpAccessClientImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "accessList:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_2
    move-object v6, v3

    move v9, v4

    move-object v10, v5

    :goto_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v19

    const-string v2, "Halley-sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sdk:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lct/o;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lct/y;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lct/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lct/z;

    invoke-direct {v14}, Lct/z;-><init>()V

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    move v13, v11

    :goto_8
    move-object/from16 v0, p1

    iget v2, v0, Lct/y;->n:I

    if-gt v12, v2, :cond_48

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/4 v2, 0x0

    iput v2, v14, Lct/z;->a:I

    const/4 v2, 0x0

    iput v2, v14, Lct/z;->c:I

    const/4 v2, 0x0

    iput v2, v14, Lct/z;->d:I

    const/4 v2, 0x0

    iput-object v2, v14, Lct/z;->e:Lorg/apache/http/HttpResponse;

    const/4 v2, 0x0

    iput-object v2, v14, Lct/z;->b:[B

    const/4 v15, 0x0

    new-instance v4, Lct/aa;

    invoke-direct {v4}, Lct/aa;-><init>()V

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lct/aw;->b()V

    invoke-static {}, Lct/aw;->e()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, -0x4

    iput v2, v14, Lct/z;->a:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->b:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->p:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->m:Ljava/lang/String;

    iput v12, v4, Lct/aa;->p:I

    const-string v2, "Network unable before request"

    iput-object v2, v4, Lct/aa;->o:Ljava/lang/String;

    const/4 v2, -0x4

    iput v2, v4, Lct/aa;->h:I

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->g:Z

    if-eqz v2, :cond_3

    iget v2, v14, Lct/z;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lct/w;->a(ILct/aa;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v8, Ljava/lang/Thread;

    new-instance v2, Lct/ac;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :cond_3
    move-object v2, v14

    :goto_9
    return-object v2

    :cond_4
    new-instance v2, Lct/r;

    move-object/from16 v0, p1

    iget-object v6, v0, Lct/y;->d:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Lct/r;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v4

    move v9, v5

    move-object v10, v3

    goto/16 :goto_7

    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Lct/y;->n:I

    if-ne v12, v2, :cond_6

    const/4 v7, 0x1

    :cond_6
    :try_start_2
    rem-int v2, v12, v19

    if-ge v2, v9, :cond_7

    const/4 v5, 0x1

    const-string v3, "Host"

    move-object/from16 v0, p1

    iget-object v11, v0, Lct/y;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lct/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "x-tx-host"

    move-object/from16 v0, p1

    iget-object v11, v0, Lct/y;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lct/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lct/r;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v17

    move-object/from16 v0, p1

    iget v3, v0, Lct/y;->m:I

    int-to-long v0, v3

    move-wide/from16 v24, v0

    cmp-long v3, v22, v24

    if-lez v3, :cond_8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lct/r;

    :cond_8
    iput-object v2, v4, Lct/aa;->a:Lct/r;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v2, Lct/r;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v11, "http://"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, v2, Lct/r;->b:I

    const/4 v11, -0x1

    if-eq v3, v11, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lct/r;->a:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ":"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lct/r;->b:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a
    move-object/from16 v0, p1

    iget-object v3, v0, Lct/y;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "/"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    :goto_b
    const/4 v3, 0x0

    iput-boolean v3, v4, Lct/aa;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    move-object/from16 v16, v2

    move-object v11, v8

    :goto_c
    :try_start_3
    move-object/from16 v0, v16

    iput-object v0, v4, Lct/aa;->c:Ljava/lang/String;

    const-string v2, "HttpAccessClientImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "retry:"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",url:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v4, Lct/aa;->c:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",isJump:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v8, v4, Lct/aa;->d:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",accessIP:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v4, Lct/aa;->a:Lct/r;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->h:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_13

    iget-boolean v2, v4, Lct/aa;->d:Z

    if-nez v2, :cond_13

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_d
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_d

    :catch_1
    move-exception v2

    move-object v8, v11

    :goto_e
    :try_start_4
    const-string v3, "HttpAccessClientImpl"

    const-string v11, "exception..."

    invoke-static {v3, v11, v2}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lct/aa;->n:Ljava/lang/String;

    invoke-static {v2}, Lct/ay;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lct/aa;->o:Ljava/lang/String;

    invoke-static {}, Lct/aw;->e()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-static {}, Lct/i;->a()Z

    move-result v3

    if-eqz v3, :cond_42

    instance-of v3, v2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v3, :cond_3a

    const/16 v2, -0xa

    :goto_f
    iput v2, v14, Lct/z;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    iput v12, v4, Lct/aa;->p:I

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    :cond_a
    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    long-to-int v2, v2

    iput v2, v14, Lct/z;->f:I

    iget v2, v14, Lct/z;->a:I

    iput v2, v4, Lct/aa;->h:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->p:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->m:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->a:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->b:Ljava/lang/String;

    iget v2, v14, Lct/z;->f:I

    iput v2, v4, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    long-to-int v2, v2

    iput v2, v4, Lct/aa;->j:I

    iput-object v8, v4, Lct/aa;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    if-eqz v2, :cond_45

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    array-length v2, v2

    int-to-long v2, v2

    iput-wide v2, v4, Lct/aa;->k:J

    :goto_11
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lct/y;->a(Lct/aa;)V

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->g:Z

    if-eqz v2, :cond_b

    iget v2, v14, Lct/z;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lct/w;->a(ILct/aa;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v13, Ljava/lang/Thread;

    new-instance v2, Lct/ac;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v13, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    :cond_b
    if-eqz v15, :cond_47

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->f:Z

    if-nez v2, :cond_c

    iget v2, v14, Lct/z;->a:I

    if-eqz v2, :cond_47

    :cond_c
    invoke-virtual {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move v13, v11

    goto/16 :goto_8

    :cond_d
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lct/r;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    :cond_e
    iget v3, v2, Lct/r;->b:I

    const/4 v11, -0x1

    if-eq v3, v11, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "http://"

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v2, Lct/r;->a:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ":"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lct/r;->b:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "http://"

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lct/r;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "/"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    move-result-object v2

    goto/16 :goto_b

    :cond_11
    const/4 v11, 0x0

    const/4 v2, 0x1

    :try_start_6
    iput-boolean v2, v4, Lct/aa;->d:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    move-object/from16 v16, v8

    goto/16 :goto_c

    :cond_12
    :try_start_7
    sget-boolean v2, Lct/aw;->c:Z

    if-eqz v2, :cond_13

    const-string v2, "X-Online-Host"

    move-object/from16 v0, p1

    iget-object v3, v0, Lct/y;->d:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-boolean v2, v4, Lct/aa;->d:Z

    if-eqz v2, :cond_19

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_12
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_12

    :catchall_0
    move-exception v2

    move-object v8, v2

    :goto_13
    iput v12, v4, Lct/aa;->p:I

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    add-int/lit8 v2, v13, 0x1

    const/4 v3, 0x6

    if-le v2, v3, :cond_14

    const/4 v2, -0x5

    iput v2, v14, Lct/z;->a:I

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    long-to-int v2, v2

    iput v2, v14, Lct/z;->f:I

    iget v2, v14, Lct/z;->a:I

    iput v2, v4, Lct/aa;->h:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->p:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->m:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->a:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->b:Ljava/lang/String;

    iget v2, v14, Lct/z;->f:I

    iput v2, v4, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    long-to-int v2, v2

    iput v2, v4, Lct/aa;->j:I

    iput-object v11, v4, Lct/aa;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    if-eqz v2, :cond_46

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    array-length v2, v2

    int-to-long v2, v2

    iput-wide v2, v4, Lct/aa;->k:J

    :goto_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lct/y;->a(Lct/aa;)V

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->g:Z

    if-eqz v2, :cond_15

    iget v2, v14, Lct/z;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lct/w;->a(ILct/aa;)Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v9, Ljava/lang/Thread;

    new-instance v2, Lct/ac;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v9, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    :cond_15
    if-eqz v15, :cond_17

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->f:Z

    if-nez v2, :cond_16

    iget v2, v14, Lct/z;->a:I

    if-eqz v2, :cond_17

    :cond_16
    invoke-virtual {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_17
    throw v8

    :cond_18
    :try_start_8
    sget-boolean v2, Lct/aw;->c:Z

    if-eqz v2, :cond_19

    const-string v2, "X-Online-Host"

    invoke-static/range {v16 .. v16}, Lct/ay;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    move-object/from16 v0, p1

    iget-object v3, v0, Lct/y;->i:[B

    if-eqz v3, :cond_1a

    array-length v2, v3

    if-lez v2, :cond_1a

    move-object v0, v8

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v2, v0

    new-instance v16, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_1a
    move-object/from16 v0, p1

    iget v2, v0, Lct/y;->k:I

    move-object/from16 v0, p1

    iget v3, v0, Lct/y;->l:I

    const-string v16, "HttpAccessClientImpl"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "try createHttpClient... connectTimeout:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",readTimeout:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v22 .. v22}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v2, 0x2000

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v16, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-static/range {v16 .. v16}, Lct/aw;->a(Lorg/apache/http/client/HttpClient;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v2, v22, v2

    long-to-int v2, v2

    iput v2, v14, Lct/z;->c:I

    const-string v2, "HttpAccessClientImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v15, "connectTime:"

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v14, Lct/z;->c:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    iput-object v8, v14, Lct/z;->e:Lorg/apache/http/HttpResponse;

    iget v3, v14, Lct/z;->c:I

    iput v3, v4, Lct/aa;->f:I

    sparse-switch v2, :sswitch_data_0

    iput v2, v14, Lct/z;->a:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_1b
    move-object v8, v11

    :goto_15
    iput v12, v4, Lct/aa;->p:I

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    add-int/lit8 v3, v12, 0x1

    const/4 v2, 0x0

    move v11, v2

    move v12, v3

    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    long-to-int v2, v2

    iput v2, v14, Lct/z;->f:I

    iget v2, v14, Lct/z;->a:I

    iput v2, v4, Lct/aa;->h:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->p:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->m:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->a:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->b:Ljava/lang/String;

    iget v2, v14, Lct/z;->f:I

    iput v2, v4, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    long-to-int v2, v2

    iput v2, v4, Lct/aa;->j:I

    iput-object v8, v4, Lct/aa;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    if-eqz v2, :cond_39

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    array-length v2, v2

    int-to-long v2, v2

    iput-wide v2, v4, Lct/aa;->k:J

    :goto_17
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lct/y;->a(Lct/aa;)V

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->g:Z

    if-eqz v2, :cond_1c

    iget v2, v14, Lct/z;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lct/w;->a(ILct/aa;)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v13, Ljava/lang/Thread;

    new-instance v2, Lct/ac;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v13, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    :cond_1c
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->f:Z

    if-nez v2, :cond_1d

    iget v2, v14, Lct/z;->a:I

    if-eqz v2, :cond_47

    :cond_1d
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move v13, v11

    goto/16 :goto_8

    :sswitch_0
    :try_start_a
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->f:Z

    if-eqz v2, :cond_2f

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Lct/y;->j:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :try_start_b
    new-array v15, v8, [B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    :goto_18
    if-ge v2, v8, :cond_23

    sub-int v24, v8, v2

    move/from16 v0, v24

    invoke-virtual {v3, v15, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_23

    add-int v2, v2, v24

    goto :goto_18

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    :goto_19
    const/4 v2, -0x8

    :try_start_e
    iput v2, v14, Lct/z;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OutOfMemory buffSize:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lct/aa;->o:Ljava/lang/String;

    int-to-long v2, v8

    iput-wide v2, v4, Lct/aa;->l:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    iput v12, v4, Lct/aa;->p:I

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    add-int/lit8 v2, v13, 0x1

    const/4 v3, 0x6

    if-le v2, v3, :cond_1e

    const/4 v2, -0x5

    iput v2, v14, Lct/z;->a:I

    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    long-to-int v2, v2

    iput v2, v14, Lct/z;->f:I

    iget v2, v14, Lct/z;->a:I

    iput v2, v4, Lct/aa;->h:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->p:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->m:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->a:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->b:Ljava/lang/String;

    iget v2, v14, Lct/z;->f:I

    iput v2, v4, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    long-to-int v2, v2

    iput v2, v4, Lct/aa;->j:I

    iput-object v11, v4, Lct/aa;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    if-eqz v2, :cond_22

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    array-length v2, v2

    int-to-long v2, v2

    iput-wide v2, v4, Lct/aa;->k:J

    :goto_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lct/y;->a(Lct/aa;)V

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->g:Z

    if-eqz v2, :cond_1f

    iget v2, v14, Lct/z;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lct/w;->a(ILct/aa;)Z

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v8, Ljava/lang/Thread;

    new-instance v2, Lct/ac;

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :cond_1f
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->f:Z

    if-nez v2, :cond_20

    iget v2, v14, Lct/z;->a:I

    if-eqz v2, :cond_21

    :cond_20
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_21
    move-object v2, v14

    goto/16 :goto_9

    :catch_3
    move-exception v2

    :try_start_f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_19

    :catch_4
    move-exception v2

    move-object/from16 v15, v16

    move-object v8, v11

    goto/16 :goto_e

    :cond_22
    const-wide/16 v2, 0x0

    iput-wide v2, v4, Lct/aa;->k:J

    goto :goto_1a

    :cond_23
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v22, v24, v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v14, Lct/z;->d:I

    iget v0, v14, Lct/z;->d:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v4, Lct/aa;->g:I

    const-string v22, "HttpAccessClientImpl"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "readTime:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v14, Lct/z;->d:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", readLen:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", buffSize:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v0, v2

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v4, Lct/aa;->l:J

    if-lt v2, v8, :cond_28

    const/4 v2, -0x1

    iput v2, v14, Lct/z;->a:I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v15}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v4, Lct/aa;->o:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    :goto_1b
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    :goto_1c
    :try_start_12
    iget v2, v14, Lct/z;->a:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    if-nez v2, :cond_1b

    iput v12, v4, Lct/aa;->p:I

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    add-int/lit8 v2, v13, 0x1

    const/4 v3, 0x6

    if-le v2, v3, :cond_24

    const/4 v2, -0x5

    iput v2, v14, Lct/z;->a:I

    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    long-to-int v2, v2

    iput v2, v14, Lct/z;->f:I

    iget v2, v14, Lct/z;->a:I

    iput v2, v4, Lct/aa;->h:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->p:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->m:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->a:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->b:Ljava/lang/String;

    iget v2, v14, Lct/z;->f:I

    iput v2, v4, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    long-to-int v2, v2

    iput v2, v4, Lct/aa;->j:I

    iput-object v11, v4, Lct/aa;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    if-eqz v2, :cond_30

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    array-length v2, v2

    int-to-long v2, v2

    iput-wide v2, v4, Lct/aa;->k:J

    :goto_1d
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lct/y;->a(Lct/aa;)V

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->g:Z

    if-eqz v2, :cond_25

    iget v2, v14, Lct/z;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lct/w;->a(ILct/aa;)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v8, Ljava/lang/Thread;

    new-instance v2, Lct/ac;

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :cond_25
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->f:Z

    if-nez v2, :cond_26

    iget v2, v14, Lct/z;->a:I

    if-eqz v2, :cond_27

    :cond_26
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_27
    move-object v2, v14

    goto/16 :goto_9

    :cond_28
    if-nez v2, :cond_29

    const/4 v2, -0x2

    :try_start_13
    iput v2, v14, Lct/z;->a:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_1b

    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object/from16 v15, v16

    goto/16 :goto_13

    :cond_29
    :try_start_14
    new-array v0, v2, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v14, Lct/z;->b:[B
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    const/4 v8, 0x0

    :try_start_15
    iget-object v0, v14, Lct/z;->b:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v15, v8, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    iput v2, v14, Lct/z;->a:I

    goto/16 :goto_1b

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    :try_start_16
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    :goto_1e
    const/4 v2, -0x8

    :try_start_17
    iput v2, v14, Lct/z;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OutOfMemory buffSize:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lct/aa;->o:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4

    iput v12, v4, Lct/aa;->p:I

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    add-int/lit8 v2, v13, 0x1

    const/4 v3, 0x6

    if-le v2, v3, :cond_2a

    const/4 v2, -0x5

    iput v2, v14, Lct/z;->a:I

    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    long-to-int v2, v2

    iput v2, v14, Lct/z;->f:I

    iget v2, v14, Lct/z;->a:I

    iput v2, v4, Lct/aa;->h:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->p:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->m:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->a:Ljava/lang/String;

    iput-object v2, v4, Lct/aa;->b:Ljava/lang/String;

    iget v2, v14, Lct/z;->f:I

    iput v2, v4, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v20

    long-to-int v2, v2

    iput v2, v4, Lct/aa;->j:I

    iput-object v11, v4, Lct/aa;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    if-eqz v2, :cond_2e

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    array-length v2, v2

    int-to-long v2, v2

    iput-wide v2, v4, Lct/aa;->k:J

    :goto_1f
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lct/y;->a(Lct/aa;)V

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->g:Z

    if-eqz v2, :cond_2b

    iget v2, v14, Lct/z;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lct/w;->a(ILct/aa;)Z

    move-result v2

    if-eqz v2, :cond_2b

    new-instance v8, Ljava/lang/Thread;

    new-instance v2, Lct/ac;

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :cond_2b
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->f:Z

    if-nez v2, :cond_2c

    iget v2, v14, Lct/z;->a:I

    if-eqz v2, :cond_2d

    :cond_2c
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_2d
    move-object v2, v14

    goto/16 :goto_9

    :catch_6
    move-exception v2

    :try_start_18
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4

    goto/16 :goto_1e

    :cond_2e
    const-wide/16 v2, 0x0

    iput-wide v2, v4, Lct/aa;->k:J

    goto :goto_1f

    :catch_7
    move-exception v2

    :try_start_19
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1c

    :cond_2f
    const-string v2, "HttpAccessClientImpl"

    const-string v3, "not read to buffer, get inputstream..."

    invoke-static {v2, v3}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput v2, v14, Lct/z;->a:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    goto/16 :goto_1c

    :cond_30
    const-wide/16 v2, 0x0

    iput-wide v2, v4, Lct/aa;->k:J

    goto/16 :goto_1d

    :sswitch_1
    :try_start_1a
    const-string v2, "location"

    invoke-interface {v8, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    const-string v2, "HttpAccessClientImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "jumpUrl:"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4

    move-object v2, v11

    :goto_20
    :try_start_1b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8

    move-result v3

    if-eqz v3, :cond_32

    const/4 v2, 0x0

    const/4 v3, -0x6

    :try_start_1c
    iput v3, v14, Lct/z;->a:I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    move-object v8, v2

    goto/16 :goto_15

    :cond_31
    :try_start_1d
    const-string v2, "HttpAccessClientImpl"

    const-string v3, "no locationHeader"

    invoke-static {v2, v3}, Lct/ax;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_4

    move-object v2, v11

    goto :goto_20

    :cond_32
    :try_start_1e
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lct/y;->o:Z

    if-nez v3, :cond_4a

    const-string v3, "HttpAccessClientImpl"

    const-string v8, "no auto redirection, return jump url"

    invoke-static {v3, v8}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    iput v12, v4, Lct/aa;->p:I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    add-int/lit8 v3, v13, 0x1

    const/4 v8, 0x6

    if-le v3, v8, :cond_33

    const/4 v3, -0x5

    iput v3, v14, Lct/z;->a:I

    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v17

    long-to-int v3, v8

    iput v3, v14, Lct/z;->f:I

    iget v3, v14, Lct/z;->a:I

    iput v3, v4, Lct/aa;->h:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lct/y;->p:Ljava/lang/String;

    iput-object v3, v4, Lct/aa;->m:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lct/y;->a:Ljava/lang/String;

    iput-object v3, v4, Lct/aa;->b:Ljava/lang/String;

    iget v3, v14, Lct/z;->f:I

    iput v3, v4, Lct/aa;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v20

    long-to-int v3, v8

    iput v3, v4, Lct/aa;->j:I

    iput-object v2, v4, Lct/aa;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    if-eqz v2, :cond_37

    move-object/from16 v0, p1

    iget-object v2, v0, Lct/y;->i:[B

    array-length v2, v2

    int-to-long v2, v2

    iput-wide v2, v4, Lct/aa;->k:J

    :goto_21
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lct/y;->a(Lct/aa;)V

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->g:Z

    if-eqz v2, :cond_34

    iget v2, v14, Lct/z;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lct/w;->a(ILct/aa;)Z

    move-result v2

    if-eqz v2, :cond_34

    new-instance v8, Ljava/lang/Thread;

    new-instance v2, Lct/ac;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lct/ac;-><init>(Lct/w;Lct/aa;ZLjava/lang/String;Z)V

    invoke-direct {v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :cond_34
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lct/y;->f:Z

    if-nez v2, :cond_35

    iget v2, v14, Lct/z;->a:I

    if-eqz v2, :cond_36

    :cond_35
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_36
    move-object v2, v14

    goto/16 :goto_9

    :cond_37
    const-wide/16 v2, 0x0

    iput-wide v2, v4, Lct/aa;->k:J

    goto :goto_21

    :sswitch_2
    :try_start_1f
    iput v2, v14, Lct/z;->a:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_4

    move-object v8, v11

    goto/16 :goto_15

    :cond_38
    add-int/lit8 v2, v13, 0x1

    const/4 v3, 0x6

    if-le v2, v3, :cond_49

    add-int/lit8 v3, v12, 0x1

    const/4 v2, 0x0

    const/4 v11, -0x5

    iput v11, v14, Lct/z;->a:I

    move v11, v2

    move v12, v3

    goto/16 :goto_16

    :cond_39
    const-wide/16 v2, 0x0

    iput-wide v2, v4, Lct/aa;->k:J

    goto/16 :goto_17

    :cond_3a
    :try_start_20
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_3b

    const/16 v2, -0xb

    goto/16 :goto_f

    :cond_3b
    instance-of v3, v2, Ljava/net/SocketException;

    if-eqz v3, :cond_3c

    const/16 v2, -0xc

    goto/16 :goto_f

    :cond_3c
    instance-of v3, v2, Lorg/apache/http/NoHttpResponseException;

    if-eqz v3, :cond_3d

    const/16 v2, -0xd

    goto/16 :goto_f

    :cond_3d
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_3e

    const/16 v2, -0xe

    goto/16 :goto_f

    :cond_3e
    instance-of v3, v2, Lorg/apache/http/conn/HttpHostConnectException;

    if-eqz v3, :cond_3f

    const/16 v2, -0xf

    goto/16 :goto_f

    :cond_3f
    instance-of v3, v2, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_40

    const/16 v2, -0x10

    goto/16 :goto_f

    :cond_40
    instance-of v2, v2, Lorg/apache/http/MalformedChunkCodingException;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    if-eqz v2, :cond_41

    const/16 v2, -0x9

    goto/16 :goto_f

    :cond_41
    const/4 v2, -0x3

    goto/16 :goto_f

    :cond_42
    const/16 v2, -0x11

    goto/16 :goto_f

    :cond_43
    const/4 v2, -0x4

    goto/16 :goto_f

    :cond_44
    add-int/lit8 v11, v13, 0x1

    const/4 v2, 0x6

    if-le v11, v2, :cond_a

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    const/4 v2, -0x5

    iput v2, v14, Lct/z;->a:I

    goto/16 :goto_10

    :cond_45
    const-wide/16 v2, 0x0

    iput-wide v2, v4, Lct/aa;->k:J

    goto/16 :goto_11

    :cond_46
    const-wide/16 v2, 0x0

    iput-wide v2, v4, Lct/aa;->k:J

    goto/16 :goto_14

    :cond_47
    move v13, v11

    goto/16 :goto_8

    :cond_48
    move-object v2, v14

    goto/16 :goto_9

    :catchall_2
    move-exception v3

    move-object v8, v3

    move-object/from16 v15, v16

    move-object v11, v2

    goto/16 :goto_13

    :catchall_3
    move-exception v3

    move-object v8, v3

    move-object/from16 v15, v16

    move-object v11, v2

    goto/16 :goto_13

    :catchall_4
    move-exception v2

    move-object v11, v8

    move-object v8, v2

    goto/16 :goto_13

    :catch_8
    move-exception v3

    move-object/from16 v15, v16

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_e

    :catch_9
    move-exception v3

    move-object/from16 v15, v16

    move-object v8, v2

    move-object v2, v3

    goto/16 :goto_e

    :catch_a
    move-exception v2

    goto/16 :goto_e

    :catch_b
    move-exception v2

    move-object v8, v11

    goto/16 :goto_e

    :catch_c
    move-exception v3

    goto/16 :goto_5

    :cond_49
    move v11, v2

    goto/16 :goto_16

    :cond_4a
    move-object v8, v2

    goto/16 :goto_15

    :cond_4b
    move-object v2, v3

    goto/16 :goto_2

    :cond_4c
    move-object/from16 v26, v4

    move v4, v5

    move-object v5, v3

    move-object/from16 v3, v26

    goto/16 :goto_3

    :cond_4d
    move-object v2, v6

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x133 -> :sswitch_1
        0x198 -> :sswitch_2
        0x1f6 -> :sswitch_2
        0x1f7 -> :sswitch_2
        0x1f8 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final a(Lct/y;)Lct/z;
    .locals 2

    const-string v0, "HttpAccessClientImpl"

    const-string v1, "doRequest..."

    invoke-static {v0, v1}, Lct/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lct/w;->b(Lct/y;)Lct/z;

    move-result-object v0

    return-object v0
.end method
