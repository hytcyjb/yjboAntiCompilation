.class public final Lcom/ddtaxi/a/a/im;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/gm;


# static fields
.field private static final a:Lcom/ddtaxi/a/a/im;

.field private static final c:Lcom/ddtaxi/a/a/iq;


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/im;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/im;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/ddtaxi/a/a/im;->a:Lcom/ddtaxi/a/a/im;

    new-instance v0, Lcom/ddtaxi/a/a/iq;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/iq;-><init>()V

    sput-object v0, Lcom/ddtaxi/a/a/im;->c:Lcom/ddtaxi/a/a/iq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/im;->b:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/ddtaxi/a/a/im;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/im;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/im;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/im;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/im;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/in;->a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Lcom/ddtaxi/a/a/im;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/in;->a([B)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/ddtaxi/a/a/in;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/in;->g()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/in;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/ddtaxi/a/a/im;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/im;->a:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/im;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/im;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ddtaxi/a/a/im;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/io;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/io;->a(I)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0
.end method

.method public synthetic F()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/im;->h()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/im;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/im;->g()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public X()Lcom/ddtaxi/a/a/k;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->d(I)Lcom/ddtaxi/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/m;->b()Lcom/ddtaxi/a/a/r;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

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
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/ddtaxi/a/a/r;->a([B)Lcom/ddtaxi/a/a/r;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

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

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/im;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/io;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Lcom/ddtaxi/a/a/io;->a(ILcom/ddtaxi/a/a/r;)V

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 1

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->a(Ljava/io/OutputStream;)Lcom/ddtaxi/a/a/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/r;->a()V

    return-void
.end method

.method public a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/im;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(I)Lcom/ddtaxi/a/a/io;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/im;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/io;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/io;->b()Lcom/ddtaxi/a/a/io;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(Lcom/ddtaxi/a/a/r;)V
    .locals 3

    iget-object v0, p0, Lcom/ddtaxi/a/a/im;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/io;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Lcom/ddtaxi/a/a/io;->b(ILcom/ddtaxi/a/a/r;)V

    goto :goto_0
.end method

.method public b(Ljava/io/OutputStream;)V
    .locals 2

    invoke-static {p1}, Lcom/ddtaxi/a/a/r;->a(Ljava/io/OutputStream;)Lcom/ddtaxi/a/a/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/r;->p(I)V

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/r;->a()V

    return-void
.end method

.method public synthetic b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/im;->i()Lcom/ddtaxi/a/a/iq;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/ddtaxi/a/a/im;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/im;->a:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/im;->b:Ljava/util/Map;

    return-object v0
.end method

.method public e()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ddtaxi/a/a/im;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/io;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ddtaxi/a/a/io;->b(I)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/ddtaxi/a/a/im;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ddtaxi/a/a/im;->b:Ljava/util/Map;

    check-cast p1, Lcom/ddtaxi/a/a/im;

    iget-object v2, p1, Lcom/ddtaxi/a/a/im;->b:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/ddtaxi/a/a/in;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/ddtaxi/a/a/in;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/im;->a()Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/im;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Lcom/ddtaxi/a/a/iq;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/im;->c:Lcom/ddtaxi/a/a/iq;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/hz;->b(Lcom/ddtaxi/a/a/im;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
