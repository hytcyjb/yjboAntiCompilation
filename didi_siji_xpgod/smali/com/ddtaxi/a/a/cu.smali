.class public final Lcom/ddtaxi/a/a/cu;
.super Lcom/ddtaxi/a/a/ep;

# interfaces
.implements Lcom/ddtaxi/a/a/db;


# static fields
.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x1

.field private static final c:Lcom/ddtaxi/a/a/cu;

.field private static final h:J


# instance fields
.field private final d:Lcom/ddtaxi/a/a/im;

.field private e:Ljava/util/List;

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/cv;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/cv;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/a/a/cu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/cu;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/a/a/cu;->c:Lcom/ddtaxi/a/a/cu;

    sget-object v0, Lcom/ddtaxi/a/a/cu;->c:Lcom/ddtaxi/a/a/cu;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/cu;->m()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/et;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ep;-><init>(Lcom/ddtaxi/a/a/et;)V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/cu;->f:B

    iput v0, p0, Lcom/ddtaxi/a/a/cu;->g:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/et;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cu;->d:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/cu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/cu;-><init>(Lcom/ddtaxi/a/a/et;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v1, p0, Lcom/ddtaxi/a/a/cu;->f:B

    iput v1, p0, Lcom/ddtaxi/a/a/cu;->g:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cu;->m()V

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v4

    move v2, v0

    move v1, v0

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    and-int/lit8 v0, v1, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    :cond_1
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cu;->d:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cu;->ac()V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/ddtaxi/a/a/cu;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    move v2, v3

    goto :goto_0

    :sswitch_1
    and-int/lit8 v0, v1, 0x1

    if-eq v0, v3, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    or-int/lit8 v1, v1, 0x1

    :cond_3
    iget-object v5, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    :cond_4
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/cu;->d:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cu;->ac()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/ddtaxi/a/a/fz;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ddtaxi/a/a/fz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/ddtaxi/a/a/fz;->a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/cu;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/cu;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/cu;->f:B

    iput v0, p0, Lcom/ddtaxi/a/a/cu;->g:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cu;->d:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method public static a()Lcom/ddtaxi/a/a/cu;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cu;->c:Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/cu;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cu;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/cu;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cu;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/cu;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cu;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/cu;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cu;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/cu;)Lcom/ddtaxi/a/a/cw;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cu;->j()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/cw;->a(Lcom/ddtaxi/a/a/cu;)Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/cu;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/cu;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cu;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/cu;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    return-object v0
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->P()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public static j()Lcom/ddtaxi/a/a/cw;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cw;->p()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/ddtaxi/a/a/cu;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cu;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ddtaxi/a/a/cu;->g:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v3, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

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

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cu;->l()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cu;->l()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cu;->K_()Lcom/ddtaxi/a/a/cu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cu;->K_()Lcom/ddtaxi/a/a/cu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cu;->k()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cu;->k()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public K_()Lcom/ddtaxi/a/a/cu;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cu;->c:Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/cw;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/cw;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/a/a/cw;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/cw;)V

    return-object v0
.end method

.method public a(I)Lcom/ddtaxi/a/a/cx;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cu;->A()I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cu;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v2, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(I)Lcom/ddtaxi/a/a/da;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/da;

    return-object v0
.end method

.method protected synthetic b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/cu;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cu;->d:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->Q()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/cu;

    const-class v2, Lcom/ddtaxi/a/a/cw;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cu;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public k()Lcom/ddtaxi/a/a/cw;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cu;->j()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/ddtaxi/a/a/cw;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/cu;->a(Lcom/ddtaxi/a/a/cu;)Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public final z()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/ddtaxi/a/a/cu;->f:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/ddtaxi/a/a/cu;->f:B

    goto :goto_0
.end method
