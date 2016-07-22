.class public abstract Lcom/ddtaxi/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/gm;


# instance fields
.field protected o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/c;->o:I

    return-void
.end method

.method protected static b(Lcom/ddtaxi/a/a/k;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte string is not UTF-8."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method W()Lcom/ddtaxi/a/a/il;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/il;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/il;-><init>(Lcom/ddtaxi/a/a/gm;)V

    return-object v0
.end method

.method public X()Lcom/ddtaxi/a/a/k;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/c;->A()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->d(I)Lcom/ddtaxi/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/m;->b()Lcom/ddtaxi/a/a/r;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/c;->a(Lcom/ddtaxi/a/a/r;)V

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/m;->a()Lcom/ddtaxi/a/a/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public Y()[B
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/c;->A()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->a([B)Lcom/ddtaxi/a/a/r;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/c;->a(Lcom/ddtaxi/a/a/r;)V

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/r;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/c;->A()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/r;->a(Ljava/io/OutputStream;I)Lcom/ddtaxi/a/a/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/c;->a(Lcom/ddtaxi/a/a/r;)V

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/r;->a()V

    return-void
.end method

.method public b(Ljava/io/OutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/c;->A()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->q(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lcom/ddtaxi/a/a/r;->a(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/ddtaxi/a/a/r;->a(Ljava/io/OutputStream;I)Lcom/ddtaxi/a/a/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/c;->a(Lcom/ddtaxi/a/a/r;)V

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/r;->a()V

    return-void
.end method
