.class public final Lcom/ddtaxi/a/a/in;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/gn;


# instance fields
.field private a:Ljava/util/Map;

.field private b:I

.field private c:Lcom/ddtaxi/a/a/ip;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(I)Lcom/ddtaxi/a/a/ip;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/in;->c:Lcom/ddtaxi/a/a/ip;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/in;->b:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/in;->c:Lcom/ddtaxi/a/a/ip;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/in;->b:I

    iget-object v1, p0, Lcom/ddtaxi/a/a/in;->c:Lcom/ddtaxi/a/a/ip;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/ip;->a()Lcom/ddtaxi/a/a/io;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/in;->b(ILcom/ddtaxi/a/a/io;)Lcom/ddtaxi/a/a/in;

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/in;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/io;

    iput p1, p0, Lcom/ddtaxi/a/a/in;->b:I

    invoke-static {}, Lcom/ddtaxi/a/a/io;->a()Lcom/ddtaxi/a/a/ip;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/in;->c:Lcom/ddtaxi/a/a/ip;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ddtaxi/a/a/in;->c:Lcom/ddtaxi/a/a/ip;

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/ip;->a(Lcom/ddtaxi/a/a/io;)Lcom/ddtaxi/a/a/ip;

    :cond_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/in;->c:Lcom/ddtaxi/a/a/ip;

    goto :goto_0
.end method

.method static synthetic g()Lcom/ddtaxi/a/a/in;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/in;->h()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method private static h()Lcom/ddtaxi/a/a/in;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/in;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/in;-><init>()V

    invoke-direct {v0}, Lcom/ddtaxi/a/a/in;->i()V

    return-object v0
.end method

.method private i()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/in;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/in;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/in;->c:Lcom/ddtaxi/a/a/ip;

    return-void
.end method


# virtual methods
.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/in;->d()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/in;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/in;->c()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/in;->e()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/ddtaxi/a/a/im;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/in;->c(I)Lcom/ddtaxi/a/a/ip;

    iget-object v0, p0, Lcom/ddtaxi/a/a/in;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    :goto_0
    iput-object v2, p0, Lcom/ddtaxi/a/a/in;->a:Ljava/util/Map;

    return-object v0

    :cond_0
    new-instance v0, Lcom/ddtaxi/a/a/im;

    iget-object v1, p0, Lcom/ddtaxi/a/a/in;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/ddtaxi/a/a/im;-><init>(Ljava/util/Map;Lcom/ddtaxi/a/a/im;)V

    goto :goto_0
.end method

.method public a(I)Lcom/ddtaxi/a/a/in;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/in;->c:Lcom/ddtaxi/a/a/ip;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/in;->b:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/in;->c:Lcom/ddtaxi/a/a/ip;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/in;->b:I

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/in;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/in;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method

.method public a(II)Lcom/ddtaxi/a/a/in;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/in;->c(I)Lcom/ddtaxi/a/a/ip;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/ip;->a(J)Lcom/ddtaxi/a/a/ip;

    return-object p0
.end method

