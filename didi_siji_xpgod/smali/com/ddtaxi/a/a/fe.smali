.class Lcom/ddtaxi/a/a/fe;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/ddtaxi/a/a/dl;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/dl;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/fe;->a:Lcom/ddtaxi/a/a/dl;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Case"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-static {p3, v0, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fe;->b:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Case"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-static {p4, v0, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fe;->c:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clear"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-static {p4, v0, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fe;->d:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public a(Lcom/ddtaxi/a/a/ep;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ddtaxi/a/a/fe;->b:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/fx;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/fx;->a()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/et;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ddtaxi/a/a/fe;->c:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/fx;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/fx;->a()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/dt;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fe;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/fx;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/fx;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/a/a/fe;->a:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/dl;->b(I)Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/ddtaxi/a/a/et;)Lcom/ddtaxi/a/a/dt;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fe;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/fx;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/fx;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/a/a/fe;->a:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/dl;->b(I)Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/ddtaxi/a/a/et;)V
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fe;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
