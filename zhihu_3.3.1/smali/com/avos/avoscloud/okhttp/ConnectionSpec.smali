.class public final Lcom/avos/avoscloud/okhttp/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/ConnectionSpec$1;,
        Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field private static final APPROVED_CIPHER_SUITES:[Lcom/avos/avoscloud/okhttp/CipherSuite;

.field public static final CLEARTEXT:Lcom/avos/avoscloud/okhttp/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Lcom/avos/avoscloud/okhttp/ConnectionSpec;

.field public static final MODERN_TLS:Lcom/avos/avoscloud/okhttp/ConnectionSpec;


# instance fields
.field private final cipherSuites:[Ljava/lang/String;

.field private final supportsTlsExtensions:Z

.field private final tls:Z

.field private final tlsVersions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/avos/avoscloud/okhttp/CipherSuite;

    sget-object v1, Lcom/avos/avoscloud/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/avos/avoscloud/okhttp/CipherSuite;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/avos/avoscloud/okhttp/CipherSuite;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/avos/avoscloud/okhttp/CipherSuite;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avos/avoscloud/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/avos/avoscloud/okhttp/CipherSuite;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/avos/avoscloud/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/avos/avoscloud/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/avos/avoscloud/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/avos/avoscloud/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avos/avoscloud/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/avos/avoscloud/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avos/avoscloud/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/avos/avoscloud/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avos/avoscloud/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/avos/avoscloud/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avos/avoscloud/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/avos/avoscloud/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avos/avoscloud/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/avos/avoscloud/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/avos/avoscloud/okhttp/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/avos/avoscloud/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/avos/avoscloud/okhttp/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/avos/avoscloud/okhttp/CipherSuite;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lcom/avos/avoscloud/okhttp/CipherSuite;

    .line 64
    new-instance v0, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    sget-object v1, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lcom/avos/avoscloud/okhttp/CipherSuite;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->cipherSuites([Lcom/avos/avoscloud/okhttp/CipherSuite;)Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v6, [Lcom/avos/avoscloud/okhttp/TlsVersion;

    sget-object v2, Lcom/avos/avoscloud/okhttp/TlsVersion;->TLS_1_2:Lcom/avos/avoscloud/okhttp/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lcom/avos/avoscloud/okhttp/TlsVersion;->TLS_1_1:Lcom/avos/avoscloud/okhttp/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lcom/avos/avoscloud/okhttp/TlsVersion;->TLS_1_0:Lcom/avos/avoscloud/okhttp/TlsVersion;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/avos/avoscloud/okhttp/TlsVersion;)Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->build()Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    .line 71
    new-instance v0, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;

    sget-object v1, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;-><init>(Lcom/avos/avoscloud/okhttp/ConnectionSpec;)V

    new-array v1, v3, [Lcom/avos/avoscloud/okhttp/TlsVersion;

    sget-object v2, Lcom/avos/avoscloud/okhttp/TlsVersion;->TLS_1_0:Lcom/avos/avoscloud/okhttp/TlsVersion;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/avos/avoscloud/okhttp/TlsVersion;)Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->build()Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->COMPATIBLE_TLS:Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    .line 77
    new-instance v0, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;

    invoke-direct {v0, v4}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->build()Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    return-void
.end method

.method private constructor <init>(Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    #getter for: Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->tls:Z
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->access$000(Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tls:Z

    .line 86
    #getter for: Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->access$100(Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 87
    #getter for: Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->access$200(Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 88
    #getter for: Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->access$300(Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;Lcom/avos/avoscloud/okhttp/ConnectionSpec$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/ConnectionSpec;-><init>(Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/okhttp/ConnectionSpec;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tls:Z

    return v0
.end method

.method static synthetic access$500(Lcom/avos/avoscloud/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/avos/avoscloud/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/avos/avoscloud/okhttp/ConnectionSpec;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method private static nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 198
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 202
    invoke-static {p1, v3}, Lcom/avos/avoscloud/okhttp/internal/Util;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/avos/avoscloud/okhttp/ConnectionSpec;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const-class v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/avos/avoscloud/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 153
    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, Lcom/avos/avoscloud/okhttp/internal/Util;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-static {v1, v2}, Lcom/avos/avoscloud/okhttp/internal/Util;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_0
    new-instance v2, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;-><init>(Lcom/avos/avoscloud/okhttp/ConnectionSpec;)V

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/ConnectionSpec$Builder;->build()Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method apply(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    move-result-object v0

    .line 131
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v1, v0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 135
    iget-object v0, v0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 137
    :cond_1
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/CipherSuite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lcom/avos/avoscloud/okhttp/CipherSuite;

    .line 103
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/CipherSuite;

    move-result-object v2

    aput-object v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_1
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 210
    instance-of v2, p1, Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    if-nez v2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    .line 213
    :cond_2
    check-cast p1, Lcom/avos/avoscloud/okhttp/ConnectionSpec;

    .line 214
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tls:Z

    iget-boolean v3, p1, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tls:Z

    if-ne v2, v3, :cond_0

    .line 216
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tls:Z

    if-eqz v2, :cond_3

    .line 217
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v3, p1, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v3, p1, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean v3, p1, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 222
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 226
    const/16 v0, 0x11

    .line 227
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tls:Z

    if-eqz v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 229
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 230
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 232
    :cond_0
    return v0

    .line 230
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 175
    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tls:Z

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTls()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tls:Z

    return v0
.end method

.method public supportsTlsExtensions()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/TlsVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lcom/avos/avoscloud/okhttp/TlsVersion;

    .line 117
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/TlsVersion;

    move-result-object v2

    aput-object v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_1
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tls:Z

    if-nez v0, :cond_0

    .line 237
    const-string v0, "ConnectionSpec()"

    .line 242
    :goto_0
    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_1
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", tlsVersions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_1
    const-string v0, "[all enabled]"

    goto :goto_1

    .line 241
    :cond_2
    const-string v1, "[all enabled]"

    goto :goto_2
.end method
