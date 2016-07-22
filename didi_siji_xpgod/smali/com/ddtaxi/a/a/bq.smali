.class public final Lcom/ddtaxi/a/a/bq;
.super Lcom/ddtaxi/a/a/ey;

# interfaces
.implements Lcom/ddtaxi/a/a/bv;


# static fields
.field private static final G:J = 0x0L

.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x8

.field public static final d:I = 0xa

.field public static final e:I = 0x14

.field public static final f:I = 0x1b

.field public static final g:I = 0x9

.field public static final h:I = 0xb

.field public static final i:I = 0x10

.field public static final j:I = 0x11

.field public static final k:I = 0x12

.field public static final l:I = 0x17

.field public static final m:I = 0x3e7

.field private static final n:Lcom/ddtaxi/a/a/bq;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Ljava/util/List;

.field private E:B

.field private F:I

.field private final q:Lcom/ddtaxi/a/a/im;

.field private r:I

.field private s:Ljava/lang/Object;

.field private t:Ljava/lang/Object;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Lcom/ddtaxi/a/a/bt;

.field private y:Ljava/lang/Object;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/br;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/br;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/bq;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/a/a/bq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/bq;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/a/a/bq;->n:Lcom/ddtaxi/a/a/bq;

    sget-object v0, Lcom/ddtaxi/a/a/bq;->n:Lcom/ddtaxi/a/a/bq;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/bq;->ah()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ex;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ey;-><init>(Lcom/ddtaxi/a/a/ex;)V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/bq;->E:B

    iput v0, p0, Lcom/ddtaxi/a/a/bq;->F:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ex;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->q:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ex;Lcom/ddtaxi/a/a/bq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/bq;-><init>(Lcom/ddtaxi/a/a/ex;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v6, 0x800

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ey;-><init>()V

    iput-byte v1, p0, Lcom/ddtaxi/a/a/bq;->E:B

    iput v1, p0, Lcom/ddtaxi/a/a/bq;->F:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/bq;->ah()V

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v4

    move v2, v0

    move v1, v0

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    and-int/lit16 v0, v1, 0x800

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    :cond_1
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->q:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->ac()V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/ddtaxi/a/a/bq;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

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

    iget v5, p0, Lcom/ddtaxi/a/a/bq;->r:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ddtaxi/a/a/bq;->r:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->s:Ljava/lang/Object;
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

    and-int/lit16 v1, v1, 0x800

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    :cond_3
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/bq;->q:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->ac()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iget v5, p0, Lcom/ddtaxi/a/a/bq;->r:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/ddtaxi/a/a/bq;->r:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->t:Ljava/lang/Object;
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
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->r()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/bt;->a(I)Lcom/ddtaxi/a/a/bt;

    move-result-object v5

    if-nez v5, :cond_4

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v0}, Lcom/ddtaxi/a/a/in;->a(II)Lcom/ddtaxi/a/a/in;

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    iput-object v5, p0, Lcom/ddtaxi/a/a/bq;->x:Lcom/ddtaxi/a/a/bt;

    goto/16 :goto_0

    :sswitch_4
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->u:Z

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iget v5, p0, Lcom/ddtaxi/a/a/bq;->r:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/ddtaxi/a/a/bq;->r:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->y:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_6
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->z:Z

    goto/16 :goto_0

    :sswitch_7
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->A:Z

    goto/16 :goto_0

    :sswitch_8
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->B:Z

    goto/16 :goto_0

    :sswitch_9
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->v:Z

    goto/16 :goto_0

    :sswitch_a
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->C:Z

    goto/16 :goto_0

    :sswitch_b
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->w:Z

    goto/16 :goto_0

    :sswitch_c
    and-int/lit16 v0, v1, 0x800

    if-eq v0, v6, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    or-int/lit16 v1, v1, 0x800

    :cond_5
    iget-object v5, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/a/a/dc;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dc;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x42 -> :sswitch_2
        0x48 -> :sswitch_3
        0x50 -> :sswitch_4
        0x5a -> :sswitch_5
        0x80 -> :sswitch_6
        0x88 -> :sswitch_7
        0x90 -> :sswitch_8
        0xa0 -> :sswitch_9
        0xb8 -> :sswitch_a
        0xd8 -> :sswitch_b
        0x1f3a -> :sswitch_c
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/bq;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/bq;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ey;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/bq;->E:B

    iput v0, p0, Lcom/ddtaxi/a/a/bq;->F:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->q:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method public static R()Lcom/ddtaxi/a/a/bs;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/bs;->al()Lcom/ddtaxi/a/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/ddtaxi/a/a/bq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bq;->n:Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/bq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/bq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/bq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/bq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/bq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/bq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/bq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/bq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/bq;)Lcom/ddtaxi/a/a/bs;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/bq;->R()Lcom/ddtaxi/a/a/bs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/bs;->a(Lcom/ddtaxi/a/a/bq;)Lcom/ddtaxi/a/a/bs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/bq;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/bq;->r:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/bq;Lcom/ddtaxi/a/a/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bq;->x:Lcom/ddtaxi/a/a/bt;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/bq;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bq;->s:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/bq;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/bq;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/bq;->u:Z

    return-void
