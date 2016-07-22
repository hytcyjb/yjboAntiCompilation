.class public final Lcom/ddtaxi/a/a/cq;
.super Lcom/ddtaxi/a/a/ey;

# interfaces
.implements Lcom/ddtaxi/a/a/ct;


# static fields
.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x21

.field public static final c:I = 0x3e7

.field private static final d:Lcom/ddtaxi/a/a/cq;

.field private static final k:J


# instance fields
.field private final e:Lcom/ddtaxi/a/a/im;

.field private f:I

.field private g:Z

.field private h:Ljava/util/List;

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/cr;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/cr;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/cq;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/a/a/cq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/cq;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/a/a/cq;->d:Lcom/ddtaxi/a/a/cq;

    sget-object v0, Lcom/ddtaxi/a/a/cq;->d:Lcom/ddtaxi/a/a/cq;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/cq;->o()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ex;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ey;-><init>(Lcom/ddtaxi/a/a/ex;)V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/cq;->i:B

    iput v0, p0, Lcom/ddtaxi/a/a/cq;->j:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ex;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cq;->e:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ex;Lcom/ddtaxi/a/a/cq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/cq;-><init>(Lcom/ddtaxi/a/a/ex;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v6, 0x2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ey;-><init>()V

    iput-byte v1, p0, Lcom/ddtaxi/a/a/cq;->i:B

    iput v1, p0, Lcom/ddtaxi/a/a/cq;->j:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cq;->o()V

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v4

    move v2, v0

    move v1, v0

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    and-int/lit8 v0, v1, 0x2

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    :cond_1
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cq;->e:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->ac()V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/ddtaxi/a/a/cq;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    move v2, v3

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/ddtaxi/a/a/cq;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/cq;->f:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/cq;->g:Z
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

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    :cond_3
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/cq;->e:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->ac()V

    throw v0

    :sswitch_2
    and-int/lit8 v0, v1, 0x2

    if-eq v0, v6, :cond_4

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    or-int/lit8 v1, v1, 0x2

    :cond_4
    iget-object v5, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/dc;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dc;

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
        0x108 -> :sswitch_1
        0x1f3a -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/cq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/cq;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ey;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/cq;->i:B

    iput v0, p0, Lcom/ddtaxi/a/a/cq;->j:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cq;->e:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method public static a()Lcom/ddtaxi/a/a/cq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cq;->d:Lcom/ddtaxi/a/a/cq;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/cq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cq;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cq;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/cq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cq;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cq;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/cq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cq;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cq;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/cq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cq;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cq;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/cq;)Lcom/ddtaxi/a/a/cs;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cq;->l()Lcom/ddtaxi/a/a/cs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/cs;->a(Lcom/ddtaxi/a/a/cq;)Lcom/ddtaxi/a/a/cs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/cq;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/cq;->f:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/cq;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/cq;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/cq;->g:Z

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/cq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cq;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cq;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/cq;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    return-object v0
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->F()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public static l()Lcom/ddtaxi/a/a/cs;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cs;->s()Lcom/ddtaxi/a/a/cs;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/cq;->g:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/ddtaxi/a/a/cq;->j:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/cq;->f:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/16 v0, 0x21

    iget-boolean v2, p0, Lcom/ddtaxi/a/a/cq;->g:Z

    invoke-static {v0, v2}, Lcom/ddtaxi/a/a/r;->b(IZ)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->ae()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/cq;->j:I

    goto :goto_0

    :cond_1
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

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

    invoke-super {p0}, Lcom/ddtaxi/a/a/ey;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic F()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->n()Lcom/ddtaxi/a/a/cs;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->n()Lcom/ddtaxi/a/a/cs;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->J_()Lcom/ddtaxi/a/a/cq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->J_()Lcom/ddtaxi/a/a/cq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->m()Lcom/ddtaxi/a/a/cs;

    move-result-object v0

    return-object v0
.end method

.method public J_()Lcom/ddtaxi/a/a/cq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cq;->d:Lcom/ddtaxi/a/a/cq;

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->m()Lcom/ddtaxi/a/a/cs;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/cs;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/cs;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/a/a/cs;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/cs;)V

    return-object v0
.end method

.method public a(I)Lcom/ddtaxi/a/a/dc;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dc;

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->A()I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->aa()Lcom/ddtaxi/a/a/ez;

    move-result-object v2

    iget v0, p0, Lcom/ddtaxi/a/a/cq;->f:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x21

    iget-boolean v1, p0, Lcom/ddtaxi/a/a/cq;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IZ)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    const/high16 v0, 0x2000

    invoke-virtual {v2, v0, p1}, Lcom/ddtaxi/a/a/ez;->a(ILcom/ddtaxi/a/a/r;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void

    :cond_1
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(I)Lcom/ddtaxi/a/a/dj;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dj;

    return-object v0
.end method

.method protected synthetic b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/cq;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/cs;

    move-result-object v0

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cq;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cq;->e:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->G()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/cq;

    const-class v2, Lcom/ddtaxi/a/a/cs;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/cq;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/cq;->g:Z

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cq;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public m()Lcom/ddtaxi/a/a/cs;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cq;->l()Lcom/ddtaxi/a/a/cs;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/ddtaxi/a/a/cs;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/cq;->a(Lcom/ddtaxi/a/a/cq;)Lcom/ddtaxi/a/a/cs;

    move-result-object v0

    return-object v0
.end method

.method public final z()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/ddtaxi/a/a/cq;->i:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->k()I

    move-result v3

    if-lt v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cq;->Z()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v1, p0, Lcom/ddtaxi/a/a/cq;->i:B

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/cq;->a(I)Lcom/ddtaxi/a/a/dc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/dc;->z()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v1, p0, Lcom/ddtaxi/a/a/cq;->i:B

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iput-byte v2, p0, Lcom/ddtaxi/a/a/cq;->i:B

    move v1, v2

    goto :goto_0
.end method
