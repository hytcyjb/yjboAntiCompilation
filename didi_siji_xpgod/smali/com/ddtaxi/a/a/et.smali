.class public abstract Lcom/ddtaxi/a/a/et;
.super Lcom/ddtaxi/a/a/b;


# instance fields
.field private a:Lcom/ddtaxi/a/a/ev;

.field private b:Lcom/ddtaxi/a/a/eu;

.field private c:Z

.field private d:Lcom/ddtaxi/a/a/im;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method protected constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/b;-><init>()V

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/et;->d:Lcom/ddtaxi/a/a/im;

    iput-object p1, p0, Lcom/ddtaxi/a/a/et;->a:Lcom/ddtaxi/a/a/ev;

    return-void
.end method

.method private a()Ljava/util/Map;
    .locals 5

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;)Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/et;->b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/et;->a_(Lcom/ddtaxi/a/a/dt;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/et;->b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/et;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->U()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->U()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public U()Lcom/ddtaxi/a/a/et;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/et;->d:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->aB()V

    return-object p0
.end method

.method public synthetic a(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/et;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;ILjava/lang/Object;)Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3}, Lcom/ddtaxi/a/a/fd;->a(Lcom/ddtaxi/a/a/et;ILjava/lang/Object;)V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/ddtaxi/a/a/fd;->a(Lcom/ddtaxi/a/a/et;Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/fd;->e(Lcom/ddtaxi/a/a/et;)Lcom/ddtaxi/a/a/gl;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/ddtaxi/a/a/fd;->a(Lcom/ddtaxi/a/a/et;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/ea;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/fe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/fe;->a(Lcom/ddtaxi/a/a/et;)Z

    move-result v0

    return v0
.end method

.method protected a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z
    .locals 1

    invoke-virtual {p2, p4, p1}, Lcom/ddtaxi/a/a/in;->a(ILcom/ddtaxi/a/a/o;)Z

    move-result v0

    return v0
.end method

.method protected aA()Lcom/ddtaxi/a/a/ev;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/et;->b:Lcom/ddtaxi/a/a/eu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/eu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ddtaxi/a/a/eu;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/eu;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/et;->b:Lcom/ddtaxi/a/a/eu;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/et;->b:Lcom/ddtaxi/a/a/eu;

    return-object v0
.end method

.method protected final aB()V
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/et;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/et;->a:Lcom/ddtaxi/a/a/ev;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/et;->a:Lcom/ddtaxi/a/a/ev;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/ev;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/et;->c:Z

    :cond_0
    return-void
.end method

.method public a_(Lcom/ddtaxi/a/a/dt;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/fd;->b(Lcom/ddtaxi/a/a/et;)Z

    move-result v0

    return v0
.end method

.method public synthetic an()Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->U()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ao()Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method aw()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/et;->a:Lcom/ddtaxi/a/a/ev;

    return-void
.end method

.method protected ax()V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/et;->a:Lcom/ddtaxi/a/a/ev;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->ay()V

    :cond_0
    return-void
.end method

.method protected ay()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/et;->c:Z

    return-void
.end method

.method protected az()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/et;->c:Z

    return v0
.end method

.method public b(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/dt;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/fe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/fe;->b(Lcom/ddtaxi/a/a/et;)Lcom/ddtaxi/a/a/dt;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/ddtaxi/a/a/fd;->b(Lcom/ddtaxi/a/a/et;Ljava/lang/Object;)V

    return-object p0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/dt;ILjava/lang/Object;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/et;->a(Lcom/ddtaxi/a/a/dt;ILjava/lang/Object;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/et;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/fd;->a(Lcom/ddtaxi/a/a/et;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/ddtaxi/a/a/dt;)I
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/fd;->c(Lcom/ddtaxi/a/a/et;)I

    move-result v0

    return v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/et;->e(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/et;->d:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->aB()V

    return-object p0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/et;->a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/et;->d:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method protected abstract c_()Lcom/ddtaxi/a/a/fc;
.end method

.method public d(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/fd;->d(Lcom/ddtaxi/a/a/et;)V

    return-object p0
.end method

.method public final d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/et;->d:Lcom/ddtaxi/a/a/im;

    invoke-static {v0}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/et;->d:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->aB()V

    return-object p0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/et;->b(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/et;->e(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/fe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/fe;->c(Lcom/ddtaxi/a/a/et;)V

    return-object p0
.end method

.method public synthetic e(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;)Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->c_()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    invoke-interface {v0}, Lcom/ddtaxi/a/a/fd;->a()Lcom/ddtaxi/a/a/gl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/et;->d(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/et;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/et;->a_(Lcom/ddtaxi/a/a/dt;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v3

    sget-object v4, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/et;->b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gk;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gk;->z()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/et;->a_(Lcom/ddtaxi/a/a/dt;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/et;->b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gk;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gk;->z()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0
.end method
