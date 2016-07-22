.class public Lcom/didi/car/helper/Rsa;
.super Ljava/lang/Object;
.source "Rsa.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RSA_PUBLICE:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2yF1O45xFOJ9vAziLMC4VRcne\ru4ht7vtI5sDffgEjXJE3pIjOkBdsYUothx9lrL3NF1iFmKeTCJ5UZETMF0Jmt4Uc\rA1KSeejx9eE0cDcNt8lQSmu7eMICrtkp0VhWiRPaAkPR8g0TAx+hcsCssLW83t5y\rAmCHXXfBaZ9SFKufdQIDAQAB"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptByPublic(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "content"

    .prologue
    .line 74
    :try_start_0
    const-string v9, "RSA"

    const-string v10, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2yF1O45xFOJ9vAziLMC4VRcne\ru4ht7vtI5sDffgEjXJE3pIjOkBdsYUothx9lrL3NF1iFmKeTCJ5UZETMF0Jmt4Uc\rA1KSeejx9eE0cDcNt8lQSmu7eMICrtkp0VhWiRPaAkPR8g0TAx+hcsCssLW83t5y\rAmCHXXfBaZ9SFKufdQIDAQAB"

    invoke-static {v9, v10}, Lcom/didi/car/helper/Rsa;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v7

    .line 75
    .local v7, pubkey:Ljava/security/PublicKey;
    const-string v9, "RSA/ECB/PKCS1Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 76
    .local v3, cipher:Ljavax/crypto/Cipher;
    const/4 v9, 0x2

    invoke-virtual {v3, v9, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 77
    new-instance v6, Ljava/io/ByteArrayInputStream;

    const/4 v9, 0x0

    invoke-static {p0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    .local v6, ins:Ljava/io/InputStream;
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    .local v8, writer:Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x80

    new-array v1, v9, [B

    .line 81
    .local v1, buf:[B
    :goto_0
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, bufl:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_2

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, block:[B
    array-length v9, v1

    if-ne v9, v2, :cond_1

    .line 84
    move-object v0, v1

    .line 91
    :cond_0
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 94
    .end local v0           #block:[B
    .end local v1           #buf:[B
    .end local v2           #bufl:I
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v6           #ins:Ljava/io/InputStream;
    .end local v7           #pubkey:Ljava/security/PublicKey;
    .end local v8           #writer:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 95
    .local v4, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    .end local v4           #e:Ljava/lang/Exception;
    :goto_1
    return-object v9

    .line 86
    .restart local v0       #block:[B
    .restart local v1       #buf:[B
    .restart local v2       #bufl:I
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v6       #ins:Ljava/io/InputStream;
    .restart local v7       #pubkey:Ljava/security/PublicKey;
    .restart local v8       #writer:Ljava/io/ByteArrayOutputStream;
    :cond_1
    new-array v0, v2, [B

    .line 87
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v2, :cond_0

    .line 88
    aget-byte v9, v1, v5

    aput-byte v9, v0, v5

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 93
    .end local v0           #block:[B
    .end local v5           #i:I
    :cond_2
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "utf-8"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static encryptByPublic(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "content"

    .prologue
    .line 49
    :try_start_0
    const-string v6, "RSA"

    const-string v7, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2yF1O45xFOJ9vAziLMC4VRcne\ru4ht7vtI5sDffgEjXJE3pIjOkBdsYUothx9lrL3NF1iFmKeTCJ5UZETMF0Jmt4Uc\rA1KSeejx9eE0cDcNt8lQSmu7eMICrtkp0VhWiRPaAkPR8g0TAx+hcsCssLW83t5y\rAmCHXXfBaZ9SFKufdQIDAQAB"

    invoke-static {v6, v7}, Lcom/didi/car/helper/Rsa;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    .line 51
    .local v4, pubkey:Ljava/security/PublicKey;
    const-string v6, "RSA/ECB/PKCS1Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 52
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 54
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 55
    .local v3, plaintext:[B
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 57
    .local v2, output:[B
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #output:[B
    .end local v3           #plaintext:[B
    .end local v4           #pubkey:Ljava/security/PublicKey;
    :goto_0
    return-object v5

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .parameter "algorithm"
    .parameter "bysKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 35
    .local v0, decodedKey:[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 37
    .local v2, x509:Ljava/security/spec/X509EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 38
    .local v1, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method
