.class Lcom/ddtaxi/a/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/p;


# instance fields
.field final synthetic a:Lcom/ddtaxi/a/a/o;

.field private b:I

.field private c:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/o;)V
    .locals 1

    iput-object p1, p0, Lcom/ddtaxi/a/a/q;->a:Lcom/ddtaxi/a/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/o;)I

    move-result v0

    iput v0, p0, Lcom/ddtaxi/a/a/q;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/a/a/q;->c:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/q;->c:Ljava/io/ByteArrayOutputStream;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/q;->c:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/ddtaxi/a/a/q;->a:Lcom/ddtaxi/a/a/o;

    invoke-static {v1}, Lcom/ddtaxi/a/a/o;->b(Lcom/ddtaxi/a/a/o;)[B

    move-result-object v1

    iget v2, p0, Lcom/ddtaxi/a/a/q;->b:I

    iget-object v3, p0, Lcom/ddtaxi/a/a/q;->a:Lcom/ddtaxi/a/a/o;

    invoke-static {v3}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/o;)I

    move-result v3

    iget v4, p0, Lcom/ddtaxi/a/a/q;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/q;->b:I

    return-void
.end method

.method b()Ljava/nio/ByteBuffer;
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/a/a/q;->c:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/q;->a:Lcom/ddtaxi/a/a/o;

    invoke-static {v0}, Lcom/ddtaxi/a/a/o;->b(Lcom/ddtaxi/a/a/o;)[B

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/q;->b:I

    iget-object v2, p0, Lcom/ddtaxi/a/a/q;->a:Lcom/ddtaxi/a/a/o;

    invoke-static {v2}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/o;)I

    move-result v2

    iget v3, p0, Lcom/ddtaxi/a/a/q;->b:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/q;->c:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/ddtaxi/a/a/q;->a:Lcom/ddtaxi/a/a/o;

    invoke-static {v1}, Lcom/ddtaxi/a/a/o;->b(Lcom/ddtaxi/a/a/o;)[B

    move-result-object v1

    iget v2, p0, Lcom/ddtaxi/a/a/q;->b:I

    iget-object v3, p0, Lcom/ddtaxi/a/a/q;->a:Lcom/ddtaxi/a/a/o;

    invoke-static {v3}, Lcom/ddtaxi/a/a/o;->a(Lcom/ddtaxi/a/a/o;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/q;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method
