.class public Lcom/avos/avoscloud/signature/AES;
.super Ljava/lang/Object;
.source "AES.java"


# static fields
.field private static final CIPHERMODEPADDING:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final HASH_ITERATIONS:I = 0x2710

.field private static final KEY_GENERATION_ALG:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final KEY_LENGTH:I = 0x100


# instance fields
.field private IV:Ljavax/crypto/spec/IvParameterSpec;

.field private humanPassphrase:[C

.field private iv:[B

.field private keyfactory:Ljavax/crypto/SecretKeyFactory;

.field private myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

.field private salt:[B

.field private sk:Ljavax/crypto/SecretKey;

.field private skforAES:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "QxciDjdHjuAIf8VCsqhmGK3OZV7pBQTZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/signature/AES;->humanPassphrase:[C

    .line 93
    new-array v0, v6, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/avos/avoscloud/signature/AES;->salt:[B

    .line 99
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v1, p0, Lcom/avos/avoscloud/signature/AES;->humanPassphrase:[C

    iget-object v2, p0, Lcom/avos/avoscloud/signature/AES;->salt:[B

    const/16 v3, 0x2710

    const/16 v4, 0x100

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    iput-object v0, p0, Lcom/avos/avoscloud/signature/AES;->myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

    .line 102
    iput-object v5, p0, Lcom/avos/avoscloud/signature/AES;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    .line 103
    iput-object v5, p0, Lcom/avos/avoscloud/signature/AES;->sk:Ljavax/crypto/SecretKey;

    .line 104
    iput-object v5, p0, Lcom/avos/avoscloud/signature/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    .line 105
    new-array v0, v6, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/avos/avoscloud/signature/AES;->iv:[B

    .line 112
    :try_start_0
    const-string v0, "PBKDF2WithHmacSHA1"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/signature/AES;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    .line 113
    iget-object v0, p0, Lcom/avos/avoscloud/signature/AES;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    iget-object v1, p0, Lcom/avos/avoscloud/signature/AES;->myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/signature/AES;->sk:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/signature/AES;->sk:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 130
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/avos/avoscloud/signature/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    .line 134
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lcom/avos/avoscloud/signature/AES;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v0, p0, Lcom/avos/avoscloud/signature/AES;->IV:Ljavax/crypto/spec/IvParameterSpec;

    .line 136
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v0, "AESdemo"

    const-string v1, "no key factory support for PBEWITHSHAANDTWOFISH-CBC"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    .line 118
    const-string v0, "AESdemo"

    const-string v1, "invalid key spec for PBEWITHSHAANDTWOFISH-CBC"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    .line 105
    :array_1
    .array-data 0x1
        0xat
        0x1t
        0xbt
        0x5t
        0x4t
        0xft
        0x7t
        0x9t
        0x17t
        0x3t
        0x1t
        0x6t
        0x8t
        0xct
        0xdt
        0x5bt
    .end array-data
.end method

.method private addPadding([B)[B
    .locals 4
    .parameter

    .prologue
    .line 158
    .line 159
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x10

    .line 162
    if-nez v0, :cond_0

    const/16 v0, 0x10

    .line 165
    :cond_0
    array-length v1, p1

    add-int/2addr v1, v0

    new-array v2, v1, [B

    .line 166
    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 167
    aget-byte v3, p1, v1

    aput-byte v3, v2, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    array-length v1, p1

    :goto_1
    array-length v3, p1

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_2

    .line 170
    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_2
    return-object v2
.end method

.method private decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 215
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 216
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v0, "AESdemo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no cipher getinstance support for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    .line 220
    const-string v0, "AESdemo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no cipher getinstance support for padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 221
    :catch_2
    move-exception v0

    .line 222
    const-string v0, "AESdemo"

    const-string v1, "invalid key exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    :catch_3
    move-exception v0

    .line 224
    const-string v0, "AESdemo"

    const-string v1, "invalid algorithm parameter exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    :catch_4
    move-exception v0

    .line 226
    const-string v0, "AESdemo"

    const-string v1, "illegal block size exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    :catch_5
    move-exception v0

    .line 228
    const-string v1, "AESdemo"

    const-string v2, "bad padding exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1
.end method

.method private dropPadding([B)[B
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 178
    .line 179
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    .line 183
    array-length v2, p1

    sub-int v0, v2, v0

    new-array v2, v0, [B

    move v0, v1

    .line 184
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 185
    aget-byte v3, p1, v0

    aput-byte v3, v2, v0

    .line 186
    aput-byte v1, p1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return-object v2
.end method

.method private encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 195
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v0, "AESdemo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no cipher getinstance support for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :catch_1
    move-exception v0

    .line 199
    const-string v0, "AESdemo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no cipher getinstance support for padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    :catch_2
    move-exception v0

    .line 201
    const-string v0, "AESdemo"

    const-string v1, "invalid key exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    :catch_3
    move-exception v0

    .line 203
    const-string v0, "AESdemo"

    const-string v1, "invalid algorithm parameter exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 204
    :catch_4
    move-exception v0

    .line 205
    const-string v0, "AESdemo"

    const-string v1, "illegal block size exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    :catch_5
    move-exception v0

    .line 207
    const-string v0, "AESdemo"

    const-string v1, "bad padding exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 146
    invoke-static {p1}, Lcom/avos/avoscloud/signature/Base64Decoder;->decodeToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/String;

    const-string v2, "AES/CBC/PKCS7Padding"

    iget-object v3, p0, Lcom/avos/avoscloud/signature/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/avos/avoscloud/signature/AES;->IV:Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/avos/avoscloud/signature/AES;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 148
    return-object v1
.end method

.method public encrypt([B)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 140
    const-string v0, "AES/CBC/PKCS7Padding"

    iget-object v1, p0, Lcom/avos/avoscloud/signature/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/avos/avoscloud/signature/AES;->IV:Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/avos/avoscloud/signature/AES;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/avos/avoscloud/signature/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0
.end method
