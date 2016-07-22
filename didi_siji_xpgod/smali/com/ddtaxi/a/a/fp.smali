.class public abstract Lcom/ddtaxi/a/a/fp;
.super Lcom/ddtaxi/a/a/fo;

# interfaces
.implements Lcom/ddtaxi/a/a/fs;


# instance fields
.field private a:Lcom/ddtaxi/a/a/en;

.field private b:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/fo;-><init>()V

    invoke-static {}, Lcom/ddtaxi/a/a/en;->b()Lcom/ddtaxi/a/a/en;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/fp;)Lcom/ddtaxi/a/a/en;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/fp;->i()Lcom/ddtaxi/a/a/en;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/ddtaxi/a/a/fu;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/fu;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fp;->c()Lcom/ddtaxi/a/a/fn;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/fp;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->e()Lcom/ddtaxi/a/a/en;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/fp;->b:Z

    :cond_0
    return-void
.end method

.method private i()Lcom/ddtaxi/a/a/en;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/fp;->b:Z

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    return-object v0
.end method


# virtual methods
.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fp;->f()Lcom/ddtaxi/a/a/fp;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fp;->e()Lcom/ddtaxi/a/a/fp;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()Lcom/ddtaxi/a/a/fo;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fp;->e()Lcom/ddtaxi/a/a/fp;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/ddtaxi/a/a/fu;ILjava/lang/Object;)Lcom/ddtaxi/a/a/fp;
    .locals 3

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fp;->e(Lcom/ddtaxi/a/a/fu;)V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/fp;->h()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    iget-object v1, p1, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {p1, p3}, Lcom/ddtaxi/a/a/fu;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final a(Lcom/ddtaxi/a/a/fu;Ljava/lang/Object;)Lcom/ddtaxi/a/a/fp;
    .locals 3

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fp;->e(Lcom/ddtaxi/a/a/fu;)V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/fp;->h()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    iget-object v1, p1, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {p1, p2}, Lcom/ddtaxi/a/a/fu;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Lcom/ddtaxi/a/a/fu;I)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fp;->e(Lcom/ddtaxi/a/a/fu;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    iget-object v1, p1, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0, v1, p2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/fu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/ddtaxi/a/a/en;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    return-void
.end method

.method protected final a(Lcom/ddtaxi/a/a/fq;)V
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/fp;->h()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    invoke-static {p1}, Lcom/ddtaxi/a/a/fq;->a(Lcom/ddtaxi/a/a/fq;)Lcom/ddtaxi/a/a/en;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/en;)V

    return-void
.end method

.method public final a(Lcom/ddtaxi/a/a/fu;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fp;->e(Lcom/ddtaxi/a/a/fu;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    iget-object v1, p1, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;)Z

    move-result v0

    return v0
.end method

.method protected a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/el;I)Z
    .locals 6

    invoke-direct {p0}, Lcom/ddtaxi/a/a/fp;->h()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fp;->c()Lcom/ddtaxi/a/a/fn;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/fq;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/ddtaxi/a/a/fn;->a(Lcom/ddtaxi/a/a/en;Lcom/ddtaxi/a/a/gm;Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/el;I)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/ddtaxi/a/a/fu;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fp;->e(Lcom/ddtaxi/a/a/fu;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    iget-object v1, p1, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/en;->d(Lcom/ddtaxi/a/a/eo;)I

    move-result v0

    return v0
.end method

.method public synthetic b()Lcom/ddtaxi/a/a/fo;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fp;->f()Lcom/ddtaxi/a/a/fp;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/ddtaxi/a/a/fu;Ljava/lang/Object;)Lcom/ddtaxi/a/a/fp;
    .locals 3

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fp;->e(Lcom/ddtaxi/a/a/fu;)V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/fp;->h()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    iget-object v1, p1, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {p1, p2}, Lcom/ddtaxi/a/a/fu;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c(Lcom/ddtaxi/a/a/fu;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fp;->e(Lcom/ddtaxi/a/a/fu;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    iget-object v1, p1, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/ddtaxi/a/a/fu;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/fu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(Lcom/ddtaxi/a/a/fu;)Lcom/ddtaxi/a/a/fp;
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fp;->e(Lcom/ddtaxi/a/a/fu;)V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/fp;->h()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    iget-object v1, p1, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/en;->c(Lcom/ddtaxi/a/a/eo;)V

    return-object p0
.end method

.method public e()Lcom/ddtaxi/a/a/fp;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/fp;->b:Z

    invoke-super {p0}, Lcom/ddtaxi/a/a/fo;->a()Lcom/ddtaxi/a/a/fo;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/fp;

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/fp;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected g()Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fp;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->i()Z

    move-result v0

    return v0
.end method
