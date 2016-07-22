.class public Lcom/facebook/cache/disk/DefaultDiskStorage;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/disk/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/DefaultDiskStorage$c;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$b;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$d;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$a;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;
    }
.end annotation


# static fields
.field static final a:J

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Lcom/facebook/cache/common/CacheErrorLogger;

.field private final f:Lcom/facebook/common/time/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    const-class v0, Lcom/facebook/cache/disk/DefaultDiskStorage;

    sput-object v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:Ljava/lang/Class;

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->a:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/facebook/cache/common/CacheErrorLogger;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Ljava/io/File;

    .line 101
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Ljava/io/File;

    invoke-static {p2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    .line 102
    iput-object p3, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->e:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 103
    invoke-direct {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->d()V

    .line 104
    invoke-static {}, Lcom/facebook/common/time/c;->b()Lcom/facebook/common/time/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->f:Lcom/facebook/common/time/a;

    .line 105
    return-void
.end method

.method private a(Ljava/io/File;)J
    .locals 3
    .parameter

    .prologue
    .line 460
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    const-wide/16 v0, 0x0

    .line 469
    :cond_0
    :goto_0
    return-wide v0

    .line 464
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 465
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 469
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->b(Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    return-object v0
.end method

.method static a(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v1, "%s.ols%d.%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "v2"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x64

    .line 113
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 114
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 109
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 336
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/file/FileUtils;->a(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->e:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v3, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:Ljava/lang/Class;

    invoke-interface {v1, v2, v3, p2, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    throw v0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 438
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 440
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 441
    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->f:Lcom/facebook/common/time/a;

    invoke-interface {v2}, Lcom/facebook/common/time/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 443
    :cond_0
    return v1
.end method

.method private b(Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$c;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 579
    invoke-static {p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$c;->b(Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$c;

    move-result-object v0

    .line 580
    if-nez v0, :cond_0

    .line 585
    :goto_0
    return-object v1

    .line 583
    :cond_0
    iget-object v2, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$c;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 584
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 585
    if-eqz v2, :cond_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Ljava/io/File;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/common/time/a;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->f:Lcom/facebook/common/time/a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter

    .prologue
    .line 228
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 130
    const/4 v1, 0x0

    .line 131
    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    :goto_0
    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/file/FileUtils;->a(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_1
    return-void

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Ljava/io/File;

    invoke-static {v1}, Lcom/facebook/common/file/a;->b(Ljava/io/File;)Z

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 143
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->e:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version directory could not be created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/cache/disk/e$a;)J
    .locals 2
    .parameter

    .prologue
    .line 449
    check-cast p1, Lcom/facebook/cache/disk/DefaultDiskStorage$b;

    .line 450
    invoke-virtual {p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->b()Lcom/facebook/a/b;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Lcom/facebook/a/b;->c()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)Lcom/facebook/a/b;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-virtual {p2}, Lcom/facebook/a/b;->c()Ljava/io/File;

    move-result-object v0

    .line 380
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 383
    :try_start_0
    invoke-static {v0, v1}, Lcom/facebook/common/file/FileUtils;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$RenameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->f:Lcom/facebook/common/time/a;

    invoke-interface {v0}, Lcom/facebook/common/time/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 407
    :cond_0
    invoke-static {v1}, Lcom/facebook/a/b;->a(Ljava/io/File;)Lcom/facebook/a/b;

    move-result-object v0

    return-object v0

    .line 384
    :catch_0
    move-exception v1

    .line 386
    invoke-virtual {v1}, Lcom/facebook/common/file/FileUtils$RenameException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 387
    if-nez v0, :cond_1

    .line 388
    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 397
    :goto_0
    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->e:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:Ljava/lang/Class;

    const-string v4, "commit"

    invoke-interface {v2, v0, v3, v4, v1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    throw v1

    .line 389
    :cond_1
    instance-of v2, v0, Lcom/facebook/common/file/FileUtils$ParentDirNotFoundException;

    if-eqz v2, :cond_2

    .line 390
    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_0

    .line 392
    :cond_2
    instance-of v0, v0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_3

    .line 393
    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_0

    .line 395
    :cond_3
    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/a/b;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 353
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$c;

    sget-object v1, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->TEMP:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage$c;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V

    .line 354
    iget-object v1, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$c;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 355
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    const-string v2, "createTemporary"

    invoke-direct {p0, v1, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 360
    :cond_0
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage$c;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 361
    invoke-static {v0}, Lcom/facebook/a/b;->a(Ljava/io/File;)Lcom/facebook/a/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->e:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_TEMPFILE:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v3, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:Ljava/lang/Class;

    const-string v4, "createTemporary"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    throw v0
.end method

.method a(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter

    .prologue
    .line 209
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->c:Ljava/io/File;

    new-instance v1, Lcom/facebook/cache/disk/DefaultDiskStorage$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage$d;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V

    invoke-static {v0, v1}, Lcom/facebook/common/file/a;->a(Ljava/io/File;Lcom/facebook/common/file/b;)V

    .line 325
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/a/b;Lcom/facebook/cache/common/e;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-virtual {p2}, Lcom/facebook/a/b;->c()Ljava/io/File;

    move-result-object v0

    .line 162
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :try_start_1
    new-instance v2, Lcom/facebook/common/internal/c;

    invoke-direct {v2, v1}, Lcom/facebook/common/internal/c;-><init>(Ljava/io/OutputStream;)V

    .line 175
    invoke-interface {p3, v2}, Lcom/facebook/cache/common/e;->a(Ljava/io/OutputStream;)V

    .line 178
    invoke-virtual {v2}, Lcom/facebook/common/internal/c;->flush()V

    .line 179
    invoke-virtual {v2}, Lcom/facebook/common/internal/c;->a()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 184
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;-><init>(JJ)V

    throw v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->e:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_UPDATE_FILE_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v3, Lcom/facebook/cache/disk/DefaultDiskStorage;->b:Ljava/lang/Class;

    const-string v4, "updateResource"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    throw v0

    .line 184
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 191
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/a/b;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->f:Lcom/facebook/common/time/a;

    invoke-interface {v1}, Lcom/facebook/common/time/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 415
    invoke-static {v0}, Lcom/facebook/a/b;->a(Ljava/io/File;)Lcom/facebook/a/b;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 422
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$c;

    sget-object v1, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->CONTENT:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage$c;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;Ljava/lang/String;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V

    .line 423
    iget-object v1, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$c;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {v0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/cache/disk/e$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage$a;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V

    .line 529
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->d:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/facebook/common/file/a;->a(Ljava/io/File;Lcom/facebook/common/file/b;)V

    .line 530
    invoke-virtual {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage$a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
