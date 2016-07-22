.class public Lcom/didi/ddrive/imageloader/DDriveMd5FileNameGenerator;
.super Ljava/lang/Object;
.source "DDriveMd5FileNameGenerator.java"


# static fields
.field private static final HASH_ALGORITHM:Ljava/lang/String; = "MD5"

.field private static final RADIX:I = 0x24


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "imageUri"

    .prologue
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/didi/ddrive/imageloader/DDriveMd5FileNameGenerator;->getMD5([B)[B

    move-result-object v1

    .line 29
    .local v1, md5:[B
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 30
    .local v0, bi:Ljava/math/BigInteger;
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getMD5([B)[B
    .locals 3
    .parameter "data"

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 36
    .local v1, hash:[B
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 37
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 38
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    .end local v0           #digest:Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v2

    goto :goto_0
.end method
