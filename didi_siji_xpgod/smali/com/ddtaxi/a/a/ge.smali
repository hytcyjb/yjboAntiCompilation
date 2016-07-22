.class public Lcom/ddtaxi/a/a/ge;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/ddtaxi/a/a/gh;
.implements Ljava/util/RandomAccess;


# static fields
.field public static final a:Lcom/ddtaxi/a/a/gh;


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/ge;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/ge;-><init>()V

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ge;->d()Lcom/ddtaxi/a/a/gh;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/ge;->a:Lcom/ddtaxi/a/a/gh;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/ddtaxi/a/a/gh;)V
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/ddtaxi/a/a/gh;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ge;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)[B
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/ge;->e(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Lcom/ddtaxi/a/a/k;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/ge;->d(Ljava/lang/Object;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/ddtaxi/a/a/k;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lcom/ddtaxi/a/a/fw;->b([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static d(Ljava/lang/Object;)Lcom/ddtaxi/a/a/k;
    .locals 1

    instance-of v0, p0, Lcom/ddtaxi/a/a/k;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/ddtaxi/a/a/k;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object p0

    goto :goto_0

    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lcom/ddtaxi/a/a/k;->a([B)Lcom/ddtaxi/a/a/k;

    move-result-object p0

    goto :goto_0
.end method

.method private static e(Ljava/lang/Object;)[B
    .locals 1

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/ddtaxi/a/a/fw;->e(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_1
    check-cast p0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->e()[B

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/ddtaxi/a/a/k;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    check-cast v0, [B

    invoke-static {v0}, Lcom/ddtaxi/a/a/fw;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/ddtaxi/a/a/fw;->a([B)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/ge;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ddtaxi/a/a/k;)V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/ddtaxi/a/a/gh;)V
    .locals 4

    invoke-interface {p1}, Lcom/ddtaxi/a/a/gh;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, [B

    if-eqz v2, :cond_1

    check-cast v0, [B

    iget-object v2, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/k;)V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    return-void
.end method

.method public a([B)V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    return-void
.end method

.method public a(Ljava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    iget v1, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    return v0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ge;->b(ILjava/lang/String;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2

    instance-of v0, p2, Lcom/ddtaxi/a/a/gh;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/ddtaxi/a/a/gh;

    invoke-interface {p2}, Lcom/ddtaxi/a/a/gh;->a()Ljava/util/List;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    iget v1, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ge;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/ddtaxi/a/a/ge;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    invoke-static {v0}, Lcom/ddtaxi/a/a/ge;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/gf;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/gf;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    return-void
.end method

.method public b(Ljava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    iget v1, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    return v0
.end method

.method public c(I)Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/ge;->d(Ljava/lang/Object;)Lcom/ddtaxi/a/a/k;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public c()Ljava/util/List;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/gg;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/gg;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ge;->modCount:I

    return-void
.end method

.method public d()Lcom/ddtaxi/a/a/gh;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/ir;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/ir;-><init>(Lcom/ddtaxi/a/a/gh;)V

    return-object v0
.end method

.method public d(I)[B
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/ge;->e(Ljava/lang/Object;)[B

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ge;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ge;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ge;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ge;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
