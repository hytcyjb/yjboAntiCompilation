.class Lcom/ddtaxi/a/a/gq;
.super Ljava/lang/Object;


# static fields
.field private static synthetic a:[I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/ddtaxi/a/a/gk;)I
    .locals 7

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gk;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dl;->g()Lcom/ddtaxi/a/a/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/bw;->h()Z

    move-result v3

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gk;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gk;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/im;->e()I

    move-result v0

    add-int/2addr v0, v2

    :goto_1
    return v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/dt;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->u()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v5

    sget-object v6, Lcom/ddtaxi/a/a/dv;->k:Lcom/ddtaxi/a/a/dv;

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v1

    check-cast v0, Lcom/ddtaxi/a/a/gk;

    invoke-static {v1, v0}, Lcom/ddtaxi/a/a/r;->h(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lcom/ddtaxi/a/a/en;->c(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Lcom/ddtaxi/a/a/dt;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static a(Lcom/ddtaxi/a/a/gk;Lcom/ddtaxi/a/a/r;Z)V
    .locals 6

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gk;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->g()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bw;->h()Z

    move-result v2

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gk;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz p2, :cond_1

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gk;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gk;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    if-eqz v2, :cond_5

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->b(Lcom/ddtaxi/a/a/r;)V

    :goto_2
    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->l()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p0, v0}, Lcom/ddtaxi/a/a/gk;->b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/dt;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->u()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v4

    sget-object v5, Lcom/ddtaxi/a/a/dv;->k:Lcom/ddtaxi/a/a/dv;

    if-ne v4, v5, :cond_4

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v1

    check-cast v0, Lcom/ddtaxi/a/a/gk;

    invoke-virtual {p1, v1, v0}, Lcom/ddtaxi/a/a/r;->d(ILcom/ddtaxi/a/a/gm;)V

    goto :goto_1

    :cond_4
    invoke-static {v1, v0, p1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;Lcom/ddtaxi/a/a/r;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    goto :goto_2
.end method

.method private static a(Lcom/ddtaxi/a/a/gp;Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gp;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gp;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Lcom/ddtaxi/a/a/gp;->a_(Lcom/ddtaxi/a/a/dt;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/dt;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v2

    sget-object v3, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gp;

    add-int/lit8 v3, v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/ddtaxi/a/a/gq;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dt;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/ddtaxi/a/a/gq;->a(Lcom/ddtaxi/a/a/gp;Ljava/lang/String;Ljava/util/List;)V

    move v2, v3

    goto :goto_2

    :cond_4
    invoke-interface {p0, v1}, Lcom/ddtaxi/a/a/gp;->a_(Lcom/ddtaxi/a/a/dt;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/gp;

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Lcom/ddtaxi/a/a/gq;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dt;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/ddtaxi/a/a/gq;->a(Lcom/ddtaxi/a/a/gp;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1
.end method

.method private static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/ek;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/gt;)V
    .locals 3

    iget-object v0, p1, Lcom/ddtaxi/a/a/ek;->a:Lcom/ddtaxi/a/a/dt;

    invoke-interface {p3, v0}, Lcom/ddtaxi/a/a/gt;->b(Lcom/ddtaxi/a/a/dt;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/el;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/ddtaxi/a/a/ek;->b:Lcom/ddtaxi/a/a/gk;

    invoke-interface {p3, p0, p2, v0, v1}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gt;

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/ddtaxi/a/a/ga;

    iget-object v2, p1, Lcom/ddtaxi/a/a/ek;->b:Lcom/ddtaxi/a/a/gk;

    invoke-direct {v1, v2, p2, p0}, Lcom/ddtaxi/a/a/ga;-><init>(Lcom/ddtaxi/a/a/gm;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/k;)V

    invoke-interface {p3, v0, v1}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gt;

    goto :goto_0
.end method

.method private static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/ek;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/gt;)V
    .locals 2

    iget-object v0, p1, Lcom/ddtaxi/a/a/ek;->a:Lcom/ddtaxi/a/a/dt;

    iget-object v1, p1, Lcom/ddtaxi/a/a/ek;->b:Lcom/ddtaxi/a/a/gk;

    invoke-interface {p3, p0, p2, v0, v1}, Lcom/ddtaxi/a/a/gt;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gt;

    return-void
.end method

.method private static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/gt;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    move-object v2, v1

    move v3, v0

    move-object v0, v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    sget v1, Lcom/ddtaxi/a/a/iv;->m:I

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/o;->a(I)V

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v0, :cond_6

    invoke-static {v2, v0, p2, p4}, Lcom/ddtaxi/a/a/gq;->a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/ek;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/gt;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    sget v5, Lcom/ddtaxi/a/a/iv;->n:I

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->q()I

    move-result v3

    if-eqz v3, :cond_0

    instance-of v4, p2, Lcom/ddtaxi/a/a/ei;

    if-eqz v4, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/ddtaxi/a/a/ei;

    invoke-interface {p4, v0, p3, v3}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/dl;I)Lcom/ddtaxi/a/a/ek;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget v5, Lcom/ddtaxi/a/a/iv;->o:I

    if-ne v4, v5, :cond_5

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ddtaxi/a/a/el;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0, v0, p2, p4}, Lcom/ddtaxi/a/a/gq;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/ek;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/gt;)V

    move-object v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v4}, Lcom/ddtaxi/a/a/o;->b(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ddtaxi/a/a/io;->a()Lcom/ddtaxi/a/a/ip;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ddtaxi/a/a/ip;->a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/ip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ip;->a()Lcom/ddtaxi/a/a/io;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/in;->a(ILcom/ddtaxi/a/a/io;)Lcom/ddtaxi/a/a/in;

    goto :goto_2
.end method

.method static a(Lcom/ddtaxi/a/a/gp;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gp;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gp;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v0}, Lcom/ddtaxi/a/a/gp;->a_(Lcom/ddtaxi/a/a/dt;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v4

    sget-object v5, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gk;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gk;->z()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gk;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gk;->z()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0
.end method

.method static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/gt;I)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3}, Lcom/ddtaxi/a/a/dl;->g()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bw;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/ddtaxi/a/a/iv;->l:I

    if-ne p5, v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/gq;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/gt;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p5}, Lcom/ddtaxi/a/a/iv;->a(I)I

    move-result v5

    invoke-static {p5}, Lcom/ddtaxi/a/a/iv;->b(I)I

    move-result v6

    invoke-virtual {p3, v6}, Lcom/ddtaxi/a/a/dl;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/ddtaxi/a/a/ei;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/ddtaxi/a/a/ei;

    invoke-interface {p4, v0, p3, v6}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/dl;I)Lcom/ddtaxi/a/a/ek;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v4, v3

    :goto_1
    if-nez v4, :cond_5

    move v0, v2

    move v2, v1

    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {p1, p5, p0}, Lcom/ddtaxi/a/a/in;->a(ILcom/ddtaxi/a/a/o;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/ddtaxi/a/a/ek;->a:Lcom/ddtaxi/a/a/dt;

    iget-object v0, v0, Lcom/ddtaxi/a/a/ek;->b:Lcom/ddtaxi/a/a/gk;

    if-nez v0, :cond_10

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v4

    sget-object v7, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v4, v7, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message-typed extension lacked default instance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/dt;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v4, v3

    goto :goto_1

    :cond_3
    invoke-interface {p4}, Lcom/ddtaxi/a/a/gt;->b()Lcom/ddtaxi/a/a/gu;

    move-result-object v0

    sget-object v4, Lcom/ddtaxi/a/a/gu;->a:Lcom/ddtaxi/a/a/gu;

    if-ne v0, v4, :cond_4

    invoke-virtual {p3, v6}, Lcom/ddtaxi/a/a/dl;->b(I)Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_4
    move-object v4, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/iw;Z)I

    move-result v0

    if-ne v5, v0, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/iw;Z)I

    move-result v0

    if-ne v5, v0, :cond_7

    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v2

    move v2, v1

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/o;->f(I)I

    move-result v0

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v2

    sget-object v3, Lcom/ddtaxi/a/a/iw;->n:Lcom/ddtaxi/a/a/iw;

    if-ne v2, v3, :cond_c

    :goto_3
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->C()I

    move-result v2

    if-gtz v2, :cond_9

    :goto_4
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/o;->g(I)V

    :goto_5
    move v0, v1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->r()I

    move-result v2

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->z()Lcom/ddtaxi/a/a/dr;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ddtaxi/a/a/dr;->a(I)Lcom/ddtaxi/a/a/ds;

    move-result-object v2

    if-nez v2, :cond_a

    move v0, v1

    goto/16 :goto_0

    :cond_a
    invoke-interface {p4, v4, v2}, Lcom/ddtaxi/a/a/gt;->b(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gt;

    goto :goto_3

    :cond_b
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v2

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->k()Z

    move-result v3

    invoke-interface {p4, p0, v2, v3}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/iw;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, v4, v2}, Lcom/ddtaxi/a/a/gt;->b(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gt;

    :cond_c
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->C()I

    move-result v2

    if-gtz v2, :cond_b

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/ddtaxi/a/a/gq;->a()[I

    move-result-object v0

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v0

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->k()Z

    move-result v2

    invoke-interface {p4, p0, v0, v2}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/iw;Z)Ljava/lang/Object;

    move-result-object v0

    :cond_e
    :goto_6
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p4, v4, v0}, Lcom/ddtaxi/a/a/gt;->b(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gt;

    goto :goto_5

    :pswitch_1
    invoke-interface {p4, p0, p2, v4, v3}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :pswitch_2
    invoke-interface {p4, p0, p2, v4, v3}, Lcom/ddtaxi/a/a/gt;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :pswitch_3
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->r()I

    move-result v2

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dt;->z()Lcom/ddtaxi/a/a/dr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ddtaxi/a/a/dr;->a(I)Lcom/ddtaxi/a/a/ds;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p1, v6, v2}, Lcom/ddtaxi/a/a/in;->a(II)Lcom/ddtaxi/a/a/in;

    move v0, v1

    goto/16 :goto_0

    :cond_f
    invoke-interface {p4, v4, v0}, Lcom/ddtaxi/a/a/gt;->a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gt;

    goto :goto_5

    :cond_10
    move-object v4, v3

    move-object v3, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/gq;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ddtaxi/a/a/dv;->c()[Lcom/ddtaxi/a/a/dv;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ddtaxi/a/a/dv;->h:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ddtaxi/a/a/dv;->l:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ddtaxi/a/a/dv;->a:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ddtaxi/a/a/dv;->n:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ddtaxi/a/a/dv;->g:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ddtaxi/a/a/dv;->f:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ddtaxi/a/a/dv;->b:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ddtaxi/a/a/dv;->j:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_8
    :try_start_8
    sget-object v1, Lcom/ddtaxi/a/a/dv;->e:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_9
    :try_start_9
    sget-object v1, Lcom/ddtaxi/a/a/dv;->c:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_a
    :try_start_a
    sget-object v1, Lcom/ddtaxi/a/a/dv;->k:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    :goto_b
    :try_start_b
    sget-object v1, Lcom/ddtaxi/a/a/dv;->o:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    :goto_c
    :try_start_c
    sget-object v1, Lcom/ddtaxi/a/a/dv;->p:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_d
    :try_start_d
    sget-object v1, Lcom/ddtaxi/a/a/dv;->q:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    :goto_e
    :try_start_e
    sget-object v1, Lcom/ddtaxi/a/a/dv;->r:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    :goto_f
    :try_start_f
    sget-object v1, Lcom/ddtaxi/a/a/dv;->i:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    :goto_10
    :try_start_10
    sget-object v1, Lcom/ddtaxi/a/a/dv;->m:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_11
    :try_start_11
    sget-object v1, Lcom/ddtaxi/a/a/dv;->d:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_0

    :goto_12
    sput-object v0, Lcom/ddtaxi/a/a/gq;->a:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_12

    :catch_1
    move-exception v1

    goto :goto_11

    :catch_2
    move-exception v1

    goto :goto_10

    :catch_3
    move-exception v1

    goto :goto_f

    :catch_4
    move-exception v1

    goto :goto_e

    :catch_5
    move-exception v1

    goto :goto_d

    :catch_6
    move-exception v1

    goto :goto_c

    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_8

    :catch_b
    move-exception v1

    goto/16 :goto_7

    :catch_c
    move-exception v1

    goto/16 :goto_6

    :catch_d
    move-exception v1

    goto/16 :goto_5

    :catch_e
    move-exception v1

    goto/16 :goto_4

    :catch_f
    move-exception v1

    goto/16 :goto_3

    :catch_10
    move-exception v1

    goto/16 :goto_2

    :catch_11
    move-exception v1

    goto/16 :goto_1
.end method

.method static b(Lcom/ddtaxi/a/a/gp;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/ddtaxi/a/a/gq;->a(Lcom/ddtaxi/a/a/gp;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
