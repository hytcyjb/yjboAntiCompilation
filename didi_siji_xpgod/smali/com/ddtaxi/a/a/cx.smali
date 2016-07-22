.class public final Lcom/ddtaxi/a/a/cx;
.super Lcom/ddtaxi/a/a/ep;

# interfaces
.implements Lcom/ddtaxi/a/a/da;


# static fields
.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field private static final f:Lcom/ddtaxi/a/a/cx;

.field private static final s:J


# instance fields
.field private final g:Lcom/ddtaxi/a/a/im;

.field private h:I

.field private i:Ljava/util/List;

.field private j:I

.field private k:Ljava/util/List;

.field private l:I

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private q:B

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/cy;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/cy;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/a/a/cx;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/cx;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/a/a/cx;->f:Lcom/ddtaxi/a/a/cx;

    sget-object v0, Lcom/ddtaxi/a/a/cx;->f:Lcom/ddtaxi/a/a/cx;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/cx;->t()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/et;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ep;-><init>(Lcom/ddtaxi/a/a/et;)V

    iput v0, p0, Lcom/ddtaxi/a/a/cx;->j:I

    iput v0, p0, Lcom/ddtaxi/a/a/cx;->l:I

    iput-byte v0, p0, Lcom/ddtaxi/a/a/cx;->q:B

    iput v0, p0, Lcom/ddtaxi/a/a/cx;->r:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/et;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cx;->g:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/cx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/cx;-><init>(Lcom/ddtaxi/a/a/et;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput v1, p0, Lcom/ddtaxi/a/a/cx;->j:I

    iput v1, p0, Lcom/ddtaxi/a/a/cx;->l:I

    iput-byte v1, p0, Lcom/ddtaxi/a/a/cx;->q:B

    iput v1, p0, Lcom/ddtaxi/a/a/cx;->r:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cx;->t()V

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    and-int/lit8 v0, v1, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    :cond_1
    and-int/lit8 v0, v1, 0x2

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    :cond_2
    invoke-virtual {v3}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cx;->g:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->ac()V

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/ddtaxi/a/a/cx;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_0
    move v0, v2

    goto :goto_0

    :sswitch_1
    and-int/lit8 v4, v1, 0x1

    if-eq v4, v2, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    or-int/lit8 v1, v1, 0x1

    :cond_4
    iget-object v4, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    and-int/lit8 v4, v1, 0x1

    if-ne v4, v2, :cond_5

    iget-object v2, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    :cond_5
    and-int/lit8 v1, v1, 0x2

    if-ne v1, v7, :cond_6

    iget-object v1, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    :cond_6
    invoke-virtual {v3}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/cx;->g:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->ac()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/ddtaxi/a/a/o;->f(I)I

    move-result v4

    and-int/lit8 v5, v1, 0x1

    if-eq v5, v2, :cond_7

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->C()I

    move-result v5

    if-lez v5, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    or-int/lit8 v1, v1, 0x1

    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->C()I

    move-result v5

    if-gtz v5, :cond_8

    invoke-virtual {p1, v4}, Lcom/ddtaxi/a/a/o;->g(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v4, Lcom/ddtaxi/a/a/fz;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/ddtaxi/a/a/fz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/ddtaxi/a/a/fz;->a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    :try_start_4
    iget-object v5, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_3
    and-int/lit8 v4, v1, 0x2

    if-eq v4, v7, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    or-int/lit8 v1, v1, 0x2

    :cond_9
    iget-object v4, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/ddtaxi/a/a/o;->f(I)I

    move-result v4

    and-int/lit8 v5, v1, 0x2

    if-eq v5, v7, :cond_a

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->C()I

    move-result v5

    if-lez v5, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    or-int/lit8 v1, v1, 0x2

    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->C()I

    move-result v5

    if-gtz v5, :cond_b

    invoke-virtual {p1, v4}, Lcom/ddtaxi/a/a/o;->g(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v5, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_5
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v4

    iget v5, p0, Lcom/ddtaxi/a/a/cx;->h:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ddtaxi/a/a/cx;->h:I

    iput-object v4, p0, Lcom/ddtaxi/a/a/cx;->m:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v4

    iget v5, p0, Lcom/ddtaxi/a/a/cx;->h:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/ddtaxi/a/a/cx;->h:I

    iput-object v4, p0, Lcom/ddtaxi/a/a/cx;->n:Ljava/lang/Object;
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
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x1a -> :sswitch_5
        0x22 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/cx;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/cx;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput v0, p0, Lcom/ddtaxi/a/a/cx;->j:I

    iput v0, p0, Lcom/ddtaxi/a/a/cx;->l:I

    iput-byte v0, p0, Lcom/ddtaxi/a/a/cx;->q:B

    iput v0, p0, Lcom/ddtaxi/a/a/cx;->r:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cx;->g:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method public static a()Lcom/ddtaxi/a/a/cx;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cx;->f:Lcom/ddtaxi/a/a/cx;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/cx;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cx;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/cx;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cx;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/cx;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cx;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/cx;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cx;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/cx;)Lcom/ddtaxi/a/a/cz;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cx;->q()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/cz;->a(Lcom/ddtaxi/a/a/cx;)Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/cx;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/cx;->h:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/cx;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/cx;->m:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/cx;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/cx;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cx;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/cx;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/cx;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/cx;->n:Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/cx;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/cx;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    return-object v0
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->N()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/a/a/cx;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/ddtaxi/a/a/cx;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public static q()Lcom/ddtaxi/a/a/cz;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cz;->x()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cx;->m:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cx;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/ddtaxi/a/a/cx;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v1, v2

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    add-int v0, v2, v3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3}, Lcom/ddtaxi/a/a/r;->h(I)I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    :goto_2
    iput v3, p0, Lcom/ddtaxi/a/a/cx;->j:I

    move v3, v2

    :goto_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    add-int v0, v1, v3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3}, Lcom/ddtaxi/a/a/r;->h(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v3, p0, Lcom/ddtaxi/a/a/cx;->l:I

    iget v1, p0, Lcom/ddtaxi/a/a/cx;->h:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->m()Lcom/ddtaxi/a/a/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/ddtaxi/a/a/cx;->h:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->p()Lcom/ddtaxi/a/a/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/cx;->r:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->h(I)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->h(I)I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_3

    :cond_6
    move v1, v0

    goto :goto_2
.end method

.method protected B()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/ep;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic F()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->s()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->s()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->L_()Lcom/ddtaxi/a/a/cx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->L_()Lcom/ddtaxi/a/a/cx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->r()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->r()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public L_()Lcom/ddtaxi/a/a/cx;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cx;->f:Lcom/ddtaxi/a/a/cx;

    return-object v0
.end method

.method public a(I)I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/cz;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/cz;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/a/a/cz;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/cz;)V

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->A()I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/r;->p(I)V

    iget v0, p0, Lcom/ddtaxi/a/a/cx;->j:I

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/r;->p(I)V

    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/r;->p(I)V

    iget v0, p0, Lcom/ddtaxi/a/a/cx;->l:I

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/r;->p(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    iget v0, p0, Lcom/ddtaxi/a/a/cx;->h:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->m()Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_2
    iget v0, p0, Lcom/ddtaxi/a/a/cx;->h:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->p()Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_3
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cx;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/r;->b(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/r;->b(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected synthetic b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/cx;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->g:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->O()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/cx;

    const-class v2, Lcom/ddtaxi/a/a/cz;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/cx;->h:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->m:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ddtaxi/a/a/cx;->m:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public m()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->m:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cx;->m:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/cx;->h:I

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

.method public o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->n:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ddtaxi/a/a/cx;->n:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public p()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cx;->n:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cx;->n:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public r()Lcom/ddtaxi/a/a/cz;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cx;->q()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/ddtaxi/a/a/cz;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/cx;->a(Lcom/ddtaxi/a/a/cx;)Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public final z()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/ddtaxi/a/a/cx;->q:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/ddtaxi/a/a/cx;->q:B

    goto :goto_0
.end method
