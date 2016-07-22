.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/gq;
.super Ljava/lang/Object;
.source "QStorageManager.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static c:Lcom/tencent/tencentmap/mapsdk/maps/a/gq;


# instance fields
.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "tencentmapsdk"

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->a:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->b:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gq;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->d:Ljava/util/HashMap;

    .line 121
    iput-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->f:Ljava/lang/String;

    .line 122
    iput-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->g:Ljava/lang/String;

    .line 123
    iput-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->h:Ljava/lang/String;

    .line 124
    iput-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->i:Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->e:Landroid/content/Context;

    .line 128
    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, strPath:Ljava/lang/String;
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->g:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data/v3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "render"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->g:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->h:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data/sat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->h:Ljava/lang/String;

    .line 137
    :cond_1
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->f:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "config/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->f:Ljava/lang/String;

    .line 141
    :cond_2
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->i:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cache/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->i:Ljava/lang/String;

    .line 146
    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->g:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, mapDataDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 148
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 151
    :cond_4
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->h:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, satDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 156
    :cond_5
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->f:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, mapConfigDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 161
    :cond_6
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->i:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, mapCacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 175
    :cond_7
    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 7
    .parameter "path"

    .prologue
    .line 383
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 384
    .local v4, stfs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 385
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v0, v5

    .line 387
    .local v0, availBlocks:J
    mul-long v5, v2, v0

    .line 389
    .end local v0           #availBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #stfs:Landroid/os/StatFs;
    :goto_0
    return-wide v5

    :catch_0
    move-exception v5

    const-wide/16 v5, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/tencentmap/mapsdk/maps/a/gq;
    .locals 1
    .parameter "context"

    .prologue
    .line 206
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gq;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;

    invoke-direct {v0, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gq;

    .line 210
    :cond_0
    sget-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/gq;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter "mcontex"

    .prologue
    .line 305
    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, strPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_city_ver.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "contex"

    .prologue
    const-wide/16 v3, 0x5

    .line 178
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 181
    if-nez v1, :cond_1

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, strSdkDirectory:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 184
    .end local v0           #strSdkDirectory:Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 187
    .restart local v0       #strSdkDirectory:Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 188
    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 191
    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 192
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gq;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
