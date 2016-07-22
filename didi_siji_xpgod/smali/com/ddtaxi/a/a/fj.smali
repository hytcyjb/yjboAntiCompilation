.class Lcom/ddtaxi/a/a/fj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/fd;


# instance fields
.field protected final a:Ljava/lang/Class;

.field protected final b:Ljava/lang/reflect/Method;

.field protected final c:Ljava/lang/reflect/Method;

.field protected final d:Ljava/lang/reflect/Method;

.field protected final e:Ljava/lang/reflect/Method;

.field protected final f:Ljava/lang/reflect/Method;

.field protected final g:Ljava/lang/reflect/Method;

.field protected final h:Ljava/lang/reflect/Method;

.field protected final i:Ljava/lang/reflect/Method;

.field protected final j:Lcom/ddtaxi/a/a/dt;

.field protected final k:Z

.field protected final l:Z


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/dt;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/fj;->j:Lcom/ddtaxi/a/a/dt;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->w()Lcom/ddtaxi/a/a/ea;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ddtaxi/a/a/fj;->k:Z

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->e()Lcom/ddtaxi/a/a/dw;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/dw;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/fj;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v4, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-eq v0, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/ddtaxi/a/a/fj;->l:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "get"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {p3, v0, v4}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fj;->b:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "get"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {p4, v0, v4}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fj;->c:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/ddtaxi/a/a/fj;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fj;->a:Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "set"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    iget-object v4, p0, Lcom/ddtaxi/a/a/fj;->a:Ljava/lang/Class;

    aput-object v4, v1, v2

    invoke-static {p4, v0, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fj;->d:Ljava/lang/reflect/Method;

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/fj;->l:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "has"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-static {p3, v0, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/ddtaxi/a/a/fj;->e:Ljava/lang/reflect/Method;

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/fj;->l:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "has"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-static {p4, v0, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/ddtaxi/a/a/fj;->f:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clear"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-static {p4, v0, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fj;->g:Ljava/lang/reflect/Method;

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/fj;->k:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Case"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-static {p3, v0, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/ddtaxi/a/a/fj;->h:Ljava/lang/reflect/Method;

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/fj;->k:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Case"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-static {p4, v0, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    :cond_1
    iput-object v3, p0, Lcom/ddtaxi/a/a/fj;->i:Ljava/lang/reflect/Method;

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    move-object v0, v3

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_3

    :cond_6
    move-object v0, v3

    goto :goto_4
.end method

.method private d(Lcom/ddtaxi/a/a/ep;)I
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fj;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/fx;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/fx;->a()I

    move-result v0

    return v0
.end method

.method private f(Lcom/ddtaxi/a/a/et;)I
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fj;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/fx;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/fx;->a()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/ddtaxi/a/a/gl;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newBuilderForField() called on a non-Message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/ddtaxi/a/a/ep;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fj;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/ep;I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRepeatedField() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/ddtaxi/a/a/et;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fj;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/et;I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRepeatedField() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/ddtaxi/a/a/et;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setRepeatedField() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/ddtaxi/a/a/et;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/fj;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/ddtaxi/a/a/et;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addRepeatedField() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/ddtaxi/a/a/ep;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/ddtaxi/a/a/fj;->l:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/ddtaxi/a/a/fj;->k:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fj;->d(Lcom/ddtaxi/a/a/ep;)I

    move-result v2

    iget-object v3, p0, Lcom/ddtaxi/a/a/fj;->j:Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/fj;->a(Lcom/ddtaxi/a/a/ep;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/ddtaxi/a/a/fj;->j:Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/dt;->s()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ddtaxi/a/a/fj;->e:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lcom/ddtaxi/a/a/et;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/ddtaxi/a/a/fj;->l:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/ddtaxi/a/a/fj;->k:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fj;->f(Lcom/ddtaxi/a/a/et;)I

    move-result v2

    iget-object v3, p0, Lcom/ddtaxi/a/a/fj;->j:Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/fj;->a(Lcom/ddtaxi/a/a/et;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/ddtaxi/a/a/fj;->j:Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/dt;->s()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ddtaxi/a/a/fj;->f:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public c(Lcom/ddtaxi/a/a/ep;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRepeatedFieldSize() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/ddtaxi/a/a/et;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRepeatedFieldSize() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lcom/ddtaxi/a/a/et;)V
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fj;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Lcom/ddtaxi/a/a/et;)Lcom/ddtaxi/a/a/gl;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getFieldBuilder() called on a non-Message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
