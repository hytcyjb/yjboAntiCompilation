.class public final Lcom/ddtaxi/common/tracesdk/t;
.super Lcom/ddtaxi/a/a/ep;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/ac;


# static fields
.field private static final A:J = 0x0L

.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x9

.field public static final i:I = 0x7

.field public static final j:I = 0x8

.field private static final k:Lcom/ddtaxi/common/tracesdk/t;


# instance fields
.field private final l:Lcom/ddtaxi/a/a/im;

.field private m:I

.field private n:J

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Lcom/ddtaxi/common/tracesdk/w;

.field private v:I

.field private w:I

.field private x:Ljava/util/List;

.field private y:B

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/common/tracesdk/u;

    invoke-direct {v0}, Lcom/ddtaxi/common/tracesdk/u;-><init>()V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/t;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/t;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/common/tracesdk/t;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/t;->k:Lcom/ddtaxi/common/tracesdk/t;

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->k:Lcom/ddtaxi/common/tracesdk/t;

    invoke-direct {v0}, Lcom/ddtaxi/common/tracesdk/t;->M()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/et;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ep;-><init>(Lcom/ddtaxi/a/a/et;)V

    iput-byte v0, p0, Lcom/ddtaxi/common/tracesdk/t;->y:B

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->z:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/et;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->l:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/common/tracesdk/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/t;-><init>(Lcom/ddtaxi/a/a/et;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v7, 0x100

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/t;->y:B

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/t;->z:I

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/t;->M()V

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v4

    move v2, v0

    move v1, v0

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    and-int/lit16 v0, v1, 0x100

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    :cond_1
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->l:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->ac()V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/ddtaxi/common/tracesdk/t;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    move v2, v3

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->g()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ddtaxi/common/tracesdk/t;->n:J
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

    and-int/lit16 v1, v1, 0x100

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    :cond_3
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/t;->l:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->ac()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->q:I
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
    :try_start_4
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->r:I

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->s:I

    goto/16 :goto_0

    :sswitch_5
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->t:I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->r()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/w;->a(I)Lcom/ddtaxi/common/tracesdk/w;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v0}, Lcom/ddtaxi/a/a/in;->a(II)Lcom/ddtaxi/a/a/in;

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    iput-object v5, p0, Lcom/ddtaxi/common/tracesdk/t;->u:Lcom/ddtaxi/common/tracesdk/w;

    goto/16 :goto_0

    :sswitch_7
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->w:I

    goto/16 :goto_0

    :sswitch_8
    and-int/lit16 v0, v1, 0x100

    if-eq v0, v7, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    or-int/lit16 v1, v1, 0x100

    :cond_5
    iget-object v5, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/common/tracesdk/y;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/y;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->v:I
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
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/common/tracesdk/t;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/t;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/common/tracesdk/t;->y:B

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->z:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->l:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method public static C()Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/v;->aa()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method static synthetic L()Z
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/common/tracesdk/t;->p:Z

    return v0
.end method

.method private M()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/t;->n:J

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/t;->q:I

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/t;->r:I

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/t;->s:I

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/t;->t:I

    sget-object v0, Lcom/ddtaxi/common/tracesdk/w;->a:Lcom/ddtaxi/common/tracesdk/w;

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->u:Lcom/ddtaxi/common/tracesdk/w;

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/t;->v:I

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/t;->w:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->k:Lcom/ddtaxi/common/tracesdk/t;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/common/tracesdk/t;)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/t;->C()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/common/tracesdk/v;->a(Lcom/ddtaxi/common/tracesdk/t;)Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/t;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/t;->q:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/t;J)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/t;->n:J

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/t;Lcom/ddtaxi/common/tracesdk/w;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/t;->u:Lcom/ddtaxi/common/tracesdk/w;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/t;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/t;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/t;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/t;->r:I

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/common/tracesdk/t;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/t;->s:I

    return-void
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->l()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/common/tracesdk/t;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/t;->t:I

    return-void
.end method

