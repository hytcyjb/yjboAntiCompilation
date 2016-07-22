.class public abstract Lcom/ddtaxi/a/a/fq;
.super Lcom/ddtaxi/a/a/fn;

# interfaces
.implements Lcom/ddtaxi/a/a/fs;


# instance fields
.field private final a:Lcom/ddtaxi/a/a/en;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/fn;-><init>()V

    invoke-static {}, Lcom/ddtaxi/a/a/en;->a()Lcom/ddtaxi/a/a/en;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fq;->a:Lcom/ddtaxi/a/a/en;

    return-void
.end method

.method protected constructor <init>(Lcom/ddtaxi/a/a/fp;)V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/fn;-><init>()V

    invoke-static {p1}, Lcom/ddtaxi/a/a/fp;->a(Lcom/ddtaxi/a/a/fp;)Lcom/ddtaxi/a/a/en;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fq;->a:Lcom/ddtaxi/a/a/en;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/fq;)Lcom/ddtaxi/a/a/en;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fq;->a:Lcom/ddtaxi/a/a/en;

    return-object v0
.end method

.method private d(Lcom/ddtaxi/a/a/fu;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/fu;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fq;->H()Lcom/ddtaxi/a/a/gm;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/ddtaxi/a/a/fu;I)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fq;->d(Lcom/ddtaxi/a/a/fu;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fq;->a:Lcom/ddtaxi/a/a/en;

    iget-object v1, p1, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0, v1, p2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/fu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fq;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->c()V

    return-void
.end method

.method public final a(Lcom/ddtaxi/a/a/fu;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fq;->d(Lcom/ddtaxi/a/a/fu;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fq;->a:Lcom/ddtaxi/a/a/en;

    iget-object v1, p1, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;)Z

    move-result v0

    return v0
.end method

.method protected a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/el;I)Z
    .locals 6

    iget-object v0, p0, Lcom/ddtaxi/a/a/fq;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fq;->H()Lcom/ddtaxi/a/a/gm;

    move-result-object v1

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

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fq;->d(Lcom/ddtaxi/a/a/fu;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fq;->a:Lcom/ddtaxi/a/a/en;

    iget-object v1, p1, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/en;->d(Lcom/ddtaxi/a/a/eo;)I

    move-result v0

    return v0
.end method

.method public final c(Lcom/ddtaxi/a/a/fu;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fq;->d(Lcom/ddtaxi/a/a/fu;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fq;->a:Lcom/ddtaxi/a/a/en;

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

.method protected d()Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fq;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->i()Z

    move-result v0

    return v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fr;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/fr;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ddtaxi/a/a/fr;-><init>(Lcom/ddtaxi/a/a/fq;ZLcom/ddtaxi/a/a/fr;)V

    return-object v0
.end method

.method protected g()Lcom/ddtaxi/a/a/fr;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/fr;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ddtaxi/a/a/fr;-><init>(Lcom/ddtaxi/a/a/fq;ZLcom/ddtaxi/a/a/fr;)V

    return-object v0
.end method

.method protected h()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fq;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->j()I

    move-result v0

    return v0
.end method

.method protected i()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fq;->a:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->k()I

    move-result v0

    return v0
.end method
