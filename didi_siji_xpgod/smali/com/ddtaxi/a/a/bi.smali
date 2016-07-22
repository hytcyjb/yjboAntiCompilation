.class public final Lcom/ddtaxi/a/a/bi;
.super Lcom/ddtaxi/a/a/ep;

# interfaces
.implements Lcom/ddtaxi/a/a/bl;


# static fields
.field private static final E:J = 0x0L

.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0xa

.field public static final f:I = 0xb

.field public static final g:I = 0x4

.field public static final h:I = 0x5

.field public static final i:I = 0x6

.field public static final j:I = 0x7

.field public static final k:I = 0x8

.field public static final l:I = 0x9

.field private static final m:Lcom/ddtaxi/a/a/bi;


# instance fields
.field private A:Lcom/ddtaxi/a/a/bq;

.field private B:Lcom/ddtaxi/a/a/cu;

.field private C:B

.field private D:I

.field private final n:Lcom/ddtaxi/a/a/im;

.field private q:I

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/Object;

.field private t:Lcom/ddtaxi/a/a/gh;

.field private u:Ljava/util/List;

.field private v:Ljava/util/List;

.field private w:Ljava/util/List;

.field private x:Ljava/util/List;

.field private y:Ljava/util/List;

.field private z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/bj;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/bj;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/bi;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/a/a/bi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/bi;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/a/a/bi;->m:Lcom/ddtaxi/a/a/bi;

    sget-object v0, Lcom/ddtaxi/a/a/bi;->m:Lcom/ddtaxi/a/a/bi;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/bi;->ad()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/et;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ep;-><init>(Lcom/ddtaxi/a/a/et;)V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/bi;->C:B

    iput v0, p0, Lcom/ddtaxi/a/a/bi;->D:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/et;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->n:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/bi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/bi;-><init>(Lcom/ddtaxi/a/a/et;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 11

    const/16 v10, 0x40

    const/16 v9, 0x20

    const/16 v8, 0x10

    const/4 v7, 0x4

    const/16 v6, 0x8

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/ddtaxi/a/a/bi;->C:B

    const/4 v0, -0x1

    iput v0, p0, Lcom/ddtaxi/a/a/bi;->D:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/bi;->ad()V

    const/4 v1, 0x0

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v4

    const/4 v0, 0x0

    move v3, v0

    :cond_0
    :goto_0
    if-eqz v3, :cond_8

    and-int/lit8 v0, v1, 0x4

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gh;->d()Lcom/ddtaxi/a/a/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    :cond_1
    and-int/lit8 v0, v1, 0x20

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    :cond_2
    and-int/lit8 v0, v1, 0x40

    if-ne v0, v10, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    :cond_3
    and-int/lit16 v0, v1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    :cond_4
    and-int/lit16 v0, v1, 0x100

    const/16 v2, 0x100

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    :cond_5
    and-int/lit8 v0, v1, 0x8

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    :cond_6
    and-int/lit8 v0, v1, 0x10

    if-ne v0, v8, :cond_7

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    :cond_7
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->n:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->ac()V

    return-void

    :cond_8
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/ddtaxi/a/a/bi;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v3, v0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    move v3, v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iget v2, p0, Lcom/ddtaxi/a/a/bi;->q:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ddtaxi/a/a/bi;->q:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->r:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

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

    and-int/lit8 v2, v1, 0x4

    if-ne v2, v7, :cond_9

    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v2}, Lcom/ddtaxi/a/a/gh;->d()Lcom/ddtaxi/a/a/gh;

    move-result-object v2

    iput-object v2, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    :cond_9
    and-int/lit8 v2, v1, 0x20

    if-ne v2, v9, :cond_a

    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    :cond_a
    and-int/lit8 v2, v1, 0x40

    if-ne v2, v10, :cond_b

    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    :cond_b
    and-int/lit16 v2, v1, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    :cond_c
    and-int/lit16 v2, v1, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    :cond_d
    and-int/lit8 v2, v1, 0x8

    if-ne v2, v6, :cond_e

    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    :cond_e
    and-int/lit8 v1, v1, 0x10

    if-ne v1, v8, :cond_f

    iget-object v1, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    :cond_f
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/bi;->n:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->ac()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iget v2, p0, Lcom/ddtaxi/a/a/bi;->q:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/ddtaxi/a/a/bi;->q:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->s:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

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
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    and-int/lit8 v2, v1, 0x4

    if-eq v2, v7, :cond_10

    new-instance v2, Lcom/ddtaxi/a/a/ge;

    invoke-direct {v2}, Lcom/ddtaxi/a/a/ge;-><init>()V

    iput-object v2, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    or-int/lit8 v1, v1, 0x4

    :cond_10
    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v2, v0}, Lcom/ddtaxi/a/a/gh;->a(Lcom/ddtaxi/a/a/k;)V

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v0, v1, 0x20

    if-eq v0, v9, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    or-int/lit8 v1, v1, 0x20

    :cond_11
    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v0, v1, 0x40

    if-eq v0, v10, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    or-int/lit8 v1, v1, 0x40

    :cond_12
    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    and-int/lit16 v0, v1, 0x80

    const/16 v2, 0x80

    if-eq v0, v2, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    or-int/lit16 v1, v1, 0x80

    :cond_13
    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/cm;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cm;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    and-int/lit16 v0, v1, 0x100

    const/16 v2, 0x100

    if-eq v0, v2, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    or-int/lit16 v1, v1, 0x100

    :cond_14
    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    const/4 v0, 0x0

    iget v2, p0, Lcom/ddtaxi/a/a/bi;->q:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v7, :cond_1e

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->A:Lcom/ddtaxi/a/a/bq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bq;->T()Lcom/ddtaxi/a/a/bs;

    move-result-object v0

    move-object v2, v0

    :goto_1
    sget-object v0, Lcom/ddtaxi/a/a/bq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bq;

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->A:Lcom/ddtaxi/a/a/bq;

    if-eqz v2, :cond_15

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->A:Lcom/ddtaxi/a/a/bq;

    invoke-virtual {v2, v0}, Lcom/ddtaxi/a/a/bs;->a(Lcom/ddtaxi/a/a/bq;)Lcom/ddtaxi/a/a/bs;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/bs;->F()Lcom/ddtaxi/a/a/bq;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->A:Lcom/ddtaxi/a/a/bq;

    :cond_15
    iget v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

    goto/16 :goto_0

    :sswitch_9
    const/4 v0, 0x0

    iget v2, p0, Lcom/ddtaxi/a/a/bi;->q:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_1d

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->B:Lcom/ddtaxi/a/a/cu;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/cu;->l()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    move-object v2, v0

    :goto_2
    sget-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cu;

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->B:Lcom/ddtaxi/a/a/cu;

    if-eqz v2, :cond_16

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->B:Lcom/ddtaxi/a/a/cu;

    invoke-virtual {v2, v0}, Lcom/ddtaxi/a/a/cw;->a(Lcom/ddtaxi/a/a/cu;)Lcom/ddtaxi/a/a/cw;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/cw;->l()Lcom/ddtaxi/a/a/cu;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->B:Lcom/ddtaxi/a/a/cu;

    :cond_16
    iget v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

    goto/16 :goto_0

    :sswitch_a
    and-int/lit8 v0, v1, 0x8

    if-eq v0, v6, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    or-int/lit8 v1, v1, 0x8

    :cond_17
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/o;->f(I)I

    move-result v0

    and-int/lit8 v2, v1, 0x8

    if-eq v2, v6, :cond_18

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->C()I

    move-result v2

    if-lez v2, :cond_18

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    or-int/lit8 v1, v1, 0x8

    :cond_18
    :goto_3
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->C()I

    move-result v2

    if-gtz v2, :cond_19

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/o;->g(I)V

    goto/16 :goto_0

    :cond_19
    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :sswitch_c
    and-int/lit8 v0, v1, 0x10

    if-eq v0, v8, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    or-int/lit8 v1, v1, 0x10

    :cond_1a
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/o;->f(I)I

    move-result v0

    and-int/lit8 v2, v1, 0x10

    if-eq v2, v8, :cond_1b

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->C()I

    move-result v2

    if-lez v2, :cond_1b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    or-int/lit8 v1, v1, 0x10

    :cond_1b
    :goto_4
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->C()I

    move-result v2

    if-gtz v2, :cond_1c

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/o;->g(I)V

    goto/16 :goto_0

    :cond_1c
    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :cond_1d
    move-object v2, v0

    goto/16 :goto_2

    :cond_1e
    move-object v2, v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x52 -> :sswitch_b
        0x58 -> :sswitch_c
        0x5a -> :sswitch_d
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/bi;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/bi;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/bi;->C:B

    iput v0, p0, Lcom/ddtaxi/a/a/bi;->D:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->n:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method public static T()Lcom/ddtaxi/a/a/bk;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/bk;->av()Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/ddtaxi/a/a/bi;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bi;->m:Lcom/ddtaxi/a/a/bi;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/bi;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bi;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bi;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/bi;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bi;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bi;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/bi;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bi;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bi;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/bi;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bi;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bi;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/bi;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bi;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bi;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/bi;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bi;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bi;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/bi;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bi;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bi;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/bi;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bi;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bi;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/bi;)Lcom/ddtaxi/a/a/bk;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/bi;->T()Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/bk;->a(Lcom/ddtaxi/a/a/bi;)Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/bi;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/bi;->q:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/bi;Lcom/ddtaxi/a/a/bq;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bi;->A:Lcom/ddtaxi/a/a/bq;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/bi;Lcom/ddtaxi/a/a/cu;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bi;->B:Lcom/ddtaxi/a/a/cu;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/bi;Lcom/ddtaxi/a/a/gh;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/bi;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bi;->r:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/bi;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    return-void
