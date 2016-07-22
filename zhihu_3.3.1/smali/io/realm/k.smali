.class public final Lio/realm/k;
.super Lio/realm/c;
.source "Realm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/k$a;
    }
.end annotation


# static fields
.field private static k:Lio/realm/n;


# instance fields
.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/q;",
            ">;",
            "Lio/realm/internal/Table;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/n;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lio/realm/c;-><init>(Lio/realm/n;Z)V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/k;->j:Ljava/util/Map;

    .line 139
    return-void
.end method

.method static a(Lio/realm/n;Lio/realm/internal/a;)Lio/realm/k;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 248
    :try_start_0
    invoke-static {p0, p1}, Lio/realm/k;->b(Lio/realm/n;Lio/realm/internal/a;)Lio/realm/k;
    :try_end_0
    .catch Lio/realm/exceptions/RealmMigrationNeededException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {p0}, Lio/realm/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {p0}, Lio/realm/k;->d(Lio/realm/n;)Z

    .line 262
    :goto_1
    invoke-static {p0, p1}, Lio/realm/k;->b(Lio/realm/n;Lio/realm/internal/a;)Lio/realm/k;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_0
    :try_start_1
    invoke-static {p0}, Lio/realm/k;->c(Lio/realm/n;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 256
    :catch_1
    move-exception v0

    .line 258
    new-instance v1, Lio/realm/exceptions/RealmIOException;

    invoke-direct {v1, v0}, Lio/realm/exceptions/RealmIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lio/realm/q;Z)Lio/realm/q;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/q;",
            ">(TE;Z)TE;"
        }
    .end annotation

    .prologue
    .line 1394
    invoke-virtual {p0}, Lio/realm/k;->f()V

    .line 1395
    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/n;

    invoke-virtual {v0}, Lio/realm/n;->h()Lio/realm/internal/j;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v1}, Lio/realm/internal/j;->a(Lio/realm/k;Lio/realm/q;ZLjava/util/Map;)Lio/realm/q;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1493
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    new-instance v0, Lio/realm/exceptions/RealmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve the canonical path to the Realm file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lio/realm/k;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 297
    invoke-virtual {p0}, Lio/realm/k;->i()J

    move-result-wide v4

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lio/realm/k;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 301
    cmp-long v0, v4, v10

    if-nez v0, :cond_4

    .line 302
    const/4 v1, 0x1

    .line 303
    :try_start_1
    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/n;

    invoke-virtual {v0}, Lio/realm/n;->d()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lio/realm/k;->a(J)V

    .line 306
    :goto_0
    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/n;

    invoke-virtual {v0}, Lio/realm/n;->h()Lio/realm/internal/j;

    move-result-object v3

    .line 307
    invoke-virtual {v3}, Lio/realm/internal/j;->a()Ljava/util/Set;

    move-result-object v0

    .line 309
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 310
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 312
    cmp-long v8, v4, v10

    if-nez v8, :cond_0

    .line 313
    iget-object v8, p0, Lio/realm/k;->e:Lio/realm/internal/l;

    invoke-virtual {v8}, Lio/realm/internal/l;->g()Lio/realm/internal/d;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Lio/realm/internal/j;->a(Ljava/lang/Class;Lio/realm/internal/d;)Lio/realm/internal/Table;

    .line 315
    :cond_0
    iget-object v8, p0, Lio/realm/k;->e:Lio/realm/internal/l;

    invoke-virtual {v8}, Lio/realm/internal/l;->g()Lio/realm/internal/d;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Lio/realm/internal/j;->b(Ljava/lang/Class;Lio/realm/internal/d;)Lio/realm/internal/b;

    move-result-object v8

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 319
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 320
    invoke-virtual {p0, v2, v9}, Lio/realm/k;->a(ZLjava/lang/Runnable;)V

    .line 322
    :goto_3
    throw v0

    .line 317
    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/realm/k;->g:Lio/realm/u;

    new-instance v3, Lio/realm/internal/a;

    invoke-direct {v3, v6}, Lio/realm/internal/a;-><init>(Ljava/util/Map;)V

    iput-object v3, v0, Lio/realm/u;->a:Lio/realm/internal/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    if-eqz v1, :cond_2

    .line 320
    invoke-virtual {p0, v2, v9}, Lio/realm/k;->a(ZLjava/lang/Runnable;)V

    .line 325
    :goto_4
    return-void

    .line 322
    :cond_2
    invoke-virtual {p0}, Lio/realm/k;->e()V

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lio/realm/k;->e()V

    goto :goto_3

    .line 319
    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public static a(Lio/realm/n;Lio/realm/p;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1454
    new-instance v0, Lio/realm/k$2;

    invoke-direct {v0}, Lio/realm/k$2;-><init>()V

    invoke-static {p0, p1, v0}, Lio/realm/c;->a(Lio/realm/n;Lio/realm/p;Lio/realm/c$a;)V

    .line 1459
    return-void
.end method

.method public static b(Lio/realm/n;)Lio/realm/k;
    .locals 2
    .parameter

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    const-class v0, Lio/realm/k;

    invoke-static {p0, v0}, Lio/realm/RealmCache;->a(Lio/realm/n;Ljava/lang/Class;)Lio/realm/c;

    move-result-object v0

    check-cast v0, Lio/realm/k;

    return-object v0
.end method

.method static b(Lio/realm/n;Lio/realm/internal/a;)Lio/realm/k;
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 268
    :goto_0
    new-instance v3, Lio/realm/k;

    invoke-direct {v3, p0, v0}, Lio/realm/k;-><init>(Lio/realm/n;Z)V

    .line 269
    invoke-virtual {v3}, Lio/realm/k;->i()J

    move-result-wide v4

    .line 270
    invoke-virtual {p0}, Lio/realm/n;->d()J

    move-result-wide v6

    .line 271
    cmp-long v0, v4, v10

    if-eqz v0, :cond_1

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    if-nez p1, :cond_1

    .line 272
    invoke-virtual {v3}, Lio/realm/k;->j()V

    .line 273
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/n;->i()Ljava/lang/String;

    move-result-object v3

    const-string v8, "Realm on disk need to migrate from v%s to v%s"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 267
    goto :goto_0

    .line 275
    :cond_1
    cmp-long v0, v4, v10

    if-eqz v0, :cond_2

    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    if-nez p1, :cond_2

    .line 276
    invoke-virtual {v3}, Lio/realm/k;->j()V

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Realm on disk is newer than the one specified: v%s vs. v%s"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_2
    if-nez p1, :cond_3

    .line 283
    :try_start_0
    invoke-static {v3}, Lio/realm/k;->a(Lio/realm/k;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_1
    return-object v3

    .line 284
    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v3}, Lio/realm/k;->j()V

    .line 286
    throw v0

    .line 289
    :cond_3
    iget-object v0, v3, Lio/realm/k;->g:Lio/realm/u;

    iput-object p1, v0, Lio/realm/u;->a:Lio/realm/internal/a;

    goto :goto_1
.end method

.method public static c(Lio/realm/n;)V
    .locals 1
    .parameter

    .prologue
    .line 1441
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/realm/k;->a(Lio/realm/n;Lio/realm/p;)V

    .line 1442
    return-void
.end method

.method private c(Lio/realm/q;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/q;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    .line 1404
    if-nez p1, :cond_0

    .line 1405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null objects cannot be copied into Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1407
    :cond_0
    return-void
.end method

.method public static d(Lio/realm/n;)Z
    .locals 1
    .parameter

    .prologue
    .line 1469
    invoke-static {p0}, Lio/realm/c;->a(Lio/realm/n;)Z

    move-result v0

    return v0
.end method

.method private e(Ljava/lang/Class;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1410
    invoke-virtual {p0, p1}, Lio/realm/k;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A RealmObject with no @PrimaryKey cannot be updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    :cond_0
    return-void
.end method

.method public static n()Lio/realm/k;
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lio/realm/k;->k:Lio/realm/n;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No default RealmConfiguration was found. Call setDefaultConfiguration() first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    sget-object v0, Lio/realm/k;->k:Lio/realm/n;

    const-class v1, Lio/realm/k;

    invoke-static {v0, v1}, Lio/realm/RealmCache;->a(Lio/realm/n;Ljava/lang/Class;)Lio/realm/c;

    move-result-object v0

    check-cast v0, Lio/realm/k;

    return-object v0
.end method

.method public static o()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1519
    const-string v1, "io.realm.DefaultRealmModule"

    .line 1523
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1524
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 1525
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1526
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 1528
    :goto_0
    return-object v0

    .line 1527
    :catch_0
    move-exception v0

    .line 1528
    const/4 v0, 0x0

    goto :goto_0

    .line 1529
    :catch_1
    move-exception v0

    .line 1530
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1531
    :catch_2
    move-exception v0

    .line 1532
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1533
    :catch_3
    move-exception v0

    .line 1534
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public a(Lio/realm/k$a;Lio/realm/k$a$b;Lio/realm/k$a$a;)Lio/realm/l;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1266
    invoke-virtual {p0}, Lio/realm/k;->f()V

    .line 1268
    if-nez p1, :cond_0

    .line 1269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transaction should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    iget-object v0, p0, Lio/realm/k;->h:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 1275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your Realm is opened from a thread without a Looper and you provided a callback, we need a Handler to invoke your callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1281
    :cond_2
    invoke-virtual {p0}, Lio/realm/k;->h()Lio/realm/n;

    move-result-object v2

    .line 1283
    sget-object v6, Lio/realm/k;->b:Lio/realm/internal/async/e;

    new-instance v0, Lio/realm/k$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/realm/k$1;-><init>(Lio/realm/k;Lio/realm/n;Lio/realm/k$a;Lio/realm/k$a$b;Lio/realm/k$a$a;)V

    invoke-virtual {v6, v0}, Lio/realm/internal/async/e;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1377
    new-instance v1, Lio/realm/l;

    invoke-direct {v1, v0}, Lio/realm/l;-><init>(Ljava/util/concurrent/Future;)V

    return-object v1
.end method

.method public a(Lio/realm/q;)Lio/realm/q;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/q;",
            ">(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 745
    invoke-direct {p0, p1}, Lio/realm/k;->c(Lio/realm/q;)V

    .line 746
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/realm/k;->a(Lio/realm/q;Z)Lio/realm/q;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lio/realm/q;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/q;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 706
    invoke-virtual {p0}, Lio/realm/k;->f()V

    .line 707
    invoke-virtual {p0, p1}, Lio/realm/k;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Lio/realm/internal/Table;->d()J

    move-result-wide v0

    .line 709
    invoke-virtual {p0, p1, v0, v1}, Lio/realm/k;->a(Ljava/lang/Class;J)Lio/realm/q;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/q;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/q;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 723
    invoke-virtual {p0, p1}, Lio/realm/k;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 724
    invoke-virtual {v0, p2}, Lio/realm/internal/Table;->a(Ljava/lang/Object;)J

    move-result-wide v0

    .line 725
    invoke-virtual {p0, p1, v0, v1}, Lio/realm/k;->a(Ljava/lang/Class;J)Lio/realm/q;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1}, Lio/realm/c;->a(Z)V

    return-void
.end method

.method public bridge synthetic a()Z
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lio/realm/c;->a()Z

    move-result v0

    return v0
.end method

.method public b(Lio/realm/q;)Lio/realm/q;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/q;",
            ">(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lio/realm/k;->c(Lio/realm/q;)V

    .line 764
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/k;->e(Ljava/lang/Class;)V

    .line 765
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/realm/k;->a(Lio/realm/q;Z)Lio/realm/q;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lio/realm/s;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/q;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lio/realm/s",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 936
    invoke-virtual {p0}, Lio/realm/k;->f()V

    .line 937
    invoke-static {p0, p1}, Lio/realm/s;->a(Lio/realm/k;Ljava/lang/Class;)Lio/realm/s;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Class;)Lio/realm/t;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/q;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lio/realm/t",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 949
    invoke-virtual {p0, p1}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/s;->a()Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lio/realm/c;->c()V

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lio/realm/c;->close()V

    return-void
.end method

.method public d(Ljava/lang/Class;)Lio/realm/internal/Table;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/q;",
            ">;)",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1501
    iget-object v0, p0, Lio/realm/k;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    .line 1502
    if-nez v0, :cond_0

    .line 1503
    invoke-static {p1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 1504
    iget-object v0, p0, Lio/realm/k;->e:Lio/realm/internal/l;

    iget-object v2, p0, Lio/realm/k;->d:Lio/realm/n;

    invoke-virtual {v2}, Lio/realm/n;->h()Lio/realm/internal/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/internal/j;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/internal/l;->a(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1505
    iget-object v2, p0, Lio/realm/k;->j:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    :cond_0
    return-object v0
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lio/realm/c;->d()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lio/realm/c;->e()V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lio/realm/k;->e:Lio/realm/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/k;->e:Lio/realm/internal/l;

    invoke-virtual {v0}, Lio/realm/internal/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remember to call close() on all Realm instances. Realm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/realm/k;->d:Lio/realm/n;

    .line 153
    invoke-virtual {v1}, Lio/realm/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is being finalized without being closed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "this can lead to running out of native memory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lio/realm/internal/a/b;->b(Ljava/lang/String;)V

    .line 157
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 158
    return-void
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lio/realm/c;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lio/realm/n;
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lio/realm/c;->h()Lio/realm/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()J
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lio/realm/c;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic k()Z
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lio/realm/c;->k()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic l()Lio/realm/u;
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lio/realm/c;->l()Lio/realm/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lio/realm/c;->m()V

    return-void
.end method
