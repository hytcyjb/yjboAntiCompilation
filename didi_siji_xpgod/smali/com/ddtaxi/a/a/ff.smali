.class final Lcom/ddtaxi/a/a/ff;
.super Lcom/ddtaxi/a/a/fg;


# instance fields
.field private final k:Ljava/lang/reflect/Method;

.field private final l:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/dt;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/fg;-><init>(Lcom/ddtaxi/a/a/dt;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ff;->a:Ljava/lang/Class;

    const-string v1, "valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/ddtaxi/a/a/ds;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ff;->k:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/ddtaxi/a/a/ff;->a:Ljava/lang/Class;

    const-string v1, "getValueDescriptor"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ff;->l:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public a(Lcom/ddtaxi/a/a/ep;)Ljava/lang/Object;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/fg;->a(Lcom/ddtaxi/a/a/ep;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/ddtaxi/a/a/ff;->l:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/ep;I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/ff;->l:Ljava/lang/reflect/Method;

    invoke-super {p0, p1, p2}, Lcom/ddtaxi/a/a/fg;->a(Lcom/ddtaxi/a/a/ep;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/et;)Ljava/lang/Object;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/fg;->a(Lcom/ddtaxi/a/a/et;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/ddtaxi/a/a/ff;->l:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/et;I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/ff;->l:Ljava/lang/reflect/Method;

    invoke-super {p0, p1, p2}, Lcom/ddtaxi/a/a/fg;->a(Lcom/ddtaxi/a/a/et;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/et;ILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/a/a/ff;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lcom/ddtaxi/a/a/fg;->a(Lcom/ddtaxi/a/a/et;ILjava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/ddtaxi/a/a/et;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/a/a/ff;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/ep;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/ddtaxi/a/a/fg;->b(Lcom/ddtaxi/a/a/et;Ljava/lang/Object;)V

    return-void
.end method
