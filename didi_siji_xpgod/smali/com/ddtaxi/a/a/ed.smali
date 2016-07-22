.class Lcom/ddtaxi/a/a/ed;
.super Lcom/ddtaxi/a/a/f;


# instance fields
.field final synthetic a:Lcom/ddtaxi/a/a/ec;


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/ec;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/ed;->a:Lcom/ddtaxi/a/a/ec;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ec;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/ed;->a:Lcom/ddtaxi/a/a/ec;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ec;->a(Lcom/ddtaxi/a/a/ec;)Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/ec;->b(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/ee;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    :try_end_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ee;->e()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ee;->e()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/fz;->a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v1

    new-instance v2, Lcom/ddtaxi/a/a/fz;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/ddtaxi/a/a/fz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ee;->e()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ddtaxi/a/a/fz;->a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ed;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method
