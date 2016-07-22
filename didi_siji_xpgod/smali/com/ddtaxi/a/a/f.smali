.class public abstract Lcom/ddtaxi/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/gv;


# static fields
.field private static final a:Lcom/ddtaxi/a/a/el;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/el;->j()Lcom/ddtaxi/a/a/el;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/f;->a:Lcom/ddtaxi/a/a/el;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/il;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/a/a/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/a/a/c;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/c;->W()Lcom/ddtaxi/a/a/il;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ddtaxi/a/a/il;

    invoke-direct {v0, p1}, Lcom/ddtaxi/a/a/il;-><init>(Lcom/ddtaxi/a/a/gm;)V

    goto :goto_0
.end method

.method private b(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ddtaxi/a/a/gm;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/f;->a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/il;->b()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/fz;->a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/f;->a:Lcom/ddtaxi/a/a/el;

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/f;->a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->k()Lcom/ddtaxi/a/a/o;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;
    :try_end_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/ddtaxi/a/a/o;->a(I)V
    :try_end_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/fz;->a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    throw v0
.end method

.method public a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/f;->a:Lcom/ddtaxi/a/a/el;

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/f;->a:Lcom/ddtaxi/a/a/el;

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/f;->a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;
    .locals 3

    invoke-static {p1}, Lcom/ddtaxi/a/a/o;->a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/o;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/ddtaxi/a/a/o;->a(I)V
    :try_end_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/fz;->a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0
.end method

.method public a([B)Lcom/ddtaxi/a/a/gm;
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    sget-object v2, Lcom/ddtaxi/a/a/f;->a:Lcom/ddtaxi/a/a/el;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ddtaxi/a/a/f;->a([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public a([BII)Lcom/ddtaxi/a/a/gm;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/f;->a:Lcom/ddtaxi/a/a/el;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ddtaxi/a/a/f;->a([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public a([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ddtaxi/a/a/o;->a([BII)Lcom/ddtaxi/a/a/o;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;
    :try_end_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/ddtaxi/a/a/o;->a(I)V
    :try_end_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/fz;->a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    throw v0
.end method

.method public a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/ddtaxi/a/a/f;->a([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/f;->a:Lcom/ddtaxi/a/a/el;

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/f;->a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/f;->a:Lcom/ddtaxi/a/a/el;

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/f;->c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/f;->a:Lcom/ddtaxi/a/a/el;

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/f;->b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/f;->a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public b([B)Lcom/ddtaxi/a/a/gm;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/f;->a:Lcom/ddtaxi/a/a/el;

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/f;->b([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public b([BII)Lcom/ddtaxi/a/a/gm;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/f;->a:Lcom/ddtaxi/a/a/el;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ddtaxi/a/a/f;->b([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public b([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/f;->a([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public b([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/ddtaxi/a/a/f;->b([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/f;->a:Lcom/ddtaxi/a/a/el;

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/f;->c(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/o;->a(ILjava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    new-instance v1, Lcom/ddtaxi/a/a/e;

    invoke-direct {v1, p1, v0}, Lcom/ddtaxi/a/a/e;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0, v1, p2}, Lcom/ddtaxi/a/a/f;->a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/ddtaxi/a/a/fz;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ddtaxi/a/a/fz;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([B)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/f;->b([B)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([BII)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/f;->b([BII)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([BIILcom/ddtaxi/a/a/el;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/f;->b([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/f;->b([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/f;->a:Lcom/ddtaxi/a/a/el;

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/f;->d(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/f;->c(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/f;->b(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/f;->a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/f;->a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/f;->a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/f;->c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d([B)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/f;->a([B)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d([BII)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/f;->a([BII)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d([BIILcom/ddtaxi/a/a/el;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/f;->a([BIILcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/f;->a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/f;->d(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/f;->d(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/f;->b(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/f;->b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/f;->c(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/f;->c(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/f;->a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/f;->a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method
