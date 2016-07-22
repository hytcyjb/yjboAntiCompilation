.class public abstract Lcom/ddtaxi/a/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field static final a:I = 0x80

.field static final b:I = 0x100

.field static final c:I = 0x2000

.field public static final d:Lcom/ddtaxi/a/a/k;

.field static final synthetic e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ddtaxi/a/a/k;->e:Z

    new-instance v0, Lcom/ddtaxi/a/a/gi;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/gi;-><init>([B)V

    sput-object v0, Lcom/ddtaxi/a/a/k;->d:Lcom/ddtaxi/a/a/k;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/k;
    .locals 2

    const/16 v0, 0x100

    const/16 v1, 0x2000

    invoke-static {p0, v0, v1}, Lcom/ddtaxi/a/a/k;->a(Ljava/io/InputStream;II)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;I)Lcom/ddtaxi/a/a/k;
    .locals 1

    invoke-static {p0, p1, p1}, Lcom/ddtaxi/a/a/k;->a(Ljava/io/InputStream;II)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;II)Lcom/ddtaxi/a/a/k;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {p0, p1}, Lcom/ddtaxi/a/a/k;->b(Ljava/io/InputStream;I)Lcom/ddtaxi/a/a/k;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    mul-int/lit8 v1, p1, 0x2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/k;
    .locals 3

    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move-object p0, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ddtaxi/a/a/k;->d:Lcom/ddtaxi/a/a/k;

    :goto_2
    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/util/Collection;

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/k;->a(Ljava/util/Iterator;I)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/ddtaxi/a/a/gi;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/gi;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/ddtaxi/a/a/k;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/gi;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/gi;-><init>([B)V

    return-object v0
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/ddtaxi/a/a/k;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/nio/ByteBuffer;I)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/nio/ByteBuffer;I)Lcom/ddtaxi/a/a/k;
    .locals 2

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/ddtaxi/a/a/gi;

    invoke-direct {v1, v0}, Lcom/ddtaxi/a/a/gi;-><init>([B)V

    return-object v1
.end method

.method private static a(Ljava/util/Iterator;I)Lcom/ddtaxi/a/a/k;
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/ddtaxi/a/a/k;->e:Z

    if-nez v0, :cond_0

    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-ne p1, v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/k;

    :goto_0
    return-object v0

    :cond_1
    ushr-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/util/Iterator;I)Lcom/ddtaxi/a/a/k;

    move-result-object v1

    sub-int v0, p1, v0

    invoke-static {p0, v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/util/Iterator;I)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/k;->c(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/k;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/ddtaxi/a/a/k;->a([BII)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/ddtaxi/a/a/k;
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/ddtaxi/a/a/gi;

    invoke-direct {v1, v0}, Lcom/ddtaxi/a/a/gi;-><init>([B)V

    return-object v1
.end method

.method private static b(Ljava/io/InputStream;I)Lcom/ddtaxi/a/a/k;
    .locals 5

    const/4 v1, 0x0

    new-array v2, p1, [B

    move v0, v1

    :goto_0
    if-lt v0, p1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    sub-int v3, p1, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    invoke-static {v2, v1, v0}, Lcom/ddtaxi/a/a/k;->a([BII)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    goto :goto_1
.end method

.method public static c(I)Lcom/ddtaxi/a/a/n;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/n;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/n;-><init>(I)V

    return-object v0
.end method

.method static d(I)Lcom/ddtaxi/a/a/m;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ddtaxi/a/a/m;-><init>(ILcom/ddtaxi/a/a/m;)V

    return-object v0
.end method

.method public static l()Lcom/ddtaxi/a/a/n;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/n;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/n;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)B
.end method

.method public abstract a()I
.end method

.method protected abstract a(III)I
.end method

.method public abstract a(II)Lcom/ddtaxi/a/a/k;
.end method

.method public abstract a(Ljava/io/OutputStream;)V
.end method

.method a(Ljava/io/OutputStream;II)V
    .locals 3

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source offset < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p3, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v0, p2, p3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v1

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source end offset exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v2, p2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-lez p3, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/k;->b(Ljava/io/OutputStream;II)V

    :cond_3
    return-void
.end method

.method public a([BI)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/ddtaxi/a/a/k;->b([BIII)V

    return-void
.end method

.method protected abstract a([BIII)V
.end method

.method public a(Lcom/ddtaxi/a/a/k;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/k;->a(II)Lcom/ddtaxi/a/a/k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ddtaxi/a/a/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected abstract b(III)I
.end method

.method public b(I)Lcom/ddtaxi/a/a/k;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ddtaxi/a/a/k;->a(II)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method

.method abstract b(Ljava/io/OutputStream;II)V
.end method

.method public abstract b(Ljava/nio/ByteBuffer;)V
.end method

.method public b([BIII)V
    .locals 3

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source offset < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p3, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Target offset < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p4, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int v0, p2, p4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v1

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source end offset < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v2, p2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int v0, p3, p4

    array-length v1, p1

    if-le v0, v1, :cond_4

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Target end offset < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v2, p3, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-lez p4, :cond_5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/k;->a([BIII)V

    :cond_5
    return-void
.end method

.method public b(Lcom/ddtaxi/a/a/k;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/k;->b(I)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/k;
    .locals 6

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v1

    int-to-long v2, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ByteString would be too long: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {p0, p1}, Lcom/ddtaxi/a/a/hc;->a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Lcom/ddtaxi/a/a/l;
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()[B
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/ddtaxi/a/a/fw;->a:[B

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [B

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/ddtaxi/a/a/k;->a([BIII)V

    goto :goto_0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract f()Ljava/nio/ByteBuffer;
.end method

.method public abstract g()Ljava/util/List;
.end method

.method public h()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/k;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract hashCode()I
.end method

.method public abstract i()Z
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->c()Lcom/ddtaxi/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public abstract j()Ljava/io/InputStream;
.end method

.method public abstract k()Lcom/ddtaxi/a/a/o;
.end method

.method protected abstract m()I
.end method

.method protected abstract n()Z
.end method

.method protected abstract o()I
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "<ByteString@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/k;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
