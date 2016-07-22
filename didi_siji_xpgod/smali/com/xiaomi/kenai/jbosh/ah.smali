.class final Lcom/xiaomi/kenai/jbosh/ah;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/xiaomi/kenai/jbosh/o;

.field private final b:Lcom/xiaomi/kenai/jbosh/q;

.field private final c:Lcom/xiaomi/kenai/jbosh/p;

.field private final d:Lcom/xiaomi/kenai/jbosh/m;

.field private final e:Lcom/xiaomi/kenai/jbosh/j;

.field private final f:Lcom/xiaomi/kenai/jbosh/n;

.field private final g:Lcom/xiaomi/kenai/jbosh/i;

.field private final h:Lcom/xiaomi/kenai/jbosh/f;

.field private final i:Lcom/xiaomi/kenai/jbosh/k;

.field private final j:Lcom/xiaomi/kenai/jbosh/g;

.field private final k:Lcom/xiaomi/kenai/jbosh/h;

.field private final l:Z


# direct methods
.method private constructor <init>(Lcom/xiaomi/kenai/jbosh/o;Lcom/xiaomi/kenai/jbosh/q;Lcom/xiaomi/kenai/jbosh/p;Lcom/xiaomi/kenai/jbosh/m;Lcom/xiaomi/kenai/jbosh/j;Lcom/xiaomi/kenai/jbosh/n;Lcom/xiaomi/kenai/jbosh/i;Lcom/xiaomi/kenai/jbosh/f;Lcom/xiaomi/kenai/jbosh/k;Lcom/xiaomi/kenai/jbosh/g;Lcom/xiaomi/kenai/jbosh/h;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/kenai/jbosh/ah;->a:Lcom/xiaomi/kenai/jbosh/o;

    iput-object p2, p0, Lcom/xiaomi/kenai/jbosh/ah;->b:Lcom/xiaomi/kenai/jbosh/q;

    iput-object p3, p0, Lcom/xiaomi/kenai/jbosh/ah;->c:Lcom/xiaomi/kenai/jbosh/p;

    iput-object p4, p0, Lcom/xiaomi/kenai/jbosh/ah;->d:Lcom/xiaomi/kenai/jbosh/m;

    iput-object p5, p0, Lcom/xiaomi/kenai/jbosh/ah;->e:Lcom/xiaomi/kenai/jbosh/j;

    iput-object p6, p0, Lcom/xiaomi/kenai/jbosh/ah;->f:Lcom/xiaomi/kenai/jbosh/n;

    iput-object p7, p0, Lcom/xiaomi/kenai/jbosh/ah;->g:Lcom/xiaomi/kenai/jbosh/i;

    iput-object p8, p0, Lcom/xiaomi/kenai/jbosh/ah;->h:Lcom/xiaomi/kenai/jbosh/f;

    iput-object p9, p0, Lcom/xiaomi/kenai/jbosh/ah;->i:Lcom/xiaomi/kenai/jbosh/k;

    iput-object p10, p0, Lcom/xiaomi/kenai/jbosh/ah;->j:Lcom/xiaomi/kenai/jbosh/g;

    iput-object p11, p0, Lcom/xiaomi/kenai/jbosh/ah;->k:Lcom/xiaomi/kenai/jbosh/h;

    iput-boolean p12, p0, Lcom/xiaomi/kenai/jbosh/ah;->l:Z

    return-void
.end method

.method static a(Lcom/xiaomi/kenai/jbosh/b;Lcom/xiaomi/kenai/jbosh/b;)Lcom/xiaomi/kenai/jbosh/ah;
    .locals 13

    sget-object v0, Lcom/xiaomi/kenai/jbosh/r;->c:Lcom/xiaomi/kenai/jbosh/ag;

    invoke-virtual {p1, v0}, Lcom/xiaomi/kenai/jbosh/b;->a(Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/kenai/jbosh/g;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/g;

    move-result-object v10

    sget-object v0, Lcom/xiaomi/kenai/jbosh/r;->q:Lcom/xiaomi/kenai/jbosh/ag;

    invoke-virtual {p0, v0}, Lcom/xiaomi/kenai/jbosh/b;->a(Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;

    move-result-object v1

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/xiaomi/kenai/jbosh/g;->a()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v12, 0x1

    :goto_0
    new-instance v0, Lcom/xiaomi/kenai/jbosh/ah;

    sget-object v1, Lcom/xiaomi/kenai/jbosh/r;->t:Lcom/xiaomi/kenai/jbosh/ag;

    invoke-static {p1, v1}, Lcom/xiaomi/kenai/jbosh/ah;->a(Lcom/xiaomi/kenai/jbosh/b;Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/o;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/kenai/jbosh/r;->z:Lcom/xiaomi/kenai/jbosh/ag;

    invoke-static {p1, v2}, Lcom/xiaomi/kenai/jbosh/ah;->a(Lcom/xiaomi/kenai/jbosh/b;Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/kenai/jbosh/q;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/q;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/kenai/jbosh/r;->y:Lcom/xiaomi/kenai/jbosh/ag;

    invoke-virtual {p1, v3}, Lcom/xiaomi/kenai/jbosh/b;->a(Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/kenai/jbosh/p;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/p;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/kenai/jbosh/r;->n:Lcom/xiaomi/kenai/jbosh/ag;

    invoke-virtual {p1, v4}, Lcom/xiaomi/kenai/jbosh/b;->a(Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/kenai/jbosh/m;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/m;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/kenai/jbosh/r;->i:Lcom/xiaomi/kenai/jbosh/ag;

    invoke-virtual {p1, v5}, Lcom/xiaomi/kenai/jbosh/b;->a(Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/kenai/jbosh/j;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/j;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/kenai/jbosh/r;->p:Lcom/xiaomi/kenai/jbosh/ag;

    invoke-virtual {p1, v6}, Lcom/xiaomi/kenai/jbosh/b;->a(Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/kenai/jbosh/n;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/n;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/kenai/jbosh/r;->h:Lcom/xiaomi/kenai/jbosh/ag;

    invoke-virtual {p1, v7}, Lcom/xiaomi/kenai/jbosh/b;->a(Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/kenai/jbosh/i;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/kenai/jbosh/r;->a:Lcom/xiaomi/kenai/jbosh/ag;

    invoke-virtual {p1, v8}, Lcom/xiaomi/kenai/jbosh/b;->a(Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/kenai/jbosh/f;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/f;

    move-result-object v8

    sget-object v9, Lcom/xiaomi/kenai/jbosh/r;->k:Lcom/xiaomi/kenai/jbosh/ag;

    invoke-virtual {p1, v9}, Lcom/xiaomi/kenai/jbosh/b;->a(Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/kenai/jbosh/k;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/k;

    move-result-object v9

    sget-object v11, Lcom/xiaomi/kenai/jbosh/r;->d:Lcom/xiaomi/kenai/jbosh/ag;

    invoke-virtual {p1, v11}, Lcom/xiaomi/kenai/jbosh/b;->a(Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/kenai/jbosh/h;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/h;

    move-result-object v11

    invoke-direct/range {v0 .. v12}, Lcom/xiaomi/kenai/jbosh/ah;-><init>(Lcom/xiaomi/kenai/jbosh/o;Lcom/xiaomi/kenai/jbosh/q;Lcom/xiaomi/kenai/jbosh/p;Lcom/xiaomi/kenai/jbosh/m;Lcom/xiaomi/kenai/jbosh/j;Lcom/xiaomi/kenai/jbosh/n;Lcom/xiaomi/kenai/jbosh/i;Lcom/xiaomi/kenai/jbosh/f;Lcom/xiaomi/kenai/jbosh/k;Lcom/xiaomi/kenai/jbosh/g;Lcom/xiaomi/kenai/jbosh/h;Z)V

    return-object v0

    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/xiaomi/kenai/jbosh/b;Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/kenai/jbosh/b;->a(Lcom/xiaomi/kenai/jbosh/ag;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/kenai/jbosh/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection Manager session creation response did not include required \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/kenai/jbosh/ag;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/kenai/jbosh/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method a()Lcom/xiaomi/kenai/jbosh/o;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ah;->a:Lcom/xiaomi/kenai/jbosh/o;

    return-object v0
.end method

.method b()Lcom/xiaomi/kenai/jbosh/q;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ah;->b:Lcom/xiaomi/kenai/jbosh/q;

    return-object v0
.end method

.method c()Lcom/xiaomi/kenai/jbosh/p;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ah;->c:Lcom/xiaomi/kenai/jbosh/p;

    return-object v0
.end method

.method d()Lcom/xiaomi/kenai/jbosh/m;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ah;->d:Lcom/xiaomi/kenai/jbosh/m;

    return-object v0
.end method

.method e()Lcom/xiaomi/kenai/jbosh/k;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/ah;->i:Lcom/xiaomi/kenai/jbosh/k;

    return-object v0
.end method

.method f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/kenai/jbosh/ah;->l:Z

    return v0
.end method
