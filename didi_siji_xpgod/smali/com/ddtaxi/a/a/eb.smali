.class public final Lcom/ddtaxi/a/a/eb;
.super Lcom/ddtaxi/a/a/dy;


# instance fields
.field private final a:I

.field private b:Lcom/ddtaxi/a/a/cm;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/ddtaxi/a/a/dw;

.field private e:[Lcom/ddtaxi/a/a/dz;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/cm;Lcom/ddtaxi/a/a/dw;I)V
    .locals 7

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/dy;-><init>()V

    iput p3, p0, Lcom/ddtaxi/a/a/eb;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/eb;->b:Lcom/ddtaxi/a/a/cm;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/cm;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v5, v0}, Lcom/ddtaxi/a/a/dk;->a(Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/eb;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/ddtaxi/a/a/eb;->d:Lcom/ddtaxi/a/a/dw;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/cm;->l()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/dz;

    iput-object v0, p0, Lcom/ddtaxi/a/a/eb;->e:[Lcom/ddtaxi/a/a/dz;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/cm;->l()I

    move-result v0

    if-lt v4, v0, :cond_0

    invoke-static {p2}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/dm;->c(Lcom/ddtaxi/a/a/dy;)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/ddtaxi/a/a/eb;->e:[Lcom/ddtaxi/a/a/dz;

    new-instance v0, Lcom/ddtaxi/a/a/dz;

    invoke-virtual {p1, v4}, Lcom/ddtaxi/a/a/cm;->a(I)Lcom/ddtaxi/a/a/ca;

    move-result-object v1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/ddtaxi/a/a/dz;-><init>(Lcom/ddtaxi/a/a/ca;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/eb;ILcom/ddtaxi/a/a/dz;)V

    aput-object v0, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/cm;Lcom/ddtaxi/a/a/dw;ILcom/ddtaxi/a/a/eb;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/eb;-><init>(Lcom/ddtaxi/a/a/cm;Lcom/ddtaxi/a/a/dw;I)V

    return-void
.end method

.method private a(Lcom/ddtaxi/a/a/cm;)V
    .locals 3

    iput-object p1, p0, Lcom/ddtaxi/a/a/eb;->b:Lcom/ddtaxi/a/a/cm;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/eb;->e:[Lcom/ddtaxi/a/a/dz;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/eb;->e:[Lcom/ddtaxi/a/a/dz;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/cm;->a(I)Lcom/ddtaxi/a/a/ca;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/dz;->a(Lcom/ddtaxi/a/a/dz;Lcom/ddtaxi/a/a/ca;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/eb;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/eb;->h()V

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/eb;Lcom/ddtaxi/a/a/cm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/eb;->a(Lcom/ddtaxi/a/a/cm;)V

    return-void
.end method

.method private h()V
    .locals 4

    iget-object v1, p0, Lcom/ddtaxi/a/a/eb;->e:[Lcom/ddtaxi/a/a/dz;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/ddtaxi/a/a/dz;->a(Lcom/ddtaxi/a/a/dz;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/eb;->a:I

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/dz;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/eb;->d:Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ddtaxi/a/a/eb;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/ddtaxi/a/a/dz;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ddtaxi/a/a/dz;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/ddtaxi/a/a/cm;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/eb;->b:Lcom/ddtaxi/a/a/cm;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/eb;->b:Lcom/ddtaxi/a/a/cm;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/cm;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/eb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/dw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/eb;->d:Lcom/ddtaxi/a/a/dw;

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/cq;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/eb;->b:Lcom/ddtaxi/a/a/cm;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/cm;->n()Lcom/ddtaxi/a/a/cq;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/eb;->e:[Lcom/ddtaxi/a/a/dz;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/eb;->b()Lcom/ddtaxi/a/a/cm;

    move-result-object v0

    return-object v0
.end method
