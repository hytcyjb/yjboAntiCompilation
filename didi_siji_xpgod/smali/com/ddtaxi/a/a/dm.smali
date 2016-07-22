.class final Lcom/ddtaxi/a/a/dm;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/util/Set;

.field private c:Z

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ddtaxi/a/a/dk;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ddtaxi/a/a/dm;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([Lcom/ddtaxi/a/a/dw;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/dm;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/dm;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/dm;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/dm;->b:Ljava/util/Set;

    iput-boolean p2, p0, Lcom/ddtaxi/a/a/dm;->c:Z

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dm;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/dm;->b:Ljava/util/Set;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/ddtaxi/a/a/dm;->a(Lcom/ddtaxi/a/a/dw;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dw;

    :try_start_0
    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dw;)V
    :try_end_0
    .catch Lcom/ddtaxi/a/a/dq; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/ddtaxi/a/a/dm;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/dm;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dm;->e:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/ddtaxi/a/a/dw;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dw;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dw;

    iget-object v2, p0, Lcom/ddtaxi/a/a/dm;->b:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/dm;->a(Lcom/ddtaxi/a/a/dw;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/dm;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dm;->f:Ljava/util/Map;

    return-object v0
.end method

.method static d(Lcom/ddtaxi/a/a/dy;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dy;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "Missing name."

    invoke-direct {v0, p0, v1, v6}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_1

    if-nez v2, :cond_5

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a valid identifier."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v6}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-lt v4, v5, :cond_2

    move v2, v1

    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    if-gtz v0, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/ddtaxi/a/a/dy;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/dp;->c:Lcom/ddtaxi/a/a/dp;

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dp;)Lcom/ddtaxi/a/a/dy;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Lcom/ddtaxi/a/a/dp;)Lcom/ddtaxi/a/a/dy;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/dm;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dy;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/ddtaxi/a/a/dp;->c:Lcom/ddtaxi/a/a/dp;

    if-eq p2, v1, :cond_1

    sget-object v1, Lcom/ddtaxi/a/a/dp;->a:Lcom/ddtaxi/a/a/dp;

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/dm;->a(Lcom/ddtaxi/a/a/dy;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/ddtaxi/a/a/dp;->b:Lcom/ddtaxi/a/a/dp;

    if-ne p2, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/dm;->b(Lcom/ddtaxi/a/a/dy;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/dm;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/ddtaxi/a/a/dm;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dy;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/ddtaxi/a/a/dp;->c:Lcom/ddtaxi/a/a/dp;

    if-eq p2, v2, :cond_1

    sget-object v2, Lcom/ddtaxi/a/a/dp;->a:Lcom/ddtaxi/a/a/dp;

    if-ne p2, v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/dm;->a(Lcom/ddtaxi/a/a/dy;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    sget-object v2, Lcom/ddtaxi/a/a/dp;->b:Lcom/ddtaxi/a/a/dp;

    if-ne p2, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/dm;->b(Lcom/ddtaxi/a/a/dy;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/ddtaxi/a/a/dy;Lcom/ddtaxi/a/a/dp;)Lcom/ddtaxi/a/a/dy;
    .locals 8

    const/4 v6, -0x1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dp;)Lcom/ddtaxi/a/a/dy;

    move-result-object v1

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_0
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/dm;->c:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/ddtaxi/a/a/dp;->a:Lcom/ddtaxi/a/a/dp;

    if-ne p3, v0, :cond_5

    invoke-static {}, Lcom/ddtaxi/a/a/dk;->a()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The descriptor for message type \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" can not be found and a placeholder is created for it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Lcom/ddtaxi/a/a/dl;

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/dl;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/dm;->b:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dy;->e()Lcom/ddtaxi/a/a/dw;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v6, :cond_2

    move-object v0, p1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/dy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_3

    invoke-virtual {p0, p1, p3}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dp;)Lcom/ddtaxi/a/a/dy;

    move-result-object v0

    move-object v1, p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/ddtaxi/a/a/dp;->b:Lcom/ddtaxi/a/a/dp;

    invoke-virtual {p0, v1, v5}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dp;)Lcom/ddtaxi/a/a/dy;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eq v2, v6, :cond_6

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dp;)Lcom/ddtaxi/a/a/dy;

    move-result-object v0

    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not defined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method a(Lcom/ddtaxi/a/a/ds;)V
    .locals 3

    new-instance v1, Lcom/ddtaxi/a/a/dn;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ds;->g()Lcom/ddtaxi/a/a/dr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ds;->a()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/ddtaxi/a/a/dn;-><init>(Lcom/ddtaxi/a/a/dy;I)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/dm;->f:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ds;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ddtaxi/a/a/dm;->f:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method a(Lcom/ddtaxi/a/a/dt;)V
    .locals 4

    new-instance v1, Lcom/ddtaxi/a/a/dn;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/ddtaxi/a/a/dn;-><init>(Lcom/ddtaxi/a/a/dy;I)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/dm;->e:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ddtaxi/a/a/dm;->e:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/ddtaxi/a/a/dq;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field number "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been used in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/dl;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" by field \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v1

    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Lcom/ddtaxi/a/a/dw;)V
    .locals 5

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v1, p1

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/dm;->d:Ljava/util/Map;

    new-instance v2, Lcom/ddtaxi/a/a/do;

    invoke-direct {v2, v1, p1, p2}, Lcom/ddtaxi/a/a/do;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ddtaxi/a/a/dw;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dy;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ddtaxi/a/a/dm;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v2, v0, Lcom/ddtaxi/a/a/do;

    if-nez v2, :cond_1

    new-instance v2, Lcom/ddtaxi/a/a/dq;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" is already defined (as something other than a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "package) in file \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dy;->e()Lcom/ddtaxi/a/a/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, p2, v0, v1}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dw;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dw;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(Lcom/ddtaxi/a/a/dy;)Z
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/a/a/dl;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/ddtaxi/a/a/dr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(Lcom/ddtaxi/a/a/dy;)Z
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/a/a/dl;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/ddtaxi/a/a/dr;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/ddtaxi/a/a/do;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/ddtaxi/a/a/eb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method c(Lcom/ddtaxi/a/a/dy;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x22

    invoke-static {p1}, Lcom/ddtaxi/a/a/dm;->d(Lcom/ddtaxi/a/a/dy;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dy;->d()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    iget-object v0, p0, Lcom/ddtaxi/a/a/dm;->d:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dy;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/ddtaxi/a/a/dm;->d:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dy;->e()Lcom/ddtaxi/a/a/dw;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dy;->e()Lcom/ddtaxi/a/a/dw;

    move-result-object v4

    if-ne v3, v4, :cond_1

    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is already defined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, v6}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is already defined in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, v6}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_1
    new-instance v2, Lcom/ddtaxi/a/a/dq;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" is already defined in file \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dy;->e()Lcom/ddtaxi/a/a/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0, v6}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v2

    :cond_2
    return-void
.end method
