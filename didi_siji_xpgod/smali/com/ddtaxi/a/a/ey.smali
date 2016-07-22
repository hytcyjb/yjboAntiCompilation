.class public abstract Lcom/ddtaxi/a/a/ey;
.super Lcom/ddtaxi/a/a/ep;

# interfaces
.implements Lcom/ddtaxi/a/a/fa;


# instance fields
.field private final a:Lcom/ddtaxi/a/a/en;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    invoke-static {}, Lcom/ddtaxi/a/a/en;->a()Lcom/ddtaxi/a/a/en;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    return-void
.end method

.method protected constructor <init>(Lcom/ddtaxi/a/a/ex;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ep;-><init>(Lcom/ddtaxi/a/a/et;)V

    invoke-static {p1}, Lcom/ddtaxi/a/a/ex;->a(Lcom/ddtaxi/a/a/ex;)Lcom/ddtaxi/a/a/en;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ey;)Lcom/ddtaxi/a/a/en;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    return-object v0
.end method

.method private d(Lcom/ddtaxi/a/a/dt;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ey;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private d(Lcom/ddtaxi/a/a/ef;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ef;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ey;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extension is for type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ef;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/dl;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" which does not match message type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ey;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/dl;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected Z()Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->i()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ey;->d(Lcom/ddtaxi/a/a/dt;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ddtaxi/a/a/ep;->a(Lcom/ddtaxi/a/a/dt;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/ddtaxi/a/a/ef;I)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ey;->d(Lcom/ddtaxi/a/a/ef;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ef;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v1, v0, p2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ef;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/ddtaxi/a/a/ef;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ey;->d(Lcom/ddtaxi/a/a/ef;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ef;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;)Z

    move-result v0

    return v0
.end method

.method protected a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z
    .locals 6

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ey;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v3

    new-instance v4, Lcom/ddtaxi/a/a/gs;

    iget-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-direct {v4, v0}, Lcom/ddtaxi/a/a/gs;-><init>(Lcom/ddtaxi/a/a/en;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/ddtaxi/a/a/gq;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/gt;I)Z

    move-result v0

    return v0
.end method

.method public a_(Lcom/ddtaxi/a/a/dt;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ey;->d(Lcom/ddtaxi/a/a/dt;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/ep;->a_(Lcom/ddtaxi/a/a/dt;)Z

    move-result v0

    goto :goto_0
.end method

.method protected aa()Lcom/ddtaxi/a/a/ez;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/ez;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ddtaxi/a/a/ez;-><init>(Lcom/ddtaxi/a/a/ey;ZLcom/ddtaxi/a/a/ez;)V

    return-object v0
.end method

.method protected ac()V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->c()V

    return-void
.end method

.method protected ad()Lcom/ddtaxi/a/a/ez;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/ez;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ddtaxi/a/a/ez;-><init>(Lcom/ddtaxi/a/a/ey;ZLcom/ddtaxi/a/a/ez;)V

    return-object v0
.end method

.method protected ae()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->j()I

    move-result v0

    return v0
.end method

.method protected af()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->k()I

    move-result v0

    return v0
.end method

.method protected ag()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/ddtaxi/a/a/ef;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ey;->d(Lcom/ddtaxi/a/a/ef;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ef;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/en;->d(Lcom/ddtaxi/a/a/eo;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ey;->d(Lcom/ddtaxi/a/a/dt;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->y()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/ec;->a(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->s()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/ep;->b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/ep;->a(Lcom/ddtaxi/a/a/ep;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ey;->ag()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/ddtaxi/a/a/dt;)I
    .locals 1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ey;->d(Lcom/ddtaxi/a/a/dt;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/en;->d(Lcom/ddtaxi/a/a/eo;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/ep;->c(Lcom/ddtaxi/a/a/dt;)I

    move-result v0

    goto :goto_0
.end method

.method public final c(Lcom/ddtaxi/a/a/ef;)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ey;->d(Lcom/ddtaxi/a/a/ef;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ef;->d()Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ey;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v1

    sget-object v2, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ef;->f()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->s()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ef;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/ddtaxi/a/a/ef;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public z()Z
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/ep;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ey;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
