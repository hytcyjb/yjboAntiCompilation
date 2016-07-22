.class public final Lcom/ddtaxi/a/a/dz;
.super Lcom/ddtaxi/a/a/dy;


# instance fields
.field private final a:I

.field private b:Lcom/ddtaxi/a/a/ca;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/ddtaxi/a/a/dw;

.field private final e:Lcom/ddtaxi/a/a/eb;

.field private f:Lcom/ddtaxi/a/a/dl;

.field private g:Lcom/ddtaxi/a/a/dl;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/ca;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/eb;I)V
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/dy;-><init>()V

    iput p4, p0, Lcom/ddtaxi/a/a/dz;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/dz;->b:Lcom/ddtaxi/a/a/ca;

    iput-object p2, p0, Lcom/ddtaxi/a/a/dz;->d:Lcom/ddtaxi/a/a/dw;

    iput-object p3, p0, Lcom/ddtaxi/a/a/dz;->e:Lcom/ddtaxi/a/a/eb;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ddtaxi/a/a/eb;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ca;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dz;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/dm;->c(Lcom/ddtaxi/a/a/dy;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ca;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/eb;ILcom/ddtaxi/a/a/dz;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/dz;-><init>(Lcom/ddtaxi/a/a/ca;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/eb;I)V

    return-void
.end method

.method private a(Lcom/ddtaxi/a/a/ca;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/dz;->b:Lcom/ddtaxi/a/a/ca;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/dz;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/dz;->j()V

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/dz;Lcom/ddtaxi/a/a/ca;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/dz;->a(Lcom/ddtaxi/a/a/ca;)V

    return-void
.end method

.method private j()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x22

    iget-object v0, p0, Lcom/ddtaxi/a/a/dz;->d:Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/dz;->b:Lcom/ddtaxi/a/a/ca;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/ca;->k()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ddtaxi/a/a/dp;->a:Lcom/ddtaxi/a/a/dp;

    invoke-virtual {v0, v1, p0, v2}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dy;Lcom/ddtaxi/a/a/dp;)Lcom/ddtaxi/a/a/dy;

    move-result-object v0

    instance-of v1, v0, Lcom/ddtaxi/a/a/dl;

    if-nez v1, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ddtaxi/a/a/dz;->b:Lcom/ddtaxi/a/a/ca;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/ca;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/dl;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dz;->f:Lcom/ddtaxi/a/a/dl;

    iget-object v0, p0, Lcom/ddtaxi/a/a/dz;->d:Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/dz;->b:Lcom/ddtaxi/a/a/ca;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/ca;->n()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ddtaxi/a/a/dp;->a:Lcom/ddtaxi/a/a/dp;

    invoke-virtual {v0, v1, p0, v2}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dy;Lcom/ddtaxi/a/a/dp;)Lcom/ddtaxi/a/a/dy;

    move-result-object v0

    instance-of v1, v0, Lcom/ddtaxi/a/a/dl;

    if-nez v1, :cond_1

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ddtaxi/a/a/dz;->b:Lcom/ddtaxi/a/a/ca;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/ca;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/ddtaxi/a/a/dl;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dz;->g:Lcom/ddtaxi/a/a/dl;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/dz;->a:I

    return v0
.end method

.method public b()Lcom/ddtaxi/a/a/ca;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dz;->b:Lcom/ddtaxi/a/a/ca;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dz;->b:Lcom/ddtaxi/a/a/ca;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ca;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/dw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dz;->d:Lcom/ddtaxi/a/a/dw;

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/eb;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dz;->e:Lcom/ddtaxi/a/a/eb;

    return-object v0
.end method

.method public g()Lcom/ddtaxi/a/a/dl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dz;->f:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method public h()Lcom/ddtaxi/a/a/dl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dz;->g:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method public i()Lcom/ddtaxi/a/a/ce;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dz;->b:Lcom/ddtaxi/a/a/ca;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ca;->q()Lcom/ddtaxi/a/a/ce;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dz;->b()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    return-object v0
.end method
