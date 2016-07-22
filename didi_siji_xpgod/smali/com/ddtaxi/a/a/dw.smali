.class public final Lcom/ddtaxi/a/a/dw;
.super Lcom/ddtaxi/a/a/dy;


# instance fields
.field private a:Lcom/ddtaxi/a/a/bi;

.field private final b:[Lcom/ddtaxi/a/a/dl;

.field private final c:[Lcom/ddtaxi/a/a/dr;

.field private final d:[Lcom/ddtaxi/a/a/eb;

.field private final e:[Lcom/ddtaxi/a/a/dt;

.field private final f:[Lcom/ddtaxi/a/a/dw;

.field private final g:[Lcom/ddtaxi/a/a/dw;

.field private final h:Lcom/ddtaxi/a/a/dm;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/bi;[Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dm;Z)V
    .locals 8

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/dy;-><init>()V

    iput-object p3, p0, Lcom/ddtaxi/a/a/dw;->h:Lcom/ddtaxi/a/a/dm;

    iput-object p1, p0, Lcom/ddtaxi/a/a/dw;->a:Lcom/ddtaxi/a/a/bi;

    invoke-virtual {p2}, [Lcom/ddtaxi/a/a/dw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ddtaxi/a/a/dw;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->f:[Lcom/ddtaxi/a/a/dw;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v1, p2

    move v0, v6

    :goto_0
    if-lt v0, v1, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v6

    :goto_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bi;->p()I

    move-result v0

    if-lt v1, v0, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/dw;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->g:[Lcom/ddtaxi/a/a/dw;

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->g:[Lcom/ddtaxi/a/a/dw;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p0}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dw;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bi;->u()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/dl;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->b:[Lcom/ddtaxi/a/a/dl;

    move v4, v6

    :goto_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bi;->u()I

    move-result v0

    if-lt v4, v0, :cond_6

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bi;->x()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/dr;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->c:[Lcom/ddtaxi/a/a/dr;

    move v4, v6

    :goto_3
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bi;->x()I

    move-result v0

    if-lt v4, v0, :cond_7

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bi;->D()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/eb;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->d:[Lcom/ddtaxi/a/a/eb;

    move v0, v6

    :goto_4
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bi;->D()I

    move-result v1

    if-lt v0, v1, :cond_8

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bi;->M()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/dt;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->e:[Lcom/ddtaxi/a/a/dt;

    move v4, v6

    :goto_5
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bi;->M()I

    move-result v0

    if-lt v4, v0, :cond_9

    return-void

    :cond_0
    aget-object v4, p2, v0

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/dw;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/ddtaxi/a/a/bi;->c(I)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bi;->n()I

    move-result v5

    if-lt v0, v5, :cond_3

    :cond_2
    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "Invalid public dependency index."

    invoke-direct {v0, p0, v1, v3}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dw;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_3
    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/bi;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dw;

    if-nez v0, :cond_4

    if-nez p4, :cond_5

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid public dependency: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dw;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_4
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_6
    iget-object v7, p0, Lcom/ddtaxi/a/a/dw;->b:[Lcom/ddtaxi/a/a/dl;

    new-instance v0, Lcom/ddtaxi/a/a/dl;

    invoke-virtual {p1, v4}, Lcom/ddtaxi/a/a/bi;->e(I)Lcom/ddtaxi/a/a/w;

    move-result-object v1

    move-object v2, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/ddtaxi/a/a/dl;-><init>(Lcom/ddtaxi/a/a/w;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;ILcom/ddtaxi/a/a/dl;)V

    aput-object v0, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_7
    iget-object v7, p0, Lcom/ddtaxi/a/a/dw;->c:[Lcom/ddtaxi/a/a/dr;

    new-instance v0, Lcom/ddtaxi/a/a/dr;

    invoke-virtual {p1, v4}, Lcom/ddtaxi/a/a/bi;->g(I)Lcom/ddtaxi/a/a/ae;

    move-result-object v1

    move-object v2, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/ddtaxi/a/a/dr;-><init>(Lcom/ddtaxi/a/a/ae;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;ILcom/ddtaxi/a/a/dr;)V

    aput-object v0, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_8
    iget-object v1, p0, Lcom/ddtaxi/a/a/dw;->d:[Lcom/ddtaxi/a/a/eb;

    new-instance v2, Lcom/ddtaxi/a/a/eb;

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/bi;->i(I)Lcom/ddtaxi/a/a/cm;

    move-result-object v4

    invoke-direct {v2, v4, p0, v0, v3}, Lcom/ddtaxi/a/a/eb;-><init>(Lcom/ddtaxi/a/a/cm;Lcom/ddtaxi/a/a/dw;ILcom/ddtaxi/a/a/eb;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_9
    iget-object v7, p0, Lcom/ddtaxi/a/a/dw;->e:[Lcom/ddtaxi/a/a/dt;

    new-instance v0, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {p1, v4}, Lcom/ddtaxi/a/a/bi;->k(I)Lcom/ddtaxi/a/a/au;

    move-result-object v1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/ddtaxi/a/a/dt;-><init>(Lcom/ddtaxi/a/a/au;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;IZLcom/ddtaxi/a/a/dt;)V

    aput-object v0, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5
.end method

.method constructor <init>(Ljava/lang/String;Lcom/ddtaxi/a/a/dl;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/dy;-><init>()V

    new-instance v0, Lcom/ddtaxi/a/a/dm;

    new-array v1, v3, [Lcom/ddtaxi/a/a/dw;

    invoke-direct {v0, v1, v4}, Lcom/ddtaxi/a/a/dm;-><init>([Lcom/ddtaxi/a/a/dw;Z)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->h:Lcom/ddtaxi/a/a/dm;

    invoke-static {}, Lcom/ddtaxi/a/a/bi;->T()Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/dl;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".placeholder.proto"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/bk;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/bk;->b(Ljava/lang/String;)Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/dl;->b()Lcom/ddtaxi/a/a/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/bk;->a(Lcom/ddtaxi/a/a/w;)Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bk;->B()Lcom/ddtaxi/a/a/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->a:Lcom/ddtaxi/a/a/bi;

    new-array v0, v3, [Lcom/ddtaxi/a/a/dw;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->f:[Lcom/ddtaxi/a/a/dw;

    new-array v0, v3, [Lcom/ddtaxi/a/a/dw;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->g:[Lcom/ddtaxi/a/a/dw;

    new-array v0, v4, [Lcom/ddtaxi/a/a/dl;

    aput-object p2, v0, v3

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->b:[Lcom/ddtaxi/a/a/dl;

    new-array v0, v3, [Lcom/ddtaxi/a/a/dr;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->c:[Lcom/ddtaxi/a/a/dr;

    new-array v0, v3, [Lcom/ddtaxi/a/a/eb;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->d:[Lcom/ddtaxi/a/a/eb;

    new-array v0, v3, [Lcom/ddtaxi/a/a/dt;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dw;->e:[Lcom/ddtaxi/a/a/dt;

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->h:Lcom/ddtaxi/a/a/dm;

    invoke-virtual {v0, p1, p0}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dw;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->h:Lcom/ddtaxi/a/a/dm;

    invoke-virtual {v0, p2}, Lcom/ddtaxi/a/a/dm;->c(Lcom/ddtaxi/a/a/dy;)V

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->h:Lcom/ddtaxi/a/a/dm;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/bi;[Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dw;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/bi;[Lcom/ddtaxi/a/a/dw;Z)Lcom/ddtaxi/a/a/dw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/ddtaxi/a/a/bi;[Lcom/ddtaxi/a/a/dw;Z)Lcom/ddtaxi/a/a/dw;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/dm;

    invoke-direct {v0, p1, p2}, Lcom/ddtaxi/a/a/dm;-><init>([Lcom/ddtaxi/a/a/dw;Z)V

    new-instance v1, Lcom/ddtaxi/a/a/dw;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/ddtaxi/a/a/dw;-><init>(Lcom/ddtaxi/a/a/bi;[Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dm;Z)V

    invoke-direct {v1}, Lcom/ddtaxi/a/a/dw;->m()V

    return-object v1
.end method

.method private a(Lcom/ddtaxi/a/a/bi;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/ddtaxi/a/a/dw;->a:Lcom/ddtaxi/a/a/bi;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/ddtaxi/a/a/dw;->b:[Lcom/ddtaxi/a/a/dl;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/ddtaxi/a/a/dw;->c:[Lcom/ddtaxi/a/a/dr;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/ddtaxi/a/a/dw;->d:[Lcom/ddtaxi/a/a/eb;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    :goto_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->e:[Lcom/ddtaxi/a/a/dt;

    array-length v0, v0

    if-lt v1, v0, :cond_3

    return-void

    :cond_0
    iget-object v2, p0, Lcom/ddtaxi/a/a/dw;->b:[Lcom/ddtaxi/a/a/dl;

    aget-object v2, v2, v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/bi;->e(I)Lcom/ddtaxi/a/a/w;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/dl;->a(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/w;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ddtaxi/a/a/dw;->c:[Lcom/ddtaxi/a/a/dr;

    aget-object v2, v2, v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/bi;->g(I)Lcom/ddtaxi/a/a/ae;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/dr;->a(Lcom/ddtaxi/a/a/dr;Lcom/ddtaxi/a/a/ae;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ddtaxi/a/a/dw;->d:[Lcom/ddtaxi/a/a/eb;

    aget-object v2, v2, v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/bi;->i(I)Lcom/ddtaxi/a/a/cm;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/eb;->a(Lcom/ddtaxi/a/a/eb;Lcom/ddtaxi/a/a/cm;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->e:[Lcom/ddtaxi/a/a/dt;

    aget-object v0, v0, v1

    invoke-virtual {p1, v1}, Lcom/ddtaxi/a/a/bi;->k(I)Lcom/ddtaxi/a/a/au;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ddtaxi/a/a/dt;->a(Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/au;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static a(Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/ei;)V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->a:Lcom/ddtaxi/a/a/bi;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bi;->X()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/bi;->a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/bi;
    :try_end_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/bi;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Lcom/ddtaxi/a/a/dx;)V
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p2

    if-lt v1, v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/dw;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p0, v0, p4}, Lcom/ddtaxi/a/a/dw;->a([Ljava/lang/String;[Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dx;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "descriptor"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dw;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/ddtaxi/a/a/dk;->a()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Descriptors for \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p3, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" can not be found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a([Ljava/lang/String;[Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dx;)V
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lcom/ddtaxi/a/a/bi;->a([B)Lcom/ddtaxi/a/a/bi;
    :try_end_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    const/4 v2, 0x1

    :try_start_2
    invoke-static {v1, p1, v2}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/bi;[Lcom/ddtaxi/a/a/dw;Z)Lcom/ddtaxi/a/a/dw;
    :try_end_2
    .catch Lcom/ddtaxi/a/a/dq; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/ddtaxi/a/a/dx;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/ei;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_3
    invoke-static {v0, v2}, Lcom/ddtaxi/a/a/bi;->a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/bi;
    :try_end_3
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/bi;)V

    :cond_0
    return-void

    :cond_1
    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Standard encoding ISO-8859-1 not supported by JVM."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid embedded descriptor for \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/bi;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private m()V
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ddtaxi/a/a/dw;->b:[Lcom/ddtaxi/a/a/dl;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    iget-object v2, p0, Lcom/ddtaxi/a/a/dw;->d:[Lcom/ddtaxi/a/a/eb;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/ddtaxi/a/a/dw;->e:[Lcom/ddtaxi/a/a/dt;

    array-length v2, v1

    :goto_2
    if-lt v0, v2, :cond_2

    return-void

    :cond_0
    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/ddtaxi/a/a/dl;->a(Lcom/ddtaxi/a/a/dl;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/ddtaxi/a/a/eb;->a(Lcom/ddtaxi/a/a/eb;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/ddtaxi/a/a/dt;->b(Lcom/ddtaxi/a/a/dt;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public a()Lcom/ddtaxi/a/a/bi;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->a:Lcom/ddtaxi/a/a/bi;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/dl;
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->h:Lcom/ddtaxi/a/a/dm;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/dy;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/ddtaxi/a/a/dl;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dy;->e()Lcom/ddtaxi/a/a/dw;

    move-result-object v2

    if-ne v2, p0, :cond_2

    check-cast v0, Lcom/ddtaxi/a/a/dl;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/ddtaxi/a/a/dr;
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->h:Lcom/ddtaxi/a/a/dm;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/dy;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/ddtaxi/a/a/dr;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dy;->e()Lcom/ddtaxi/a/a/dw;

    move-result-object v2

    if-ne v2, p0, :cond_2

    check-cast v0, Lcom/ddtaxi/a/a/dr;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->a:Lcom/ddtaxi/a/a/bi;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bi;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/ddtaxi/a/a/eb;
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->h:Lcom/ddtaxi/a/a/dm;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/dy;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/ddtaxi/a/a/eb;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dy;->e()Lcom/ddtaxi/a/a/dw;

    move-result-object v2

    if-ne v2, p0, :cond_2

    check-cast v0, Lcom/ddtaxi/a/a/eb;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->a:Lcom/ddtaxi/a/a/bi;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bi;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/ddtaxi/a/a/dt;
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->h:Lcom/ddtaxi/a/a/dm;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/dy;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/ddtaxi/a/a/dt;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dy;->e()Lcom/ddtaxi/a/a/dw;

    move-result-object v2

    if-ne v2, p0, :cond_2

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->a:Lcom/ddtaxi/a/a/bi;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bi;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/dw;
    .locals 0

    return-object p0
.end method

.method public f()Lcom/ddtaxi/a/a/bq;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->a:Lcom/ddtaxi/a/a/bi;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bi;->O()Lcom/ddtaxi/a/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->b:[Lcom/ddtaxi/a/a/dl;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->c:[Lcom/ddtaxi/a/a/dr;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->d:[Lcom/ddtaxi/a/a/eb;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->e:[Lcom/ddtaxi/a/a/dt;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->f:[Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dw;->g:[Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dw;->a()Lcom/ddtaxi/a/a/bi;

    move-result-object v0

    return-object v0
.end method
