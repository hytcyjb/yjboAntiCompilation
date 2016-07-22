.class public final Lcom/ddtaxi/a/a/z;
.super Lcom/ddtaxi/a/a/ep;

# interfaces
.implements Lcom/ddtaxi/a/a/ac;


# static fields
.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:Lcom/ddtaxi/a/a/z;

.field private static final k:J


# instance fields
.field private final e:Lcom/ddtaxi/a/a/im;

.field private f:I

.field private g:I

.field private h:I

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/aa;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/aa;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/z;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/a/a/z;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/z;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/a/a/z;->d:Lcom/ddtaxi/a/a/z;

    sget-object v0, Lcom/ddtaxi/a/a/z;->d:Lcom/ddtaxi/a/a/z;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/z;->n()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/et;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ep;-><init>(Lcom/ddtaxi/a/a/et;)V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/z;->i:B

    iput v0, p0, Lcom/ddtaxi/a/a/z;->j:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/et;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/z;->e:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/z;-><init>(Lcom/ddtaxi/a/a/et;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/z;->i:B

    iput v0, p0, Lcom/ddtaxi/a/a/z;->j:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/z;->n()V

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/z;->e:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/z;->ac()V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/ddtaxi/a/a/z;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v3, p0, Lcom/ddtaxi/a/a/z;->f:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ddtaxi/a/a/z;->f:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v3

    iput v3, p0, Lcom/ddtaxi/a/a/z;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/fz;->a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/z;->e:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/z;->ac()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v3, p0, Lcom/ddtaxi/a/a/z;->f:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/ddtaxi/a/a/z;->f:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v3

    iput v3, p0, Lcom/ddtaxi/a/a/z;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/ddtaxi/a/a/fz;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ddtaxi/a/a/fz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/ddtaxi/a/a/fz;->a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/z;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/z;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/z;->i:B

    iput v0, p0, Lcom/ddtaxi/a/a/z;->j:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/z;->e:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method public static a(Lcom/ddtaxi/a/a/z;)Lcom/ddtaxi/a/a/ab;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/z;->k()Lcom/ddtaxi/a/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/ab;->a(Lcom/ddtaxi/a/a/z;)Lcom/ddtaxi/a/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/ddtaxi/a/a/z;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/z;->d:Lcom/ddtaxi/a/a/z;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/z;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/z;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/z;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/z;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/z;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/z;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/z;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/z;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/z;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/z;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/z;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/z;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/z;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/z;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/z;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/z;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/z;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/z;->g:I

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/z;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/z;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/z;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/z;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/z;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/z;->h:I

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/z;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/z;->f:I

    return-void
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public static k()Lcom/ddtaxi/a/a/ab;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ab;->p()Lcom/ddtaxi/a/a/ab;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/z;->g:I

    iput v0, p0, Lcom/ddtaxi/a/a/z;->h:I

    return-void
.end method


# virtual methods
.method public A()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/ddtaxi/a/a/z;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/ddtaxi/a/a/z;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ddtaxi/a/a/z;->g:I

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/r;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/ddtaxi/a/a/z;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/ddtaxi/a/a/z;->h:I

    invoke-static {v3, v1}, Lcom/ddtaxi/a/a/r;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/z;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/z;->j:I

    goto :goto_0
.end method

.method protected B()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/ep;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic F()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/z;->m()Lcom/ddtaxi/a/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/z;->m()Lcom/ddtaxi/a/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/z;->n_()Lcom/ddtaxi/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/z;->n_()Lcom/ddtaxi/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/z;->l()Lcom/ddtaxi/a/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/z;->l()Lcom/ddtaxi/a/a/ab;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/ab;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/ab;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/a/a/ab;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/ab;)V

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/z;->A()I

    iget v0, p0, Lcom/ddtaxi/a/a/z;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ddtaxi/a/a/z;->g:I

    invoke-virtual {p1, v1, v0}, Lcom/ddtaxi/a/a/r;->a(II)V

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/z;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/z;->h:I

    invoke-virtual {p1, v2, v0}, Lcom/ddtaxi/a/a/r;->a(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/z;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void
.end method

.method protected synthetic b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/z;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/z;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/z;->e:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->g()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/z;

    const-class v2, Lcom/ddtaxi/a/a/ab;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/z;->f:I

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

    iget v0, p0, Lcom/ddtaxi/a/a/z;->g:I

    return v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/z;->f:I

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

.method public j()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/z;->h:I

    return v0
.end method

.method public l()Lcom/ddtaxi/a/a/ab;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/z;->k()Lcom/ddtaxi/a/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/ddtaxi/a/a/ab;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/z;->a(Lcom/ddtaxi/a/a/z;)Lcom/ddtaxi/a/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public n_()Lcom/ddtaxi/a/a/z;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/z;->d:Lcom/ddtaxi/a/a/z;

    return-object v0
.end method

.method public final z()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/ddtaxi/a/a/z;->i:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/ddtaxi/a/a/z;->i:B

    goto :goto_0
.end method