.method public a(ILcom/ddtaxi/a/a/io;)Lcom/ddtaxi/a/a/in;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/in;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/in;->c(I)Lcom/ddtaxi/a/a/ip;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ddtaxi/a/a/ip;->a(Lcom/ddtaxi/a/a/io;)Lcom/ddtaxi/a/a/ip;

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/in;->b(ILcom/ddtaxi/a/a/io;)Lcom/ddtaxi/a/a/in;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/in;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/ddtaxi/a/a/im;->b(Lcom/ddtaxi/a/a/im;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/io;

    invoke-virtual {p0, v1, v0}, Lcom/ddtaxi/a/a/in;->a(ILcom/ddtaxi/a/a/io;)Lcom/ddtaxi/a/a/in;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/in;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->k()Lcom/ddtaxi/a/a/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/in;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/o;->a(I)V
    :try_end_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/in;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/in;
    .locals 1

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/ddtaxi/a/a/in;->a(ILcom/ddtaxi/a/a/o;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/in;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/in;
    .locals 2

    invoke-static {p1}, Lcom/ddtaxi/a/a/o;->a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/in;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/o;->a(I)V

    return-object p0
.end method

.method public a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/in;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/in;->a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public a([B)Lcom/ddtaxi/a/a/in;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/ddtaxi/a/a/o;->a([B)Lcom/ddtaxi/a/a/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/in;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/o;->a(I)V
    :try_end_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a([BII)Lcom/ddtaxi/a/a/in;
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ddtaxi/a/a/o;->a([BII)Lcom/ddtaxi/a/a/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/in;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/o;->a(I)V
    :try_end_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/in;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/in;->a([BII)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/in;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/in;->a([B)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ddtaxi/a/a/o;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/ddtaxi/a/a/iv;->b(I)I

    move-result v1

    invoke-static {p1}, Lcom/ddtaxi/a/a/iv;->a(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->g()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/ddtaxi/a/a/in;->c(I)Lcom/ddtaxi/a/a/ip;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/o;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ddtaxi/a/a/ip;->a(J)Lcom/ddtaxi/a/a/ip;

    :goto_0
    return v0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/ddtaxi/a/a/in;->c(I)Lcom/ddtaxi/a/a/ip;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/o;->i()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ddtaxi/a/a/ip;->b(J)Lcom/ddtaxi/a/a/ip;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/ddtaxi/a/a/in;->c(I)Lcom/ddtaxi/a/a/ip;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ddtaxi/a/a/ip;->a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/ip;

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v2

    invoke-static {}, Lcom/ddtaxi/a/a/ei;->b()Lcom/ddtaxi/a/a/ei;

    move-result-object v3

    invoke-virtual {p2, v1, v2, v3}, Lcom/ddtaxi/a/a/o;->a(ILcom/ddtaxi/a/a/gn;Lcom/ddtaxi/a/a/el;)V

    invoke-direct {p0, v1}, Lcom/ddtaxi/a/a/in;->c(I)Lcom/ddtaxi/a/a/ip;

    move-result-object v1

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ddtaxi/a/a/ip;->a(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/ip;

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, v1}, Lcom/ddtaxi/a/a/in;->c(I)Lcom/ddtaxi/a/a/ip;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/o;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ddtaxi/a/a/ip;->a(I)Lcom/ddtaxi/a/a/ip;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([B)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/in;->a([B)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([BII)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/in;->a([BII)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/in;->a([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/in;->a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/ddtaxi/a/a/im;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    return-object v0
.end method

.method public b(ILcom/ddtaxi/a/a/io;)Lcom/ddtaxi/a/a/in;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/in;->c:Lcom/ddtaxi/a/a/ip;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/in;->b:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/in;->c:Lcom/ddtaxi/a/a/ip;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/in;->b:I

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/in;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/in;->a:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/in;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b(I)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zero is not a valid field number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/in;->b:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/in;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/io/InputStream;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/o;->a(ILjava/io/InputStream;)I

    move-result v0

    new-instance v1, Lcom/ddtaxi/a/a/e;

    invoke-direct {v1, p1, v0}, Lcom/ddtaxi/a/a/e;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/in;->a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/in;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/in;->b(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public synthetic c(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/in;->a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/in;->a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/ddtaxi/a/a/in;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/in;->c(I)Lcom/ddtaxi/a/a/ip;

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    new-instance v1, Lcom/ddtaxi/a/a/im;

    iget-object v2, p0, Lcom/ddtaxi/a/a/in;->a:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ddtaxi/a/a/im;-><init>(Ljava/util/Map;Lcom/ddtaxi/a/a/im;)V

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/in;->c()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/im;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/in;
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/in;->i()V

    return-object p0
.end method

.method public f()Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/in;->c(I)Lcom/ddtaxi/a/a/ip;

    iget-object v0, p0, Lcom/ddtaxi/a/a/in;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
