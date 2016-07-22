.class public Lcom/facebook/soloader/a$a;
.super Lcom/facebook/soloader/d$b;
.source "ApkSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/soloader/a;

.field private c:Ljava/io/File;

.field private final d:I


# direct methods
.method constructor <init>(Lcom/facebook/soloader/a;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/facebook/soloader/a$a;->a:Lcom/facebook/soloader/a;

    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/soloader/d$b;-><init>(Lcom/facebook/soloader/d;)V

    .line 52
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/facebook/soloader/a;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/soloader/a$a;->c:Ljava/io/File;

    .line 53
    invoke-static {p1}, Lcom/facebook/soloader/a;->a(Lcom/facebook/soloader/a;)I

    move-result v0

    iput v0, p0, Lcom/facebook/soloader/a$a;->d:I

    .line 54
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 59
    iget v3, p0, Lcom/facebook/soloader/a$a;->d:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 60
    const-string v1, "ApkSoSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowing consideration of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": self-extraction preferred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return v0

    .line 64
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/facebook/soloader/a$a;->c:Ljava/io/File;

    invoke-direct {v3, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1

    .line 66
    const-string v3, "ApkSoSource"

    const-string v4, "allowing considering of %s: %s not in system lib dir"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v1

    aput-object p2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 76
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    .line 78
    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 79
    const-string v2, "ApkSoSource"

    const-string v8, "allowing consideration of %s: sysdir file length is %s, but the file is %s bytes long in the APK"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "ApkSoSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not allowing consideration of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": deferring to libdir"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 91
    goto :goto_0
.end method
