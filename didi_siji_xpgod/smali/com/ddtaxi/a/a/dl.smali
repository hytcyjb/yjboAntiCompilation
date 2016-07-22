.class public final Lcom/ddtaxi/a/a/dl;
.super Lcom/ddtaxi/a/a/dy;


# instance fields
.field private final a:I

.field private b:Lcom/ddtaxi/a/a/w;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/ddtaxi/a/a/dw;

.field private final e:Lcom/ddtaxi/a/a/dl;

.field private final f:[Lcom/ddtaxi/a/a/dl;

.field private final g:[Lcom/ddtaxi/a/a/dr;

.field private final h:[Lcom/ddtaxi/a/a/dt;

.field private final i:[Lcom/ddtaxi/a/a/dt;

.field private final j:[Lcom/ddtaxi/a/a/ea;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/w;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;I)V
    .locals 8

    invoke-direct {p0}, Lcom/ddtaxi/a/a/dy;-><init>()V

    iput p4, p0, Lcom/ddtaxi/a/a/dl;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/dl;->b:Lcom/ddtaxi/a/a/w;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/ddtaxi/a/a/dk;->a(Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dl;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/ddtaxi/a/a/dl;->d:Lcom/ddtaxi/a/a/dw;

    iput-object p3, p0, Lcom/ddtaxi/a/a/dl;->e:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->D()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/ea;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dl;->j:[Lcom/ddtaxi/a/a/ea;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->D()I

    move-result v0

    if-lt v4, v0, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->r()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/dl;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dl;->f:[Lcom/ddtaxi/a/a/dl;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->r()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->u()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/dr;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dl;->g:[Lcom/ddtaxi/a/a/dr;

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->u()I

    move-result v0

    if-lt v4, v0, :cond_2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->l()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/dt;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dl;->h:[Lcom/ddtaxi/a/a/dt;

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->l()I

    move-result v0

    if-lt v4, v0, :cond_3

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->o()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/dt;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dl;->i:[Lcom/ddtaxi/a/a/dt;

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->o()I

    move-result v0

    if-lt v4, v0, :cond_4

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->D()I

    move-result v1

    if-lt v0, v1, :cond_5

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->l()I

    move-result v1

    if-lt v0, v1, :cond_6

    invoke-static {p2}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/dm;->c(Lcom/ddtaxi/a/a/dy;)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/ddtaxi/a/a/dl;->j:[Lcom/ddtaxi/a/a/ea;

    new-instance v0, Lcom/ddtaxi/a/a/ea;

    invoke-virtual {p1, v4}, Lcom/ddtaxi/a/a/w;->k(I)Lcom/ddtaxi/a/a/ci;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/ddtaxi/a/a/ea;-><init>(Lcom/ddtaxi/a/a/ci;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;ILcom/ddtaxi/a/a/ea;)V

    aput-object v0, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/dl;->f:[Lcom/ddtaxi/a/a/dl;

    new-instance v2, Lcom/ddtaxi/a/a/dl;

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/w;->e(I)Lcom/ddtaxi/a/a/w;

    move-result-object v3

    invoke-direct {v2, v3, p2, p0, v0}, Lcom/ddtaxi/a/a/dl;-><init>(Lcom/ddtaxi/a/a/w;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/ddtaxi/a/a/dl;->g:[Lcom/ddtaxi/a/a/dr;

    new-instance v0, Lcom/ddtaxi/a/a/dr;

    invoke-virtual {p1, v4}, Lcom/ddtaxi/a/a/w;->g(I)Lcom/ddtaxi/a/a/ae;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/ddtaxi/a/a/dr;-><init>(Lcom/ddtaxi/a/a/ae;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;ILcom/ddtaxi/a/a/dr;)V

    aput-object v0, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/ddtaxi/a/a/dl;->h:[Lcom/ddtaxi/a/a/dt;

    new-instance v0, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {p1, v4}, Lcom/ddtaxi/a/a/w;->a(I)Lcom/ddtaxi/a/a/au;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/ddtaxi/a/a/dt;-><init>(Lcom/ddtaxi/a/a/au;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;IZLcom/ddtaxi/a/a/dt;)V

    aput-object v0, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/ddtaxi/a/a/dl;->i:[Lcom/ddtaxi/a/a/dt;

    new-instance v0, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {p1, v4}, Lcom/ddtaxi/a/a/w;->c(I)Lcom/ddtaxi/a/a/au;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/ddtaxi/a/a/dt;-><init>(Lcom/ddtaxi/a/a/au;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;IZLcom/ddtaxi/a/a/dt;)V

    aput-object v0, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/ddtaxi/a/a/dl;->j:[Lcom/ddtaxi/a/a/ea;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ddtaxi/a/a/dl;->j:[Lcom/ddtaxi/a/a/ea;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/ea;->f()I

    move-result v2

    new-array v2, v2, [Lcom/ddtaxi/a/a/dt;

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/ea;->a(Lcom/ddtaxi/a/a/ea;[Lcom/ddtaxi/a/a/dt;)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/dl;->j:[Lcom/ddtaxi/a/a/ea;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/ea;->a(Lcom/ddtaxi/a/a/ea;I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_6
    iget-object v1, p0, Lcom/ddtaxi/a/a/dl;->h:[Lcom/ddtaxi/a/a/dt;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->w()Lcom/ddtaxi/a/a/ea;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/ddtaxi/a/a/ea;->a(Lcom/ddtaxi/a/a/ea;)[Lcom/ddtaxi/a/a/dt;

    move-result-object v2

    invoke-static {v1}, Lcom/ddtaxi/a/a/ea;->b(Lcom/ddtaxi/a/a/ea;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v1, v4}, Lcom/ddtaxi/a/a/ea;->a(Lcom/ddtaxi/a/a/ea;I)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/dl;->h:[Lcom/ddtaxi/a/a/dt;

    aget-object v1, v1, v0

    aput-object v1, v2, v3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/w;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;ILcom/ddtaxi/a/a/dl;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/dl;-><init>(Lcom/ddtaxi/a/a/w;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/dy;-><init>()V

    const-string v0, ""

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput v4, p0, Lcom/ddtaxi/a/a/dl;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/w;->N()Lcom/ddtaxi/a/a/y;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ddtaxi/a/a/y;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/y;

    move-result-object v1

    invoke-static {}, Lcom/ddtaxi/a/a/z;->k()Lcom/ddtaxi/a/a/ab;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ddtaxi/a/a/ab;->a(I)Lcom/ddtaxi/a/a/ab;

    move-result-object v2

    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Lcom/ddtaxi/a/a/ab;->b(I)Lcom/ddtaxi/a/a/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/ab;->l()Lcom/ddtaxi/a/a/z;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ddtaxi/a/a/y;->a(Lcom/ddtaxi/a/a/z;)Lcom/ddtaxi/a/a/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/y;->B()Lcom/ddtaxi/a/a/w;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/dl;->b:Lcom/ddtaxi/a/a/w;

    iput-object p1, p0, Lcom/ddtaxi/a/a/dl;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ddtaxi/a/a/dl;->e:Lcom/ddtaxi/a/a/dl;

    new-array v1, v4, [Lcom/ddtaxi/a/a/dl;

    iput-object v1, p0, Lcom/ddtaxi/a/a/dl;->f:[Lcom/ddtaxi/a/a/dl;

    new-array v1, v4, [Lcom/ddtaxi/a/a/dr;

    iput-object v1, p0, Lcom/ddtaxi/a/a/dl;->g:[Lcom/ddtaxi/a/a/dr;

    new-array v1, v4, [Lcom/ddtaxi/a/a/dt;

    iput-object v1, p0, Lcom/ddtaxi/a/a/dl;->h:[Lcom/ddtaxi/a/a/dt;

    new-array v1, v4, [Lcom/ddtaxi/a/a/dt;

    iput-object v1, p0, Lcom/ddtaxi/a/a/dl;->i:[Lcom/ddtaxi/a/a/dt;

    new-array v1, v4, [Lcom/ddtaxi/a/a/ea;

    iput-object v1, p0, Lcom/ddtaxi/a/a/dl;->j:[Lcom/ddtaxi/a/a/ea;

    new-instance v1, Lcom/ddtaxi/a/a/dw;

    invoke-direct {v1, v0, p0}, Lcom/ddtaxi/a/a/dw;-><init>(Ljava/lang/String;Lcom/ddtaxi/a/a/dl;)V

    iput-object v1, p0, Lcom/ddtaxi/a/a/dl;->d:Lcom/ddtaxi/a/a/dw;

    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/dl;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/dl;->o()V

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/dl;->a(Lcom/ddtaxi/a/a/w;)V

    return-void
.end method

.method private a(Lcom/ddtaxi/a/a/w;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/ddtaxi/a/a/dl;->b:Lcom/ddtaxi/a/a/w;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/ddtaxi/a/a/dl;->f:[Lcom/ddtaxi/a/a/dl;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/ddtaxi/a/a/dl;->g:[Lcom/ddtaxi/a/a/dr;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/ddtaxi/a/a/dl;->h:[Lcom/ddtaxi/a/a/dt;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    :goto_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->i:[Lcom/ddtaxi/a/a/dt;

    array-length v0, v0

    if-lt v1, v0, :cond_3

    return-void

    :cond_0
    iget-object v2, p0, Lcom/ddtaxi/a/a/dl;->f:[Lcom/ddtaxi/a/a/dl;

    aget-object v2, v2, v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/w;->e(I)Lcom/ddtaxi/a/a/w;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ddtaxi/a/a/dl;->a(Lcom/ddtaxi/a/a/w;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ddtaxi/a/a/dl;->g:[Lcom/ddtaxi/a/a/dr;

    aget-object v2, v2, v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/w;->g(I)Lcom/ddtaxi/a/a/ae;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/dr;->a(Lcom/ddtaxi/a/a/dr;Lcom/ddtaxi/a/a/ae;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ddtaxi/a/a/dl;->h:[Lcom/ddtaxi/a/a/dt;

    aget-object v2, v2, v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/w;->a(I)Lcom/ddtaxi/a/a/au;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/dt;->a(Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/au;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->i:[Lcom/ddtaxi/a/a/dt;

    aget-object v0, v0, v1

    invoke-virtual {p1, v1}, Lcom/ddtaxi/a/a/w;->c(I)Lcom/ddtaxi/a/a/au;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ddtaxi/a/a/dt;->a(Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/au;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private o()V
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ddtaxi/a/a/dl;->f:[Lcom/ddtaxi/a/a/dl;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    iget-object v2, p0, Lcom/ddtaxi/a/a/dl;->h:[Lcom/ddtaxi/a/a/dt;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/ddtaxi/a/a/dl;->i:[Lcom/ddtaxi/a/a/dt;

    array-length v2, v1

    :goto_2
    if-lt v0, v2, :cond_2

    return-void

    :cond_0
    aget-object v4, v2, v1

    invoke-direct {v4}, Lcom/ddtaxi/a/a/dl;->o()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/ddtaxi/a/a/dt;->b(Lcom/ddtaxi/a/a/dt;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/ddtaxi/a/a/dt;->b(Lcom/ddtaxi/a/a/dt;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/dl;->a:I

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/dt;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->d:Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ddtaxi/a/a/dl;->c:Ljava/lang/String;

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

    instance-of v1, v0, Lcom/ddtaxi/a/a/dt;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->b:Lcom/ddtaxi/a/a/w;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/w;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/z;->h()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/z;->j()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/ddtaxi/a/a/dl;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->d:Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ddtaxi/a/a/dl;->c:Ljava/lang/String;

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

    instance-of v1, v0, Lcom/ddtaxi/a/a/dl;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ddtaxi/a/a/dl;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Lcom/ddtaxi/a/a/dt;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->d:Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/dm;->a(Lcom/ddtaxi/a/a/dm;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/ddtaxi/a/a/dn;

    invoke-direct {v1, p0, p1}, Lcom/ddtaxi/a/a/dn;-><init>(Lcom/ddtaxi/a/a/dy;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    return-object v0
.end method

.method public b()Lcom/ddtaxi/a/a/w;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->b:Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/ddtaxi/a/a/dr;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->d:Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ddtaxi/a/a/dl;->c:Ljava/lang/String;

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

    instance-of v1, v0, Lcom/ddtaxi/a/a/dr;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ddtaxi/a/a/dr;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->b:Lcom/ddtaxi/a/a/w;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/w;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/dw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->d:Lcom/ddtaxi/a/a/dw;

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->e:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method public g()Lcom/ddtaxi/a/a/bw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->b:Lcom/ddtaxi/a/a/w;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/w;->L()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->h:[Lcom/ddtaxi/a/a/dt;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->j:[Lcom/ddtaxi/a/a/ea;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->i:[Lcom/ddtaxi/a/a/dt;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->f:[Lcom/ddtaxi/a/a/dl;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->g:[Lcom/ddtaxi/a/a/dr;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dl;->b:Lcom/ddtaxi/a/a/w;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/w;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic n()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dl;->b()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    return-object v0
.end method
