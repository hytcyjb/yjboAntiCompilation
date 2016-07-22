.class Lcom/ddtaxi/a/a/gi;
.super Lcom/ddtaxi/a/a/k;


# instance fields
.field protected final f:[B

.field private g:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/k;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/gi;->g:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    return-void
.end method

.method static a(I[BII)I
    .locals 3

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    return p0

    :cond_0
    mul-int/lit8 v1, p0, 0x1f

    aget-byte v2, p1, v0

    add-int p0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static b([B)I
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, p0, v1, v2}, Lcom/ddtaxi/a/a/gi;->a(I[BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(I)B
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    array-length v0, v0

    return v0
.end method

.method protected a(III)I
    .locals 3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->b()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    add-int v2, v0, p3

    invoke-static {p1, v1, v0, v2}, Lcom/ddtaxi/a/a/iu;->a(I[BII)I

    move-result v0

    return v0
.end method

.method public a(II)Lcom/ddtaxi/a/a/k;
    .locals 4

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Beginning index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v0

    if-le p2, v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "End index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sub-int v1, p2, p1

    if-gez v1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Beginning index larger than ending index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez v1, :cond_3

    sget-object v0, Lcom/ddtaxi/a/a/k;->d:Lcom/ddtaxi/a/a/k;

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Lcom/ddtaxi/a/a/i;

    iget-object v2, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->b()I

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {v0, v2, v3, v1}, Lcom/ddtaxi/a/a/i;-><init>([BII)V

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->e()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected a([BIII)V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method a(Lcom/ddtaxi/a/a/gi;II)Z
    .locals 7

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ran off end of other: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    iget-object v3, p1, Lcom/ddtaxi/a/a/gi;->f:[B

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->b()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/gi;->b()I

    move-result v0

    add-int/2addr v0, p2

    :goto_0
    if-lt v1, v4, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    aget-byte v5, v2, v1

    aget-byte v6, v3, v0

    if-eq v5, v6, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b(III)I
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->b()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lcom/ddtaxi/a/a/gi;->a(I[BII)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method b(Ljava/io/OutputStream;II)V
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->b()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public c()Lcom/ddtaxi/a/a/l;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/gj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ddtaxi/a/a/gj;-><init>(Lcom/ddtaxi/a/a/gi;Lcom/ddtaxi/a/a/gj;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/ddtaxi/a/a/k;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v3

    move-object v0, p1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v0

    if-eq v3, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/ddtaxi/a/a/gi;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/ddtaxi/a/a/gi;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/ddtaxi/a/a/gi;->a(Lcom/ddtaxi/a/a/gi;II)Z

    move-result v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/ddtaxi/a/a/hc;

    if-eqz v0, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->f()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/gi;->g:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/ddtaxi/a/a/gi;->b(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/ddtaxi/a/a/gi;->g:I

    :cond_1
    return v0
.end method

.method public i()Z
    .locals 3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->b()I

    move-result v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/ddtaxi/a/a/iu;->a([BII)Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->c()Lcom/ddtaxi/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/io/InputStream;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/ddtaxi/a/a/gi;->f:[B

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/gi;->a()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public k()Lcom/ddtaxi/a/a/o;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/gi;)Lcom/ddtaxi/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected o()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/gi;->g:I

    return v0
.end method
