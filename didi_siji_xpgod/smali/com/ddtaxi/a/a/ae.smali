.class public final Lcom/ddtaxi/a/a/ae;
.super Lcom/ddtaxi/a/a/ep;

# interfaces
.implements Lcom/ddtaxi/a/a/ah;


# static fields
.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field private static final e:Lcom/ddtaxi/a/a/ae;

.field private static final m:J


# instance fields
.field private final f:Lcom/ddtaxi/a/a/im;

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/util/List;

.field private j:Lcom/ddtaxi/a/a/ai;

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/af;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/af;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/a/a/ae;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/ae;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/a/a/ae;->e:Lcom/ddtaxi/a/a/ae;

    sget-object v0, Lcom/ddtaxi/a/a/ae;->e:Lcom/ddtaxi/a/a/ae;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/ae;->s()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/et;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ep;-><init>(Lcom/ddtaxi/a/a/et;)V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/ae;->k:B

    iput v0, p0, Lcom/ddtaxi/a/a/ae;->l:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/et;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ae;->f:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ae;-><init>(Lcom/ddtaxi/a/a/et;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v6, 0x2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v1, p0, Lcom/ddtaxi/a/a/ae;->k:B

    iput v1, p0, Lcom/ddtaxi/a/a/ae;->l:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ae;->s()V

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v5

    move v3, v0

    move v1, v0

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    and-int/lit8 v0, v1, 0x2

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    :cond_1
    invoke-virtual {v5}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ae;->f:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->ac()V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v5, p2, v0}, Lcom/ddtaxi/a/a/ae;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_0
    move v3, v4

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iget v2, p0, Lcom/ddtaxi/a/a/ae;->g:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ddtaxi/a/a/ae;->g:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/ae;->h:Ljava/lang/Object;
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

    iget-object v1, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    :cond_3
    invoke-virtual {v5}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/ae;->f:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->ac()V

    throw v0

    :sswitch_2
    and-int/lit8 v0, v1, 0x2

    if-eq v0, v6, :cond_4

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    or-int/lit8 v1, v1, 0x2

    :cond_4
    iget-object v2, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/am;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/am;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    :sswitch_3
    const/4 v0, 0x0

    :try_start_4
    iget v2, p0, Lcom/ddtaxi/a/a/ae;->g:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v6, :cond_6

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->j:Lcom/ddtaxi/a/a/ai;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ai;->p()Lcom/ddtaxi/a/a/ak;

    move-result-object v0

    move-object v2, v0

    :goto_1
    sget-object v0, Lcom/ddtaxi/a/a/ai;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ai;

    iput-object v0, p0, Lcom/ddtaxi/a/a/ae;->j:Lcom/ddtaxi/a/a/ai;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->j:Lcom/ddtaxi/a/a/ai;

    invoke-virtual {v2, v0}, Lcom/ddtaxi/a/a/ak;->a(Lcom/ddtaxi/a/a/ai;)Lcom/ddtaxi/a/a/ak;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/ak;->p()Lcom/ddtaxi/a/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ae;->j:Lcom/ddtaxi/a/a/ai;

    :cond_5
    iget v0, p0, Lcom/ddtaxi/a/a/ae;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/ae;->g:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_6
    move-object v2, v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/ae;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/ae;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/ae;->k:B

    iput v0, p0, Lcom/ddtaxi/a/a/ae;->l:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ae;->f:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method public static a()Lcom/ddtaxi/a/a/ae;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ae;->e:Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/ae;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ae;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/ae;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ae;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/ae;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ae;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/ae;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ae;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/ae;)Lcom/ddtaxi/a/a/ag;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ae;->p()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/ag;->a(Lcom/ddtaxi/a/a/ae;)Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ae;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/ae;->g:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ae;Lcom/ddtaxi/a/a/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/ae;->j:Lcom/ddtaxi/a/a/ai;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ae;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/ae;->h:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ae;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/ae;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ae;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/ae;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/ae;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    return-object v0
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->n()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public static p()Lcom/ddtaxi/a/a/ag;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ag;->y()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ae;->h:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    invoke-static {}, Lcom/ddtaxi/a/a/ai;->a()Lcom/ddtaxi/a/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ae;->j:Lcom/ddtaxi/a/a/ai;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/ddtaxi/a/a/ae;->l:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/ae;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->i()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    iget v0, p0, Lcom/ddtaxi/a/a/ae;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ddtaxi/a/a/ae;->j:Lcom/ddtaxi/a/a/ai;

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ddtaxi/a/a/ae;->l:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v4, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
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

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->r()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->r()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->o_()Lcom/ddtaxi/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->o_()Lcom/ddtaxi/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->q()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->q()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/ag;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/ag;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/a/a/ag;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/ag;)V

    return-object v0
.end method

.method public a(I)Lcom/ddtaxi/a/a/am;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/am;

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->A()I

    iget v0, p0, Lcom/ddtaxi/a/a/ae;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->i()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    iget v0, p0, Lcom/ddtaxi/a/a/ae;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ddtaxi/a/a/ae;->j:Lcom/ddtaxi/a/a/ai;

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    :cond_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v2, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(I)Lcom/ddtaxi/a/a/ap;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ap;

    return-object v0
.end method

.method protected synthetic b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ae;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->f:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->o()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/ae;

    const-class v2, Lcom/ddtaxi/a/a/ag;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/ae;->g:I

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->h:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ddtaxi/a/a/ae;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public i()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ae;->h:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/ae;->g:I

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

.method public n()Lcom/ddtaxi/a/a/ai;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->j:Lcom/ddtaxi/a/a/ai;

    return-object v0
.end method

.method public o()Lcom/ddtaxi/a/a/al;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ae;->j:Lcom/ddtaxi/a/a/ai;

    return-object v0
.end method

.method public o_()Lcom/ddtaxi/a/a/ae;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/ae;->e:Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public q()Lcom/ddtaxi/a/a/ag;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ae;->p()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/ddtaxi/a/a/ag;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/ae;->a(Lcom/ddtaxi/a/a/ae;)Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final z()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/ddtaxi/a/a/ae;->k:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->l()I

    move-result v3

    if-lt v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ae;->n()Lcom/ddtaxi/a/a/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ai;->z()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v1, p0, Lcom/ddtaxi/a/a/ae;->k:B

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ae;->a(I)Lcom/ddtaxi/a/a/am;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/am;->z()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v1, p0, Lcom/ddtaxi/a/a/ae;->k:B

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iput-byte v2, p0, Lcom/ddtaxi/a/a/ae;->k:B

    move v1, v2

    goto :goto_0
.end method
