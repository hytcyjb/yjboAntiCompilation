.class public Lcom/tencent/open/utils/g;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 414
    const-string v0, "shareToQQ"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/16 v0, 0x2777

    .line 429
    :goto_0
    return v0

    .line 416
    :cond_0
    const-string v0, "shareToQzone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    const/16 v0, 0x2778

    goto :goto_0

    .line 418
    :cond_1
    const-string v0, "addToQQFavorites"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    const/16 v0, 0x2779

    goto :goto_0

    .line 420
    :cond_2
    const-string v0, "sendToMyComputer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    const/16 v0, 0x277a

    goto :goto_0

    .line 422
    :cond_3
    const-string v0, "shareToTroopBar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 423
    const/16 v0, 0x277b

    goto :goto_0

    .line 424
    :cond_4
    const-string v0, "action_login"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 425
    const/16 v0, 0x2b5d

    goto :goto_0

    .line 426
    :cond_5
    const-string v0, "action_request"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 427
    const/16 v0, 0x2774

    goto :goto_0

    .line 429
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 89
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    move v0, v1

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    move v0, v2

    .line 94
    goto :goto_0

    .line 97
    :cond_3
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 98
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v3, v0

    .line 101
    :goto_1
    :try_start_0
    array-length v6, v4

    if-ge v3, v6, :cond_6

    array-length v6, v5

    if-ge v3, v6, :cond_6

    .line 102
    aget-object v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 103
    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 104
    if-ge v6, v7, :cond_4

    move v0, v2

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    if-le v6, v7, :cond_5

    move v0, v1

    .line 107
    goto :goto_0

    .line 101
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    :cond_6
    array-length v4, v4

    if-le v4, v3, :cond_7

    move v0, v1

    .line 111
    goto :goto_0

    .line 112
    :cond_7
    array-length v1, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v1, v3, :cond_0

    move v0, v2

    .line 113
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 401
    const-wide/16 v0, 0x0

    .line 403
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 404
    :goto_0
    array-length v3, v2

    invoke-virtual {p0, v2, v6, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 405
    invoke-virtual {p1, v2, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 406
    int-to-long v4, v3

    add-long/2addr v0, v4

    goto :goto_0

    .line 409
    :cond_0
    const-string v2, "openSDK_LOG.SystemUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->copy, copyed size is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-wide v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 434
    const/16 v0, 0x2777

    if-ne p0, v0, :cond_0

    .line 435
    const-string v0, "shareToQQ"

    .line 449
    :goto_0
    return-object v0

    .line 436
    :cond_0
    const/16 v0, 0x2778

    if-ne p0, v0, :cond_1

    .line 437
    const-string v0, "shareToQzone"

    goto :goto_0

    .line 438
    :cond_1
    const/16 v0, 0x2779

    if-ne p0, v0, :cond_2

    .line 439
    const-string v0, "addToQQFavorites"

    goto :goto_0

    .line 440
    :cond_2
    const/16 v0, 0x277a

    if-ne p0, v0, :cond_3

    .line 441
    const-string v0, "sendToMyComputer"

    goto :goto_0

    .line 442
    :cond_3
    const/16 v0, 0x277b

    if-ne p0, v0, :cond_4

    .line 443
    const-string v0, "shareToTroopBar"

    goto :goto_0

    .line 444
    :cond_4
    const/16 v0, 0x2b5d

    if-ne p0, v0, :cond_5

    .line 445
    const-string v0, "action_login"

    goto :goto_0

    .line 446
    :cond_5
    const/16 v0, 0x2774

    if-ne p0, v0, :cond_6

    .line 447
    const-string v0, "action_request"

    goto :goto_0

    .line 449
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 72
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 73
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 197
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 202
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 203
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 308
    const-string v3, "openSDK_LOG.SystemUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->extractSecureLib, libName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/tencent/open/utils/d;->a()Landroid/content/Context;

    move-result-object v4

    .line 310
    if-nez v4, :cond_1

    .line 311
    const-string v1, "openSDK_LOG.SystemUtils"

    const-string v2, "-->extractSecureLib, global context is null. "

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    const-string v3, "secure_lib"

    invoke-virtual {v4, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 317
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    .line 319
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 320
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 322
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 339
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v4, p1, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 341
    invoke-static {v3, v2}, Lcom/tencent/open/utils/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 343
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 344
    const-string v5, "version"

    invoke-interface {v4, v5, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 350
    if-eqz v3, :cond_3

    .line 352
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 357
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 359
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_3
    move v0, v1

    .line 362
    goto :goto_0

    .line 323
    :catch_0
    move-exception v3

    .line 324
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 328
    :cond_5
    const-string v3, "version"

    invoke-interface {v5, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 329
    const-string v6, "openSDK_LOG.SystemUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-->extractSecureLib, libVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | oldVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    if-ne p2, v3, :cond_2

    move v0, v1

    .line 331
    goto :goto_0

    .line 347
    :catch_1
    move-exception v1

    move-object v3, v2

    .line 348
    :goto_4
    :try_start_5
    const-string v4, "openSDK_LOG.SystemUtils"

    const-string v5, "-->extractSecureLib, when copy lib execption."

    invoke-static {v4, v5, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 350
    if-eqz v3, :cond_6

    .line 352
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 357
    :cond_6
    :goto_5
    if-eqz v2, :cond_0

    .line 359
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 360
    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 350
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_6
    if-eqz v3, :cond_7

    .line 352
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 357
    :cond_7
    :goto_7
    if-eqz v2, :cond_8

    .line 359
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 362
    :cond_8
    :goto_8
    throw v0

    .line 353
    :catch_3
    move-exception v0

    goto :goto_2

    .line 360
    :catch_4
    move-exception v0

    goto :goto_3

    .line 353
    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_7

    .line 360
    :catch_7
    move-exception v1

    goto :goto_8

    .line 350
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 347
    :catch_8
    move-exception v1

    goto :goto_4
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 158
    const-string v0, "openSDK_LOG.SystemUtils"

    const-string v1, "OpenUi, getSignValidString"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, ""

    .line 161
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 163
    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 164
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 166
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 167
    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 168
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/utils/i;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 171
    const-string v4, "openSDK_LOG.SystemUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->sign: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/tencent/open/utils/i;->h(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 175
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/i;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    :try_start_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 178
    const-string v1, "openSDK_LOG.SystemUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->signEncryped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    :goto_0
    return-object v0

    .line 179
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 180
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    const-string v2, "openSDK_LOG.SystemUtils"

    const-string v3, "OpenUi, getSignValidString error"

    invoke-static {v2, v3, v1}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 179
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 231
    const-string v0, "com.tencent.mobileqq"

    invoke-static {p0, v0}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0, p1}, Lcom/tencent/open/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
