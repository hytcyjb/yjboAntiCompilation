.class public Lcom/tendcloud/tenddata/am;
.super Ljava/io/OutputStream;


# static fields
.field static final a:I = 0x2000

.field static final synthetic b:Z


# instance fields
.field private c:Ljava/io/OutputStream;

.field private final d:Ljava/io/DataOutputStream;

.field private final e:Lcom/tendcloud/tenddata/k;

.field private final f:Lcom/tendcloud/tenddata/j;

.field private final g:Lcom/tendcloud/tenddata/h;

.field private final h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Ljava/io/IOException;

.field private final o:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/am;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tendcloud/tenddata/am;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 13

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/am;->i:Z

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/am;->j:Z

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/am;->k:Z

    iput v2, p0, Lcom/tendcloud/tenddata/am;->l:I

    iput-boolean v2, p0, Lcom/tendcloud/tenddata/am;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tendcloud/tenddata/am;->o:[B

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/io/OutputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/am;->d:Ljava/io/DataOutputStream;

    new-instance v0, Lcom/tendcloud/tenddata/j;

    const/16 v3, 0x2000

    invoke-direct {v0, v3}, Lcom/tendcloud/tenddata/j;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/am;->f:Lcom/tendcloud/tenddata/j;

    if-eqz p2, :cond_2

    array-length v0, p2

    add-int/lit16 v4, v0, 0x1000

    :goto_0
    invoke-static {v4}, Lcom/tendcloud/tenddata/am;->a(I)I

    move-result v5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v6, v0, 0x18

    const-wide/high16 v7, 0x4030

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    int-to-double v9, v0

    const-wide/high16 v11, 0x4004

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->f:Lcom/tendcloud/tenddata/j;

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/tendcloud/tenddata/h;->a(Lcom/tendcloud/tenddata/j;IIIIIII)Lcom/tendcloud/tenddata/h;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/am;->g:Lcom/tendcloud/tenddata/h;

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->g:Lcom/tendcloud/tenddata/h;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/h;->c()Lcom/tendcloud/tenddata/k;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/am;->e:Lcom/tendcloud/tenddata/k;

    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->e:Lcom/tendcloud/tenddata/k;

    invoke-virtual {v0, v4, p2}, Lcom/tendcloud/tenddata/k;->a(I[B)V

    iput-boolean v2, p0, Lcom/tendcloud/tenddata/am;->i:Z

    :cond_1
    iput v1, p0, Lcom/tendcloud/tenddata/am;->h:I

    return-void

    :cond_2
    const/16 v4, 0x1000

    goto :goto_0
.end method

.method private static a(I)I
    .locals 1

    const/16 v0, 0x2000

    if-le v0, p0, :cond_0

    rsub-int v0, p0, 0x2000

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(II)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/am;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/am;->i:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xe0

    :goto_0
    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->d:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->d:Ljava/io/DataOutputStream;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->d:Ljava/io/DataOutputStream;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/am;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->d:Ljava/io/DataOutputStream;

    iget v1, p0, Lcom/tendcloud/tenddata/am;->h:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->f:Lcom/tendcloud/tenddata/j;

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/j;->a(Ljava/io/OutputStream;)V

    iput-boolean v2, p0, Lcom/tendcloud/tenddata/am;->k:Z

    iput-boolean v2, p0, Lcom/tendcloud/tenddata/am;->j:Z

    iput-boolean v2, p0, Lcom/tendcloud/tenddata/am;->i:Z

    return-void

    :cond_1
    const/16 v0, 0xc0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/tendcloud/tenddata/am;->j:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xa0

    goto :goto_0

    :cond_3
    const/16 v0, 0x80

    goto :goto_0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->f:Lcom/tendcloud/tenddata/j;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/j;->c()I

    move-result v1

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->g:Lcom/tendcloud/tenddata/h;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/h;->d()I

    move-result v0

    sget-boolean v2, Lcom/tendcloud/tenddata/am;->b:Z

    if-nez v2, :cond_0

    if-gtz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_0
    sget-boolean v2, Lcom/tendcloud/tenddata/am;->b:Z

    if-nez v2, :cond_1

    if-gtz v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :cond_1
    add-int/lit8 v2, v1, 0x2

    if-ge v2, v0, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/tendcloud/tenddata/am;->a(II)V

    :goto_0
    iget v1, p0, Lcom/tendcloud/tenddata/am;->l:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/tendcloud/tenddata/am;->l:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->g:Lcom/tendcloud/tenddata/h;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/h;->e()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->f:Lcom/tendcloud/tenddata/j;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/j;->a()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->g:Lcom/tendcloud/tenddata/h;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/h;->b()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->g:Lcom/tendcloud/tenddata/h;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/h;->d()I

    move-result v0

    sget-boolean v1, Lcom/tendcloud/tenddata/am;->b:Z

    if-nez v1, :cond_3

    if-gtz v0, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/am;->b(I)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    const/4 v1, 0x1

    :goto_0
    if-lez p1, :cond_1

    const/16 v0, 0x2000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/tendcloud/tenddata/am;->d:Ljava/io/DataOutputStream;

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/am;->i:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->d:Ljava/io/DataOutputStream;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->e:Lcom/tendcloud/tenddata/k;

    iget-object v3, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, v3, p1, v2}, Lcom/tendcloud/tenddata/k;->a(Ljava/io/OutputStream;II)V

    sub-int/2addr p1, v2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/am;->i:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/tendcloud/tenddata/am;->j:Z

    return-void
.end method

.method private c()V
    .locals 2

    sget-boolean v0, Lcom/tendcloud/tenddata/am;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/am;->m:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->e:Lcom/tendcloud/tenddata/k;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/k;->d()V

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/tendcloud/tenddata/am;->l:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->g:Lcom/tendcloud/tenddata/h;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/h;->f()Z

    invoke-direct {p0}, Lcom/tendcloud/tenddata/am;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/am;->m:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/am;->m:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/am;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/am;->m:Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tendcloud/tenddata/am;->m:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/am;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/io/OutputStream;

    :cond_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    throw v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public flush()V
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/tendcloud/tenddata/am;->m:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->e:Lcom/tendcloud/tenddata/k;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/k;->c()V

    :goto_0
    iget v0, p0, Lcom/tendcloud/tenddata/am;->l:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->g:Lcom/tendcloud/tenddata/h;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/h;->f()Z

    invoke-direct {p0}, Lcom/tendcloud/tenddata/am;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public write(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->o:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->o:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/tendcloud/tenddata/am;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/tendcloud/tenddata/am;->m:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    if-lez p3, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->e:Lcom/tendcloud/tenddata/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tendcloud/tenddata/k;->a([BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Lcom/tendcloud/tenddata/am;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tendcloud/tenddata/am;->l:I

    iget-object v0, p0, Lcom/tendcloud/tenddata/am;->g:Lcom/tendcloud/tenddata/h;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/h;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/tendcloud/tenddata/am;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/am;->n:Ljava/io/IOException;

    throw v0

    :cond_4
    return-void
.end method
