.class public abstract Lcom/ddtaxi/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/gn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/il;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/il;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/il;-><init>(Lcom/ddtaxi/a/a/gm;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Iterable;)V
    .locals 2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected static a(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 2

    instance-of v0, p0, Lcom/ddtaxi/a/a/gh;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/ddtaxi/a/a/gh;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gh;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;)V

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;)V

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/d;->ap()Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public abstract ap()Lcom/ddtaxi/a/a/d;
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/d;->d(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/d;->d(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/d;->e(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([B)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/d;->d([B)Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([BII)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/d;->d([BII)Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/d;->d([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/d;->d([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/InputStream;)Z
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/el;->j()Lcom/ddtaxi/a/a/el;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/d;->b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Z
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

    invoke-virtual {p0, v1, p2}, Lcom/ddtaxi/a/a/d;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic c(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/d;->e(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/d;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/d;->ap()Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->k()Lcom/ddtaxi/a/a/o;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ddtaxi/a/a/d;->e(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;

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

.method public d(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/d;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/el;->j()Lcom/ddtaxi/a/a/el;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/d;->e(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public d([B)Lcom/ddtaxi/a/a/d;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ddtaxi/a/a/d;->d([BII)Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public d([BII)Lcom/ddtaxi/a/a/d;
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ddtaxi/a/a/o;->a([BII)Lcom/ddtaxi/a/a/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/d;->d(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/d;

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

.method public d([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ddtaxi/a/a/o;->a([BII)Lcom/ddtaxi/a/a/o;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/ddtaxi/a/a/d;->e(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;

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

.method public d([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/ddtaxi/a/a/d;->d([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/d;->f(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public abstract e(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;
.end method

.method public e(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/d;
    .locals 2

    invoke-static {p1}, Lcom/ddtaxi/a/a/o;->a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/d;->d(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/o;->a(I)V

    return-object p0
.end method

.method public e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;
    .locals 2

    invoke-static {p1}, Lcom/ddtaxi/a/a/o;->a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/o;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ddtaxi/a/a/d;->e(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/o;->a(I)V

    return-object p0
.end method

.method public f(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/d;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->k()Lcom/ddtaxi/a/a/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/d;->d(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/d;

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
