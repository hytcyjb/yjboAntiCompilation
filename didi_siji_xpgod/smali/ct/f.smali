.class public final Lct/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/ArrayList;

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lct/r;

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lct/g;
    .locals 15

    const/4 v14, -0x8

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    new-instance v13, Lct/bc;

    invoke-direct {v13}, Lct/bc;-><init>()V

    invoke-static {}, Lct/aw;->b()V

    invoke-static {}, Lct/aw;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x4

    iput v0, p0, Lct/f;->k:I

    const-string v0, "Network fail before schedule"

    iput-object v0, p0, Lct/f;->l:Ljava/lang/String;

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lct/ae;

    iget-object v1, p0, Lct/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lct/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lct/f;->h:Ljava/util/ArrayList;

    iget-object v4, p0, Lct/f;->e:Ljava/lang/String;

    iget-object v5, p0, Lct/f;->c:Ljava/lang/String;

    iget v6, p0, Lct/f;->d:I

    iget v7, p0, Lct/f;->i:I

    iget v8, p0, Lct/f;->j:I

    iget-object v9, p0, Lct/f;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lct/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    const-string v1, "#halley-proxy.HalleyDispatchService"

    invoke-virtual {v13, v1}, Lct/bc;->b(Ljava/lang/String;)V

    const-string v1, "srvDispatch"

    invoke-virtual {v13, v1}, Lct/bc;->a(Ljava/lang/String;)V

    const-string v1, "request"

    invoke-virtual {v13, v1, v0}, Lct/bc;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lct/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lct/ay;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lct/f;->f:Ljava/lang/String;

    invoke-static {v13}, Lct/i;->a(Lct/bc;)Lct/aq;

    move-result-object v0

    invoke-interface {v0}, Lct/aq;->b()V

    invoke-static {}, Lct/aw;->e()Z

    move-result v1

    iput-boolean v1, p0, Lct/f;->o:Z

    invoke-interface {v0}, Lct/aq;->e()Lct/r;

    move-result-object v1

    iput-object v1, p0, Lct/f;->n:Lct/r;

    invoke-interface {v0}, Lct/aq;->h()I

    move-result v1

    iput v1, p0, Lct/f;->p:I

    invoke-interface {v0}, Lct/aq;->f()I

    move-result v1

    iput v1, p0, Lct/f;->q:I

    invoke-interface {v0}, Lct/aq;->i()I

    move-result v1

    iput v1, p0, Lct/f;->r:I

    invoke-interface {v0}, Lct/aq;->g()I

    move-result v1

    iput v1, p0, Lct/f;->s:I

    invoke-interface {v0}, Lct/aq;->c()I

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v0}, Lct/aq;->a()Lct/bc;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Lct/aq;->a()Lct/bc;

    move-result-object v0

    new-instance v1, Lct/af;

    invoke-direct {v1}, Lct/af;-><init>()V

    :try_start_0
    const-string v2, "response"

    invoke-virtual {v0, v2, v1}, Lct/bc;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/af;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    iput v14, p0, Lct/f;->k:I

    const-string v0, "Response is Null"

    iput-object v0, p0, Lct/f;->l:Ljava/lang/String;

    move-object v0, v10

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ScheduleRequestImpl"

    const-string v2, "wup decode fail."

    invoke-static {v1, v2, v0}, Lct/ax;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput v14, p0, Lct/f;->k:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lct/f;->m:Ljava/lang/String;

    invoke-static {v0}, Lct/ay;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lct/f;->l:Ljava/lang/String;

    move-object v0, v10

    goto/16 :goto_0

    :cond_1
    new-instance v3, Lct/g;

    invoke-direct {v3}, Lct/g;-><init>()V

    invoke-static {}, Lct/aw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, "unkonwn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lct/f;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v6, v0, Lct/af;->a:Ljava/util/Map;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6

    new-instance v7, Lct/s;

    iget-object v1, p0, Lct/f;->g:Ljava/lang/String;

    invoke-direct {v7, v1}, Lct/s;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lct/ag;

    iget-object v9, v2, Lct/ag;->a:Ljava/util/ArrayList;

    iget-object v2, v0, Lct/af;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lct/ag;

    iget-object v2, v2, Lct/ag;->b:Ljava/lang/String;

    new-instance v10, Lct/s$a;

    invoke-direct {v10, v1, v4, v5, v2}, Lct/s$a;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v9, Lct/r;

    invoke-direct {v9}, Lct/r;-><init>()V

    invoke-virtual {v9, v1}, Lct/r;->a(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v1, v10, Lct/s$a;->c:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v9, "ScheduleRequestImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "parse ipPort fail. ipPort:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lct/ax;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v7, v10}, Lct/s;->a(Lct/s$a;)V

    goto :goto_1

    :cond_5
    iput-object v7, v3, Lct/g;->a:Lct/s;

    :cond_6
    :goto_3
    iget-object v1, v0, Lct/af;->c:Lct/ad;

    if-eqz v1, :cond_7

    new-instance v1, Lct/d;

    iget-object v2, v0, Lct/af;->c:Lct/ad;

    invoke-direct {v1, v2}, Lct/d;-><init>(Lct/ad;)V

    iput-object v1, v3, Lct/g;->b:Lct/d;

    :cond_7
    iget-object v1, v0, Lct/af;->b:Lct/ah;

    if-eqz v1, :cond_8

    new-instance v1, Lct/c;

    iget-object v0, v0, Lct/af;->b:Lct/ah;

    invoke-direct {v1, v0}, Lct/c;-><init>(Lct/ah;)V

    iput-object v1, v3, Lct/g;->c:Lct/c;

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v11

    long-to-int v0, v0

    iput v0, p0, Lct/f;->t:I

    move-object v0, v3

    goto/16 :goto_0

    :cond_9
    iput-object v10, v3, Lct/g;->a:Lct/s;

    const/16 v2, -0x9

    iput v2, p0, Lct/f;->k:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "req apn:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lct/f;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",current apn:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lct/f;->l:Ljava/lang/String;

    goto :goto_3

    :cond_a
    invoke-interface {v0}, Lct/aq;->c()I

    move-result v1

    iput v1, p0, Lct/f;->k:I

    invoke-interface {v0}, Lct/aq;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lct/f;->m:Ljava/lang/String;

    move-object v0, v10

    goto/16 :goto_0
.end method
