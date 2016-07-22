.class public final Lcom/ta/utdid2/device/c;
.super Ljava/lang/Object;
.source "UTUtdid.java"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/ta/utdid2/device/c;

.field private static final j:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/ta/utdid2/device/d;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/ta/utdid2/c/a/c;

.field private i:Lcom/ta/utdid2/c/a/c;

.field private k:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/c;->b:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/c;->c:Lcom/ta/utdid2/device/c;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".UTSystemConfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/c;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/ta/utdid2/device/c;->a:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/ta/utdid2/device/c;->e:Lcom/ta/utdid2/device/d;

    .line 32
    const-string v0, "xx_utdid_key"

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->f:Ljava/lang/String;

    .line 33
    const-string v0, "xx_utdid_domain"

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->g:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/ta/utdid2/device/c;->h:Lcom/ta/utdid2/c/a/c;

    .line 39
    iput-object v1, p0, Lcom/ta/utdid2/device/c;->i:Lcom/ta/utdid2/c/a/c;

    .line 43
    const-string v0, "[^0-9a-zA-Z=/+]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->k:Ljava/util/regex/Pattern;

    .line 46
    iput-object p1, p0, Lcom/ta/utdid2/device/c;->a:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/ta/utdid2/c/a/c;

    sget-object v1, Lcom/ta/utdid2/device/c;->j:Ljava/lang/String;

    const-string v2, "Alvin2"

    invoke-direct {v0, p1, v1, v2}, Lcom/ta/utdid2/c/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->i:Lcom/ta/utdid2/c/a/c;

    .line 50
    new-instance v0, Lcom/ta/utdid2/c/a/c;

    const-string v1, ".DataStorage"

    const-string v2, "ContextData"

    invoke-direct {v0, p1, v1, v2}, Lcom/ta/utdid2/c/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->h:Lcom/ta/utdid2/c/a/c;

    .line 52
    new-instance v0, Lcom/ta/utdid2/device/d;

    invoke-direct {v0}, Lcom/ta/utdid2/device/d;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->e:Lcom/ta/utdid2/device/d;

    .line 53
    const-string v0, "K_%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/b/a/h;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->f:Ljava/lang/String;

    .line 54
    const-string v0, "D_%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/c;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/b/a/h;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/c;->g:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ta/utdid2/device/c;
    .locals 4
    .parameter

    .prologue
    .line 73
    if-eqz p0, :cond_1

    .line 74
    sget-object v0, Lcom/ta/utdid2/device/c;->c:Lcom/ta/utdid2/device/c;

    if-nez v0, :cond_1

    .line 75
    sget-object v1, Lcom/ta/utdid2/device/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/ta/utdid2/device/c;->c:Lcom/ta/utdid2/device/c;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/ta/utdid2/device/c;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/device/c;-><init>(Landroid/content/Context;)V

    .line 78
    sput-object v0, Lcom/ta/utdid2/device/c;->c:Lcom/ta/utdid2/device/c;

    iget-object v2, v0, Lcom/ta/utdid2/device/c;->i:Lcom/ta/utdid2/c/a/c;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/ta/utdid2/device/c;->i:Lcom/ta/utdid2/c/a/c;

    const-string v3, "UTDID2"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/utdid2/b/a/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/ta/utdid2/device/c;->i:Lcom/ta/utdid2/c/a/c;

    const-string v3, "UTDID"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/utdid2/b/a/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {v0, v2}, Lcom/ta/utdid2/device/c;->a(Ljava/lang/String;)V

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    sget-object v0, Lcom/ta/utdid2/device/c;->c:Lcom/ta/utdid2/device/c;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/c;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 98
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->i:Lcom/ta/utdid2/c/a/c;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->i:Lcom/ta/utdid2/c/a/c;

    const-string v1, "UTDID2"

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->i:Lcom/ta/utdid2/c/a/c;

    const-string v1, "UTDID"

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->i:Lcom/ta/utdid2/c/a/c;

    invoke-virtual {v0}, Lcom/ta/utdid2/c/a/c;->a()Z

    .line 106
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Lcom/ta/utdid2/c/a/c;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Lcom/ta/utdid2/c/a/c;

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Lcom/ta/utdid2/c/a/c;

    iget-object v1, p0, Lcom/ta/utdid2/device/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Lcom/ta/utdid2/c/a/c;

    invoke-virtual {v0}, Lcom/ta/utdid2/c/a/c;->a()Z

    .line 123
    :cond_0
    return-void
.end method

