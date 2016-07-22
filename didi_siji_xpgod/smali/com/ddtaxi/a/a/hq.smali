.class public Lcom/ddtaxi/a/a/hq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/ev;


# instance fields
.field private a:Lcom/ddtaxi/a/a/ev;

.field private b:Lcom/ddtaxi/a/a/et;

.field private c:Lcom/ddtaxi/a/a/ep;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/ddtaxi/a/a/ep;Lcom/ddtaxi/a/a/ev;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    iput-object p2, p0, Lcom/ddtaxi/a/a/hq;->a:Lcom/ddtaxi/a/a/ev;

    iput-boolean p3, p0, Lcom/ddtaxi/a/a/hq;->d:Z

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    :cond_0
    iget-boolean v0, p0, Lcom/ddtaxi/a/a/hq;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->a:Lcom/ddtaxi/a/a/ev;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->a:Lcom/ddtaxi/a/a/ev;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/ev;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/hq;->d:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/et;->aw()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    :cond_1
    invoke-direct {p0}, Lcom/ddtaxi/a/a/hq;->h()V

    return-object p0
.end method

.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/hq;->h()V

    return-void
.end method

.method public b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    iget-object v1, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/ep;->I()Lcom/ddtaxi/a/a/gk;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    :goto_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/hq;->h()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/hq;->e()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/hq;->a:Lcom/ddtaxi/a/a/ev;

    return-void
.end method

.method public c()Lcom/ddtaxi/a/a/ep;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/et;->R()Lcom/ddtaxi/a/a/gk;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ep;

    iput-object v0, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/ep;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/hq;->d:Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/hq;->c()Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/et;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/ep;->b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/et;

    iput-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    iget-object v1, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/et;->ay()V

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/gp;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    goto :goto_0
.end method

.method public g()Lcom/ddtaxi/a/a/hq;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ep;->I()Lcom/ddtaxi/a/a/gk;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/ddtaxi/a/a/ep;

    iput-object v0, p0, Lcom/ddtaxi/a/a/hq;->c:Lcom/ddtaxi/a/a/ep;

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/et;->aw()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/hq;->h()V

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/hq;->b:Lcom/ddtaxi/a/a/et;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/et;->I()Lcom/ddtaxi/a/a/gk;

    move-result-object v0

    goto :goto_0
.end method