.end method

.method private ah()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->s:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->t:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/bq;->u:Z

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/bq;->v:Z

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/bq;->w:Z

    sget-object v0, Lcom/ddtaxi/a/a/bt;->a:Lcom/ddtaxi/a/a/bt;

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->x:Lcom/ddtaxi/a/a/bt;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->y:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/bq;->z:Z

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/bq;->A:Z

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/bq;->B:Z

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/bq;->C:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/bq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/bq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bq;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/bq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->s:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/bq;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bq;->t:Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/bq;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/bq;->v:Z

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/bq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->t:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/bq;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/bq;->y:Ljava/lang/Object;

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/bq;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/bq;->w:Z

    return-void
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/a/a/bq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->y:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/a/a/bq;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/bq;->z:Z

    return-void
.end method

.method static synthetic e(Lcom/ddtaxi/a/a/bq;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/ddtaxi/a/a/bq;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/bq;->A:Z

    return-void
.end method

.method static synthetic f(Lcom/ddtaxi/a/a/bq;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/bq;->B:Z

    return-void
.end method

.method static synthetic g(Lcom/ddtaxi/a/a/bq;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/bq;->C:Z

    return-void
.end method


# virtual methods
.method public A()I
    .locals 6

    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/ddtaxi/a/a/bq;->F:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_c

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->i()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->l()Lcom/ddtaxi/a/a/k;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget v2, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/ddtaxi/a/a/bq;->x:Lcom/ddtaxi/a/a/bt;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/bt;->a()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->j(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/ddtaxi/a/a/bq;->u:Z

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget v2, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_4

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->C_()Lcom/ddtaxi/a/a/k;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    iget v2, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/ddtaxi/a/a/bq;->z:Z

    invoke-static {v5, v2}, Lcom/ddtaxi/a/a/r;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget v2, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_6

    const/16 v2, 0x11

    iget-boolean v3, p0, Lcom/ddtaxi/a/a/bq;->A:Z

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget v2, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_7

    const/16 v2, 0x12

    iget-boolean v3, p0, Lcom/ddtaxi/a/a/bq;->B:Z

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget v2, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v4, :cond_8

    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/ddtaxi/a/a/bq;->v:Z

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget v2, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_9

    const/16 v2, 0x17

    iget-boolean v3, p0, Lcom/ddtaxi/a/a/bq;->C:Z

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    iget v2, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v5, :cond_a

    const/16 v2, 0x1b

    iget-boolean v3, p0, Lcom/ddtaxi/a/a/bq;->w:Z

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->ae()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/bq;->F:I

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v3, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_c
    move v0, v1

    goto/16 :goto_1
.end method

.method public A_()Lcom/ddtaxi/a/a/bq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bq;->n:Lcom/ddtaxi/a/a/bq;

    return-object v0
.end method

.method protected B()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/ey;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public B_()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->y:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ddtaxi/a/a/bq;->y:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public C()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C_()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->y:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->y:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->A:Z

    return v0
.end method

.method public D_()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

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

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->T()Lcom/ddtaxi/a/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->T()Lcom/ddtaxi/a/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->A_()Lcom/ddtaxi/a/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->A_()Lcom/ddtaxi/a/a/bq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->S()Lcom/ddtaxi/a/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->S()Lcom/ddtaxi/a/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->B:Z

    return v0
.end method

.method public M()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->C:Z

    return v0
.end method

.method public O()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    return-object v0
.end method

.method public P()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    return-object v0
.end method

.method public S()Lcom/ddtaxi/a/a/bs;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/bq;->R()Lcom/ddtaxi/a/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public T()Lcom/ddtaxi/a/a/bs;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/bq;->a(Lcom/ddtaxi/a/a/bq;)Lcom/ddtaxi/a/a/bs;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/bs;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/bs;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/a/a/bs;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/bs;)V

    return-object v0
.end method

.method public a(I)Lcom/ddtaxi/a/a/dc;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dc;

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 5

    const/16 v4, 0x10

    const/16 v3, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->A()I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->aa()Lcom/ddtaxi/a/a/ez;

    move-result-object v2

    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->i()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->l()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_1
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/ddtaxi/a/a/bq;->x:Lcom/ddtaxi/a/a/bt;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/bt;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->d(II)V

    :cond_2
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/ddtaxi/a/a/bq;->u:Z

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IZ)V

    :cond_3
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_4

    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->C_()Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_4
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->z:Z

    invoke-virtual {p1, v4, v0}, Lcom/ddtaxi/a/a/r;->a(IZ)V

    :cond_5
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_6

    const/16 v0, 0x11

    iget-boolean v1, p0, Lcom/ddtaxi/a/a/bq;->A:Z

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IZ)V

    :cond_6
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_7

    const/16 v0, 0x12

    iget-boolean v1, p0, Lcom/ddtaxi/a/a/bq;->B:Z

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IZ)V

    :cond_7
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v3, :cond_8

    const/16 v0, 0x14

    iget-boolean v1, p0, Lcom/ddtaxi/a/a/bq;->v:Z

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IZ)V

    :cond_8
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_9

    const/16 v0, 0x17

    iget-boolean v1, p0, Lcom/ddtaxi/a/a/bq;->C:Z

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IZ)V

    :cond_9
    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v4, :cond_a

    const/16 v0, 0x1b

    iget-boolean v1, p0, Lcom/ddtaxi/a/a/bq;->w:Z

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IZ)V

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    const/high16 v0, 0x2000

    invoke-virtual {v2, v0, p1}, Lcom/ddtaxi/a/a/ez;->a(ILcom/ddtaxi/a/a/r;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void

    :cond_b
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dj;

    return-object v0
.end method

.method protected synthetic b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/bq;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/bs;

    move-result-object v0

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/bq;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->q:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->w()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/bq;

    const-class v2, Lcom/ddtaxi/a/a/bs;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/bq;->r:I

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->s:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ddtaxi/a/a/bq;->s:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public i()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->s:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->s:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->t:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ddtaxi/a/a/bq;->t:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public l()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->t:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/bq;->t:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

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

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->u:Z

    return v0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

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

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->v:Z

    return v0
.end method

.method public q()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

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

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->w:Z

    return v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

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

.method public t()Lcom/ddtaxi/a/a/bt;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/bq;->x:Lcom/ddtaxi/a/a/bt;

    return-object v0
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

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

.method public x()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/bq;->r:I

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

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/bq;->z:Z

    return v0
.end method

.method public final z()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/ddtaxi/a/a/bq;->E:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->D_()I

    move-result v3

    if-lt v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/bq;->Z()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v1, p0, Lcom/ddtaxi/a/a/bq;->E:B

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/bq;->a(I)Lcom/ddtaxi/a/a/dc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/dc;->z()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v1, p0, Lcom/ddtaxi/a/a/bq;->E:B

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iput-byte v2, p0, Lcom/ddtaxi/a/a/bq;->E:B

    move v1, v2

    goto :goto_0
.end method
