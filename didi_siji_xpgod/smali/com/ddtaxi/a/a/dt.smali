.class public final Lcom/ddtaxi/a/a/dt;
.super Lcom/ddtaxi/a/a/dy;

# interfaces
.implements Lcom/ddtaxi/a/a/eo;
.implements Ljava/lang/Comparable;


# static fields
.field private static final a:[Lcom/ddtaxi/a/a/iw;

.field private static synthetic m:[I

.field private static synthetic n:[I


# instance fields
.field private final b:I

.field private c:Lcom/ddtaxi/a/a/au;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/ddtaxi/a/a/dw;

.field private final f:Lcom/ddtaxi/a/a/dl;

.field private g:Lcom/ddtaxi/a/a/dv;

.field private h:Lcom/ddtaxi/a/a/dl;

.field private i:Lcom/ddtaxi/a/a/dl;

.field private j:Lcom/ddtaxi/a/a/ea;

.field private k:Lcom/ddtaxi/a/a/dr;

.field private l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/iw;->d()[Lcom/ddtaxi/a/a/iw;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/a/a/dt;->a:[Lcom/ddtaxi/a/a/iw;

    invoke-static {}, Lcom/ddtaxi/a/a/dv;->c()[Lcom/ddtaxi/a/a/dv;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/ddtaxi/a/a/az;->f()[Lcom/ddtaxi/a/a/az;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Desrciptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/au;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;IZ)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/dy;-><init>()V

    iput p4, p0, Lcom/ddtaxi/a/a/dt;->b:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/ddtaxi/a/a/dk;->a(Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/ddtaxi/a/a/dt;->e:Lcom/ddtaxi/a/a/dw;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->o()Lcom/ddtaxi/a/a/az;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/dv;->a(Lcom/ddtaxi/a/a/az;)Lcom/ddtaxi/a/a/dv;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->g:Lcom/ddtaxi/a/a/dv;

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "Field numbers must be positive integers."

    invoke-direct {v0, p0, v1, v3}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->E()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bc;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->q()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, p0, v1, v3}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_2
    if-eqz p5, :cond_6

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->s()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {v0, p0, v1, v3}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_3
    iput-object v3, p0, Lcom/ddtaxi/a/a/dt;->h:Lcom/ddtaxi/a/a/dl;

    if-eqz p3, :cond_4

    iput-object p3, p0, Lcom/ddtaxi/a/a/dt;->f:Lcom/ddtaxi/a/a/dl;

    :goto_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "FieldDescriptorProto.oneof_index set for extension field."

    invoke-direct {v0, p0, v1, v3}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_4
    iput-object v3, p0, Lcom/ddtaxi/a/a/dt;->f:Lcom/ddtaxi/a/a/dl;

    goto :goto_0

    :cond_5
    iput-object v3, p0, Lcom/ddtaxi/a/a/dt;->j:Lcom/ddtaxi/a/a/ea;

    :goto_1
    invoke-static {p2}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/dm;->c(Lcom/ddtaxi/a/a/dy;)V

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {v0, p0, v1, v3}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_7
    iput-object p3, p0, Lcom/ddtaxi/a/a/dt;->h:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->C()I

    move-result v0

    if-ltz v0, :cond_8

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->C()I

    move-result v0

    invoke-virtual {p3}, Lcom/ddtaxi/a/a/dl;->b()Lcom/ddtaxi/a/a/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/w;->D()I

    move-result v1

    if-lt v0, v1, :cond_9

    :cond_8
    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FieldDescriptorProto.oneof_index is out of range for type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/ddtaxi/a/a/dl;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_9
    invoke-virtual {p3}, Lcom/ddtaxi/a/a/dl;->i()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->C()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ea;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->j:Lcom/ddtaxi/a/a/ea;

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->j:Lcom/ddtaxi/a/a/ea;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ea;->b(Lcom/ddtaxi/a/a/ea;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/ea;->a(Lcom/ddtaxi/a/a/ea;I)V

    :goto_2
    iput-object v3, p0, Lcom/ddtaxi/a/a/dt;->f:Lcom/ddtaxi/a/a/dl;

    goto :goto_1

    :cond_a
    iput-object v3, p0, Lcom/ddtaxi/a/a/dt;->j:Lcom/ddtaxi/a/a/ea;

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/au;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;IZLcom/ddtaxi/a/a/dt;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ddtaxi/a/a/dt;-><init>(Lcom/ddtaxi/a/a/au;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dl;IZ)V

    return-void
.end method

.method static synthetic B()[I
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/dt;->m:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ddtaxi/a/a/dv;->c()[Lcom/ddtaxi/a/a/dv;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ddtaxi/a/a/dv;->h:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ddtaxi/a/a/dv;->l:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ddtaxi/a/a/dv;->a:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ddtaxi/a/a/dv;->n:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ddtaxi/a/a/dv;->g:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ddtaxi/a/a/dv;->f:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ddtaxi/a/a/dv;->b:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ddtaxi/a/a/dv;->j:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_8
    :try_start_8
    sget-object v1, Lcom/ddtaxi/a/a/dv;->e:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_9
    :try_start_9
    sget-object v1, Lcom/ddtaxi/a/a/dv;->c:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_a
    :try_start_a
    sget-object v1, Lcom/ddtaxi/a/a/dv;->k:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    :goto_b
    :try_start_b
    sget-object v1, Lcom/ddtaxi/a/a/dv;->o:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    :goto_c
    :try_start_c
    sget-object v1, Lcom/ddtaxi/a/a/dv;->p:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_d
    :try_start_d
    sget-object v1, Lcom/ddtaxi/a/a/dv;->q:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    :goto_e
    :try_start_e
    sget-object v1, Lcom/ddtaxi/a/a/dv;->r:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    :goto_f
    :try_start_f
    sget-object v1, Lcom/ddtaxi/a/a/dv;->i:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    :goto_10
    :try_start_10
    sget-object v1, Lcom/ddtaxi/a/a/dv;->m:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_11
    :try_start_11
    sget-object v1, Lcom/ddtaxi/a/a/dv;->d:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_0

    :goto_12
    sput-object v0, Lcom/ddtaxi/a/a/dt;->m:[I

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

.method static synthetic C()[I
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/dt;->n:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ddtaxi/a/a/du;->a()[Lcom/ddtaxi/a/a/du;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ddtaxi/a/a/du;->e:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ddtaxi/a/a/du;->g:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ddtaxi/a/a/du;->d:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ddtaxi/a/a/du;->h:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ddtaxi/a/a/du;->c:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ddtaxi/a/a/du;->a:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ddtaxi/a/a/du;->b:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/ddtaxi/a/a/du;->f:Lcom/ddtaxi/a/a/du;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/ddtaxi/a/a/dt;->n:[I

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

.method private D()V
    .locals 6

    const/16 v5, 0x22

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->e:Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/au;->t()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ddtaxi/a/a/dp;->a:Lcom/ddtaxi/a/a/dp;

    invoke-virtual {v0, v1, p0, v2}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dy;Lcom/ddtaxi/a/a/dp;)Lcom/ddtaxi/a/a/dy;

    move-result-object v0

    instance-of v1, v0, Lcom/ddtaxi/a/a/dl;

    if-nez v1, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/au;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/dl;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->h:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/dl;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/dl;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not declare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as an extension number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->p()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->e:Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/au;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ddtaxi/a/a/dp;->a:Lcom/ddtaxi/a/a/dp;

    invoke-virtual {v0, v1, p0, v2}, Lcom/ddtaxi/a/a/dm;->a(Ljava/lang/String;Lcom/ddtaxi/a/a/dy;Lcom/ddtaxi/a/a/dp;)Lcom/ddtaxi/a/a/dy;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/au;->n()Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/ddtaxi/a/a/dl;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/ddtaxi/a/a/dv;->k:Lcom/ddtaxi/a/a/dv;

    iput-object v1, p0, Lcom/ddtaxi/a/a/dt;->g:Lcom/ddtaxi/a/a/dv;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v1

    sget-object v2, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v1, v2, :cond_6

    instance-of v1, v0, Lcom/ddtaxi/a/a/dl;

    if-nez v1, :cond_5

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/au;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_3
    instance-of v1, v0, Lcom/ddtaxi/a/a/dr;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/ddtaxi/a/a/dv;->n:Lcom/ddtaxi/a/a/dv;

    iput-object v1, p0, Lcom/ddtaxi/a/a/dt;->g:Lcom/ddtaxi/a/a/dv;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/au;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_5
    check-cast v0, Lcom/ddtaxi/a/a/dl;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->i:Lcom/ddtaxi/a/a/dl;

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, p0, v1, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_6
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v1

    sget-object v2, Lcom/ddtaxi/a/a/du;->h:Lcom/ddtaxi/a/a/du;

    if-ne v1, v2, :cond_9

    instance-of v1, v0, Lcom/ddtaxi/a/a/dr;

    if-nez v1, :cond_7

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/au;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_7
    check-cast v0, Lcom/ddtaxi/a/a/dr;

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->k:Lcom/ddtaxi/a/a/dr;

    :cond_8
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->v()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, p0, v1, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, p0, v1, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-eq v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->h:Lcom/ddtaxi/a/a/du;

    if-ne v0, v1, :cond_8

    :cond_b
    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, p0, v1, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_c
    :try_start_0
    invoke-static {}, Lcom/ddtaxi/a/a/dt;->B()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    :cond_d
    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->u()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->e:Lcom/ddtaxi/a/a/dw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/dm;->a(Lcom/ddtaxi/a/a/dt;)V

    :cond_e
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->h:Lcom/ddtaxi/a/a/dl;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->h:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->g()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bw;->h()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->u()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->m()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/dv;->k:Lcom/ddtaxi/a/a/dv;

    if-eq v0, v1, :cond_19

    :cond_f
    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, p0, v1, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->d(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/ddtaxi/a/a/dq;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse default value: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v3}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ddtaxi/a/a/dq;)V

    throw v1

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->e(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->f(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->g(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/high16 v0, 0x7f80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/high16 v0, -0x80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x7fc0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/high16 v0, 0x7ff0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-wide/high16 v0, -0x10

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/high16 v0, 0x7ff8

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_15
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :pswitch_8
    :try_start_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->a(Ljava/lang/CharSequence;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;
    :try_end_3
    .catch Lcom/ddtaxi/a/a/id; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Lcom/ddtaxi/a/a/dq;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t parse default value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/id;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ddtaxi/a/a/dq;)V

    throw v1

    :pswitch_9
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->k:Lcom/ddtaxi/a/a/dr;

    iget-object v1, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/dr;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    if-nez v0, :cond_d

    new-instance v0, Lcom/ddtaxi/a/a/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown enum default value: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :pswitch_a
    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "Message type had default value."

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_16
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_17
    invoke-static {}, Lcom/ddtaxi/a/a/dt;->C()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/du;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/du;->a(Lcom/ddtaxi/a/a/du;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->k:Lcom/ddtaxi/a/a/dr;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dr;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_c
    iput-object v4, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_18
    new-instance v0, Lcom/ddtaxi/a/a/dq;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, p0, v1, v4}, Lcom/ddtaxi/a/a/dq;-><init>(Lcom/ddtaxi/a/a/dy;Ljava/lang/String;Lcom/ddtaxi/a/a/dq;)V

    throw v0

    :cond_19
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private a(Lcom/ddtaxi/a/a/au;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/au;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/dt;->a(Lcom/ddtaxi/a/a/au;)V

    return-void
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/dt;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/dt;->D()V

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/ddtaxi/a/a/fy;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->z()Lcom/ddtaxi/a/a/dr;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/dt;->b:I

    return v0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;)I
    .locals 2

    iget-object v0, p1, Lcom/ddtaxi/a/a/dt;->h:Lcom/ddtaxi/a/a/dl;

    iget-object v1, p0, Lcom/ddtaxi/a/a/dt;->h:Lcom/ddtaxi/a/a/dl;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->f()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/ddtaxi/a/a/gn;Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    check-cast p1, Lcom/ddtaxi/a/a/gl;

    check-cast p2, Lcom/ddtaxi/a/a/gk;

    invoke-interface {p1, p2}, Lcom/ddtaxi/a/a/gl;->b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/ddtaxi/a/a/au;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/dt;->a(Lcom/ddtaxi/a/a/dt;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/dw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->e:Lcom/ddtaxi/a/a/dw;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->k()I

    move-result v0

    return v0
.end method

.method public g()Lcom/ddtaxi/a/a/du;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->g:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dv;->b()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/ddtaxi/a/a/jb;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/iw;->a()Lcom/ddtaxi/a/a/jb;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/ddtaxi/a/a/dv;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->g:Lcom/ddtaxi/a/a/dv;

    return-object v0
.end method

.method public j()Lcom/ddtaxi/a/a/iw;
    .locals 2

    sget-object v0, Lcom/ddtaxi/a/a/dt;->a:[Lcom/ddtaxi/a/a/iw;

    iget-object v1, p0, Lcom/ddtaxi/a/a/dt;->g:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->g:Lcom/ddtaxi/a/a/dv;

    sget-object v1, Lcom/ddtaxi/a/a/dv;->i:Lcom/ddtaxi/a/a/dv;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->e()Lcom/ddtaxi/a/a/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dw;->f()Lcom/ddtaxi/a/a/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bq;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->m()Lcom/ddtaxi/a/a/ax;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/ax;->b:Lcom/ddtaxi/a/a/ax;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->m()Lcom/ddtaxi/a/a/ax;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/ax;->a:Lcom/ddtaxi/a/a/ax;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic n()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->b()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->m()Lcom/ddtaxi/a/a/ax;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/ax;->c:Lcom/ddtaxi/a/a/ax;

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

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->t()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bc;->j()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->j()Lcom/ddtaxi/a/a/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/iw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->v()Z

    move-result v0

    return v0
.end method

.method public s()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public t()Lcom/ddtaxi/a/a/bc;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->E()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->c:Lcom/ddtaxi/a/a/au;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->s()Z

    move-result v0

    return v0
.end method

.method public v()Lcom/ddtaxi/a/a/dl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->h:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method public w()Lcom/ddtaxi/a/a/ea;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->j:Lcom/ddtaxi/a/a/ea;

    return-object v0
.end method

.method public x()Lcom/ddtaxi/a/a/dl;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->u()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not an extension."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->f:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method public y()Lcom/ddtaxi/a/a/dl;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->i:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method public z()Lcom/ddtaxi/a/a/dr;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->h:Lcom/ddtaxi/a/a/du;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of enum type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/dt;->k:Lcom/ddtaxi/a/a/dr;

    return-object v0
.end method
