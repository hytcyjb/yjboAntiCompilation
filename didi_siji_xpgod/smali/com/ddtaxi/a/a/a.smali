.class public abstract Lcom/ddtaxi/a/a/a;
.super Lcom/ddtaxi/a/a/c;

# interfaces
.implements Lcom/ddtaxi/a/a/gk;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ddtaxi/a/a/a;->a:I

    return-void
.end method

.method protected static a(ILjava/util/Map;)I
    .locals 6

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/dt;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 v3, p0, 0x25

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v4

    sget-object v5, Lcom/ddtaxi/a/a/dv;->n:Lcom/ddtaxi/a/a/dv;

    if-eq v4, v5, :cond_1

    mul-int/lit8 v1, v3, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int p0, v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/List;

    mul-int/lit8 v1, v3, 0x35

    invoke-static {v0}, Lcom/ddtaxi/a/a/fw;->a(Ljava/util/List;)I

    move-result v0

    add-int p0, v1, v0

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, v3, 0x35

    check-cast v0, Lcom/ddtaxi/a/a/fx;

    invoke-static {v0}, Lcom/ddtaxi/a/a/fw;->a(Lcom/ddtaxi/a/a/fx;)I

    move-result v0

    add-int p0, v1, v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;)Lcom/ddtaxi/a/a/k;
    .locals 1

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    invoke-static {p0}, Lcom/ddtaxi/a/a/k;->a([B)Lcom/ddtaxi/a/a/k;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    check-cast p0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/ddtaxi/a/a/a;->a(Ljava/lang/Object;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/a;->a(Ljava/lang/Object;)Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static a(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 7

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v5

    sget-object v6, Lcom/ddtaxi/a/a/dv;->l:Lcom/ddtaxi/a/a/dv;

    if-ne v5, v6, :cond_5

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v1, v2

    check-cast v1, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ddtaxi/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public A()I
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/ddtaxi/a/a/gq;->a(Lcom/ddtaxi/a/a/gk;)I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/a/a/a;->a:I

    iget v0, p0, Lcom/ddtaxi/a/a/a;->a:I

    goto :goto_0
.end method

.method W()Lcom/ddtaxi/a/a/il;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/b;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ddtaxi/a/a/gq;->a(Lcom/ddtaxi/a/a/gk;Lcom/ddtaxi/a/a/r;Z)V

    return-void
.end method

.method public a(Lcom/ddtaxi/a/a/ea;)Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "hasOneof() is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/dt;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getOneofFieldDescriptor() is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d_()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/gq;->b(Lcom/ddtaxi/a/a/gp;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e_()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/a;->d_()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/gq;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/ddtaxi/a/a/gk;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/ddtaxi/a/a/gk;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/a;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v2

    invoke-interface {p1}, Lcom/ddtaxi/a/a/gk;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/a;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/ddtaxi/a/a/gk;->b()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/a;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/a;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v2

    invoke-interface {p1}, Lcom/ddtaxi/a/a/gk;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ddtaxi/a/a/im;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/a;->o:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/a;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/a;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/a;->a(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/a;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/im;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/a;->o:I

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/hz;->b(Lcom/ddtaxi/a/a/gp;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/gq;->a(Lcom/ddtaxi/a/a/gp;)Z

    move-result v0

    return v0
.end method
