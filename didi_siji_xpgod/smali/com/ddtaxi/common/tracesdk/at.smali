.class public final Lcom/ddtaxi/common/tracesdk/at;
.super Lcom/ddtaxi/a/a/ep;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/ba;


# static fields
.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:Lcom/ddtaxi/common/tracesdk/at;

.field private static final k:J


# instance fields
.field private final e:Lcom/ddtaxi/a/a/im;

.field private f:I

.field private g:J

.field private h:Ljava/util/List;

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/common/tracesdk/au;

    invoke-direct {v0}, Lcom/ddtaxi/common/tracesdk/au;-><init>()V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/at;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/at;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/common/tracesdk/at;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/at;->d:Lcom/ddtaxi/common/tracesdk/at;

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->d:Lcom/ddtaxi/common/tracesdk/at;

    invoke-direct {v0}, Lcom/ddtaxi/common/tracesdk/at;->p()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/et;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ep;-><init>(Lcom/ddtaxi/a/a/et;)V

    iput-byte v0, p0, Lcom/ddtaxi/common/tracesdk/at;->i:B

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/at;->j:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/et;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->e:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/common/tracesdk/at;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/at;-><init>(Lcom/ddtaxi/a/a/et;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v7, 0x2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/at;->i:B

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/at;->j:I

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/at;->p()V

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v4

    move v2, v0

    move v1, v0

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    and-int/lit8 v0, v1, 0x2

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    :cond_1
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->e:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/at;->ac()V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/ddtaxi/common/tracesdk/at;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    move v2, v3

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/at;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/at;->f:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->g()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ddtaxi/common/tracesdk/at;->g:J
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

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    :cond_3
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/at;->e:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/at;->ac()V

    throw v0

    :sswitch_2
    and-int/lit8 v0, v1, 0x2

    if-eq v0, v7, :cond_4

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    or-int/lit8 v1, v1, 0x2

    :cond_4
    iget-object v5, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/common/tracesdk/aw;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/aw;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Lcom/ddtaxi/a/a/fz;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ddtaxi/a/a/fz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/ddtaxi/a/a/fz;->a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/common/tracesdk/at;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/at;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/common/tracesdk/at;->i:B

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/at;->j:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->e:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method public static a()Lcom/ddtaxi/common/tracesdk/at;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->d:Lcom/ddtaxi/common/tracesdk/at;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/common/tracesdk/at;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/at;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/at;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/at;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/common/tracesdk/at;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/at;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/at;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/at;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/common/tracesdk/at;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/at;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/at;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/at;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/common/tracesdk/at;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/at;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/at;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/at;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/common/tracesdk/at;)Lcom/ddtaxi/common/tracesdk/av;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/at;->l()Lcom/ddtaxi/common/tracesdk/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/common/tracesdk/av;->a(Lcom/ddtaxi/common/tracesdk/at;)Lcom/ddtaxi/common/tracesdk/av;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/at;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/at;->f:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/at;J)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/at;->g:J

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/at;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/common/tracesdk/at;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/at;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/at;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/at;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/at;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    return-object v0
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->d()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public static l()Lcom/ddtaxi/common/tracesdk/av;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/av;->s()Lcom/ddtaxi/common/tracesdk/av;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o()Z
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/common/tracesdk/at;->p:Z

    return v0
.end method

.method private p()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/at;->g:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/at;->j:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/at;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_2

    iget-wide v2, p0, Lcom/ddtaxi/common/tracesdk/at;->g:J

    invoke-static {v4, v2, v3}, Lcom/ddtaxi/a/a/r;->g(IJ)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/at;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/at;->j:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v3, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected B()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/ep;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic F()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/at;->n()Lcom/ddtaxi/common/tracesdk/av;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/at;->n()Lcom/ddtaxi/common/tracesdk/av;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/at;->k_()Lcom/ddtaxi/common/tracesdk/at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/at;->k_()Lcom/ddtaxi/common/tracesdk/at;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/at;->m()Lcom/ddtaxi/common/tracesdk/av;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/at;->m()Lcom/ddtaxi/common/tracesdk/av;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/common/tracesdk/av;
    .locals 2

    new-instance v0, Lcom/ddtaxi/common/tracesdk/av;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/common/tracesdk/av;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/common/tracesdk/av;)V

    return-object v0
.end method

.method public a(I)Lcom/ddtaxi/common/tracesdk/aw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/aw;

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/at;->A()I

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/at;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/at;->g:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/ddtaxi/a/a/r;->b(IJ)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/at;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void

    :cond_1
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v2, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected synthetic b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/at;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/common/tracesdk/av;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/ddtaxi/common/tracesdk/az;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/az;

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->e:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->e()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/common/tracesdk/at;

    const-class v2, Lcom/ddtaxi/common/tracesdk/av;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/at;->f:I

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

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/at;->g:J

    return-wide v0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/at;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public k_()Lcom/ddtaxi/common/tracesdk/at;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/at;->d:Lcom/ddtaxi/common/tracesdk/at;

    return-object v0
.end method

.method public m()Lcom/ddtaxi/common/tracesdk/av;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/at;->l()Lcom/ddtaxi/common/tracesdk/av;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/ddtaxi/common/tracesdk/av;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/at;->a(Lcom/ddtaxi/common/tracesdk/at;)Lcom/ddtaxi/common/tracesdk/av;

    move-result-object v0

    return-object v0
.end method

.method public final z()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/ddtaxi/common/tracesdk/at;->i:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/at;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/at;->i:B

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/at;->k()I

    move-result v3

    if-lt v0, v3, :cond_3

    iput-byte v2, p0, Lcom/ddtaxi/common/tracesdk/at;->i:B

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/at;->a(I)Lcom/ddtaxi/common/tracesdk/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/common/tracesdk/aw;->z()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/at;->i:B

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
