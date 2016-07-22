.class public final Lcom/ddtaxi/common/tracesdk/af;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/ag;


# instance fields
.field private a:I

.field private b:J

.field private c:D

.field private d:D

.field private e:D

.field private f:F

.field private g:F

.field private h:J

.field private i:F


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/af;->L()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/af;->L()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/common/tracesdk/af;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/af;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method static synthetic K()Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/af;->M()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method private L()V
    .locals 0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ad;->C()Z

    return-void
.end method

.method private static M()Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    new-instance v0, Lcom/ddtaxi/common/tracesdk/af;

    invoke-direct {v0}, Lcom/ddtaxi/common/tracesdk/af;-><init>()V

    return-object v0
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->n()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Lcom/ddtaxi/common/tracesdk/af;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/af;->b:J

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public B()Lcom/ddtaxi/common/tracesdk/af;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/af;->c:D

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public C()Lcom/ddtaxi/common/tracesdk/af;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/af;->d:D

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public D()Lcom/ddtaxi/common/tracesdk/af;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/af;->e:D

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public E()Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->f:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public F()Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->g:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public G()Lcom/ddtaxi/common/tracesdk/af;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/af;->h:J

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->w()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->w()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->i:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->y()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->y()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->e()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->e()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->e()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->d()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->d()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->d()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->x()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->x()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v0

    return-object v0
.end method

.method public a(D)Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/af;->c:D

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public a(F)Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/af;->f:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public a(J)Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/af;->b:J

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/common/tracesdk/ad;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/common/tracesdk/ad;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/af;->a(Lcom/ddtaxi/common/tracesdk/ad;)Lcom/ddtaxi/common/tracesdk/af;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/af;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/af;->a(Lcom/ddtaxi/common/tracesdk/ad;)Lcom/ddtaxi/common/tracesdk/af;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;
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

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/af;->a(Lcom/ddtaxi/common/tracesdk/ad;)Lcom/ddtaxi/common/tracesdk/af;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/ad;)Lcom/ddtaxi/common/tracesdk/af;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ad;->a()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->h()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/common/tracesdk/af;->a(J)Lcom/ddtaxi/common/tracesdk/af;

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->j()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/common/tracesdk/af;->a(D)Lcom/ddtaxi/common/tracesdk/af;

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->l()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/common/tracesdk/af;->b(D)Lcom/ddtaxi/common/tracesdk/af;

    :cond_3
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->n()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/common/tracesdk/af;->c(D)Lcom/ddtaxi/common/tracesdk/af;

    :cond_4
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->p()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/af;->a(F)Lcom/ddtaxi/common/tracesdk/af;

    :cond_5
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->r()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/af;->b(F)Lcom/ddtaxi/common/tracesdk/af;

    :cond_6
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->t()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/common/tracesdk/af;->b(J)Lcom/ddtaxi/common/tracesdk/af;

    :cond_7
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->u()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->v()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/af;->c(F)Lcom/ddtaxi/common/tracesdk/af;

    :cond_8
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ad;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/af;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto :goto_0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/af;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/af;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public b(D)Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/af;->d:D

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public b(F)Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/af;->g:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public b(J)Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/af;->h:J

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/af;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/af;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public c(D)Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/af;->e:D

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method public c(F)Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/af;->i:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->aB()V

    return-object p0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->o()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/common/tracesdk/ad;

    const-class v2, Lcom/ddtaxi/common/tracesdk/af;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/af;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/common/tracesdk/af;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    iput-wide v4, p0, Lcom/ddtaxi/common/tracesdk/af;->b:J

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput-wide v1, p0, Lcom/ddtaxi/common/tracesdk/af;->c:D

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput-wide v1, p0, Lcom/ddtaxi/common/tracesdk/af;->d:D

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput-wide v1, p0, Lcom/ddtaxi/common/tracesdk/af;->e:D

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/af;->f:F

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/af;->g:F

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput-wide v4, p0, Lcom/ddtaxi/common/tracesdk/af;->h:J

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/af;->i:F

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    return-object p0
.end method

.method public e()Lcom/ddtaxi/common/tracesdk/af;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/af;->M()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->y()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/af;->a(Lcom/ddtaxi/common/tracesdk/ad;)Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->n()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/af;->b:J

    return-wide v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

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

.method public j()D
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/af;->c:D

    return-wide v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

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

.method public l()D
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/af;->d:D

    return-wide v0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

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

.method public n()D
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/af;->e:D

    return-wide v0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->f:F

    return v0
.end method

.method public q()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->g:F

    return v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()J
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/af;->h:J

    return-wide v0
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/af;->i:F

    return v0
.end method

.method public w()Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ad;->a()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/ddtaxi/common/tracesdk/ad;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->y()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/ad;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/af;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public y()Lcom/ddtaxi/common/tracesdk/ad;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/ddtaxi/common/tracesdk/ad;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ddtaxi/common/tracesdk/ad;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/common/tracesdk/ad;)V

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/af;->a:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    :goto_0
    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/af;->b:J

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/common/tracesdk/ad;->a(Lcom/ddtaxi/common/tracesdk/ad;J)V

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/af;->c:D

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/common/tracesdk/ad;->a(Lcom/ddtaxi/common/tracesdk/ad;D)V

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/af;->d:D

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/common/tracesdk/ad;->b(Lcom/ddtaxi/common/tracesdk/ad;D)V

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/af;->e:D

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/common/tracesdk/ad;->c(Lcom/ddtaxi/common/tracesdk/ad;D)V

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/af;->f:F

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ad;->a(Lcom/ddtaxi/common/tracesdk/ad;F)V

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/af;->g:F

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ad;->b(Lcom/ddtaxi/common/tracesdk/ad;F)V

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/af;->h:J

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/common/tracesdk/ad;->b(Lcom/ddtaxi/common/tracesdk/ad;J)V

    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/af;->i:F

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ad;->c(Lcom/ddtaxi/common/tracesdk/ad;F)V

    invoke-static {v2, v0}, Lcom/ddtaxi/common/tracesdk/ad;->a(Lcom/ddtaxi/common/tracesdk/ad;I)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->ax()V

    return-object v2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public final z()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->g()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/af;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