.end method

.method private ad()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->r:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->s:Ljava/lang/Object;

    sget-object v0, Lcom/ddtaxi/a/a/ge;->a:Lcom/ddtaxi/a/a/gh;

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    invoke-static {}, Lcom/ddtaxi/a/a/bq;->a()Lcom/ddtaxi/a/a/bq;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->A:Lcom/ddtaxi/a/a/bq;

    invoke-static {}, Lcom/ddtaxi/a/a/cu;->a()Lcom/ddtaxi/a/a/cu;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->B:Lcom/ddtaxi/a/a/cu;

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/bi;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bi;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bi;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/bi;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bi;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bi;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/bi;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->r:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/bi;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bi;->s:Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/bi;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/bi;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->s:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/bi;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    return-void
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->d()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/a/a/bi;)Lcom/ddtaxi/a/a/gh;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/a/a/bi;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    return-void
.end method

.method static synthetic e(Lcom/ddtaxi/a/a/bi;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/ddtaxi/a/a/bi;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    return-void
.end method

.method static synthetic f(Lcom/ddtaxi/a/a/bi;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/ddtaxi/a/a/bi;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    return-void
.end method

.method static synthetic g(Lcom/ddtaxi/a/a/bi;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/ddtaxi/a/a/bi;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/ddtaxi/a/a/bi;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/ddtaxi/a/a/bi;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/ddtaxi/a/a/bi;->D:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_b

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->i()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lcom/ddtaxi/a/a/bi;->q:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->l()Lcom/ddtaxi/a/a/k;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    move v2, v1

    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v4}, Lcom/ddtaxi/a/a/gh;->size()I

    move-result v4

    if-lt v2, v4, :cond_4

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->m()Lcom/ddtaxi/a/a/gx;

    move-result-object v2

    invoke-interface {v2}, Lcom/ddtaxi/a/a/gx;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    move v2, v1

    move v3, v0

    :goto_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    move v2, v1

    :goto_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_6

    move v2, v1

    :goto_5
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_7

    move v2, v1

    :goto_6
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_8

    iget v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->A:Lcom/ddtaxi/a/a/bq;

    invoke-static {v6, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_2
    iget v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v6, :cond_3

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->B:Lcom/ddtaxi/a/a/cu;

    invoke-static {v0, v2}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_3
    move v2, v1

    move v4, v1

    :goto_7
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_9

    add-int v0, v3, v4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int v3, v0, v2

    move v2, v1

    :goto_8
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_a

    add-int v0, v3, v2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/bi;->D:I

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v4, v2}, Lcom/ddtaxi/a/a/gh;->c(I)Lcom/ddtaxi/a/a/k;

    move-result-object v4

    invoke-static {v4}, Lcom/ddtaxi/a/a/r;->b(Lcom/ddtaxi/a/a/k;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v5, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    :cond_6
    const/4 v4, 0x5

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v4, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4

    :cond_7
    const/4 v4, 0x6

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v4, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_5

    :cond_8
    const/4 v4, 0x7

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v4, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_6

    :cond_9
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->h(I)I

    move-result v0

    add-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_7

    :cond_a
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->h(I)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto/16 :goto_8

    :cond_b
    move v0, v1

    goto/16 :goto_1
.end method

.method protected B()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/ep;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    return-object v0
.end method

.method public D()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public E()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    return-object v0
.end method

.method public synthetic F()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->aa()Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->aa()Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->v_()Lcom/ddtaxi/a/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->v_()Lcom/ddtaxi/a/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->Z()Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->Z()Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    return-object v0
.end method

.method public M()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

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

.method public O()Lcom/ddtaxi/a/a/bq;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->A:Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method public P()Lcom/ddtaxi/a/a/bv;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->A:Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method public Z()Lcom/ddtaxi/a/a/bk;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/bi;->T()Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/bk;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/bk;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/a/a/bk;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/bk;)V

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/gh;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->A()I

    iget v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->i()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->l()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v2}, Lcom/ddtaxi/a/a/gh;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    move v2, v1

    :goto_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    move v2, v1

    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_6

    move v2, v1

    :goto_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_7

    move v2, v1

    :goto_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_8

    iget v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->A:Lcom/ddtaxi/a/a/bq;

    invoke-virtual {p1, v5, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    :cond_2
    iget v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/ddtaxi/a/a/bi;->B:Lcom/ddtaxi/a/a/cu;

    invoke-virtual {p1, v0, v2}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    :cond_3
    move v2, v1

    :goto_5
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_9

    :goto_6
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_a

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void

    :cond_4
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v3, v0}, Lcom/ddtaxi/a/a/gh;->c(I)Lcom/ddtaxi/a/a/k;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v4, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_6
    const/4 v3, 0x5

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_7
    const/4 v3, 0x6

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_8
    const/4 v3, 0x7

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4

    :cond_9
    const/16 v3, 0xa

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->a(II)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_a
    const/16 v2, 0xb

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/ddtaxi/a/a/r;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6
.end method

.method public aa()Lcom/ddtaxi/a/a/bk;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/bi;->a(Lcom/ddtaxi/a/a/bi;)Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/bi;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/ddtaxi/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/gh;->c(I)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bi;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->n:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method public d(I)I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->e()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/bi;

    const-class v2, Lcom/ddtaxi/a/a/bk;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/ddtaxi/a/a/w;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public f(I)Lcom/ddtaxi/a/a/ad;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ad;

    return-object v0
.end method

.method public g(I)Lcom/ddtaxi/a/a/ae;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/bi;->q:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(I)Lcom/ddtaxi/a/a/ah;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ah;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->r:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ddtaxi/a/a/bi;->r:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public i(I)Lcom/ddtaxi/a/a/cm;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cm;

    return-object v0
.end method

.method public i()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->r:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->r:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public j(I)Lcom/ddtaxi/a/a/cp;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cp;

    return-object v0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

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

.method public k(I)Lcom/ddtaxi/a/a/au;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->s:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ddtaxi/a/a/bi;->s:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public l(I)Lcom/ddtaxi/a/a/bb;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bb;

    return-object v0
.end method

.method public l()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->s:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bi;->s:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public m()Lcom/ddtaxi/a/a/gx;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->t:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gh;->size()I

    move-result v0

    return v0
.end method

.method public o()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public q()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public s()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    return-object v0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public v()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    return-object v0
.end method

.method public v_()Lcom/ddtaxi/a/a/bi;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bi;->m:Lcom/ddtaxi/a/a/bi;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    return-object v0
.end method

.method public w_()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/bi;->q:I

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

.method public x()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public x_()Lcom/ddtaxi/a/a/cu;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->B:Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method public y()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->y:Ljava/util/List;

    return-object v0
.end method

.method public y_()Lcom/ddtaxi/a/a/db;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bi;->B:Lcom/ddtaxi/a/a/cu;

    return-object v0
.end method

.method public final z()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/ddtaxi/a/a/bi;->C:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->u()I

    move-result v3

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->x()I

    move-result v3

    if-lt v0, v3, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->D()I

    move-result v3

    if-lt v0, v3, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->M()I

    move-result v3

    if-lt v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->N()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bi;->O()Lcom/ddtaxi/a/a/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bq;->z()Z

    move-result v0

    if-nez v0, :cond_a

    iput-byte v1, p0, Lcom/ddtaxi/a/a/bi;->C:B

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/bi;->e(I)Lcom/ddtaxi/a/a/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/w;->z()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v1, p0, Lcom/ddtaxi/a/a/bi;->C:B

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/bi;->g(I)Lcom/ddtaxi/a/a/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/ae;->z()Z

    move-result v3

    if-nez v3, :cond_5

    iput-byte v1, p0, Lcom/ddtaxi/a/a/bi;->C:B

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/bi;->i(I)Lcom/ddtaxi/a/a/cm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/cm;->z()Z

    move-result v3

    if-nez v3, :cond_7

    iput-byte v1, p0, Lcom/ddtaxi/a/a/bi;->C:B

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/bi;->k(I)Lcom/ddtaxi/a/a/au;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/au;->z()Z

    move-result v3

    if-nez v3, :cond_9

    iput-byte v1, p0, Lcom/ddtaxi/a/a/bi;->C:B

    goto :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    iput-byte v2, p0, Lcom/ddtaxi/a/a/bi;->C:B

    move v1, v2

    goto :goto_0
.end method
