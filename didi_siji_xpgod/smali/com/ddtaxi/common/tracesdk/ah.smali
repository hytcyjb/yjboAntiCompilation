.class public final Lcom/ddtaxi/common/tracesdk/ah;
.super Lcom/ddtaxi/a/a/ep;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/ao;


# static fields
.field private static final I:J = 0x0L

.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x9

.field public static final k:I = 0xa

.field public static final l:I = 0xb

.field public static final m:I = 0xc

.field public static final n:I = 0xd

.field private static final q:Lcom/ddtaxi/common/tracesdk/ah;


# instance fields
.field private A:F

.field private B:F

.field private C:J

.field private D:F

.field private E:I

.field private F:Ljava/util/List;

.field private G:B

.field private H:I

.field private final r:Lcom/ddtaxi/a/a/im;

.field private s:I

.field private t:J

.field private u:D

.field private v:D

.field private w:D

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/common/tracesdk/ai;

    invoke-direct {v0}, Lcom/ddtaxi/common/tracesdk/ai;-><init>()V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/ah;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/ah;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/common/tracesdk/ah;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/ah;->q:Lcom/ddtaxi/common/tracesdk/ah;

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->q:Lcom/ddtaxi/common/tracesdk/ah;

    invoke-direct {v0}, Lcom/ddtaxi/common/tracesdk/ah;->Z()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/et;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ep;-><init>(Lcom/ddtaxi/a/a/et;)V

    iput-byte v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->G:B

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->H:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/et;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->r:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/common/tracesdk/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/ah;-><init>(Lcom/ddtaxi/a/a/et;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v7, 0x1000

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->G:B

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->H:I

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ah;->Z()V

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v4

    move v2, v0

    move v1, v0

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    and-int/lit16 v0, v1, 0x1000

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    :cond_1
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->r:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->ac()V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/ddtaxi/common/tracesdk/ah;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    move v2, v3

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->g()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ddtaxi/common/tracesdk/ah;->t:J
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

    and-int/lit16 v1, v1, 0x1000

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    :cond_3
    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->r:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->ac()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->d()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/ddtaxi/common/tracesdk/ah;->u:D
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
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->d()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/ddtaxi/common/tracesdk/ah;->v:D

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->d()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/ddtaxi/common/tracesdk/ah;->w:D

    goto/16 :goto_0

    :sswitch_5
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->e()F

    move-result v0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->x:F

    goto/16 :goto_0

    :sswitch_6
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->e()F

    move-result v0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->y:F

    goto/16 :goto_0

    :sswitch_7
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->e()F

    move-result v0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->z:F

    goto/16 :goto_0

    :sswitch_8
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->e()F

    move-result v0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->A:F

    goto/16 :goto_0

    :sswitch_9
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->e()F

    move-result v0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->B:F

    goto/16 :goto_0

    :sswitch_a
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->g()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ddtaxi/common/tracesdk/ah;->C:J

    goto/16 :goto_0

    :sswitch_b
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->e()F

    move-result v0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->D:F

    goto/16 :goto_0

    :sswitch_c
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->E:I

    goto/16 :goto_0

    :sswitch_d
    and-int/lit16 v0, v1, 0x1000

    if-eq v0, v7, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    or-int/lit16 v1, v1, 0x1000

    :cond_4
    iget-object v5, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ak;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ak;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
        0x4d -> :sswitch_9
        0x50 -> :sswitch_a
        0x5d -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/common/tracesdk/ah;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/ah;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->G:B

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->H:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->r:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method public static Q()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/aj;->am()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic T()Z
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/common/tracesdk/ah;->p:Z

    return v0
.end method

.method private Z()V
    .locals 5

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    iput-wide v3, p0, Lcom/ddtaxi/common/tracesdk/ah;->t:J

    iput-wide v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->u:D

    iput-wide v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->v:D

    iput-wide v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->w:D

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->x:F

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->y:F

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->z:F

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->A:F

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->B:F

    iput-wide v3, p0, Lcom/ddtaxi/common/tracesdk/ah;->C:J

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->D:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->E:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->q:Lcom/ddtaxi/common/tracesdk/ah;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/common/tracesdk/ah;)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ah;->Q()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/common/tracesdk/aj;->a(Lcom/ddtaxi/common/tracesdk/ah;)Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/ah;D)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->u:D

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/ah;F)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->x:F

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/ah;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->E:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/ah;J)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->t:J

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/ah;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/ah;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/ah;D)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->v:D

    return-void
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/ah;F)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->y:F

    return-void
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/ah;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    return-void
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/ah;J)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->C:J

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/common/tracesdk/ah;D)V
    .locals 0

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->w:D

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/common/tracesdk/ah;F)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->z:F

    return-void
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->h()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/common/tracesdk/ah;F)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->A:F

    return-void
.end method

.method static synthetic e(Lcom/ddtaxi/common/tracesdk/ah;F)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->B:F

    return-void
