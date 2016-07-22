.class public final Lcom/ddtaxi/a/a/o;
.super Ljava/lang/Object;


# static fields
.field private static final n:I = 0x40

.field private static final o:I = 0x4000000

.field private static final p:I = 0x1000


# instance fields
.field private final a:[B

.field private final b:Z

.field private c:I

.field private d:I

.field private e:I

.field private final f:Ljava/io/InputStream;

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private q:Lcom/ddtaxi/a/a/p;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/gi;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/o;->h:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/ddtaxi/a/a/o;->j:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/ddtaxi/a/a/o;->l:I

    const/high16 v0, 0x400

    iput v0, p0, Lcom/ddtaxi/a/a/o;->m:I

    iput-object v2, p0, Lcom/ddtaxi/a/a/o;->q:Lcom/ddtaxi/a/a/p;

    iget-object v0, p1, Lcom/ddtaxi/a/a/gi;->f:[B

    iput-object v0, p0, Lcom/ddtaxi/a/a/o;->a:[B

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/gi;->b()I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    neg-int v0, v0

    iput v0, p0, Lcom/ddtaxi/a/a/o;->i:I

    iput-object v2, p0, Lcom/ddtaxi/a/a/o;->f:Ljava/io/InputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/o;->b:Z

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/o;->h:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/ddtaxi/a/a/o;->j:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/ddtaxi/a/a/o;->l:I

    const/high16 v0, 0x400

    iput v0, p0, Lcom/ddtaxi/a/a/o;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/o;->q:Lcom/ddtaxi/a/a/p;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ddtaxi/a/a/o;->a:[B

    iput v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    iput v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    iput v1, p0, Lcom/ddtaxi/a/a/o;->i:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/o;->f:Ljava/io/InputStream;

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/o;->b:Z

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/o;->h:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/ddtaxi/a/a/o;->j:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/ddtaxi/a/a/o;->l:I

    const/high16 v0, 0x400

    iput v0, p0, Lcom/ddtaxi/a/a/o;->m:I

    iput-object v2, p0, Lcom/ddtaxi/a/a/o;->q:Lcom/ddtaxi/a/a/p;

    iput-object p1, p0, Lcom/ddtaxi/a/a/o;->a:[B

    add-int v0, p2, p3

    iput v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iput p2, p0, Lcom/ddtaxi/a/a/o;->e:I

    neg-int v0, p2

    iput v0, p0, Lcom/ddtaxi/a/a/o;->i:I

    iput-object v2, p0, Lcom/ddtaxi/a/a/o;->f:Ljava/io/InputStream;

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/o;->b:Z

    return-void
.end method

.method private G()V
    .locals 5

    const/16 v4, 0xa

    iget v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    sub-int/2addr v0, v1

    if-lt v0, v4, :cond_0

    iget-object v3, p0, Lcom/ddtaxi/a/a/o;->a:[B

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/o;->H()V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-ltz v1, :cond_2

    iput v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0
.end method

.method private H()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->d()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->F()B

    move-result v1

    if-ltz v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private I()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v0, p0, Lcom/ddtaxi/a/a/o;->i:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ddtaxi/a/a/o;->j:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/ddtaxi/a/a/o;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/o;->d:I

    iget v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/o;->d:I

    goto :goto_0
.end method

.method public static a(ILjava/io/InputStream;)I
    .locals 4

    const/4 v3, -0x1

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_1

    :cond_0
    return p0

    :cond_1
    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x7

    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    :goto_1
    const/16 v1, 0x40

    if-lt v0, v1, :cond_4

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->d()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->b()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_3
    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->b()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_5
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x7

    goto :goto_1
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/o;)I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    return v0
.end method

.method public static a(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method static a(Lcom/ddtaxi/a/a/gi;)Lcom/ddtaxi/a/a/o;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/o;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/o;-><init>(Lcom/ddtaxi/a/a/gi;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/o;->f(I)I
    :try_end_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/o;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/o;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/o;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/ddtaxi/a/a/o;
    .locals 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ddtaxi/a/a/o;->a([BII)Lcom/ddtaxi/a/a/o;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/ddtaxi/a/a/o;->a([B)Lcom/ddtaxi/a/a/o;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/o;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/ddtaxi/a/a/o;->a([BII)Lcom/ddtaxi/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/ddtaxi/a/a/o;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/ddtaxi/a/a/o;-><init>([BII)V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/ddtaxi/a/a/o;->f(I)I
    :try_end_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static b(Ljava/io/InputStream;)I
    .locals 2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->b()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    invoke-static {v0, p0}, Lcom/ddtaxi/a/a/o;->a(ILjava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/o;)[B
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/o;->a:[B

    return-object v0
.end method

.method public static c(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private j(I)V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/o;->k(I)V

    :cond_0
    return-void
.end method

.method private k(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/o;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->b()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private l(I)Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/ddtaxi/a/a/o;->c:I

    if-gt v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refillBuffer() called when "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes were already available in buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lcom/ddtaxi/a/a/o;->i:I

    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget v2, p0, Lcom/ddtaxi/a/a/o;->j:I

    if-le v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/ddtaxi/a/a/o;->q:Lcom/ddtaxi/a/a/p;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ddtaxi/a/a/o;->q:Lcom/ddtaxi/a/a/p;

    invoke-interface {v1}, Lcom/ddtaxi/a/a/p;->a()V

    :cond_3
    iget-object v1, p0, Lcom/ddtaxi/a/a/o;->f:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    if-lez v1, :cond_5

    iget v2, p0, Lcom/ddtaxi/a/a/o;->c:I

    if-le v2, v1, :cond_4

    iget-object v2, p0, Lcom/ddtaxi/a/a/o;->a:[B

    iget-object v3, p0, Lcom/ddtaxi/a/a/o;->a:[B

    iget v4, p0, Lcom/ddtaxi/a/a/o;->c:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget v2, p0, Lcom/ddtaxi/a/a/o;->i:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/ddtaxi/a/a/o;->i:I

    iget v2, p0, Lcom/ddtaxi/a/a/o;->c:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    iput v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    :cond_5
    iget-object v1, p0, Lcom/ddtaxi/a/a/o;->f:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ddtaxi/a/a/o;->a:[B

    iget v3, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget-object v4, p0, Lcom/ddtaxi/a/a/o;->a:[B

    array-length v4, v4

    iget v5, p0, Lcom/ddtaxi/a/a/o;->c:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, -0x1

    if-lt v1, v2, :cond_6

    iget-object v2, p0, Lcom/ddtaxi/a/a/o;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InputStream#read(byte[]) returned invalid result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-lez v1, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v0, p0, Lcom/ddtaxi/a/a/o;->i:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/ddtaxi/a/a/o;->m:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_8

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->i()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_8
    invoke-direct {p0}, Lcom/ddtaxi/a/a/o;->I()V

    iget v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    if-lt v0, p1, :cond_9

    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/o;->l(I)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private m(I)[B
    .locals 11

    const/16 v10, 0x1000

    const/4 v3, -0x1

    const/4 v1, 0x0

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lcom/ddtaxi/a/a/fw;->a:[B

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ddtaxi/a/a/fz;->c()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/ddtaxi/a/a/o;->i:I

    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, Lcom/ddtaxi/a/a/o;->j:I

    if-le v0, v2, :cond_2

    iget v0, p0, Lcom/ddtaxi/a/a/o;->j:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/o;->i(I)V

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->b()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_2
    if-ge p1, v10, :cond_3

    new-array v0, p1, [B

    iget v2, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v3, p0, Lcom/ddtaxi/a/a/o;->e:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/ddtaxi/a/a/o;->a:[B

    iget v4, p0, Lcom/ddtaxi/a/a/o;->e:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/ddtaxi/a/a/o;->c:I

    iput v3, p0, Lcom/ddtaxi/a/a/o;->e:I

    sub-int v3, p1, v2

    invoke-direct {p0, v3}, Lcom/ddtaxi/a/a/o;->j(I)V

    iget-object v3, p0, Lcom/ddtaxi/a/a/o;->a:[B

    sub-int v4, p1, v2

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, p1, v2

    iput v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/ddtaxi/a/a/o;->e:I

    iget v6, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v0, p0, Lcom/ddtaxi/a/a/o;->i:I

    iget v2, p0, Lcom/ddtaxi/a/a/o;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ddtaxi/a/a/o;->i:I

    iput v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    iput v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    sub-int v0, v6, v5

    sub-int v0, p1, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    :goto_1
    if-gtz v4, :cond_4

    new-array v3, p1, [B

    sub-int v0, v6, v5

    iget-object v2, p0, Lcom/ddtaxi/a/a/o;->a:[B

    invoke-static {v2, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v3

    goto :goto_0

    :cond_4
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v8, v0, [B

    move v0, v1

    :goto_3
    array-length v2, v8

    if-lt v0, v2, :cond_5

    array-length v0, v8

    sub-int v0, v4, v0

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/ddtaxi/a/a/o;->f:Ljava/io/InputStream;

    if-nez v2, :cond_6

    move v2, v3

    :goto_4
    if-ne v2, v3, :cond_7

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->b()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_6
    iget-object v2, p0, Lcom/ddtaxi/a/a/o;->f:Ljava/io/InputStream;

    array-length v9, v8

    sub-int/2addr v9, v0

    invoke-virtual {v2, v8, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_4

    :cond_7
    iget v9, p0, Lcom/ddtaxi/a/a/o;->i:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/ddtaxi/a/a/o;->i:I

    add-int/2addr v0, v2

    goto :goto_3

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_2
.end method

.method private n(I)V
    .locals 4

    const/4 v3, 0x1

    if-gez p1, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->c()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/o;->i:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/ddtaxi/a/a/o;->j:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/o;->j:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/o;->i(I)V

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->b()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    iput v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    invoke-direct {p0, v3}, Lcom/ddtaxi/a/a/o;->k(I)V

    :goto_0
    sub-int v1, p1, v0

    iget v2, p0, Lcom/ddtaxi/a/a/o;->c:I

    if-gt v1, v2, :cond_2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    return-void

    :cond_2
    iget v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    iput v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    invoke-direct {p0, v3}, Lcom/ddtaxi/a/a/o;->k(I)V

    goto :goto_0
.end method


# virtual methods
.method public A()J
    .locals 9

    const/16 v6, 0x8

    const-wide/16 v7, 0xff

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    sub-int/2addr v1, v0

    if-ge v1, v6, :cond_0

    invoke-direct {p0, v6}, Lcom/ddtaxi/a/a/o;->k(I)V

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/o;->a:[B

    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    aget-byte v2, v1, v0

    int-to-long v2, v2

    and-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v7

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public B()V
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    neg-int v0, v0

    iput v0, p0, Lcom/ddtaxi/a/a/o;->i:I

    return-void
.end method

.method public C()I
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/o;->j:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/o;->i:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ddtaxi/a/a/o;->j:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public D()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    iget v2, p0, Lcom/ddtaxi/a/a/o;->c:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/o;->l(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()I
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/o;->i:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public F()B
    .locals 3

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/o;->k(I)V

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/o;->a:[B

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public a()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/ddtaxi/a/a/o;->g:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/a/a/o;->g:I

    iget v0, p0, Lcom/ddtaxi/a/a/o;->g:I

    invoke-static {v0}, Lcom/ddtaxi/a/a/iv;->b(I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->e()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/ddtaxi/a/a/o;->g:I

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/o;->k:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->l:I

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->h()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/o;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/o;->k:I

    invoke-interface {p2, p0, p3}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/ddtaxi/a/a/iv;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/o;->a(I)V

    iget v1, p0, Lcom/ddtaxi/a/a/o;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ddtaxi/a/a/o;->k:I

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/gv;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gm;
    .locals 3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v0

    iget v1, p0, Lcom/ddtaxi/a/a/o;->k:I

    iget v2, p0, Lcom/ddtaxi/a/a/o;->l:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->h()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/o;->f(I)I

    move-result v1

    iget v0, p0, Lcom/ddtaxi/a/a/o;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/o;->k:I

    invoke-interface {p1, p0, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/ddtaxi/a/a/o;->a(I)V

    iget v2, p0, Lcom/ddtaxi/a/a/o;->k:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ddtaxi/a/a/o;->k:I

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/o;->g(I)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/o;->g:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->f()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public a(ILcom/ddtaxi/a/a/gn;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ddtaxi/a/a/o;->a(ILcom/ddtaxi/a/a/gn;Lcom/ddtaxi/a/a/el;)V

    return-void
.end method

.method public a(ILcom/ddtaxi/a/a/gn;Lcom/ddtaxi/a/a/el;)V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/o;->k:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->l:I

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->h()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/o;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/o;->k:I

    invoke-interface {p2, p0, p3}, Lcom/ddtaxi/a/a/gn;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/iv;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/o;->a(I)V

    iget v0, p0, Lcom/ddtaxi/a/a/o;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ddtaxi/a/a/o;->k:I

    return-void
.end method

.method public a(Lcom/ddtaxi/a/a/gn;Lcom/ddtaxi/a/a/el;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v0

    iget v1, p0, Lcom/ddtaxi/a/a/o;->k:I

    iget v2, p0, Lcom/ddtaxi/a/a/o;->l:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->h()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/o;->f(I)I

    move-result v0

    iget v1, p0, Lcom/ddtaxi/a/a/o;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ddtaxi/a/a/o;->k:I

    invoke-interface {p1, p0, p2}, Lcom/ddtaxi/a/a/gn;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/o;->a(I)V

    iget v1, p0, Lcom/ddtaxi/a/a/o;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ddtaxi/a/a/o;->k:I

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/o;->g(I)V

    return-void
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/ddtaxi/a/a/o;->a(ILcom/ddtaxi/a/a/r;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/o;->h:Z

    return-void
.end method

.method public a(ILcom/ddtaxi/a/a/r;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/ddtaxi/a/a/iv;->a(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->g()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->g()J

    move-result-wide v1

    invoke-virtual {p2, p1}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-virtual {p2, v1, v2}, Lcom/ddtaxi/a/a/r;->a(J)V

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->A()J

    move-result-wide v1

    invoke-virtual {p2, p1}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-virtual {p2, v1, v2}, Lcom/ddtaxi/a/a/r;->c(J)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->n()Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-virtual {p2, p1}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-virtual {p2, v1}, Lcom/ddtaxi/a/a/r;->a(Lcom/ddtaxi/a/a/k;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, p1}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/r;)V

    invoke-static {p1}, Lcom/ddtaxi/a/a/iv;->b(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/iv;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/o;->a(I)V

    invoke-virtual {p2, v1}, Lcom/ddtaxi/a/a/r;->p(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->z()I

    move-result v1

    invoke-virtual {p2, p1}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-virtual {p2, v1}, Lcom/ddtaxi/a/a/r;->c(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/o;->g:I

    return v0
.end method

.method public b(I)Z
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/ddtaxi/a/a/iv;->a(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->g()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/o;->G()V

    :goto_0
    return v0

    :pswitch_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/o;->i(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/o;->i(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->c()V

    invoke-static {p1}, Lcom/ddtaxi/a/a/iv;->b(I)I

    move-result v1

    invoke-static {v1, v2}, Lcom/ddtaxi/a/a/iv;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/o;->a(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/ddtaxi/a/a/o;->i(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public c()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/o;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public d()D
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->A()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public d(I)I
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recursion limit cannot be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/o;->l:I

    iput p1, p0, Lcom/ddtaxi/a/a/o;->l:I

    return v0
.end method

.method public e()F
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->z()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public e(I)I
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size limit cannot be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/o;->m:I

    iput p1, p0, Lcom/ddtaxi/a/a/o;->m:I

    return v0
.end method

.method public f(I)I
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->c()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/o;->i:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/ddtaxi/a/a/o;->j:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->b()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lcom/ddtaxi/a/a/o;->j:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/o;->I()V

    return v1
.end method

.method public f()J
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()J
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/ddtaxi/a/a/o;->j:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/o;->I()V

    return-void
.end method

.method public h()I
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v0

    return v0
.end method

.method public h(I)[B
    .locals 3

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    if-lez p1, :cond_0

    add-int v1, v0, p1

    iput v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    iget-object v1, p0, Lcom/ddtaxi/a/a/o;->a:[B

    add-int v2, v0, p1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/o;->m(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public i()J
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public i(I)V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/o;->n(I)V

    goto :goto_0
.end method

.method public j()I
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->z()I

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->x()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v1

    iget v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ddtaxi/a/a/o;->a:[B

    iget v3, p0, Lcom/ddtaxi/a/a/o;->e:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    :goto_0
    return-object v0

    :cond_0
    if-nez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ddtaxi/a/a/o;->m(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v3

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    sub-int/2addr v1, v0

    if-gt v3, v1, :cond_0

    if-lez v3, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/a/a/o;->a:[B

    add-int v2, v0, v3

    iput v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    :goto_0
    add-int v2, v0, v3

    invoke-static {v1, v0, v2}, Lcom/ddtaxi/a/a/iu;->a([BII)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->k()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    if-nez v3, :cond_1

    const-string v0, ""

    :goto_1
    return-object v0

    :cond_1
    invoke-direct {p0, v3}, Lcom/ddtaxi/a/a/o;->m(I)[B

    move-result-object v1

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v1, v0, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v2

    goto :goto_1
.end method

.method public n()Lcom/ddtaxi/a/a/k;
    .locals 4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v1

    iget v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1

    if-lez v1, :cond_1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/o;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/o;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/i;

    iget-object v2, p0, Lcom/ddtaxi/a/a/o;->a:[B

    iget v3, p0, Lcom/ddtaxi/a/a/o;->e:I

    invoke-direct {v0, v2, v3, v1}, Lcom/ddtaxi/a/a/i;-><init>([BII)V

    :goto_0
    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/o;->a:[B

    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    invoke-static {v0, v2, v1}, Lcom/ddtaxi/a/a/k;->a([BII)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    sget-object v0, Lcom/ddtaxi/a/a/k;->d:Lcom/ddtaxi/a/a/k;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/ddtaxi/a/a/gi;

    invoke-direct {p0, v1}, Lcom/ddtaxi/a/a/o;->m(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/gi;-><init>([B)V

    goto :goto_1
.end method

.method public o()[B
    .locals 4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v1

    iget v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/o;->a:[B

    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    iget v3, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v3, v1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/ddtaxi/a/a/o;->m(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public p()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v1

    iget v0, p0, Lcom/ddtaxi/a/a/o;->c:I

    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/o;->f:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/o;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/o;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/o;->a:[B

    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/o;->a:[B

    iget v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    iget v3, p0, Lcom/ddtaxi/a/a/o;->e:I

    add-int/2addr v3, v1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    sget-object v0, Lcom/ddtaxi/a/a/fw;->b:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/ddtaxi/a/a/o;->m(I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1
.end method

.method public q()I
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->z()I

    move-result v0

    return v0
.end method

.method public t()J
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public u()I
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->w()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/o;->c(I)I

    move-result v0

    return v0
.end method

.method public v()J
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/o;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()I
    .locals 8

    const-wide/16 v6, 0x0

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->y()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_1
    return v0

    :cond_1
    iget-object v3, p0, Lcom/ddtaxi/a/a/o;->a:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    if-ltz v0, :cond_2

    iput v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    sub-int/2addr v1, v2

    const/16 v4, 0x9

    if-lt v1, v4, :cond_0

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    int-to-long v4, v0

    cmp-long v2, v4, v6

    if-gez v2, :cond_4

    int-to-long v2, v0

    const-wide/16 v4, -0x80

    xor-long/2addr v2, v4

    long-to-int v0, v2

    :cond_3
    :goto_2
    iput v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    int-to-long v4, v0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_5

    int-to-long v0, v0

    const-wide/16 v3, 0x3f80

    xor-long/2addr v0, v3

    long-to-int v0, v0

    move v1, v2

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    int-to-long v4, v0

    cmp-long v2, v4, v6

    if-gez v2, :cond_6

    int-to-long v2, v0

    const-wide/32 v4, -0x1fc080

    xor-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    int-to-long v4, v0

    const-wide/32 v6, 0xfe03f80

    xor-long/2addr v4, v6

    long-to-int v0, v4

    if-gez v1, :cond_7

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_7

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_7

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_3

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method public x()J
    .locals 9

    const-wide/16 v7, 0x0

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->y()J

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_1
    iget-object v4, p0, Lcom/ddtaxi/a/a/o;->a:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    if-ltz v0, :cond_2

    iput v1, p0, Lcom/ddtaxi/a/a/o;->e:I

    int-to-long v0, v0

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/ddtaxi/a/a/o;->c:I

    sub-int/2addr v2, v1

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v3, v0, v7

    if-gez v3, :cond_4

    const-wide/16 v3, -0x80

    xor-long/2addr v0, v3

    :cond_3
    :goto_2
    iput v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    shl-int/lit8 v2, v2, 0xe

    int-to-long v5, v2

    xor-long/2addr v0, v5

    cmp-long v2, v0, v7

    if-ltz v2, :cond_5

    const-wide/16 v4, 0x3f80

    xor-long/2addr v0, v4

    move v2, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    shl-int/lit8 v3, v3, 0x15

    int-to-long v5, v3

    xor-long/2addr v0, v5

    cmp-long v3, v0, v7

    if-gez v3, :cond_6

    const-wide/32 v3, -0x1fc080

    xor-long/2addr v0, v3

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    int-to-long v5, v2

    const/16 v2, 0x1c

    shl-long/2addr v5, v2

    xor-long/2addr v0, v5

    cmp-long v2, v0, v7

    if-ltz v2, :cond_7

    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v0, v4

    move v2, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    int-to-long v5, v3

    const/16 v3, 0x23

    shl-long/2addr v5, v3

    xor-long/2addr v0, v5

    cmp-long v3, v0, v7

    if-gez v3, :cond_8

    const-wide v3, -0x7f01fc080L

    xor-long/2addr v0, v3

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    int-to-long v5, v2

    const/16 v2, 0x2a

    shl-long/2addr v5, v2

    xor-long/2addr v0, v5

    cmp-long v2, v0, v7

    if-ltz v2, :cond_9

    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v0, v4

    move v2, v3

    goto :goto_2

    :cond_9
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    int-to-long v5, v3

    const/16 v3, 0x31

    shl-long/2addr v5, v3

    xor-long/2addr v0, v5

    cmp-long v3, v0, v7

    if-gez v3, :cond_a

    const-wide v3, -0x1fc07f01fc080L

    xor-long/2addr v0, v3

    goto :goto_2

    :cond_a
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    int-to-long v5, v2

    const/16 v2, 0x38

    shl-long/2addr v5, v2

    xor-long/2addr v0, v5

    const-wide v5, 0xfe03f80fe03f80L

    xor-long/2addr v0, v5

    cmp-long v2, v0, v7

    if-gez v2, :cond_b

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    int-to-long v3, v3

    cmp-long v3, v3, v7

    if-gez v3, :cond_3

    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto/16 :goto_2
.end method

.method y()J
    .locals 6

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-lt v0, v3, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/fz;->d()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/o;->F()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    add-int/lit8 v0, v0, 0x7

    goto :goto_0
.end method

.method public z()I
    .locals 4

    const/4 v2, 0x4

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    iget v1, p0, Lcom/ddtaxi/a/a/o;->c:I

    sub-int/2addr v1, v0

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/ddtaxi/a/a/o;->k(I)V

    iget v0, p0, Lcom/ddtaxi/a/a/o;->e:I

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/o;->a:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/ddtaxi/a/a/o;->e:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method
