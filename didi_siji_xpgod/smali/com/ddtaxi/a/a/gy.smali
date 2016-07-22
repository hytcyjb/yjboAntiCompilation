.class public Lcom/ddtaxi/a/a/gy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/ev;


# instance fields
.field private a:Lcom/ddtaxi/a/a/ev;

.field private b:Ljava/util/List;

.field private c:Z

.field private d:Ljava/util/List;

.field private e:Z

.field private f:Lcom/ddtaxi/a/a/ha;

.field private g:Lcom/ddtaxi/a/a/gz;

.field private h:Lcom/ddtaxi/a/a/hb;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    iput-boolean p2, p0, Lcom/ddtaxi/a/a/gy;->c:Z

    iput-object p3, p0, Lcom/ddtaxi/a/a/gy;->a:Lcom/ddtaxi/a/a/ev;

    iput-boolean p4, p0, Lcom/ddtaxi/a/a/gy;->e:Z

    return-void
.end method

.method private a(IZ)Lcom/ddtaxi/a/a/ep;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ep;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ep;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->d()Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->c()Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/gy;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/gy;->c:Z

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private l()V
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/gy;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->a:Lcom/ddtaxi/a/a/ev;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->a:Lcom/ddtaxi/a/a/ev;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/ev;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/gy;->e:Z

    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->f:Lcom/ddtaxi/a/a/ha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->f:Lcom/ddtaxi/a/a/ha;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ha;->a()V

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->g:Lcom/ddtaxi/a/a/gz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->g:Lcom/ddtaxi/a/a/gz;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gz;->a()V

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->h:Lcom/ddtaxi/a/a/hb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->h:Lcom/ddtaxi/a/a/hb;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hb;->a()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)Lcom/ddtaxi/a/a/ep;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ddtaxi/a/a/gy;->a(IZ)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->j()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/hq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->b()V

    :cond_1
    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->l()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->m()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->j()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->l()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->m()V

    return-object p0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;
    .locals 2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-object p0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ep;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->j()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->l()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->m()V

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ep;

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->j()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ep;

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_2
.end method

.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->l()V

    return-void
.end method

.method public b(I)Lcom/ddtaxi/a/a/et;
    .locals 3

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->k()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ep;

    new-instance v1, Lcom/ddtaxi/a/a/hq;

    iget-boolean v2, p0, Lcom/ddtaxi/a/a/gy;->e:Z

    invoke-direct {v1, v0, p0, v2}, Lcom/ddtaxi/a/a/hq;-><init>(Lcom/ddtaxi/a/a/ep;Lcom/ddtaxi/a/a/ev;Z)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->e()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;
    .locals 3

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->j()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->k()V

    new-instance v0, Lcom/ddtaxi/a/a/hq;

    iget-boolean v1, p0, Lcom/ddtaxi/a/a/gy;->e:Z

    invoke-direct {v0, p1, p0, v1}, Lcom/ddtaxi/a/a/hq;-><init>(Lcom/ddtaxi/a/a/ep;Lcom/ddtaxi/a/a/ev;Z)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->l()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->m()V

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->e()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->j()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->l()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->m()V

    return-object p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/gy;->a:Lcom/ddtaxi/a/a/ev;

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;
    .locals 3

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->j()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->k()V

    new-instance v0, Lcom/ddtaxi/a/a/hq;

    iget-boolean v1, p0, Lcom/ddtaxi/a/a/gy;->e:Z

    invoke-direct {v0, p2, p0, v1}, Lcom/ddtaxi/a/a/hq;-><init>(Lcom/ddtaxi/a/a/ep;Lcom/ddtaxi/a/a/ev;Z)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->l()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->m()V

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->e()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/ddtaxi/a/a/gp;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gp;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gp;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->f()Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    goto :goto_0
.end method

.method public d(I)V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->j()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/hq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->l()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->m()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/gy;->c:Z

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    :cond_1
    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->l()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->m()V

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/hq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->b()V

    goto :goto_0
.end method

.method public f()Ljava/util/List;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v4, p0, Lcom/ddtaxi/a/a/gy;->e:Z

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/gy;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/ddtaxi/a/a/gy;->c:Z

    if-nez v0, :cond_3

    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    move v0, v4

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gk;

    iget-object v1, p0, Lcom/ddtaxi/a/a/gy;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/hq;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/hq;->d()Lcom/ddtaxi/a/a/ep;

    move-result-object v1

    if-eq v1, v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/ddtaxi/a/a/gy;->j()V

    move v0, v3

    :goto_3
    iget-object v1, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    iput-boolean v3, p0, Lcom/ddtaxi/a/a/gy;->c:Z

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ddtaxi/a/a/gy;->b:Ljava/util/List;

    invoke-direct {p0, v0, v4}, Lcom/ddtaxi/a/a/gy;->a(IZ)Lcom/ddtaxi/a/a/ep;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->f:Lcom/ddtaxi/a/a/ha;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/ha;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/ha;-><init>(Lcom/ddtaxi/a/a/gy;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/gy;->f:Lcom/ddtaxi/a/a/ha;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->f:Lcom/ddtaxi/a/a/ha;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->g:Lcom/ddtaxi/a/a/gz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/gz;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/gz;-><init>(Lcom/ddtaxi/a/a/gy;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/gy;->g:Lcom/ddtaxi/a/a/gz;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->g:Lcom/ddtaxi/a/a/gz;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->h:Lcom/ddtaxi/a/a/hb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/hb;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/hb;-><init>(Lcom/ddtaxi/a/a/gy;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/gy;->h:Lcom/ddtaxi/a/a/hb;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/gy;->h:Lcom/ddtaxi/a/a/hb;

    return-object v0
.end method
