.class public Lcom/alibaba/fastjson/util/ThreadLocalCache;
.super Ljava/lang/Object;
.source "ThreadLocalCache.java"


# static fields
.field public static final BYTES_CACH_INIT_SIZE:I = 0x400

.field public static final BYTeS_CACH_MAX_SIZE:I = 0x20000

.field public static final CHARS_CACH_INIT_SIZE:I = 0x400

.field public static final CHARS_CACH_MAX_SIZE:I = 0x20000

.field private static final bytesBufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private static final charsBufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field

.field private static final decoderLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->charsBufLocal:Ljava/lang/ThreadLocal;

    .line 12
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->decoderLocal:Ljava/lang/ThreadLocal;

    .line 79
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->bytesBufLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocate(I)[C
    .locals 3
    .parameter

    .prologue
    const/high16 v1, 0x2

    .line 48
    const/16 v0, 0x400

    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->getAllocateLength(III)I

    move-result v0

    .line 50
    if-gt v0, v1, :cond_0

    .line 51
    new-array v0, v0, [C

    .line 52
    sget-object v1, Lcom/alibaba/fastjson/util/ThreadLocalCache;->charsBufLocal:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-object v0

    :cond_0
    new-array v0, p0, [C

    goto :goto_0
.end method

.method private static allocateBytes(I)[B
    .locals 3
    .parameter

    .prologue
    const/high16 v1, 0x2

    .line 106
    const/16 v0, 0x400

    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->getAllocateLength(III)I

    move-result v0

    .line 108
    if-gt v0, v1, :cond_0

    .line 109
    new-array v0, v0, [B

    .line 110
    sget-object v1, Lcom/alibaba/fastjson/util/ThreadLocalCache;->bytesBufLocal:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 114
    :goto_0
    return-object v0

    :cond_0
    new-array v0, p0, [B

    goto :goto_0
.end method

.method public static clearBytes()V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->bytesBufLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public static clearChars()V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->charsBufLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method private static getAllocateLength(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    move v0, p0

    .line 62
    :cond_0
    if-lt v0, p2, :cond_1

    move p2, v0

    .line 73
    :goto_0
    return p2

    .line 66
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    .line 68
    if-le v0, p1, :cond_0

    goto :goto_0
.end method

.method public static getBytes(I)[B
    .locals 2
    .parameter

    .prologue
    .line 86
    sget-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 88
    if-nez v0, :cond_1

    .line 89
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->allocateBytes(I)[B

    move-result-object v0

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 94
    if-nez v0, :cond_2

    .line 95
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->allocateBytes(I)[B

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_2
    array-length v1, v0

    if-ge v1, p0, :cond_0

    .line 99
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->allocateBytes(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getChars(I)[C
    .locals 2
    .parameter

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->charsBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 30
    if-nez v0, :cond_1

    .line 31
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->allocate(I)[C

    move-result-object v0

    .line 44
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 36
    if-nez v0, :cond_2

    .line 37
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->allocate(I)[C

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_2
    array-length v1, v0

    if-ge v1, p0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ThreadLocalCache;->allocate(I)[C

    move-result-object v0

    goto :goto_0
.end method

.method public static getUTF8Decoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/alibaba/fastjson/util/ThreadLocalCache;->decoderLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    .line 16
    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/alibaba/fastjson/util/UTF8Decoder;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/UTF8Decoder;-><init>()V

    .line 18
    sget-object v1, Lcom/alibaba/fastjson/util/ThreadLocalCache;->decoderLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 20
    :cond_0
    return-object v0
.end method
