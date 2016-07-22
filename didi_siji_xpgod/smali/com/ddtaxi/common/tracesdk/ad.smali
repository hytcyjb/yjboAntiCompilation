.class public final Lcom/ddtaxi/common/tracesdk/ad;
.super Lcom/ddtaxi/a/a/ep;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/ag;


# static fields
.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field private static final j:Lcom/ddtaxi/common/tracesdk/ad;

.field private static final y:J


# instance fields
.field private final k:Lcom/ddtaxi/a/a/im;

.field private l:I

.field private m:J

.field private n:D

.field private q:D

.field private r:D

.field private s:F

.field private t:F

.field private u:J

.field private v:F

.field private w:B

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/common/tracesdk/ae;

    invoke-direct {v0}, Lcom/ddtaxi/common/tracesdk/ae;-><init>()V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/ad;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/ad;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/common/tracesdk/ad;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/ad;->j:Lcom/ddtaxi/common/tracesdk/ad;

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->j:Lcom/ddtaxi/common/tracesdk/ad;

    invoke-direct {v0}, Lcom/ddtaxi/common/tracesdk/ad;->D()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/et;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ep;-><init>(Lcom/ddtaxi/a/a/et;)V

    iput-byte v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->w:B

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->x:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/et;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->k:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/common/tracesdk/ad;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/ad;-><init>(Lcom/ddtaxi/a/a/et;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->w:B

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->x:I

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ad;->D()V

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->k:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->ac()V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/ddtaxi/common/tracesdk/ad;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->g()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->m:J
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

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->k:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->ac()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->d()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->n:D
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
    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->d()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->q:D

    goto :goto_0

    :sswitch_4
    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->d()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->r:D

    goto :goto_0

    :sswitch_5
    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->e()F

    move-result v3

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->s:F

    goto :goto_0

    :sswitch_6
    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->e()F

    move-result v3

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->t:F

    goto/16 :goto_0

    :sswitch_7
    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->g()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->u:J

    goto/16 :goto_0

    :sswitch_8
    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->e()F

    move-result v3

    iput v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->v:F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
        0x21 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
        0x45 -> :sswitch_8
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/common/tracesdk/ad;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/ad;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->w:B

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->x:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->k:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method static synthetic C()Z
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/common/tracesdk/ad;->p:Z

    return v0
.end method

.method private D()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->m:J

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->n:D

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->q:D

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->r:D

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/ad;->s:F

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/ad;->t:F

    iput-wide v3, p0, Lcom/ddtaxi/common/tracesdk/ad;->u:J

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/ad;->v:F

    return-void
.end method

.method public static a()Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->j:Lcom/ddtaxi/common/tracesdk/ad;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/common/tracesdk/ad;)Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ad;->w()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/common/tracesdk/af;->a(Lcom/ddtaxi/common/tracesdk/ad;)Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/ad;D)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/ad;->n:D

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/ad;F)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/ad;->s:F

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/ad;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/ad;J)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/ad;->m:J

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/ad;D)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/ad;->q:D

    return-void
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/ad;F)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/ad;->t:F

    return-void
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/ad;J)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/ad;->u:J

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/common/tracesdk/ad;D)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/ad;->r:D

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/common/tracesdk/ad;F)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/ad;->v:F

    return-void
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->n()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public static w()Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/af;->K()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    iget-wide v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->m:J

    invoke-static {v3, v1, v2}, Lcom/ddtaxi/a/a/r;->g(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    iget-wide v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->n:D

    invoke-static {v4, v1, v2}, Lcom/ddtaxi/a/a/r;->b(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_3

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/ddtaxi/common/tracesdk/ad;->q:D

    invoke-static {v1, v2, v3}, Lcom/ddtaxi/a/a/r;->b(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_4

    iget-wide v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->r:D

    invoke-static {v5, v1, v2}, Lcom/ddtaxi/a/a/r;->b(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ad;->s:F

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/r;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ad;->t:F

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/r;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/ddtaxi/common/tracesdk/ad;->u:J

    invoke-static {v1, v2, v3}, Lcom/ddtaxi/a/a/r;->g(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->v:F

    invoke-static {v6, v1}, Lcom/ddtaxi/a/a/r;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->x:I

    goto/16 :goto_0
.end method

.method protected B()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/ep;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic F()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->y()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->y()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->g_()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->g_()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->x()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->x()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/common/tracesdk/af;
    .locals 2

    new-instance v0, Lcom/ddtaxi/common/tracesdk/af;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/common/tracesdk/af;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/common/tracesdk/af;)V

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->A()I

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->m:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/ddtaxi/a/a/r;->b(IJ)V

    :cond_0
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->n:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/ddtaxi/a/a/r;->a(ID)V

    :cond_1
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->q:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/ddtaxi/a/a/r;->a(ID)V

    :cond_2
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->r:D

    invoke-virtual {p1, v4, v0, v1}, Lcom/ddtaxi/a/a/r;->a(ID)V

    :cond_3
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->s:F

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IF)V

    :cond_4
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->t:F

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IF)V

    :cond_5
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->u:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/ddtaxi/a/a/r;->b(IJ)V

    :cond_6
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->v:F

    invoke-virtual {p1, v5, v0}, Lcom/ddtaxi/a/a/r;->a(IF)V

    :cond_7
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void
.end method

.method protected synthetic b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/ad;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->k:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->o()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/common/tracesdk/ad;

    const-class v2, Lcom/ddtaxi/common/tracesdk/af;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g_()Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ad;->j:Lcom/ddtaxi/common/tracesdk/ad;

    return-object v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->m:J

    return-wide v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

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

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->n:D

    return-wide v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

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

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->q:D

    return-wide v0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

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

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->r:D

    return-wide v0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

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

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->s:F

    return v0
.end method

.method public q()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

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

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->t:F

    return v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

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

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->u:J

    return-wide v0
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->l:I

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

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->v:F

    return v0
.end method

.method public x()Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ad;->w()Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/ad;->a(Lcom/ddtaxi/common/tracesdk/ad;)Lcom/ddtaxi/common/tracesdk/af;

    move-result-object v0

    return-object v0
.end method

.method public final z()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/ddtaxi/common/tracesdk/ad;->w:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->g()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->w:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->i()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->w:B

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ad;->k()Z

    move-result v2

    if-nez v2, :cond_4

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/ad;->w:B

    move v0, v1

    goto :goto_0

    :cond_4
    iput-byte v0, p0, Lcom/ddtaxi/common/tracesdk/ad;->w:B

    goto :goto_0
.end method
