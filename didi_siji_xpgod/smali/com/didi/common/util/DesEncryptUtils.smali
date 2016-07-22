.class public Lcom/didi/common/util/DesEncryptUtils;
.super Ljava/lang/Object;
.source "DesEncryptUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .parameter "src"

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 55
    .local v2, result:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/didi/common/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 56
    .local v4, srcByts:[B
    invoke-static {p0, v4}, Lcom/didi/common/util/DesEncryptUtils;->getDesCode(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 57
    .local v0, decodes:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #result:Ljava/lang/String;
    .local v3, result:Ljava/lang/String;
    move-object v2, v3

    .line 63
    .end local v0           #decodes:[B
    .end local v3           #result:Ljava/lang/String;
    .end local v4           #srcByts:[B
    .restart local v2       #result:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .parameter "src"

    .prologue
    .line 21
    const/4 v2, 0x0

    .line 23
    .local v2, result:Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 24
    .local v3, srcByts:[B
    invoke-static {p0, v3}, Lcom/didi/common/util/DesEncryptUtils;->getEncCode(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 25
    .local v1, encodes:[B
    invoke-static {v1}, Lcom/didi/common/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 31
    .end local v1           #encodes:[B
    .end local v3           #srcByts:[B
    :goto_0
    return-object v2

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getDesCode(Ljava/lang/String;[B)[B
    .locals 5
    .parameter "key"
    .parameter "srcByts"

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, result:[B
    :try_start_0
    const-string v3, "DES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 72
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-static {p0}, Lcom/didi/common/util/DesEncryptUtils;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 73
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 79
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :goto_0
    return-object v2

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getEncCode(Ljava/lang/String;[B)[B
    .locals 5
    .parameter "key"
    .parameter "srcByts"

    .prologue
    .line 37
    const/4 v2, 0x0

    .line 39
    .local v2, result:[B
    :try_start_0
    const-string v3, "DES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 40
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-static {p0}, Lcom/didi/common/util/DesEncryptUtils;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 41
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 47
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :goto_0
    return-object v2

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 3
    .parameter "strKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 14
    .local v0, dks:Ljavax/crypto/spec/DESKeySpec;
    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 15
    .local v1, keyFactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    return-object v2
.end method
