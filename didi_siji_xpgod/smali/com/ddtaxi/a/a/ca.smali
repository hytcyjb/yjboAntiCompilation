.class public final Lcom/ddtaxi/a/a/ca;
.super Lcom/ddtaxi/a/a/ep;

# interfaces
.implements Lcom/ddtaxi/a/a/cd;


# static fields
.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field private static final f:Lcom/ddtaxi/a/a/ca;

.field private static final q:J


# instance fields
.field private final g:Lcom/ddtaxi/a/a/im;

.field private h:I

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Lcom/ddtaxi/a/a/ce;

.field private m:B

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/cb;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/cb;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/ca;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/a/a/ca;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/ca;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/a/a/ca;->f:Lcom/ddtaxi/a/a/ca;

    sget-object v0, Lcom/ddtaxi/a/a/ca;->f:Lcom/ddtaxi/a/a/ca;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/ca;->v()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/et;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ep;-><init>(Lcom/ddtaxi/a/a/et;)V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/ca;->m:B

    iput v0, p0, Lcom/ddtaxi/a/a/ca;->n:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/et;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->g:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/ca;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ca;-><init>(Lcom/ddtaxi/a/a/et;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/ca;->m:B

    iput v0, p0, Lcom/ddtaxi/a/a/ca;->n:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ca;->v()V

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->g:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->ac()V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/ddtaxi/a/a/ca;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    move v2, v3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/ca;->h:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ddtaxi/a/a/ca;->h:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->i:Ljava/lang/Object;
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

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/ca;->g:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->ac()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/ca;->h:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/ddtaxi/a/a/ca;->h:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->j:Ljava/lang/Object;
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

    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/ca;->h:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/ddtaxi/a/a/ca;->h:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->k:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x0

    iget v1, p0, Lcom/ddtaxi/a/a/ca;->h:I

    and-int/lit8 v1, v1, 0x8

    const/16 v5, 0x8

    if-ne v1, v5, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->l:Lcom/ddtaxi/a/a/ce;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ce;->n()Lcom/ddtaxi/a/a/cg;

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/ddtaxi/a/a/ce;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ce;

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->l:Lcom/ddtaxi/a/a/ce;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->l:Lcom/ddtaxi/a/a/ce;

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/cg;->a(Lcom/ddtaxi/a/a/ce;)Lcom/ddtaxi/a/a/cg;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/cg;->n()Lcom/ddtaxi/a/a/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->l:Lcom/ddtaxi/a/a/ce;

    :cond_2
    iget v0, p0, Lcom/ddtaxi/a/a/ca;->h:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/ca;->h:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/ca;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/ca;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/ca;->m:B

    iput v0, p0, Lcom/ddtaxi/a/a/ca;->n:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->g:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method public static a()Lcom/ddtaxi/a/a/ca;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ca;->f:Lcom/ddtaxi/a/a/ca;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/ca;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ca;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ca;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ca;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ca;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ca;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/ca;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ca;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ca;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ca;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ca;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ca;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/ca;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ca;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ca;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ca;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ca;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ca;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/ca;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ca;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ca;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ca;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ca;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ca;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/ca;)Lcom/ddtaxi/a/a/cc;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ca;->s()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/cc;->a(Lcom/ddtaxi/a/a/ca;)Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ca;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/ca;->h:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ca;Lcom/ddtaxi/a/a/ce;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/ca;->l:Lcom/ddtaxi/a/a/ce;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ca;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/ca;->i:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/ca;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ca;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ca;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ca;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ca;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ca;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/ca;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/ca;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/ca;->j:Ljava/lang/Object;

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/ca;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/ca;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/ca;->k:Ljava/lang/Object;

    return-void
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->t()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/a/a/ca;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public static s()Lcom/ddtaxi/a/a/cc;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cc;->B()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private v()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->i:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->j:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->k:Ljava/lang/Object;

    invoke-static {}, Lcom/ddtaxi/a/a/ce;->a()Lcom/ddtaxi/a/a/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->l:Lcom/ddtaxi/a/a/ce;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/ddtaxi/a/a/ca;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/ddtaxi/a/a/ca;->h:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->i()Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/ddtaxi/a/a/ca;->h:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->l()Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/ddtaxi/a/a/ca;->h:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->o()Lcom/ddtaxi/a/a/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/ddtaxi/a/a/ca;->h:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/ddtaxi/a/a/ca;->l:Lcom/ddtaxi/a/a/ce;

    invoke-static {v4, v1}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/ca;->n:I

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

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->u()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public F_()Lcom/ddtaxi/a/a/ca;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ca;->f:Lcom/ddtaxi/a/a/ca;

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->u()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->F_()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->F_()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->t()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->t()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/cc;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/cc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/a/a/cc;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/cc;)V

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->A()I

    iget v0, p0, Lcom/ddtaxi/a/a/ca;->h:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->i()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/ca;->h:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->l()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_1
    iget v0, p0, Lcom/ddtaxi/a/a/ca;->h:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->o()Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_2
    iget v0, p0, Lcom/ddtaxi/a/a/ca;->h:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->l:Lcom/ddtaxi/a/a/ce;

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    :cond_3
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void
.end method

.method protected synthetic b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ca;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ca;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->g:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->u()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/ca;

    const-class v2, Lcom/ddtaxi/a/a/cc;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/ca;->h:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/ddtaxi/a/a/ca;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public i()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->i:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/ca;->h:I

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

.method public k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->j:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/ddtaxi/a/a/ca;->j:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public l()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->j:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->j:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/ca;->h:I

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

.method public n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->k:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/ddtaxi/a/a/ca;->k:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public o()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->k:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ca;->k:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/ca;->h:I

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

.method public q()Lcom/ddtaxi/a/a/ce;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->l:Lcom/ddtaxi/a/a/ce;

    return-object v0
.end method

.method public r()Lcom/ddtaxi/a/a/ch;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ca;->l:Lcom/ddtaxi/a/a/ce;

    return-object v0
.end method

.method public t()Lcom/ddtaxi/a/a/cc;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ca;->s()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/ddtaxi/a/a/cc;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/ca;->a(Lcom/ddtaxi/a/a/ca;)Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final z()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-byte v2, p0, Lcom/ddtaxi/a/a/ca;->m:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ca;->q()Lcom/ddtaxi/a/a/ce;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/ce;->z()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/ddtaxi/a/a/ca;->m:B

    move v0, v1

    goto :goto_0

    :cond_2
    iput-byte v0, p0, Lcom/ddtaxi/a/a/ca;->m:B

    goto :goto_0
.end method
