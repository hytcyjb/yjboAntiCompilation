.class final Lcom/ddtaxi/a/a/en;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lcom/ddtaxi/a/a/en;

.field private static synthetic e:[I

.field private static synthetic f:[I


# instance fields
.field private final a:Lcom/ddtaxi/a/a/hr;

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/en;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/en;-><init>(Z)V

    sput-object v0, Lcom/ddtaxi/a/a/en;->d:Lcom/ddtaxi/a/a/en;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/en;->c:Z

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/ddtaxi/a/a/hr;->a(I)Lcom/ddtaxi/a/a/hr;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/en;->c:Z

    invoke-static {v0}, Lcom/ddtaxi/a/a/hr;->a(I)Lcom/ddtaxi/a/a/hr;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/en;->c()V

    return-void
.end method

.method private static a(Lcom/ddtaxi/a/a/iw;ILjava/lang/Object;)I
    .locals 2

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    sget-object v1, Lcom/ddtaxi/a/a/iw;->j:Lcom/ddtaxi/a/a/iw;

    if-ne p0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    invoke-static {p0, p2}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/iw;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static a(Lcom/ddtaxi/a/a/iw;Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/iw;->b()I

    move-result v0

    goto :goto_0
.end method

.method public static a()Lcom/ddtaxi/a/a/en;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/en;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/en;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/iw;Z)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/en;->m()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->d()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->e()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->s()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_a
        :pswitch_11
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p1, [B

    array-length v0, p1

    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public static a(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;Lcom/ddtaxi/a/a/r;)V
    .locals 4

    invoke-interface {p0}, Lcom/ddtaxi/a/a/eo;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v1

    invoke-interface {p0}, Lcom/ddtaxi/a/a/eo;->f()I

    move-result v0

    invoke-interface {p0}, Lcom/ddtaxi/a/a/eo;->o()Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Lcom/ddtaxi/a/a/eo;->p()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-virtual {p2, v0, v2}, Lcom/ddtaxi/a/a/r;->m(II)V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2, v0}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/iw;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/iw;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v0, v3}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/iw;ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    instance-of v2, p1, Lcom/ddtaxi/a/a/ga;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/ddtaxi/a/a/ga;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ga;->b()Lcom/ddtaxi/a/a/gm;

    move-result-object v2

    invoke-static {p2, v1, v0, v2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/iw;ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {p2, v1, v0, p1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/iw;ILjava/lang/Object;)V

    goto :goto_2
.end method

.method private static a(Lcom/ddtaxi/a/a/iw;Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/ddtaxi/a/a/en;->l()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/iw;->a()Lcom/ddtaxi/a/a/jb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_0

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_2
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_3
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    instance-of v2, p1, Lcom/ddtaxi/a/a/k;

    if-nez v2, :cond_2

    instance-of v2, p1, [B

    if-eqz v2, :cond_1

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_7
    instance-of v2, p1, Ljava/lang/Integer;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/ddtaxi/a/a/fx;

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_8
    instance-of v2, p1, Lcom/ddtaxi/a/a/gm;

    if-nez v2, :cond_4

    instance-of v2, p1, Lcom/ddtaxi/a/a/ga;

    if-eqz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static a(Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/iw;ILjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/iw;->j:Lcom/ddtaxi/a/a/iw;

    if-ne p1, v0, :cond_0

    check-cast p3, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p0, p2, p3}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/gm;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/iw;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-static {p0, p1, p3}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/iw;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/iw;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/en;->m()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/r;->a(D)V

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->a(F)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/r;->b(J)V

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/r;->a(J)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->b(I)V

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/r;->c(J)V

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->c(I)V

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->a(Z)V

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    check-cast p2, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->a(Lcom/ddtaxi/a/a/gm;)V

    goto :goto_0

    :pswitch_a
    check-cast p2, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->c(Lcom/ddtaxi/a/a/gm;)V

    goto :goto_0

    :pswitch_b
    instance-of v0, p2, Lcom/ddtaxi/a/a/k;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/ddtaxi/a/a/k;

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->a(Lcom/ddtaxi/a/a/k;)V

    goto :goto_0

    :cond_0
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->b([B)V

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->d(I)V

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->f(I)V

    goto/16 :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/r;->d(J)V

    goto/16 :goto_0

    :pswitch_f
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->g(I)V

    goto/16 :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/r;->e(J)V

    goto/16 :goto_0

    :pswitch_11
    instance-of v0, p2, Lcom/ddtaxi/a/a/fx;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/ddtaxi/a/a/fx;

    invoke-interface {p2}, Lcom/ddtaxi/a/a/fx;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->e(I)V

    goto/16 :goto_0

    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->e(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_11
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private a(Ljava/util/Map$Entry;Lcom/ddtaxi/a/a/r;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/eo;->h()Lcom/ddtaxi/a/a/jb;

    move-result-object v1

    sget-object v2, Lcom/ddtaxi/a/a/jb;->i:Lcom/ddtaxi/a/a/jb;

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/ddtaxi/a/a/eo;->o()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/ddtaxi/a/a/eo;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/ddtaxi/a/a/ga;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/ga;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ga;->b()Lcom/ddtaxi/a/a/gm;

    move-result-object v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/eo;->f()I

    move-result v2

    move-object v0, v1

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p2, v2, v0}, Lcom/ddtaxi/a/a/r;->d(ILcom/ddtaxi/a/a/gm;)V

    :goto_1
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;Lcom/ddtaxi/a/a/r;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map$Entry;)V
    .locals 3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/ddtaxi/a/a/ga;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/ddtaxi/a/a/ga;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/ga;->b()Lcom/ddtaxi/a/a/gm;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/util/Map$Entry;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/eo;->h()Lcom/ddtaxi/a/a/jb;

    move-result-object v3

    sget-object v4, Lcom/ddtaxi/a/a/jb;->i:Lcom/ddtaxi/a/a/jb;

    if-ne v3, v4, :cond_1

    invoke-interface {v0}, Lcom/ddtaxi/a/a/eo;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gm;->z()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/ddtaxi/a/a/gm;

    if-eqz v3, :cond_4

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gm;->z()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    instance-of v0, v0, Lcom/ddtaxi/a/a/ga;

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Lcom/ddtaxi/a/a/iw;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/en;->m()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/r;->b(D)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->b(F)I

    move-result v0

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/r;->g(J)I

    move-result v0

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/r;->f(J)I

    move-result v0

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->h(I)I

    move-result v0

    goto :goto_0

    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/r;->h(J)I

    move-result v0

    goto :goto_0

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->i(I)I

    move-result v0

    goto :goto_0

    :pswitch_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->b(Z)I

    move-result v0

    goto :goto_0

    :pswitch_8
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_9
    check-cast p1, Lcom/ddtaxi/a/a/gm;

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->d(Lcom/ddtaxi/a/a/gm;)I

    move-result v0

    goto :goto_0

    :pswitch_a
    instance-of v0, p1, Lcom/ddtaxi/a/a/k;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/a/a/k;

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->b(Lcom/ddtaxi/a/a/k;)I

    move-result v0

    goto :goto_0

    :cond_0
    check-cast p1, [B

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->c([B)I

    move-result v0

    goto :goto_0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->j(I)I

    move-result v0

    goto :goto_0

    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->l(I)I

    move-result v0

    goto/16 :goto_0

    :pswitch_d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/r;->i(J)I

    move-result v0

    goto/16 :goto_0

    :pswitch_e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->m(I)I

    move-result v0

    goto/16 :goto_0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/r;->j(J)I

    move-result v0

    goto/16 :goto_0

    :pswitch_10
    instance-of v0, p1, Lcom/ddtaxi/a/a/ga;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/ddtaxi/a/a/ga;

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->a(Lcom/ddtaxi/a/a/gd;)I

    move-result v0

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lcom/ddtaxi/a/a/gm;

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->f(Lcom/ddtaxi/a/a/gm;)I

    move-result v0

    goto/16 :goto_0

    :pswitch_11
    instance-of v0, p1, Lcom/ddtaxi/a/a/fx;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/ddtaxi/a/a/fx;

    invoke-interface {p1}, Lcom/ddtaxi/a/a/fx;->a()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->k(I)I

    move-result v0

    goto/16 :goto_0

    :cond_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->k(I)I

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_10
        :pswitch_a
        :pswitch_b
        :pswitch_11
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static b()Lcom/ddtaxi/a/a/en;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/en;->d:Lcom/ddtaxi/a/a/en;

    return-object v0
.end method

.method private b(Ljava/util/Map$Entry;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/ddtaxi/a/a/ga;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/ddtaxi/a/a/ga;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/ga;->b()Lcom/ddtaxi/a/a/gm;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Lcom/ddtaxi/a/a/eo;->o()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v1, v0, v2}, Lcom/ddtaxi/a/a/hr;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v2

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/ddtaxi/a/a/en;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/ddtaxi/a/a/eo;->h()Lcom/ddtaxi/a/a/jb;

    move-result-object v2

    sget-object v3, Lcom/ddtaxi/a/a/jb;->i:Lcom/ddtaxi/a/a/jb;

    if-ne v2, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-direct {p0, v1}, Lcom/ddtaxi/a/a/en;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/ddtaxi/a/a/hr;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    check-cast v2, Lcom/ddtaxi/a/a/gm;

    invoke-interface {v2}, Lcom/ddtaxi/a/a/gm;->F()Lcom/ddtaxi/a/a/gn;

    move-result-object v2

    check-cast v1, Lcom/ddtaxi/a/a/gm;

    invoke-interface {v0, v2, v1}, Lcom/ddtaxi/a/a/eo;->a(Lcom/ddtaxi/a/a/gn;Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gn;

    move-result-object v1

    invoke-interface {v1}, Lcom/ddtaxi/a/a/gn;->Y()Lcom/ddtaxi/a/a/gm;

    move-result-object v1

    iget-object v2, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v2, v0, v1}, Lcom/ddtaxi/a/a/hr;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-direct {p0, v1}, Lcom/ddtaxi/a/a/en;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/ddtaxi/a/a/hr;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static c(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/ddtaxi/a/a/eo;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v1

    invoke-interface {p0}, Lcom/ddtaxi/a/a/eo;->f()I

    move-result v2

    invoke-interface {p0}, Lcom/ddtaxi/a/a/eo;->o()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lcom/ddtaxi/a/a/eo;->p()Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->q(I)I

    move-result v0

    add-int/2addr v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/iw;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/iw;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    :cond_3
    invoke-static {v1, v2, p1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/iw;ILjava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method

.method private c(Ljava/util/Map$Entry;)I
    .locals 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/ddtaxi/a/a/eo;->h()Lcom/ddtaxi/a/a/jb;

    move-result-object v2

    sget-object v3, Lcom/ddtaxi/a/a/jb;->i:Lcom/ddtaxi/a/a/jb;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lcom/ddtaxi/a/a/eo;->o()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/ddtaxi/a/a/eo;->p()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v1, Lcom/ddtaxi/a/a/ga;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/eo;->f()I

    move-result v2

    move-object v0, v1

    check-cast v0, Lcom/ddtaxi/a/a/ga;

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/r;->b(ILcom/ddtaxi/a/a/gd;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/eo;->f()I

    move-result v0

    check-cast v1, Lcom/ddtaxi/a/a/gm;

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/r;->h(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/en;->c(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic l()[I
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/en;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ddtaxi/a/a/jb;->b()[Lcom/ddtaxi/a/a/jb;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ddtaxi/a/a/jb;->e:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ddtaxi/a/a/jb;->g:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ddtaxi/a/a/jb;->d:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ddtaxi/a/a/jb;->h:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ddtaxi/a/a/jb;->c:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ddtaxi/a/a/jb;->a:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ddtaxi/a/a/jb;->b:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ddtaxi/a/a/jb;->i:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/ddtaxi/a/a/jb;->f:Lcom/ddtaxi/a/a/jb;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/jb;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/ddtaxi/a/a/en;->e:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method static synthetic m()[I
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/en;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ddtaxi/a/a/iw;->d()[Lcom/ddtaxi/a/a/iw;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ddtaxi/a/a/iw;->h:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ddtaxi/a/a/iw;->l:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ddtaxi/a/a/iw;->a:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ddtaxi/a/a/iw;->n:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ddtaxi/a/a/iw;->g:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ddtaxi/a/a/iw;->f:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ddtaxi/a/a/iw;->b:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ddtaxi/a/a/iw;->j:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_8
    :try_start_8
    sget-object v1, Lcom/ddtaxi/a/a/iw;->e:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_9
    :try_start_9
    sget-object v1, Lcom/ddtaxi/a/a/iw;->c:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_a
    :try_start_a
    sget-object v1, Lcom/ddtaxi/a/a/iw;->k:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    :goto_b
    :try_start_b
    sget-object v1, Lcom/ddtaxi/a/a/iw;->o:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    :goto_c
    :try_start_c
    sget-object v1, Lcom/ddtaxi/a/a/iw;->p:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_d
    :try_start_d
    sget-object v1, Lcom/ddtaxi/a/a/iw;->q:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    :goto_e
    :try_start_e
    sget-object v1, Lcom/ddtaxi/a/a/iw;->r:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    :goto_f
    :try_start_f
    sget-object v1, Lcom/ddtaxi/a/a/iw;->i:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    :goto_10
    :try_start_10
    sget-object v1, Lcom/ddtaxi/a/a/iw;->m:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_11
    :try_start_11
    sget-object v1, Lcom/ddtaxi/a/a/iw;->d:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/iw;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_0

    :goto_12
    sput-object v0, Lcom/ddtaxi/a/a/en;->f:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_12

    :catch_1
    move-exception v1

    goto :goto_11

    :catch_2
    move-exception v1

    goto :goto_10

    :catch_3
    move-exception v1

    goto :goto_f

    :catch_4
    move-exception v1

    goto :goto_e

    :catch_5
    move-exception v1

    goto :goto_d

    :catch_6
    move-exception v1

    goto :goto_c

    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_8

    :catch_b
    move-exception v1

    goto/16 :goto_7

    :catch_c
    move-exception v1

    goto/16 :goto_6

    :catch_d
    move-exception v1

    goto/16 :goto_5

    :catch_e
    move-exception v1

    goto/16 :goto_4

    :catch_f
    move-exception v1

    goto/16 :goto_3

    :catch_10
    move-exception v1

    goto/16 :goto_2

    :catch_11
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Lcom/ddtaxi/a/a/eo;I)Ljava/lang/Object;
    .locals 2

    invoke-interface {p1}, Lcom/ddtaxi/a/a/eo;->o()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/en;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/hr;->c()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    iget-object v1, p1, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/hr;->c(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ddtaxi/a/a/en;->b(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/en;->b(Ljava/util/Map$Entry;)V

    goto :goto_1
.end method

.method public a(Lcom/ddtaxi/a/a/eo;ILjava/lang/Object;)V
    .locals 2

    invoke-interface {p1}, Lcom/ddtaxi/a/a/eo;->o()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    invoke-interface {p1}, Lcom/ddtaxi/a/a/eo;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/iw;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p1}, Lcom/ddtaxi/a/a/eo;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    move-object p2, v0

    :goto_1
    instance-of v0, p2, Lcom/ddtaxi/a/a/ga;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/en;->c:Z

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/hr;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/ddtaxi/a/a/eo;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/iw;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/ddtaxi/a/a/eo;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/iw;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->c()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/hr;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;Lcom/ddtaxi/a/a/r;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;Lcom/ddtaxi/a/a/r;)V

    goto :goto_1
.end method

.method public a(Lcom/ddtaxi/a/a/eo;)Z
    .locals 2

    invoke-interface {p1}, Lcom/ddtaxi/a/a/eo;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasField() can only be called on non-repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/hr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/ddtaxi/a/a/eo;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/hr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/ddtaxi/a/a/ga;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ddtaxi/a/a/ga;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ga;->b()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p1}, Lcom/ddtaxi/a/a/eo;->o()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/ddtaxi/a/a/eo;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/iw;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v1, p1, v0}, Lcom/ddtaxi/a/a/hr;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public b(Lcom/ddtaxi/a/a/r;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/hr;->c()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/hr;->c(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/ddtaxi/a/a/en;->a(Ljava/util/Map$Entry;Lcom/ddtaxi/a/a/r;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0, p1}, Lcom/ddtaxi/a/a/en;->a(Ljava/util/Map$Entry;Lcom/ddtaxi/a/a/r;)V

    goto :goto_1
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/en;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/en;->b:Z

    goto :goto_0
.end method

.method public c(Lcom/ddtaxi/a/a/eo;)V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/hr;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/en;->c:Z

    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/en;->e()Lcom/ddtaxi/a/a/en;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/ddtaxi/a/a/eo;)I
    .locals 2

    invoke-interface {p1}, Lcom/ddtaxi/a/a/eo;->o()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/en;->b:Z

    return v0
.end method

.method public e()Lcom/ddtaxi/a/a/en;
    .locals 4

    invoke-static {}, Lcom/ddtaxi/a/a/en;->a()Lcom/ddtaxi/a/a/en;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->c()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/en;->c:Z

    iput-boolean v0, v2, Lcom/ddtaxi/a/a/en;->c:Z

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/hr;->c(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/en;->c:Z

    return-void
.end method

.method public g()Ljava/util/Map;
    .locals 3

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/en;->c:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/ddtaxi/a/a/hr;->a(I)Lcom/ddtaxi/a/a/hr;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/hr;->c()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/hr;->a()V

    :cond_0
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v2, v0}, Lcom/ddtaxi/a/a/hr;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ddtaxi/a/a/en;->a(Ljava/util/Map;Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v1, v0}, Lcom/ddtaxi/a/a/en;->a(Ljava/util/Map;Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2
.end method

.method public h()Ljava/util/Iterator;
    .locals 2

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/en;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/gc;

    iget-object v1, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/hr;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/gc;-><init>(Ljava/util/Iterator;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/hr;->c()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_1
    :goto_1
    return v1

    :cond_2
    iget-object v2, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v2, v0}, Lcom/ddtaxi/a/a/hr;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ddtaxi/a/a/en;->a(Ljava/util/Map$Entry;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/en;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public j()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->c()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/hr;->c(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ddtaxi/a/a/en;->c(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/eo;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/en;->c(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1
.end method

.method public k()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/hr;->c()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hr;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_0
    iget-object v2, p0, Lcom/ddtaxi/a/a/en;->a:Lcom/ddtaxi/a/a/hr;

    invoke-virtual {v2, v0}, Lcom/ddtaxi/a/a/hr;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ddtaxi/a/a/en;->c(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/en;->c(Ljava/util/Map$Entry;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1
.end method
