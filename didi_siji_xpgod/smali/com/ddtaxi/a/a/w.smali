.class public final Lcom/ddtaxi/a/a/w;
.super Lcom/ddtaxi/a/a/ep;

# interfaces
.implements Lcom/ddtaxi/a/a/ad;


# static fields
.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x6

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x8

.field public static final i:I = 0x7

.field private static final j:Lcom/ddtaxi/a/a/w;

.field private static final y:J


# instance fields
.field private final k:Lcom/ddtaxi/a/a/im;

.field private l:I

.field private m:Ljava/lang/Object;

.field private n:Ljava/util/List;

.field private q:Ljava/util/List;

.field private r:Ljava/util/List;

.field private s:Ljava/util/List;

.field private t:Ljava/util/List;

.field private u:Ljava/util/List;

.field private v:Lcom/ddtaxi/a/a/bw;

.field private w:B

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/x;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/x;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/a/a/w;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/w;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/a/a/w;->j:Lcom/ddtaxi/a/a/w;

    sget-object v0, Lcom/ddtaxi/a/a/w;->j:Lcom/ddtaxi/a/a/w;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/w;->Q()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/et;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ep;-><init>(Lcom/ddtaxi/a/a/et;)V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/w;->w:B

    iput v0, p0, Lcom/ddtaxi/a/a/w;->x:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/et;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->k:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/w;-><init>(Lcom/ddtaxi/a/a/et;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 10

    const/16 v9, 0x20

    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/ddtaxi/a/a/w;->w:B

    const/4 v0, -0x1

    iput v0, p0, Lcom/ddtaxi/a/a/w;->x:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/w;->Q()V

    const/4 v1, 0x0

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v4

    const/4 v0, 0x0

    move v3, v0

    :cond_0
    :goto_0
    if-eqz v3, :cond_7

    and-int/lit8 v0, v1, 0x2

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    :cond_1
    and-int/lit8 v0, v1, 0x8

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    :cond_2
    and-int/lit8 v0, v1, 0x10

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    :cond_3
    and-int/lit8 v0, v1, 0x20

    if-ne v0, v9, :cond_4

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    :cond_4
    and-int/lit8 v0, v1, 0x4

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    :cond_5
    and-int/lit8 v0, v1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    :cond_6
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->k:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->ac()V

    return-void

    :cond_7
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/ddtaxi/a/a/w;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

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

    iget v2, p0, Lcom/ddtaxi/a/a/w;->l:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ddtaxi/a/a/w;->l:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->m:Ljava/lang/Object;
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

    and-int/lit8 v2, v1, 0x2

    if-ne v2, v5, :cond_8

    iget-object v2, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    :cond_8
    and-int/lit8 v2, v1, 0x8

    if-ne v2, v7, :cond_9

    iget-object v2, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    :cond_9
    and-int/lit8 v2, v1, 0x10

    if-ne v2, v8, :cond_a

    iget-object v2, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    :cond_a
    and-int/lit8 v2, v1, 0x20

    if-ne v2, v9, :cond_b

    iget-object v2, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    :cond_b
    and-int/lit8 v2, v1, 0x4

    if-ne v2, v6, :cond_c

    iget-object v2, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    :cond_c
    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    :cond_d
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/w;->k:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->ac()V

    throw v0

    :sswitch_2
    and-int/lit8 v0, v1, 0x2

    if-eq v0, v5, :cond_e

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    or-int/lit8 v1, v1, 0x2

    :cond_e
    iget-object v2, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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
    and-int/lit8 v0, v1, 0x8

    if-eq v0, v7, :cond_f

    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    or-int/lit8 v1, v1, 0x8

    :cond_f
    iget-object v2, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v0, v1, 0x10

    if-eq v0, v8, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    or-int/lit8 v1, v1, 0x10

    :cond_10
    iget-object v2, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v0, v1, 0x20

    if-eq v0, v9, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    or-int/lit8 v1, v1, 0x20

    :cond_11
    iget-object v2, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/z;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v0, v1, 0x4

    if-eq v0, v6, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    or-int/lit8 v1, v1, 0x4

    :cond_12
    iget-object v2, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    const/4 v0, 0x0

    iget v2, p0, Lcom/ddtaxi/a/a/w;->l:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_15

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->v:Lcom/ddtaxi/a/a/bw;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bw;->r()Lcom/ddtaxi/a/a/by;

    move-result-object v0

    move-object v2, v0

    :goto_1
    sget-object v0, Lcom/ddtaxi/a/a/bw;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bw;

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->v:Lcom/ddtaxi/a/a/bw;

    if-eqz v2, :cond_13

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->v:Lcom/ddtaxi/a/a/bw;

    invoke-virtual {v2, v0}, Lcom/ddtaxi/a/a/by;->a(Lcom/ddtaxi/a/a/bw;)Lcom/ddtaxi/a/a/by;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/by;->r()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->v:Lcom/ddtaxi/a/a/bw;

    :cond_13
    iget v0, p0, Lcom/ddtaxi/a/a/w;->l:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/w;->l:I

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v0, v1, 0x40

    const/16 v2, 0x40

    if-eq v0, v2, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    or-int/lit8 v1, v1, 0x40

    :cond_14
    iget-object v2, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/ci;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ci;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_15
    move-object v2, v0

    goto :goto_1

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
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/w;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/w;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/w;->w:B

    iput v0, p0, Lcom/ddtaxi/a/a/w;->x:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->k:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method public static N()Lcom/ddtaxi/a/a/y;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/y;->as()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method private Q()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->m:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    invoke-static {}, Lcom/ddtaxi/a/a/bw;->a()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->v:Lcom/ddtaxi/a/a/bw;

    return-void
.end method

.method public static a()Lcom/ddtaxi/a/a/w;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/w;->j:Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/w;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/w;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/w;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/w;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/w;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/w;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/w;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/w;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/w;)Lcom/ddtaxi/a/a/y;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/w;->N()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/y;->a(Lcom/ddtaxi/a/a/w;)Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/w;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/w;->l:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/w;Lcom/ddtaxi/a/a/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/w;->v:Lcom/ddtaxi/a/a/bw;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/w;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/w;->m:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/w;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/w;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/w;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/w;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    return-void
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->h()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/a/a/w;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    return-void
.end method

