.class public final Lcom/google/api/client/util/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    return-void
.end method

.method public static getDefaultKeyStore()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaKeyStore()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 53
    const-string v0, "JKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public static getPkcs12KeyStore()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 58
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    return-object v0
.end method

.method public static getRsaKeyFactory()Ljava/security/KeyFactory;
    .locals 1

    .prologue
    .line 121
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getSha1WithRsaSignatureAlgorithm()Ljava/security/Signature;
    .locals 1

    .prologue
    .line 126
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static getSha256WithRsaSignatureAlgorithm()Ljava/security/Signature;
    .locals 1

    .prologue
    .line 131
    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static getX509CertificateFactory()Ljava/security/cert/CertificateFactory;
    .locals 1

    .prologue
    .line 217
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    return-object v0
.end method

.method public static loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static loadKeyStoreFromCertificates(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/io/InputStream;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    invoke-virtual {p1, p2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 250
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 251
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 252
    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method public static loadPrivateKeyFromKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-static {p0, p1, p2}, Lcom/google/api/client/util/SecurityUtils;->loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 116
    invoke-static {p0, p3, p4}, Lcom/google/api/client/util/SecurityUtils;->getPrivateKey(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static sign(Ljava/security/Signature;Ljava/security/PrivateKey;[B)[B
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 146
    invoke-virtual {p0, p2}, Ljava/security/Signature;->update([B)V

    .line 147
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public static verify(Ljava/security/Signature;Ljavax/net/ssl/X509TrustManager;Ljava/util/List;[B[B)Ljava/security/cert/X509Certificate;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Signature;",
            "Ljavax/net/ssl/X509TrustManager;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[B[B)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 184
    :try_start_0
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getX509CertificateFactory()Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 188
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/security/cert/X509Certificate;

    .line 190
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    invoke-static {v0}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 192
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 194
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 195
    instance-of v3, v0, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_0

    move-object v0, v4

    .line 212
    :goto_1
    return-object v0

    .line 185
    :catch_0
    move-exception v0

    move-object v0, v4

    .line 186
    goto :goto_1

    .line 198
    :cond_0
    add-int/lit8 v3, v1, 0x1

    check-cast v0, Ljava/security/cert/X509Certificate;

    aput-object v0, v6, v1
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v3

    .line 202
    goto :goto_0

    .line 199
    :catch_1
    move-exception v0

    move-object v0, v4

    .line 200
    goto :goto_1

    .line 204
    :cond_1
    :try_start_2
    const-string v0, "RSA"

    invoke-interface {p1, v6, v0}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 208
    aget-object v0, v6, v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 209
    invoke-static {p0, v0, p3, p4}, Lcom/google/api/client/util/SecurityUtils;->verify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    aget-object v0, v6, v2

    goto :goto_1

    .line 205
    :catch_2
    move-exception v0

    move-object v0, v4

    .line 206
    goto :goto_1

    :cond_2
    move-object v0, v4

    .line 212
    goto :goto_1
.end method

.method public static verify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 163
    invoke-virtual {p0, p3}, Ljava/security/Signature;->update([B)V

    .line 164
    invoke-virtual {p0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0
.end method