.method private final b()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 377
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 379
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 380
    invoke-static {v0}, Lcom/ta/utdid2/b/a/d;->a(I)[B

    move-result-object v0

    .line 383
    invoke-static {v2}, Lcom/ta/utdid2/b/a/d;->a(I)[B

    move-result-object v2

    .line 384
    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 385
    invoke-virtual {v1, v2, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 386
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 387
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/b/a/f;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 394
    :goto_0
    invoke-static {v0}, Lcom/ta/utdid2/b/a/h;->b(Ljava/lang/String;)I

    move-result v0

    .line 395
    invoke-static {v0}, Lcom/ta/utdid2/b/a/d;->a(I)[B

    move-result-object v0

    .line 396
    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 397
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    const-string v3, "HmacSHA1"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v3, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/ta/utdid2/b/a/b;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/ta/utdid2/b/a/h;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ta/utdid2/b/a/d;->a(I)[B

    move-result-object v0

    .line 400
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 401
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 392
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 135
    if-nez v0, :cond_1

    .line 137
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/c;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_0
    const/16 v0, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 181
    if-nez v0, :cond_0

    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 213
    if-eqz p1, :cond_1

    .line 215
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 218
    :cond_0
    const/16 v1, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 219
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    const/4 v0, 0x1

    .line 226
    :cond_1
    return v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 246
    :cond_1
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :try_start_2
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 255
    :goto_1
    :try_start_3
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    new-instance v4, Lcom/ta/utdid2/device/e;

    invoke-direct {v4}, Lcom/ta/utdid2/device/e;-><init>()V

    .line 262
    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-static {v3}, Lcom/ta/utdid2/b/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 270
    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 273
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 250
    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_1

    .line 277
    :cond_2
    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 279
    iget-object v5, p0, Lcom/ta/utdid2/device/c;->e:Lcom/ta/utdid2/device/d;

    invoke-virtual {v5, v0}, Lcom/ta/utdid2/device/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lcom/ta/utdid2/b/a/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 282
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->d(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_2
    iget-object v3, p0, Lcom/ta/utdid2/device/c;->e:Lcom/ta/utdid2/device/d;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 291
    iput-object v3, p0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/String;

    .line 293
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->a(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 303
    :cond_3
    const/4 v0, 0x1

    move v2, v0

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->i:Lcom/ta/utdid2/c/a/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ta/utdid2/device/c;->i:Lcom/ta/utdid2/c/a/c;

    const-string v3, "UTDID2"

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/b/a/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/ta/utdid2/device/c;->e:Lcom/ta/utdid2/device/d;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 308
    :goto_3
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 309
    iget-object v1, p0, Lcom/ta/utdid2/device/c;->e:Lcom/ta/utdid2/device/d;

    invoke-virtual {v1, v0}, Lcom/ta/utdid2/device/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    if-eqz v2, :cond_5

    .line 312
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/c;->d(Ljava/lang/String;)V

    .line 315
    :cond_5
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->c(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)V

    .line 318
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 307
    goto :goto_3

    .line 323
    :cond_7
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->h:Lcom/ta/utdid2/c/a/c;

    iget-object v3, p0, Lcom/ta/utdid2/device/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-static {v3}, Lcom/ta/utdid2/b/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 325
    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 327
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->e:Lcom/ta/utdid2/device/d;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_8
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 330
    iget-object v3, p0, Lcom/ta/utdid2/device/c;->e:Lcom/ta/utdid2/device/d;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-static {v0}, Lcom/ta/utdid2/b/a/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 332
    iput-object v0, p0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/String;

    .line 333
    if-eqz v2, :cond_9

    .line 335
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->d(Ljava/lang/String;)V

    .line 338
    :cond_9
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->a(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 347
    :cond_a
    :try_start_5
    invoke-direct {p0}, Lcom/ta/utdid2/device/c;->b()[B

    move-result-object v0

    .line 348
    if-eqz v0, :cond_d

    .line 350
    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/ta/utdid2/b/a/b;->a([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/String;

    .line 351
    iget-object v3, p0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/c;->a(Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lcom/ta/utdid2/device/c;->e:Lcom/ta/utdid2/device/d;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/d;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_c

    .line 355
    if-eqz v2, :cond_b

    .line 357
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->d(Ljava/lang/String;)V

    .line 360
    :cond_b
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/c;->b(Ljava/lang/String;)V

    .line 362
    :cond_c
    iget-object v0, p0, Lcom/ta/utdid2/device/c;->d:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 364
    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_d
    move-object v0, v1

    .line 367
    goto/16 :goto_0

    :cond_e
    move-object v0, v3

    goto/16 :goto_2
.end method
