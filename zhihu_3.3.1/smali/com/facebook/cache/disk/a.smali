.class public Lcom/facebook/cache/disk/a;
.super Ljava/lang/Object;
.source "DefaultDiskStorageSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/a$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:Lcom/facebook/cache/disk/a$a;

.field private final c:I

.field private final d:Lcom/facebook/common/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/i",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Lcom/facebook/cache/common/CacheErrorLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/facebook/cache/disk/a;

    sput-object v0, Lcom/facebook/cache/disk/a;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ILcom/facebook/common/internal/i;Ljava/lang/String;Lcom/facebook/cache/common/CacheErrorLogger;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/internal/i",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/common/CacheErrorLogger;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/facebook/cache/disk/a;->c:I

    .line 58
    iput-object p4, p0, Lcom/facebook/cache/disk/a;->f:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 59
    iput-object p2, p0, Lcom/facebook/cache/disk/a;->d:Lcom/facebook/common/internal/i;

    .line 60
    iput-object p3, p0, Lcom/facebook/cache/disk/a;->e:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/facebook/cache/disk/a$a;

    invoke-direct {v0, v1, v1}, Lcom/facebook/cache/disk/a$a;-><init>(Ljava/io/File;Lcom/facebook/cache/disk/e;)V

    iput-object v0, p0, Lcom/facebook/cache/disk/a;->a:Lcom/facebook/cache/disk/a$a;

    .line 62
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/cache/disk/a;->a:Lcom/facebook/cache/disk/a$a;

    .line 82
    iget-object v1, v0, Lcom/facebook/cache/disk/a$a;->a:Lcom/facebook/cache/disk/e;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/facebook/cache/disk/a$a;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/facebook/cache/disk/a$a;->b:Ljava/io/File;

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 97
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/cache/disk/a;->d:Lcom/facebook/common/internal/i;

    invoke-interface {v0}, Lcom/facebook/common/internal/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/cache/disk/a;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/facebook/cache/disk/a;->a(Ljava/io/File;)V

    .line 99
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage;

    iget v2, p0, Lcom/facebook/cache/disk/a;->c:I

    iget-object v3, p0, Lcom/facebook/cache/disk/a;->f:Lcom/facebook/cache/common/CacheErrorLogger;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/cache/disk/DefaultDiskStorage;-><init>(Ljava/io/File;ILcom/facebook/cache/common/CacheErrorLogger;)V

    .line 100
    new-instance v2, Lcom/facebook/cache/disk/a$a;

    invoke-direct {v2, v1, v0}, Lcom/facebook/cache/disk/a$a;-><init>(Ljava/io/File;Lcom/facebook/cache/disk/e;)V

    iput-object v2, p0, Lcom/facebook/cache/disk/a;->a:Lcom/facebook/cache/disk/a$a;

    .line 101
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/facebook/cache/disk/e;
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/facebook/cache/disk/a;->b()V

    .line 75
    invoke-direct {p0}, Lcom/facebook/cache/disk/a;->d()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/facebook/cache/disk/a;->a:Lcom/facebook/cache/disk/a$a;

    iget-object v0, v0, Lcom/facebook/cache/disk/a$a;->a:Lcom/facebook/cache/disk/e;

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cache/disk/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/io/File;)V
    .locals 5
    .parameter

    .prologue
    .line 106
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/file/FileUtils;->a(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    sget-object v0, Lcom/facebook/cache/disk/a;->b:Ljava/lang/Class;

    const-string v1, "Created cache directory %s"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/d/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    iget-object v1, p0, Lcom/facebook/cache/disk/a;->f:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v3, Lcom/facebook/cache/disk/a;->b:Ljava/lang/Class;

    const-string v4, "createRootDirectoryIfNecessary"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    throw v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/cache/disk/a;->a:Lcom/facebook/cache/disk/a$a;

    iget-object v0, v0, Lcom/facebook/cache/disk/a$a;->a:Lcom/facebook/cache/disk/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/cache/disk/a;->a:Lcom/facebook/cache/disk/a$a;

    iget-object v0, v0, Lcom/facebook/cache/disk/a$a;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/facebook/cache/disk/a;->a:Lcom/facebook/cache/disk/a$a;

    iget-object v0, v0, Lcom/facebook/cache/disk/a$a;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/file/a;->b(Ljava/io/File;)Z

    .line 94
    :cond_0
    return-void
.end method
