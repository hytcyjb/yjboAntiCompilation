.class public final Lcom/ddtaxi/a/a/dr;
.super Lcom/ddtaxi/a/a/dy;

# interfaces
.implements Lcom/ddtaxi/a/a/fy;


# instance fields
.field private final a:I

.field private b:Lcom/ddtaxi/a/a/ae;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/ddtaxi/a/a/dw;

.field private final e:Lcom/ddtaxi/a/a/dl;

.field private f:[Lcom/ddtaxi/a/a/ds;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/ae;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;I)V
    .locals 7

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/dy;-><init>()V

    iput p4, p0, Lcom/ddtaxi/a/a/dr;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/dr;->b:Lcom/ddtaxi/a/a/ae;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ae;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/ddtaxi/a/a/dk;->a(Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dr;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/ddtaxi/a/a/dr;->d:Lcom/ddtaxi/a/a/dw;

    iput-object p3, p0, Lcom/ddtaxi/a/a/dr;->e:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ae;->l()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "Enums must contain at least one value."

    invoke-direct {v0, p0, v1, v5}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ae;->l()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/ds;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dr;->f:[Lcom/ddtaxi/a/a/ds;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ae;->l()I

    move-result v0

    if-lt v4, v0, :cond_1

    invoke-static {p2}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/dm;->c(Lcom/ddtaxi/a/a/dy;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/ddtaxi/a/a/dr;->f:[Lcom/ddtaxi/a/a/ds;

    new-instance v0, Lcom/ddtaxi/a/a/ds;

    invoke-virtual {p1, v4}, Lcom/ddtaxi/a/a/ae;->a(I)Lcom/ddtaxi/a/a/am;

    move-result-object v1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/ddtaxi/a/a/ds;-><init>(Lcom/ddtaxi/a/a/am;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dr;ILcom/ddtaxi/a/a/ds;)V

    aput-object v0, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ae;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;ILcom/ddtaxi/a/a/dr;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/dr;-><init>(Lcom/ddtaxi/a/a/ae;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;I)V

    return-void
.end method

.method private a(Lcom/ddtaxi/a/a/ae;)V
    .locals 3

    iput-object p1, p0, Lcom/ddtaxi/a/a/dr;->b:Lcom/ddtaxi/a/a/ae;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/dr;->f:[Lcom/ddtaxi/a/a/ds;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/dr;->f:[Lcom/ddtaxi/a/a/ds;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/ae;->a(I)Lcom/ddtaxi/a/a/am;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/ds;->a(Lcom/ddtaxi/a/a/ds;Lcom/ddtaxi/a/a/am;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/dr;Lcom/ddtaxi/a/a/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/dr;->a(Lcom/ddtaxi/a/a/ae;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/dr;->a:I

    return v0
.end method

.method public a(I)Lcom/ddtaxi/a/a/ds;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/dr;->d:Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/dm;->b(Lcom/ddtaxi/a/a/dm;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/ddtaxi/a/a/dn;

    invoke-direct {v1, p0, p1}, Lcom/ddtaxi/a/a/dn;-><init>(Lcom/ddtaxi/a/a/dy;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ds;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/ds;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/dr;->d:Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ddtaxi/a/a/dr;->c:Ljava/lang/String;

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

    instance-of v1, v0, Lcom/ddtaxi/a/a/ds;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ddtaxi/a/a/ds;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/ddtaxi/a/a/ae;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dr;->b:Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public synthetic b(I)Lcom/ddtaxi/a/a/fx;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/dr;->a(I)Lcom/ddtaxi/a/a/ds;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dr;->b:Lcom/ddtaxi/a/a/ae;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ae;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dr;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/dw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dr;->d:Lcom/ddtaxi/a/a/dw;

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dr;->e:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method public g()Lcom/ddtaxi/a/a/ai;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dr;->b:Lcom/ddtaxi/a/a/ae;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ae;->n()Lcom/ddtaxi/a/a/ai;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dr;->f:[Lcom/ddtaxi/a/a/ds;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dr;->b()Lcom/ddtaxi/a/a/ae;

    move-result-object v0

    return-object v0
.end method