.method static synthetic e(Lcom/ddtaxi/a/a/w;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    return-void
.end method

.method static synthetic f(Lcom/ddtaxi/a/a/w;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    return-void
.end method

.method static synthetic g(Lcom/ddtaxi/a/a/w;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/ddtaxi/a/a/w;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/ddtaxi/a/a/w;->x:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/w;->l:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->i()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v2, v1

    move v3, v0

    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    move v2, v1

    :goto_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    move v2, v1

    :goto_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    move v2, v1

    :goto_5
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    move v2, v1

    :goto_6
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_6

    iget v0, p0, Lcom/ddtaxi/a/a/w;->l:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_1

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/ddtaxi/a/a/w;->v:Lcom/ddtaxi/a/a/bw;

    invoke-static {v0, v2}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_1
    :goto_7
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ddtaxi/a/a/w;->x:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v5, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v4, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    const/4 v4, 0x4

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v4, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_5
    const/4 v4, 0x5

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v4, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_6
    const/4 v4, 0x6

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v4, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_6

    :cond_7
    const/16 v2, 0x8

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
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

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    return-object v0
.end method

.method public D()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/w;->l:I

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

.method public synthetic F()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->P()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->P()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->m_()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->m_()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->O()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->O()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public L()Lcom/ddtaxi/a/a/bw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->v:Lcom/ddtaxi/a/a/bw;

    return-object v0
.end method

.method public M()Lcom/ddtaxi/a/a/bz;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->v:Lcom/ddtaxi/a/a/bw;

    return-object v0
.end method

.method public O()Lcom/ddtaxi/a/a/y;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/w;->N()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public P()Lcom/ddtaxi/a/a/y;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/w;->a(Lcom/ddtaxi/a/a/w;)Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/ddtaxi/a/a/au;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/y;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/y;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/a/a/y;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/y;)V

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->A()I

    iget v0, p0, Lcom/ddtaxi/a/a/w;->l:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->i()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    move v1, v2

    :goto_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    iget v0, p0, Lcom/ddtaxi/a/a/w;->l:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_1

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/ddtaxi/a/a/w;->v:Lcom/ddtaxi/a/a/bw;

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    :cond_1
    :goto_5
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_7

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v4, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v3, 0x4

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    const/4 v3, 0x5

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    const/4 v3, 0x6

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p1, v1, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public b(I)Lcom/ddtaxi/a/a/bb;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bb;

    return-object v0
.end method

.method protected synthetic b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/w;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public c(I)Lcom/ddtaxi/a/a/au;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->k:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method public d(I)Lcom/ddtaxi/a/a/bb;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bb;

    return-object v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->i()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/w;

    const-class v2, Lcom/ddtaxi/a/a/y;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/ddtaxi/a/a/w;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public f(I)Lcom/ddtaxi/a/a/ad;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ad;

    return-object v0
.end method

.method public g(I)Lcom/ddtaxi/a/a/ae;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/w;->l:I

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ah;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->m:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ddtaxi/a/a/w;->m:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public i()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->m:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/w;->m:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public i(I)Lcom/ddtaxi/a/a/z;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    return-object v0
.end method

.method public j(I)Lcom/ddtaxi/a/a/ac;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ac;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    return-object v0
.end method

.method public k(I)Lcom/ddtaxi/a/a/ci;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ci;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public l(I)Lcom/ddtaxi/a/a/cl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cl;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    return-object v0
.end method

.method public m_()Lcom/ddtaxi/a/a/w;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/w;->j:Lcom/ddtaxi/a/a/w;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public p()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public s()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    return-object v0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public v()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public y()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/w;->u:Ljava/util/List;

    return-object v0
.end method

.method public final z()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/ddtaxi/a/a/w;->w:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->l()I

    move-result v3

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->o()I

    move-result v3

    if-lt v0, v3, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->r()I

    move-result v3

    if-lt v0, v3, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->u()I

    move-result v3

    if-lt v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->E()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/w;->L()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bw;->z()Z

    move-result v0

    if-nez v0, :cond_a

    iput-byte v1, p0, Lcom/ddtaxi/a/a/w;->w:B

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/w;->a(I)Lcom/ddtaxi/a/a/au;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/au;->z()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v1, p0, Lcom/ddtaxi/a/a/w;->w:B

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/w;->c(I)Lcom/ddtaxi/a/a/au;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/au;->z()Z

    move-result v3

    if-nez v3, :cond_5

    iput-byte v1, p0, Lcom/ddtaxi/a/a/w;->w:B

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/w;->e(I)Lcom/ddtaxi/a/a/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/w;->z()Z

    move-result v3

    if-nez v3, :cond_7

    iput-byte v1, p0, Lcom/ddtaxi/a/a/w;->w:B

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/w;->g(I)Lcom/ddtaxi/a/a/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/ae;->z()Z

    move-result v3

    if-nez v3, :cond_9

    iput-byte v1, p0, Lcom/ddtaxi/a/a/w;->w:B

    goto :goto_0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    iput-byte v2, p0, Lcom/ddtaxi/a/a/w;->w:B

    move v1, v2

    goto :goto_0
.end method
