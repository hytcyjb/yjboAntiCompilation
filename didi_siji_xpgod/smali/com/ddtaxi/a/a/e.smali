.class final Lcom/ddtaxi/a/a/e;
.super Ljava/io/FilterInputStream;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lcom/ddtaxi/a/a/e;->a:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/ddtaxi/a/a/e;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/e;->a:I

    if-gtz v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/ddtaxi/a/a/e;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ddtaxi/a/a/e;->a:I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/e;->a:I

    if-gtz v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/ddtaxi/a/a/e;->a:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, p1, p2, v0}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/ddtaxi/a/a/e;->a:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/ddtaxi/a/a/e;->a:I

    goto :goto_0
.end method

.method public skip(J)J
    .locals 4

    iget v0, p0, Lcom/ddtaxi/a/a/e;->a:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/ddtaxi/a/a/e;->a:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/ddtaxi/a/a/e;->a:I

    :cond_0
    return-wide v0
.end method
