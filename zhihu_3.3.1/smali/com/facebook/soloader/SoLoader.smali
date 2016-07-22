.class public Lcom/facebook/soloader/SoLoader;
.super Ljava/lang/Object;
.source "SoLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/SoLoader$WrongAbiError;
    }
.end annotation


# static fields
.field private static a:[Lcom/facebook/soloader/f;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/os/StrictMode$ThreadPolicy;

.field private static d:Ljava/lang/String;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    sput-object v1, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/f;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/soloader/SoLoader;->b:Ljava/util/Set;

    .line 74
    sput-object v1, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    .line 79
    const-string v0, "lib-main"

    sput-object v0, Lcom/facebook/soloader/SoLoader;->d:Ljava/lang/String;

    return-void
.end method

.method private static a()I
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    sget v1, Lcom/facebook/soloader/SoLoader;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 207
    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 105
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/soloader/SoLoader;->b(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 232
    const-class v1, Lcom/facebook/soloader/SoLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/f;

    if-nez v0, :cond_0

    .line 236
    const-string v0, "http://www.android.com/"

    const-string v2, "java.vendor.url"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    :goto_0
    monitor-exit v1

    return-void

    .line 241
    :cond_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 250
    :catch_1
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_2

    const-string v3, "unexpected e_machine:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    new-instance v2, Lcom/facebook/soloader/SoLoader$WrongAbiError;

    invoke-direct {v2, v0}, Lcom/facebook/soloader/SoLoader$WrongAbiError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 255
    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    sget-object v0, Lcom/facebook/soloader/SoLoader;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v1

    .line 283
    :goto_0
    if-nez v3, :cond_7

    .line 288
    sget-object v0, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    if-nez v0, :cond_6

    .line 289
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    sput-object v0, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    move v0, v1

    :goto_1
    move v6, v2

    move v2, v3

    move v3, v6

    .line 298
    :goto_2
    if-nez v2, :cond_1

    :try_start_0
    sget-object v4, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/f;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 299
    sget-object v2, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/f;

    aget-object v2, v2, v3

    invoke-virtual {v2, p0, p1}, Lcom/facebook/soloader/f;->a(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 298
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_2

    :cond_0
    move v3, v2

    .line 279
    goto :goto_0

    .line 306
    :cond_1
    if-eqz v0, :cond_5

    .line 307
    sget-object v0, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 308
    sput-object v5, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    move v0, v2

    .line 313
    :goto_3
    if-nez v0, :cond_3

    .line 314
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t find DSO to load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :catchall_0
    move-exception v1

    .line 306
    if-eqz v0, :cond_2

    .line 307
    sget-object v0, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 308
    sput-object v5, Lcom/facebook/soloader/SoLoader;->c:Landroid/os/StrictMode$ThreadPolicy;

    :cond_2
    throw v1

    .line 317
    :cond_3
    if-ne v0, v1, :cond_4

    .line 318
    sget-object v0, Lcom/facebook/soloader/SoLoader;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_3
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/f;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SoLoader.init() not yet called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    return-void
.end method

.method private static declared-synchronized b(Landroid/content/Context;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 123
    const-class v3, Lcom/facebook/soloader/SoLoader;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/f;

    if-nez v2, :cond_8

    .line 124
    sput p1, Lcom/facebook/soloader/SoLoader;->e:I

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 132
    const-string v2, "LD_LIBRARY_PATH"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    if-nez v2, :cond_0

    .line 134
    const-string v2, "/vendor/lib:/system/lib"

    .line 137
    :cond_0
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v2, v0

    .line 138
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 142
    new-instance v6, Ljava/io/File;

    aget-object v7, v5, v2

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    new-instance v7, Lcom/facebook/soloader/b;

    const/4 v8, 0x2

    invoke-direct {v7, v6, v8}, Lcom/facebook/soloader/b;-><init>(Ljava/io/File;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_1
    if-eqz p0, :cond_2

    .line 160
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_3

    .line 161
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/soloader/c;

    sget-object v2, Lcom/facebook/soloader/SoLoader;->d:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/facebook/soloader/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 193
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/soloader/f;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/soloader/f;

    .line 194
    invoke-static {}, Lcom/facebook/soloader/SoLoader;->a()I

    move-result v4

    .line 195
    array-length v1, v0

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_7

    .line 196
    aget-object v1, v0, v2

    invoke-virtual {v1, v4}, Lcom/facebook/soloader/f;->a(I)V

    move v1, v2

    goto :goto_2

    .line 163
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 164
    iget v2, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    iget v2, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_4

    move v2, v1

    .line 168
    :goto_3
    if-eqz v2, :cond_5

    .line 189
    :goto_4
    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/soloader/a;

    sget-object v5, Lcom/facebook/soloader/SoLoader;->d:Ljava/lang/String;

    invoke-direct {v2, p0, v5, v0}, Lcom/facebook/soloader/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    move v2, v0

    .line 164
    goto :goto_3

    .line 179
    :cond_5
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-gt v2, v6, :cond_6

    move v0, v1

    .line 183
    :cond_6
    new-instance v2, Lcom/facebook/soloader/b;

    new-instance v6, Ljava/io/File;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6, v0}, Lcom/facebook/soloader/b;-><init>(Ljava/io/File;I)V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_4

    .line 198
    :cond_7
    sput-object v0, Lcom/facebook/soloader/SoLoader;->a:[Lcom/facebook/soloader/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :cond_8
    monitor-exit v3

    return-void
.end method