.method static synthetic e(Lcom/ddtaxi/common/tracesdk/t;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/t;->v:I

    return-void
.end method

.method static synthetic f(Lcom/ddtaxi/common/tracesdk/t;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/t;->w:I

    return-void
.end method

.method static synthetic g(Lcom/ddtaxi/common/tracesdk/t;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    return-void
.end method


# virtual methods
.method public A()I
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->z:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_9

    iget-wide v2, p0, Lcom/ddtaxi/common/tracesdk/t;->n:J

    invoke-static {v4, v2, v3}, Lcom/ddtaxi/a/a/r;->g(IJ)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_1

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/t;->q:I

    invoke-static {v5, v2}, Lcom/ddtaxi/a/a/r;->g(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_2

    const/4 v2, 0x3

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/t;->r:I

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->g(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_3

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/t;->s:I

    invoke-static {v6, v2}, Lcom/ddtaxi/a/a/r;->g(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    const/4 v2, 0x5

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/t;->t:I

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->g(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/ddtaxi/common/tracesdk/t;->u:Lcom/ddtaxi/common/tracesdk/w;

    invoke-virtual {v3}, Lcom/ddtaxi/common/tracesdk/w;->a()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->j(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_6

    const/4 v2, 0x7

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/t;->w:I

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->g(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_7

    const/16 v0, 0x9

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/t;->v:I

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/r;->g(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_7
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/t;->z:I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v7, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method protected B()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/ep;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public D()Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/t;->C()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public E()Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/t;->a(Lcom/ddtaxi/common/tracesdk/t;)Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic F()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->E()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->E()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->a_()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->a_()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->D()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->D()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/common/tracesdk/v;
    .locals 2

    new-instance v0, Lcom/ddtaxi/common/tracesdk/v;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/common/tracesdk/v;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/common/tracesdk/v;)V

    return-object v0
.end method

.method public a(I)Lcom/ddtaxi/common/tracesdk/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/y;

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->A()I

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/t;->n:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/ddtaxi/a/a/r;->b(IJ)V

    :cond_0
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->q:I

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->a(II)V

    :cond_1
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/t;->r:I

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(II)V

    :cond_2
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->s:I

    invoke-virtual {p1, v4, v0}, Lcom/ddtaxi/a/a/r;->a(II)V

    :cond_3
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/t;->t:I

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(II)V

    :cond_4
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/t;->u:Lcom/ddtaxi/common/tracesdk/w;

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/w;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->d(II)V

    :cond_5
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/t;->w:I

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(II)V

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_7

    const/16 v0, 0x9

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/t;->v:I

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(II)V

    :cond_7
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v5, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a_()Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->k:Lcom/ddtaxi/common/tracesdk/t;

    return-object v0
.end method

.method protected synthetic b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/t;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/ddtaxi/common/tracesdk/ab;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ab;

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->l:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->m()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/common/tracesdk/t;

    const-class v2, Lcom/ddtaxi/common/tracesdk/v;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

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

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/t;->n:J

    return-wide v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

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

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->q:I

    return v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

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

.method public l()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->r:I

    return v0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

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

.method public n()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->s:I

    return v0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

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

.method public p()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->t:I

    return v0
.end method

.method public q()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

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

.method public r()Lcom/ddtaxi/common/tracesdk/w;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->u:Lcom/ddtaxi/common/tracesdk/w;

    return-object v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

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

.method public t()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->v:I

    return v0
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->m:I

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

.method public v()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/t;->w:I

    return v0
.end method

.method public w()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/t;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final z()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/ddtaxi/common/tracesdk/t;->y:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->g()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/t;->y:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->i()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/t;->y:B

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->k()Z

    move-result v2

    if-nez v2, :cond_4

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/t;->y:B

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->m()Z

    move-result v2

    if-nez v2, :cond_5

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/t;->y:B

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/t;->o()Z

    move-result v2

    if-nez v2, :cond_6

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/t;->y:B

    move v0, v1

    goto :goto_0

    :cond_6
    iput-byte v0, p0, Lcom/ddtaxi/common/tracesdk/t;->y:B

    goto :goto_0
.end method
