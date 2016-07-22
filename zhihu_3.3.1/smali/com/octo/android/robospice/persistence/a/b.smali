.class public abstract Lcom/octo/android/robospice/persistence/a/b;
.super Lcom/octo/android/robospice/persistence/d;
.source "InFileObjectPersisterFactory.java"

# interfaces
.implements Lcom/octo/android/robospice/persistence/a;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;

.field private c:Lcom/octo/android/robospice/persistence/c/a;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/util/List;Ljava/io/File;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/octo/android/robospice/persistence/d;-><init>(Landroid/app/Application;Ljava/util/List;)V

    .line 48
    invoke-virtual {p0, p3}, Lcom/octo/android/robospice/persistence/a/b;->a(Ljava/io/File;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/octo/android/robospice/persistence/a/b;->a(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;Ljava/io/File;)Lcom/octo/android/robospice/persistence/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/io/File;",
            ")",
            "Lcom/octo/android/robospice/persistence/a/a",
            "<TT;>;"
        }
    .end annotation
.end method

.method public a()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/octo/android/robospice/persistence/a/b;->d()Ljava/io/File;

    move-result-object v0

    .line 129
    new-instance v3, Lcom/octo/android/robospice/persistence/a/b$1;

    invoke-direct {v3, p0}, Lcom/octo/android/robospice/persistence/a/b$1;-><init>(Lcom/octo/android/robospice/persistence/a/b;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 138
    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    array-length v5, v4

    move v3, v2

    move v0, v1

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 142
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    move v0, v1

    .line 141
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 142
    goto :goto_2

    .line 144
    :cond_3
    if-nez v0, :cond_4

    array-length v0, v4

    if-nez v0, :cond_0

    .line 145
    :cond_4
    const-string v0, "Some file could not be deleted from cache."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lc/a/a/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public a(Ljava/io/File;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/octo/android/robospice/persistence/a/b;->b()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "robospice-cache"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/octo/android/robospice/persistence/a/b;->a:Ljava/io/File;

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Lcom/octo/android/robospice/persistence/exception/CacheCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The cache folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could not be created."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/octo/android/robospice/persistence/exception/CacheCreationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/octo/android/robospice/persistence/a/b;->b:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public synthetic b(Ljava/lang/Class;)Lcom/octo/android/robospice/persistence/c;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/octo/android/robospice/persistence/a/b;->c(Ljava/lang/Class;)Lcom/octo/android/robospice/persistence/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Class;)Lcom/octo/android/robospice/persistence/a/a;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/octo/android/robospice/persistence/a/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/octo/android/robospice/persistence/a/b;->a:Ljava/io/File;

    invoke-virtual {p0, p1, v0}, Lcom/octo/android/robospice/persistence/a/b;->a(Ljava/lang/Class;Ljava/io/File;)Lcom/octo/android/robospice/persistence/a/a;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/octo/android/robospice/persistence/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/octo/android/robospice/persistence/a/a;->a(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/octo/android/robospice/persistence/a/b;->c:Lcom/octo/android/robospice/persistence/c/a;

    invoke-virtual {v0, v1}, Lcom/octo/android/robospice/persistence/a/a;->a(Lcom/octo/android/robospice/persistence/c/a;)V
    :try_end_0
    .catch Lcom/octo/android/robospice/persistence/exception/CacheCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not create cache folder of factory."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()Ljava/io/File;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/octo/android/robospice/persistence/a/b;->a:Ljava/io/File;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/octo/android/robospice/persistence/a/b;->b:Ljava/lang/String;

    return-object v0
.end method
