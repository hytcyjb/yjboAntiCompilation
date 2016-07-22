.class public Lcom/ddtaxi/a/a/fu;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/ddtaxi/a/a/gm;

.field final b:Ljava/lang/Object;

.field final c:Lcom/ddtaxi/a/a/gm;

.field final d:Lcom/ddtaxi/a/a/ft;

.field final e:Ljava/lang/Class;

.field final f:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/gm;Ljava/lang/Object;Lcom/ddtaxi/a/a/gm;Lcom/ddtaxi/a/a/ft;Ljava/lang/Class;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null containingTypeDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p4}, Lcom/ddtaxi/a/a/ft;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/iw;->k:Lcom/ddtaxi/a/a/iw;

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null messageDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/ddtaxi/a/a/fu;->a:Lcom/ddtaxi/a/a/gm;

    iput-object p2, p0, Lcom/ddtaxi/a/a/fu;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/ddtaxi/a/a/fu;->c:Lcom/ddtaxi/a/a/gm;

    iput-object p4, p0, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    iput-object p5, p0, Lcom/ddtaxi/a/a/fu;->e:Ljava/lang/Class;

    const-class v0, Lcom/ddtaxi/a/a/fx;

    invoke-virtual {v0, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "valueOf"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p5, v0, v1}, Lcom/ddtaxi/a/a/fn;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fu;->f:Ljava/lang/reflect/Method;

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fu;->f:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/ddtaxi/a/a/gm;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fu;->a:Lcom/ddtaxi/a/a/gm;

    return-object v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->h()Lcom/ddtaxi/a/a/jb;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/jb;->h:Lcom/ddtaxi/a/a/jb;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move-object p1, v0

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ddtaxi/a/a/fu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/fu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->f()I

    move-result v0

    return v0
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->h()Lcom/ddtaxi/a/a/jb;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/jb;->h:Lcom/ddtaxi/a/a/jb;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/fu;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Ljava/lang/Integer;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/fn;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public c()Lcom/ddtaxi/a/a/gm;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fu;->c:Lcom/ddtaxi/a/a/gm;

    return-object v0
.end method

.method c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->h()Lcom/ddtaxi/a/a/jb;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/jb;->h:Lcom/ddtaxi/a/a/jb;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    move-object p1, v0

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ddtaxi/a/a/fu;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/fu;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1
.end method

.method d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fu;->d:Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->h()Lcom/ddtaxi/a/a/jb;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/jb;->h:Lcom/ddtaxi/a/a/jb;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/ddtaxi/a/a/fx;

    invoke-interface {p1}, Lcom/ddtaxi/a/a/fx;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method
