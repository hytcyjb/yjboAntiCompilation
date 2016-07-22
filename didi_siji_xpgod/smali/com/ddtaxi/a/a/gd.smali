.class public Lcom/ddtaxi/a/a/gd;
.super Ljava/lang/Object;


# instance fields
.field protected volatile a:Lcom/ddtaxi/a/a/gm;

.field private b:Lcom/ddtaxi/a/a/k;

.field private c:Lcom/ddtaxi/a/a/el;

.field private volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/gd;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/gd;->d:Z

    iput-object p1, p0, Lcom/ddtaxi/a/a/gd;->c:Lcom/ddtaxi/a/a/el;

    iput-object p2, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    return-void
.end method

.method public static a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gd;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/gd;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/gd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/gd;->c(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gm;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ddtaxi/a/a/gd;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/gd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    iput-object v0, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/gd;->d:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/gd;->f()Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/k;->c(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/k;

    goto :goto_1
.end method

.method public a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)V
    .locals 1

    iput-object p1, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    iput-object p2, p0, Lcom/ddtaxi/a/a/gd;->c:Lcom/ddtaxi/a/a/el;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/gd;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->a:Lcom/ddtaxi/a/a/gm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/gd;->d(Lcom/ddtaxi/a/a/gm;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->a:Lcom/ddtaxi/a/a/gm;

    return-object v0
.end method

.method public c(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gm;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->a:Lcom/ddtaxi/a/a/gm;

    iput-object p1, p0, Lcom/ddtaxi/a/a/gd;->a:Lcom/ddtaxi/a/a/gm;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/gd;->d:Z

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    iput-object v0, p0, Lcom/ddtaxi/a/a/gd;->a:Lcom/ddtaxi/a/a/gm;

    iput-object v0, p0, Lcom/ddtaxi/a/a/gd;->c:Lcom/ddtaxi/a/a/el;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/gd;->d:Z

    return-void
.end method

.method public d()Lcom/ddtaxi/a/a/el;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->c:Lcom/ddtaxi/a/a/el;

    return-object v0
.end method

.method protected d(Lcom/ddtaxi/a/a/gm;)V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->a:Lcom/ddtaxi/a/a/gm;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->a:Lcom/ddtaxi/a/a/gm;

    if-eqz v0, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/ddtaxi/a/a/gm;->b_()Lcom/ddtaxi/a/a/gv;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    iget-object v2, p0, Lcom/ddtaxi/a/a/gd;->c:Lcom/ddtaxi/a/a/el;

    invoke-interface {v0, v1, v2}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    iput-object v0, p0, Lcom/ddtaxi/a/a/gd;->a:Lcom/ddtaxi/a/a/gm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/ddtaxi/a/a/gd;->a:Lcom/ddtaxi/a/a/gm;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public e()I
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/gd;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->a:Lcom/ddtaxi/a/a/gm;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gm;->A()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/ddtaxi/a/a/k;
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/gd;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ddtaxi/a/a/gd;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->a:Lcom/ddtaxi/a/a/gm;

    if-nez v0, :cond_2

    sget-object v0, Lcom/ddtaxi/a/a/k;->d:Lcom/ddtaxi/a/a/k;

    iput-object v0, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/gd;->d:Z

    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;

    monitor-exit p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/gd;->a:Lcom/ddtaxi/a/a/gm;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gm;->X()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/gd;->b:Lcom/ddtaxi/a/a/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
