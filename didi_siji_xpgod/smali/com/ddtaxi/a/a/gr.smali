.class Lcom/ddtaxi/a/a/gr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/gt;


# instance fields
.field private final a:Lcom/ddtaxi/a/a/gl;


# direct methods
.method public constructor <init>(Lcom/ddtaxi/a/a/gl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    return-void
.end method


# virtual methods
.method public a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gl;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/ei;Lcom/ddtaxi/a/a/dl;I)Lcom/ddtaxi/a/a/ek;
    .locals 1

    invoke-virtual {p1, p2, p3}, Lcom/ddtaxi/a/a/ei;->b(Lcom/ddtaxi/a/a/dl;I)Lcom/ddtaxi/a/a/ek;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/ei;Ljava/lang/String;)Lcom/ddtaxi/a/a/ek;
    .locals 1

    invoke-virtual {p1, p2}, Lcom/ddtaxi/a/a/ei;->b(Ljava/lang/String;)Lcom/ddtaxi/a/a/ek;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;ILjava/lang/Object;)Lcom/ddtaxi/a/a/gt;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0, p1, p2, p3}, Lcom/ddtaxi/a/a/gl;->b(Lcom/ddtaxi/a/a/dt;ILjava/lang/Object;)Lcom/ddtaxi/a/a/gl;

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gt;
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/gr;

    invoke-interface {p2}, Lcom/ddtaxi/a/a/gk;->K()Lcom/ddtaxi/a/a/gl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/gr;-><init>(Lcom/ddtaxi/a/a/gl;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ddtaxi/a/a/gr;

    iget-object v1, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v1, p1}, Lcom/ddtaxi/a/a/gl;->f(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/gl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/gr;-><init>(Lcom/ddtaxi/a/a/gl;)V

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gt;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gl;->c(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gl;

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/gl;->b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;)Ljava/lang/Object;
    .locals 2

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/ddtaxi/a/a/gk;->K()Lcom/ddtaxi/a/a/gl;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p3}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/ddtaxi/a/a/gr;->a(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gk;

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Lcom/ddtaxi/a/a/gl;->b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;

    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/ddtaxi/a/a/gl;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;

    invoke-interface {v1}, Lcom/ddtaxi/a/a/gl;->R()Lcom/ddtaxi/a/a/gk;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0, p3}, Lcom/ddtaxi/a/a/gl;->f(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/gl;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;)Ljava/lang/Object;
    .locals 2

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/ddtaxi/a/a/gk;->K()Lcom/ddtaxi/a/a/gl;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p3}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/ddtaxi/a/a/gr;->a(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gk;

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Lcom/ddtaxi/a/a/gl;->b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;

    :cond_0
    invoke-virtual {p3}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v0

    invoke-virtual {p1, v0, v1, p2}, Lcom/ddtaxi/a/a/o;->a(ILcom/ddtaxi/a/a/gn;Lcom/ddtaxi/a/a/el;)V

    invoke-interface {v1}, Lcom/ddtaxi/a/a/gl;->R()Lcom/ddtaxi/a/a/gk;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0, p3}, Lcom/ddtaxi/a/a/gl;->f(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/gl;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/iw;Z)Ljava/lang/Object;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/iw;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/ea;)Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/gl;->a(Lcom/ddtaxi/a/a/ea;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gt;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gl;->d(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gl;

    return-object p0
.end method

.method public b(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/gt;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/gl;->d(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/gl;

    return-object p0
.end method

.method public b()Lcom/ddtaxi/a/a/gu;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/gu;->a:Lcom/ddtaxi/a/a/gu;

    return-object v0
.end method

.method public b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/gk;)Ljava/lang/Object;
    .locals 2

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/ddtaxi/a/a/gk;->K()Lcom/ddtaxi/a/a/gl;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p3}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/ddtaxi/a/a/gr;->a(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gk;

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Lcom/ddtaxi/a/a/gl;->b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;

    :cond_0
    invoke-virtual {p1, v1, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gn;Lcom/ddtaxi/a/a/el;)V

    invoke-interface {v1}, Lcom/ddtaxi/a/a/gl;->R()Lcom/ddtaxi/a/a/gk;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0, p3}, Lcom/ddtaxi/a/a/gl;->f(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/gl;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public b(Lcom/ddtaxi/a/a/dt;)Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/gl;->a_(Lcom/ddtaxi/a/a/dt;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/dt;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/gl;->b(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/gt;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/gl;->g(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/gl;

    return-object p0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gr;->a:Lcom/ddtaxi/a/a/gl;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gl;->R()Lcom/ddtaxi/a/a/gk;

    move-result-object v0

    return-object v0
.end method
