.class final Lcom/ddtaxi/a/a/fh;
.super Lcom/ddtaxi/a/a/fg;


# instance fields
.field private final k:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/dt;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/fg;-><init>(Lcom/ddtaxi/a/a/dt;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fh;->a:Ljava/lang/Class;

    const-string v1, "newBuilder"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fh;->k:Ljava/lang/reflect/Method;

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/fh;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/fh;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gl;

    check-cast p1, Lcom/ddtaxi/a/a/gk;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/gl;->b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;

    move-result-object v0

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gl;->Z()Lcom/ddtaxi/a/a/gk;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/ddtaxi/a/a/gl;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/fh;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gl;

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/et;ILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/ddtaxi/a/a/fh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lcom/ddtaxi/a/a/fg;->a(Lcom/ddtaxi/a/a/et;ILjava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/ddtaxi/a/a/et;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/ddtaxi/a/a/fh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/ddtaxi/a/a/fg;->b(Lcom/ddtaxi/a/a/et;Ljava/lang/Object;)V

    return-void
.end method
