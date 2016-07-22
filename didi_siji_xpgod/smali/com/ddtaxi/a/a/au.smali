.class public final Lcom/ddtaxi/a/a/au;
.super Lcom/ddtaxi/a/a/ep;

# interfaces
.implements Lcom/ddtaxi/a/a/bb;


# static fields
.field private static final A:J = 0x0L

.field public static a:Lcom/ddtaxi/a/a/gv; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x2

.field public static final h:I = 0x7

.field public static final i:I = 0x9

.field public static final j:I = 0x8

.field private static final k:Lcom/ddtaxi/a/a/au;


# instance fields
.field private final l:Lcom/ddtaxi/a/a/im;

.field private m:I

.field private n:Ljava/lang/Object;

.field private q:I

.field private r:Lcom/ddtaxi/a/a/ax;

.field private s:Lcom/ddtaxi/a/a/az;

.field private t:Ljava/lang/Object;

.field private u:Ljava/lang/Object;

.field private v:Ljava/lang/Object;

.field private w:I

.field private x:Lcom/ddtaxi/a/a/bc;

.field private y:B

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/av;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/av;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    new-instance v0, Lcom/ddtaxi/a/a/au;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/au;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/a/a/au;->k:Lcom/ddtaxi/a/a/au;

    sget-object v0, Lcom/ddtaxi/a/a/au;->k:Lcom/ddtaxi/a/a/au;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/au;->P()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/et;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ep;-><init>(Lcom/ddtaxi/a/a/et;)V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/au;->y:B

    iput v0, p0, Lcom/ddtaxi/a/a/au;->z:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/et;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->l:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/au;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/au;-><init>(Lcom/ddtaxi/a/a/et;)V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/au;->y:B

    iput v0, p0, Lcom/ddtaxi/a/a/au;->z:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/au;->P()V

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->l:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->ac()V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/ddtaxi/a/a/au;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/in;Lcom/ddtaxi/a/a/el;I)Z

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

    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->n:Ljava/lang/Object;
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

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/au;->l:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->ac()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->u:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/ddtaxi/a/a/fz;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ddtaxi/a/a/fz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/ddtaxi/a/a/fz;->a(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :sswitch_3
    :try_start_4
    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/a/a/au;->q:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->r()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/ax;->a(I)Lcom/ddtaxi/a/a/ax;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v4, v1, v0}, Lcom/ddtaxi/a/a/in;->a(II)Lcom/ddtaxi/a/a/in;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    iput-object v1, p0, Lcom/ddtaxi/a/a/au;->r:Lcom/ddtaxi/a/a/ax;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->r()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/az;->a(I)Lcom/ddtaxi/a/a/az;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x5

    invoke-virtual {v4, v1, v0}, Lcom/ddtaxi/a/a/in;->a(II)Lcom/ddtaxi/a/a/in;

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    iput-object v1, p0, Lcom/ddtaxi/a/a/au;->s:Lcom/ddtaxi/a/a/az;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->t:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->v:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_8
    const/4 v0, 0x0

    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit16 v1, v1, 0x100

    const/16 v5, 0x100

    if-ne v1, v5, :cond_5

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->x:Lcom/ddtaxi/a/a/bc;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bc;->y()Lcom/ddtaxi/a/a/be;

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/ddtaxi/a/a/bc;->a:Lcom/ddtaxi/a/a/gv;

    invoke-virtual {p1, v0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bc;

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->x:Lcom/ddtaxi/a/a/bc;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->x:Lcom/ddtaxi/a/a/bc;

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/be;->a(Lcom/ddtaxi/a/a/bc;)Lcom/ddtaxi/a/a/be;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/be;->A()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->x:Lcom/ddtaxi/a/a/bc;

    :cond_4
    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    goto/16 :goto_0

    :sswitch_9
    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/a/a/au;->w:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/au;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/au;-><init>(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ep;-><init>()V

    iput-byte v0, p0, Lcom/ddtaxi/a/a/au;->y:B

    iput v0, p0, Lcom/ddtaxi/a/a/au;->z:I

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->l:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method public static M()Lcom/ddtaxi/a/a/aw;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/aw;->ad()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method private P()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->n:Ljava/lang/Object;

    iput v1, p0, Lcom/ddtaxi/a/a/au;->q:I

    sget-object v0, Lcom/ddtaxi/a/a/ax;->a:Lcom/ddtaxi/a/a/ax;

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->r:Lcom/ddtaxi/a/a/ax;

    sget-object v0, Lcom/ddtaxi/a/a/az;->a:Lcom/ddtaxi/a/a/az;

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->s:Lcom/ddtaxi/a/a/az;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->t:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->u:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->v:Ljava/lang/Object;

    iput v1, p0, Lcom/ddtaxi/a/a/au;->w:I

    invoke-static {}, Lcom/ddtaxi/a/a/bc;->a()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->x:Lcom/ddtaxi/a/a/bc;

    return-void
.end method

.method public static a()Lcom/ddtaxi/a/a/au;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/au;->k:Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/au;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/au;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/au;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c(Lcom/ddtaxi/a/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/au;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/au;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/au;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->f(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/au;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->c([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public static a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/au;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->c([BLcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/au;->M()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/aw;->a(Lcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/au;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/au;->q:I

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/au;Lcom/ddtaxi/a/a/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/au;->r:Lcom/ddtaxi/a/a/ax;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/au;Lcom/ddtaxi/a/a/az;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/au;->s:Lcom/ddtaxi/a/a/az;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/au;Lcom/ddtaxi/a/a/bc;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/au;->x:Lcom/ddtaxi/a/a/bc;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/au;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/au;->n:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/au;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/au;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p0, p1}, Lcom/ddtaxi/a/a/gv;->e(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/au;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/au;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/au;->w:I

    return-void
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/au;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/au;->t:Ljava/lang/Object;

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/au;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->t:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/au;I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/au;->m:I

    return-void
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/au;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/au;->u:Ljava/lang/Object;

    return-void
.end method

.method public static final d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->j()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/a/a/au;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->u:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/ddtaxi/a/a/au;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/au;->v:Ljava/lang/Object;

    return-void
.end method

.method static synthetic e(Lcom/ddtaxi/a/a/au;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->v:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/ddtaxi/a/a/au;->z:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->i()Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->u()Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lcom/ddtaxi/a/a/au;->q:I

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/r;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/ddtaxi/a/a/au;->r:Lcom/ddtaxi/a/a/ax;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/ax;->a()I

    move-result v1

    invoke-static {v4, v1}, Lcom/ddtaxi/a/a/r;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ddtaxi/a/a/au;->s:Lcom/ddtaxi/a/a/az;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/az;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/r;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->r()Lcom/ddtaxi/a/a/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->x()Lcom/ddtaxi/a/a/k;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/ddtaxi/a/a/au;->x:Lcom/ddtaxi/a/a/bc;

    invoke-static {v5, v1}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    iget v2, p0, Lcom/ddtaxi/a/a/au;->w:I

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/r;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/au;->z:I

    goto/16 :goto_0
.end method

.method protected B()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/ep;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/au;->w:I

    return v0
.end method

.method public D()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

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

.method public E()Lcom/ddtaxi/a/a/bc;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->x:Lcom/ddtaxi/a/a/bc;

    return-object v0
.end method

.method public synthetic F()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->O()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->O()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->s_()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->s_()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->N()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->N()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public L()Lcom/ddtaxi/a/a/bh;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->x:Lcom/ddtaxi/a/a/bc;

    return-object v0
.end method

.method public N()Lcom/ddtaxi/a/a/aw;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/au;->M()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public O()Lcom/ddtaxi/a/a/aw;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/au;->a(Lcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/aw;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/aw;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ddtaxi/a/a/aw;-><init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/aw;)V

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->A()I

    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->i()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->u()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_1
    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/ddtaxi/a/a/au;->q:I

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(II)V

    :cond_2
    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->r:Lcom/ddtaxi/a/a/ax;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ax;->a()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/ddtaxi/a/a/r;->d(II)V

    :cond_3
    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/ddtaxi/a/a/au;->s:Lcom/ddtaxi/a/a/az;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/az;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->d(II)V

    :cond_4
    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->r()Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_5
    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->x()Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    :cond_6
    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->x:Lcom/ddtaxi/a/a/bc;

    invoke-virtual {p1, v4, v0}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    :cond_7
    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    iget v1, p0, Lcom/ddtaxi/a/a/au;->w:I

    invoke-virtual {p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(II)V

    :cond_8
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    return-void
.end method

.method protected synthetic b(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/au;->a(Lcom/ddtaxi/a/a/ev;)Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    return-object v0
.end method

.method public final c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->l:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method protected e()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->k()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/au;

    const-class v2, Lcom/ddtaxi/a/a/aw;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/au;->m:I

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->n:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ddtaxi/a/a/au;->n:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public i()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->n:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->n:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

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

.method public k()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/au;->q:I

    return v0
.end method

.method public l()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

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

.method public m()Lcom/ddtaxi/a/a/ax;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->r:Lcom/ddtaxi/a/a/ax;

    return-object v0
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

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

.method public o()Lcom/ddtaxi/a/a/az;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->s:Lcom/ddtaxi/a/a/az;

    return-object v0
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

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

.method public q()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->t:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ddtaxi/a/a/au;->t:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public r()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->t:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->t:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

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

.method public s_()Lcom/ddtaxi/a/a/au;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/au;->k:Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->u:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ddtaxi/a/a/au;->u:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public u()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->u:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->u:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public v()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

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

.method public w()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->v:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ddtaxi/a/a/au;->v:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public x()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/au;->v:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/au;->v:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public y()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/au;->m:I

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

.method public final z()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-byte v2, p0, Lcom/ddtaxi/a/a/au;->y:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->D()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/au;->E()Lcom/ddtaxi/a/a/bc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/bc;->z()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/ddtaxi/a/a/au;->y:B

    move v0, v1

    goto :goto_0

    :cond_2
    iput-byte v0, p0, Lcom/ddtaxi/a/a/au;->y:B

    goto :goto_0
.end method