.end method

.method static synthetic f(Lcom/ddtaxi/common/tracesdk/ah;F)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/ah;->D:F

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

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->H:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_d

    iget-wide v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->t:J

    invoke-static {v4, v2, v3}, Lcom/ddtaxi/a/a/r;->g(IJ)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_1

    iget-wide v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->u:D

    invoke-static {v5, v2, v3}, Lcom/ddtaxi/a/a/r;->b(ID)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/ddtaxi/common/tracesdk/ah;->v:D

    invoke-static {v2, v3, v4}, Lcom/ddtaxi/a/a/r;->b(ID)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v7, :cond_3

    iget-wide v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->w:D

    invoke-static {v6, v2, v3}, Lcom/ddtaxi/a/a/r;->b(ID)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    const/4 v2, 0x5

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ah;->x:F

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->b(IF)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    const/4 v2, 0x6

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ah;->y:F

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->b(IF)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    const/4 v2, 0x7

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ah;->z:F

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->b(IF)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->A:F

    invoke-static {v7, v2}, Lcom/ddtaxi/a/a/r;->b(IF)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    const/16 v2, 0x9

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ah;->B:F

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->b(IF)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    const/16 v2, 0xa

    iget-wide v3, p0, Lcom/ddtaxi/common/tracesdk/ah;->C:J

    invoke-static {v2, v3, v4}, Lcom/ddtaxi/a/a/r;->g(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    const/16 v2, 0xb

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ah;->D:F

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->b(IF)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    iget v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    const/16 v2, 0xc

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ah;->E:I

    invoke-static {v2, v3}, Lcom/ddtaxi/a/a/r;->g(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_c

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->H:I

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0xd

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-static {v3, v0}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_d
    move v0, v1

    goto/16 :goto_1
.end method

.method protected B()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/ep;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public C()J
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->C:J

    return-wide v0
.end method

.method public D()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

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

.method public E()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->D:F

    return v0
.end method

.method public synthetic F()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->S()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->S()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->h_()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->h_()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->R()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->R()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public L()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->E:I

    return v0
.end method

.method public N()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    return-object v0
.end method

.method public O()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    return-object v0
.end method

.method public P()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public R()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ah;->Q()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public S()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/common/tracesdk/ah;->a(Lcom/ddtaxi/common/tracesdk/ah;)Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 2

    new-instance v0, Lcom/ddtaxi/common/tracesdk/aj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/common/tracesdk/aj;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/common/tracesdk/aj;)V

    return-object v0
.end method

.method public a(I)Lcom/ddtaxi/common/tracesdk/ak;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ak;

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->A()I

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->t:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/ddtaxi/a/a/r;->b(IJ)V

    :cond_0
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->u:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/ddtaxi/a/a/r;->a(ID)V

    :cond_1
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->v:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/ddtaxi/a/a/r;->a(ID)V

    :cond_2
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->w:D

    invoke-virtual {p1, v4, v0, v1}, Lcom/ddtaxi/a/a/r;->a(ID)V

    :cond_3
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->x:F

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IF)V

    :cond_4
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IF)V

    :cond_5
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->z:F

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IF)V

    :cond_6
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->A:F

    invoke-virtual {p1, v5, v0}, Lcom/ddtaxi/a/a/r;->a(IF)V

    :cond_7
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->B:F

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IF)V

    :cond_8
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    iget-wide v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->C:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/ddtaxi/a/a/r;->b(IJ)V

    :cond_9
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->D:F

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(IF)V

    :cond_a
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    const/16 v0, 0xc

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->E:I

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(II)V

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_c

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void

    :cond_c
    const/16 v2, 0xd

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

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

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/ah;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/ddtaxi/common/tracesdk/an;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/an;

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->r:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->i()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/common/tracesdk/ah;

    const-class v2, Lcom/ddtaxi/common/tracesdk/aj;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

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

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->t:J

    return-wide v0
.end method

.method public h_()Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->q:Lcom/ddtaxi/common/tracesdk/ah;

    return-object v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

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

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->u:D

    return-wide v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

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

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->v:D

    return-wide v0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

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

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->w:D

    return-wide v0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

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

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->x:F

    return v0
.end method

.method public q()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

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

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->y:F

    return v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

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

.method public t()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->z:F

    return v0
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

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

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->A:F

    return v0
.end method

.method public w()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

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

.method public x()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->B:F

    return v0
.end method

.method public y()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->s:I

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

.method public final z()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/ddtaxi/common/tracesdk/ah;->G:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->G:B

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->G:B

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->k()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->G:B

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ah;->P()I

    move-result v3

    if-lt v0, v3, :cond_5

    iput-byte v2, p0, Lcom/ddtaxi/common/tracesdk/ah;->G:B

    move v1, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/ah;->a(I)Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/common/tracesdk/ak;->z()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v1, p0, Lcom/ddtaxi/common/tracesdk/ah;->G:B

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
