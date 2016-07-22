.class final Lcom/ddtaxi/a/a/fi;
.super Lcom/ddtaxi/a/a/fj;


# instance fields
.field private m:Ljava/lang/reflect/Method;

.field private n:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/dt;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/ddtaxi/a/a/fj;-><init>(Lcom/ddtaxi/a/a/dt;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/fi;->a:Ljava/lang/Class;

    const-string v1, "valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/ddtaxi/a/a/ds;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fi;->m:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/ddtaxi/a/a/fi;->a:Ljava/lang/Class;

    const-string v1, "getValueDescriptor"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fi;->n:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public a(Lcom/ddtaxi/a/a/ep;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/fi;->n:Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/fj;->a(Lcom/ddtaxi/a/a/ep;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/et;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/fi;->n:Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/fj;->a(Lcom/ddtaxi/a/a/et;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/et;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/a/a/fi;->m:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/ddtaxi/a/a/fj;->a(Lcom/ddtaxi/a/a/et;Ljava/lang/Object;)V

    return-void
.end method
