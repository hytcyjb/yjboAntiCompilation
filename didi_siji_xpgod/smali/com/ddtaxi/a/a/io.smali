.class public final Lcom/ddtaxi/a/a/io;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/ddtaxi/a/a/io;


# instance fields
.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/io;->a()Lcom/ddtaxi/a/a/ip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ip;->a()Lcom/ddtaxi/a/a/io;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/io;->a:Lcom/ddtaxi/a/a/io;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/io;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/io;-><init>()V

    return-void
.end method

.method public static a()Lcom/ddtaxi/a/a/ip;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ip;->c()Lcom/ddtaxi/a/a/ip;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/io;)Lcom/ddtaxi/a/a/ip;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/io;->a()Lcom/ddtaxi/a/a/ip;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/ip;->a(Lcom/ddtaxi/a/a/io;)Lcom/ddtaxi/a/a/ip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/io;->b:Ljava/util/List;

    return-void
.end method

.method public static b()Lcom/ddtaxi/a/a/io;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/io;->a:Lcom/ddtaxi/a/a/io;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/io;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/io;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/io;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/io;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic d(Lcom/ddtaxi/a/a/io;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/io;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic e(Lcom/ddtaxi/a/a/io;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/io;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic f(Lcom/ddtaxi/a/a/io;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->f:Ljava/util/List;

    return-object v0
.end method

.method private h()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ddtaxi/a/a/io;->b:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ddtaxi/a/a/io;->c:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ddtaxi/a/a/io;->d:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ddtaxi/a/a/io;->e:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ddtaxi/a/a/io;->f:Ljava/util/List;

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ddtaxi/a/a/io;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/ddtaxi/a/a/r;->f(IJ)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/r;->h(II)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/ddtaxi/a/a/r;->h(IJ)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_3

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/im;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/r;->e(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_4
.end method

.method public a(ILcom/ddtaxi/a/a/r;)V
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, p1, v2, v3}, Lcom/ddtaxi/a/a/r;->a(IJ)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/ddtaxi/a/a/r;->b(II)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, p1, v2, v3}, Lcom/ddtaxi/a/a/r;->c(IJ)V

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {p2, p1, v0}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/im;

    invoke-virtual {p2, p1, v0}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/gm;)V

    goto :goto_4
.end method

.method public b(I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ddtaxi/a/a/io;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/r;->d(ILcom/ddtaxi/a/a/k;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/r;)V
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->e:Ljava/util/List;

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

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {p2, p1, v0}, Lcom/ddtaxi/a/a/r;->b(ILcom/ddtaxi/a/a/k;)V

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->c:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->d:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/ddtaxi/a/a/io;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/ddtaxi/a/a/io;->h()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/ddtaxi/a/a/io;

    invoke-direct {p1}, Lcom/ddtaxi/a/a/io;->h()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->e:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/io;->f:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/io;->h()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
