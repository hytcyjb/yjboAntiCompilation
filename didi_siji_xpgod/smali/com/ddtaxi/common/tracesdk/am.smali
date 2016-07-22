.class public final Lcom/ddtaxi/common/tracesdk/am;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/an;


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/am;->w()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/am;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/common/tracesdk/am;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/am;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v()Lcom/ddtaxi/common/tracesdk/am;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/am;->x()Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    return-object v0
.end method

.method private w()V
    .locals 0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ak;->r()Z

    return-void
.end method

.method private static x()Lcom/ddtaxi/common/tracesdk/am;
    .locals 1

    new-instance v0, Lcom/ddtaxi/common/tracesdk/am;

    invoke-direct {v0}, Lcom/ddtaxi/common/tracesdk/am;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->o()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->o()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->q()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->q()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->e()Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->e()Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->e()Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->d()Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->d()Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->d()Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->p()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->p()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lcom/ddtaxi/common/tracesdk/am;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/am;->c:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->aB()V

    return-object p0
.end method

.method public a(I)Lcom/ddtaxi/common/tracesdk/am;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/am;->b:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/am;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/common/tracesdk/ak;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/common/tracesdk/ak;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/am;->a(Lcom/ddtaxi/common/tracesdk/ak;)Lcom/ddtaxi/common/tracesdk/am;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/am;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/common/tracesdk/ak;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/am;->a(Lcom/ddtaxi/common/tracesdk/ak;)Lcom/ddtaxi/common/tracesdk/am;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ak;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/am;->a(Lcom/ddtaxi/common/tracesdk/ak;)Lcom/ddtaxi/common/tracesdk/am;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/ak;)Lcom/ddtaxi/common/tracesdk/am;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ak;->a()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ak;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ak;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/am;->a(I)Lcom/ddtaxi/common/tracesdk/am;

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ak;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ak;->j()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/am;->a(F)Lcom/ddtaxi/common/tracesdk/am;

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ak;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ak;->l()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/am;->b(F)Lcom/ddtaxi/common/tracesdk/am;

    :cond_3
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ak;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ak;->n()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/am;->c(F)Lcom/ddtaxi/common/tracesdk/am;

    :cond_4
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ak;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/am;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto :goto_0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/am;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/am;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    return-object v0
.end method

.method public b(F)Lcom/ddtaxi/common/tracesdk/am;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/am;->d:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->aB()V

    return-object p0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/am;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/am;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    return-object v0
.end method

.method public c(F)Lcom/ddtaxi/common/tracesdk/am;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/am;->e:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->aB()V

    return-object p0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->g()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/common/tracesdk/ak;

    const-class v2, Lcom/ddtaxi/common/tracesdk/am;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/am;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/common/tracesdk/am;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->b:I

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/am;->c:F

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/am;->d:F

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/am;->e:F

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    return-object p0
.end method

.method public e()Lcom/ddtaxi/common/tracesdk/am;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/am;->x()Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->q()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/am;->a(Lcom/ddtaxi/common/tracesdk/ak;)Lcom/ddtaxi/common/tracesdk/am;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->b:I

    return v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->c:F

    return v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->d:F

    return v0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->e:F

    return v0
.end method

.method public o()Lcom/ddtaxi/common/tracesdk/ak;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ak;->a()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/ddtaxi/common/tracesdk/ak;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->q()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/ak;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/am;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public q()Lcom/ddtaxi/common/tracesdk/ak;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ddtaxi/common/tracesdk/ak;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ddtaxi/common/tracesdk/ak;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/common/tracesdk/ak;)V

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    :goto_0
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/am;->b:I

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ak;->a(Lcom/ddtaxi/common/tracesdk/ak;I)V

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/am;->c:F

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ak;->a(Lcom/ddtaxi/common/tracesdk/ak;F)V

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/am;->d:F

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ak;->b(Lcom/ddtaxi/common/tracesdk/ak;F)V

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/am;->e:F

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ak;->c(Lcom/ddtaxi/common/tracesdk/ak;F)V

    invoke-static {v2, v0}, Lcom/ddtaxi/common/tracesdk/ak;->b(Lcom/ddtaxi/common/tracesdk/ak;I)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->ax()V

    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public r()Lcom/ddtaxi/common/tracesdk/am;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->b:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->aB()V

    return-object p0
.end method

.method public s()Lcom/ddtaxi/common/tracesdk/am;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->c:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->aB()V

    return-object p0
.end method

.method public t()Lcom/ddtaxi/common/tracesdk/am;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->d:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->aB()V

    return-object p0
.end method

.method public u()Lcom/ddtaxi/common/tracesdk/am;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/am;->e:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->aB()V

    return-object p0
.end method

.method public final z()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/am;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
