.class public final Lcom/ddtaxi/a/a/r;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1000

.field public static final b:I = 0x4

.field public static final c:I = 0x8


# instance fields
.field private final d:[B

.field private final e:I

.field private f:I

.field private g:I

.field private final h:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/r;->h:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/ddtaxi/a/a/r;->d:[B

    iput v0, p0, Lcom/ddtaxi/a/a/r;->f:I

    array-length v0, p2

    iput v0, p0, Lcom/ddtaxi/a/a/r;->e:I

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/r;->h:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/ddtaxi/a/a/r;->d:[B

    iput p2, p0, Lcom/ddtaxi/a/a/r;->f:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/ddtaxi/a/a/r;->e:I

    return-void
.end method

.method static a(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public static a(ILcom/ddtaxi/a/a/gd;)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->a(Lcom/ddtaxi/a/a/gd;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/ddtaxi/a/a/gd;)I
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gd;->e()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->q(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/ddtaxi/a/a/r;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/ddtaxi/a/a/r;->a(Ljava/io/OutputStream;I)Lcom/ddtaxi/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/ddtaxi/a/a/r;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/r;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/ddtaxi/a/a/r;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/ddtaxi/a/a/r;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/ddtaxi/a/a/r;->a(Ljava/nio/ByteBuffer;I)Lcom/ddtaxi/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/nio/ByteBuffer;I)Lcom/ddtaxi/a/a/r;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/s;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/s;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0, p1}, Lcom/ddtaxi/a/a/r;->a(Ljava/io/OutputStream;I)Lcom/ddtaxi/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/r;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/ddtaxi/a/a/r;->a([BII)Lcom/ddtaxi/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/ddtaxi/a/a/r;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/ddtaxi/a/a/r;-><init>([BII)V

    return-object v0
.end method

.method public static b(D)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static b(F)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static b(ID)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/ddtaxi/a/a/r;->b(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IF)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->b(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/ddtaxi/a/a/gd;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/ddtaxi/a/a/r;->i(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/gd;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->b(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/nio/ByteBuffer;)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->c(Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IZ)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->b(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(I[B)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->c([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Lcom/ddtaxi/a/a/k;)I
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->q(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/ddtaxi/a/a/r;->q(I)I

    move-result v1

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static c(ILcom/ddtaxi/a/a/k;)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->b(Lcom/ddtaxi/a/a/k;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->q(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c([B)I
    .locals 2

    array-length v0, p0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->q(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(ILcom/ddtaxi/a/a/k;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/ddtaxi/a/a/r;->i(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/k;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(Lcom/ddtaxi/a/a/gm;)I
    .locals 1

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gm;->A()I

    move-result v0

    return v0
.end method

.method public static e(ILcom/ddtaxi/a/a/gm;)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->d(Lcom/ddtaxi/a/a/gm;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static e(Lcom/ddtaxi/a/a/gm;)I
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->d(Lcom/ddtaxi/a/a/gm;)I

    move-result v0

    return v0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ddtaxi/a/a/r;->h:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/t;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/t;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/r;->h:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/ddtaxi/a/a/r;->d:[B

    iget v2, p0, Lcom/ddtaxi/a/a/r;->f:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/ddtaxi/a/a/r;->f:I

    return-void
.end method

.method private e(Ljava/nio/ByteBuffer;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/ddtaxi/a/a/r;->e:I

    iget v2, p0, Lcom/ddtaxi/a/a/r;->f:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/a/a/r;->d:[B

    iget v2, p0, Lcom/ddtaxi/a/a/r;->f:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/ddtaxi/a/a/r;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ddtaxi/a/a/r;->f:I

    iget v1, p0, Lcom/ddtaxi/a/a/r;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/ddtaxi/a/a/r;->e:I

    iget v2, p0, Lcom/ddtaxi/a/a/r;->f:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/ddtaxi/a/a/r;->d:[B

    iget v3, p0, Lcom/ddtaxi/a/a/r;->f:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/ddtaxi/a/a/r;->e:I

    iput v2, p0, Lcom/ddtaxi/a/a/r;->f:I

    iget v2, p0, Lcom/ddtaxi/a/a/r;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ddtaxi/a/a/r;->g:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/r;->e()V

    :goto_1
    iget v1, p0, Lcom/ddtaxi/a/a/r;->e:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/ddtaxi/a/a/r;->d:[B

    invoke-virtual {p1, v1, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/ddtaxi/a/a/r;->f:I

    iget v1, p0, Lcom/ddtaxi/a/a/r;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/r;->d:[B

    iget v2, p0, Lcom/ddtaxi/a/a/r;->e:I

    invoke-virtual {p1, v1, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/ddtaxi/a/a/r;->h:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/ddtaxi/a/a/r;->d:[B

    iget v3, p0, Lcom/ddtaxi/a/a/r;->e:I

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    iget v1, p0, Lcom/ddtaxi/a/a/r;->e:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ddtaxi/a/a/r;->g:I

    iget v2, p0, Lcom/ddtaxi/a/a/r;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ddtaxi/a/a/r;->g:I

    goto :goto_1
.end method

.method public static f(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/ddtaxi/a/a/r;->f(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static f(ILcom/ddtaxi/a/a/gm;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/ddtaxi/a/a/r;->e(ILcom/ddtaxi/a/a/gm;)I

    move-result v0

    return v0
.end method

.method public static f(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/ddtaxi/a/a/r;->l(J)I

    move-result v0

    return v0
.end method

.method public static f(Lcom/ddtaxi/a/a/gm;)I
    .locals 2

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gm;->A()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->q(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static g(II)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->h(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static g(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/ddtaxi/a/a/r;->g(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static g(ILcom/ddtaxi/a/a/gm;)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->f(Lcom/ddtaxi/a/a/gm;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static g(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/ddtaxi/a/a/r;->l(J)I

    move-result v0

    return v0
.end method

.method public static h(I)I
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->q(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static h(II)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->i(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static h(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/ddtaxi/a/a/r;->h(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static h(ILcom/ddtaxi/a/a/gm;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/ddtaxi/a/a/r;->i(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/ddtaxi/a/a/r;->g(ILcom/ddtaxi/a/a/gm;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static h(J)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static i(I)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static i(II)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->j(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static i(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/ddtaxi/a/a/r;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static i(J)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static j(I)I
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->q(I)I

    move-result v0

    return v0
.end method

.method public static j(II)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->k(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static j(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/ddtaxi/a/a/r;->j(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static j(J)I
    .locals 2

    invoke-static {p0, p1}, Lcom/ddtaxi/a/a/r;->n(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/r;->l(J)I

    move-result v0

    return v0
.end method

.method public static k(I)I
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->h(I)I

    move-result v0

    return v0
.end method

.method public static k(II)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static l(I)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static l(II)I
    .locals 2

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->o(I)I

    move-result v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->m(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static l(J)I
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v0, -0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v0, -0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static m(I)I
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/r;->s(I)I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->q(I)I

    move-result v0

    return v0
.end method

.method public static n(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static o(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ddtaxi/a/a/iv;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->q(I)I

    move-result v0

    return v0
.end method

.method public static q(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static s(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/r;->h:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/r;->e()V

    :cond_0
    return-void
.end method

.method public a(B)V
    .locals 3

    iget v0, p0, Lcom/ddtaxi/a/a/r;->f:I

    iget v1, p0, Lcom/ddtaxi/a/a/r;->e:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/r;->e()V

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/r;->d:[B

    iget v1, p0, Lcom/ddtaxi/a/a/r;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ddtaxi/a/a/r;->f:I

    aput-byte p1, v0, v1

    iget v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    return-void
.end method

.method public a(D)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/r;->m(J)V

    return-void
.end method

.method public a(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->r(I)V

    return-void
.end method

.method public a(ID)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2, p3}, Lcom/ddtaxi/a/a/r;->a(D)V

    return-void
.end method

.method public a(IF)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->a(F)V

    return-void
.end method

.method public a(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->b(I)V

    return-void
.end method

.method public a(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2, p3}, Lcom/ddtaxi/a/a/r;->a(J)V

    return-void
.end method

.method public a(ILcom/ddtaxi/a/a/gm;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->a(Lcom/ddtaxi/a/a/gm;)V

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    return-void
.end method

.method public a(ILcom/ddtaxi/a/a/k;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->a(Lcom/ddtaxi/a/a/k;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->b(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->a(Z)V

    return-void
.end method

.method public a(I[B)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->b([B)V

    return-void
.end method

.method public a(I[BII)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/ddtaxi/a/a/r;->b([BII)V

    return-void
.end method

.method public a(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/r;->k(J)V

    return-void
.end method

.method public a(Lcom/ddtaxi/a/a/gm;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/ddtaxi/a/a/gm;->a(Lcom/ddtaxi/a/a/r;)V

    return-void
.end method

.method public a(Lcom/ddtaxi/a/a/k;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/r;->c(Lcom/ddtaxi/a/a/k;)V

    return-void
.end method

.method public a(Lcom/ddtaxi/a/a/k;II)V
    .locals 4

    iget v0, p0, Lcom/ddtaxi/a/a/r;->e:I

    iget v1, p0, Lcom/ddtaxi/a/a/r;->f:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/r;->d:[B

    iget v1, p0, Lcom/ddtaxi/a/a/r;->f:I

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/ddtaxi/a/a/k;->b([BIII)V

    iget v0, p0, Lcom/ddtaxi/a/a/r;->f:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/ddtaxi/a/a/r;->f:I

    iget v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/r;->e:I

    iget v1, p0, Lcom/ddtaxi/a/a/r;->f:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ddtaxi/a/a/r;->d:[B

    iget v2, p0, Lcom/ddtaxi/a/a/r;->f:I

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/ddtaxi/a/a/k;->b([BIII)V

    add-int v1, p2, v0

    sub-int v2, p3, v0

    iget v3, p0, Lcom/ddtaxi/a/a/r;->e:I

    iput v3, p0, Lcom/ddtaxi/a/a/r;->f:I

    iget v3, p0, Lcom/ddtaxi/a/a/r;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/r;->e()V

    iget v0, p0, Lcom/ddtaxi/a/a/r;->e:I

    if-gt v2, v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/r;->d:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/ddtaxi/a/a/k;->b([BIII)V

    iput v2, p0, Lcom/ddtaxi/a/a/r;->f:I

    :goto_1
    iget v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/r;->h:Ljava/io/OutputStream;

    invoke-virtual {p1, v0, v1, v2}, Lcom/ddtaxi/a/a/k;->a(Ljava/io/OutputStream;II)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->d([B)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/r;->h:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ddtaxi/a/a/r;->e:I

    iget v1, p0, Lcom/ddtaxi/a/a/r;->f:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/r;->p(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/r;->k(J)V

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->c(I)V

    return-void
.end method

.method public b(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2, p3}, Lcom/ddtaxi/a/a/r;->b(J)V

    return-void
.end method

.method public b(ILcom/ddtaxi/a/a/gm;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/gm;)V

    return-void
.end method

.method public b(ILcom/ddtaxi/a/a/k;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ddtaxi/a/a/r;->m(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/ddtaxi/a/a/r;->c(II)V

    invoke-virtual {p0, v2, p2}, Lcom/ddtaxi/a/a/r;->a(ILcom/ddtaxi/a/a/k;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    return-void
.end method

.method public b(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/r;->k(J)V

    return-void
.end method

.method public b(Lcom/ddtaxi/a/a/gm;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/r;->a(Lcom/ddtaxi/a/a/gm;)V

    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/r;->d(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public b([B)V
    .locals 1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/r;->d([B)V

    return-void
.end method

.method public b([BII)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/r;->c([BII)V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/r;->b()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/r;->r(I)V

    return-void
.end method

.method public c(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->d(I)V

    return-void
.end method

.method public c(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2, p3}, Lcom/ddtaxi/a/a/r;->c(J)V

    return-void
.end method

.method public c(ILcom/ddtaxi/a/a/gm;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->c(Lcom/ddtaxi/a/a/gm;)V

    return-void
.end method

.method public c(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/r;->m(J)V

    return-void
.end method

.method public c(Lcom/ddtaxi/a/a/gm;)V
    .locals 1

    invoke-interface {p1}, Lcom/ddtaxi/a/a/gm;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-interface {p1, p0}, Lcom/ddtaxi/a/a/gm;->a(Lcom/ddtaxi/a/a/r;)V

    return-void
.end method

.method public c(Lcom/ddtaxi/a/a/k;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ddtaxi/a/a/r;->a(Lcom/ddtaxi/a/a/k;II)V

    return-void
.end method

.method public c([BII)V
    .locals 4

    iget v0, p0, Lcom/ddtaxi/a/a/r;->e:I

    iget v1, p0, Lcom/ddtaxi/a/a/r;->f:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/r;->d:[B

    iget v1, p0, Lcom/ddtaxi/a/a/r;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/ddtaxi/a/a/r;->f:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/ddtaxi/a/a/r;->f:I

    iget v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/r;->e:I

    iget v1, p0, Lcom/ddtaxi/a/a/r;->f:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ddtaxi/a/a/r;->d:[B

    iget v2, p0, Lcom/ddtaxi/a/a/r;->f:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p2, v0

    sub-int v2, p3, v0

    iget v3, p0, Lcom/ddtaxi/a/a/r;->e:I

    iput v3, p0, Lcom/ddtaxi/a/a/r;->f:I

    iget v3, p0, Lcom/ddtaxi/a/a/r;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    invoke-direct {p0}, Lcom/ddtaxi/a/a/r;->e()V

    iget v0, p0, Lcom/ddtaxi/a/a/r;->e:I

    if-gt v2, v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/r;->d:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcom/ddtaxi/a/a/r;->f:I

    :goto_1
    iget v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/r;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/r;->g:I

    return v0
.end method

.method public d(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/r;->p(I)V

    return-void
.end method

.method public d(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->e(I)V

    return-void
.end method

.method public d(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2, p3}, Lcom/ddtaxi/a/a/r;->d(J)V

    return-void
.end method

.method public d(ILcom/ddtaxi/a/a/gm;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ddtaxi/a/a/r;->m(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/ddtaxi/a/a/r;->c(II)V

    invoke-virtual {p0, v2, p2}, Lcom/ddtaxi/a/a/r;->c(ILcom/ddtaxi/a/a/gm;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    return-void
.end method

.method public d(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/r;->m(J)V

    return-void
.end method

.method public d(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ddtaxi/a/a/r;->c([BII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/r;->e(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public d([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ddtaxi/a/a/r;->c([BII)V

    return-void
.end method

.method public e(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/r;->b(I)V

    return-void
.end method

.method public e(II)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->f(I)V

    return-void
.end method

.method public e(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2, p3}, Lcom/ddtaxi/a/a/r;->e(J)V

    return-void
.end method

.method public e(J)V
    .locals 2

    invoke-static {p1, p2}, Lcom/ddtaxi/a/a/r;->n(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/r;->k(J)V

    return-void
.end method

.method public f(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/r;->r(I)V

    return-void
.end method

.method public f(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/r;->m(II)V

    invoke-virtual {p0, p2}, Lcom/ddtaxi/a/a/r;->g(I)V

    return-void
.end method

.method public g(I)V
    .locals 1

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->s(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->p(I)V

    return-void
.end method

.method public k(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public m(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/ddtaxi/a/a/iv;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->p(I)V

    return-void
.end method

.method public m(J)V
    .locals 2

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    return-void
.end method

.method public n(I)V
    .locals 1

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->a(B)V

    return-void
.end method

.method public p(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/r;->n(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public r(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/r;->n(I)V

    return-void
.end method
