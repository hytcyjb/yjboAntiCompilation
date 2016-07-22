.class public Lcom/facebook/imagepipeline/producers/w;
.super Ljava/lang/Object;
.source "LocalExifThumbnailProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ag",
        "<",
        "Lcom/facebook/imagepipeline/f/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/facebook/imagepipeline/memory/w;

.field private final c:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/w;->a:Ljava/util/concurrent/Executor;

    .line 57
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/w;->b:Lcom/facebook/imagepipeline/memory/w;

    .line 58
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/w;->c:Landroid/content/ContentResolver;

    .line 59
    return-void
.end method

.method private a(Landroid/media/ExifInterface;)I
    .locals 1
    .parameter

    .prologue
    .line 137
    const-string v0, "Orientation"

    .line 138
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    invoke-static {v0}, Lcom/facebook/c/b;->a(I)I

    move-result v0

    return v0
.end method

.method private a(Lcom/facebook/imagepipeline/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lcom/facebook/imagepipeline/f/e;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 122
    new-instance v0, Lcom/facebook/imagepipeline/memory/x;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/x;-><init>(Lcom/facebook/imagepipeline/memory/PooledByteBuffer;)V

    .line 123
    invoke-static {v0}, Lcom/facebook/c/a;->a(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v3

    .line 124
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/w;->a(Landroid/media/ExifInterface;)I

    move-result v4

    .line 125
    if-eqz v3, :cond_0

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    .line 126
    :goto_0
    if-eqz v3, :cond_1

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 127
    :goto_1
    new-instance v1, Lcom/facebook/imagepipeline/f/e;

    invoke-static {p1}, Lcom/facebook/common/references/a;->a(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/facebook/imagepipeline/f/e;-><init>(Lcom/facebook/common/references/a;)V

    .line 128
    sget-object v3, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/f/e;->a(Lcom/facebook/imageformat/ImageFormat;)V

    .line 129
    invoke-virtual {v1, v4}, Lcom/facebook/imagepipeline/f/e;->c(I)V

    .line 130
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/f/e;->b(I)V

    .line 131
    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/f/e;->a(I)V

    .line 132
    return-object v1

    :cond_0
    move v2, v1

    .line 125
    goto :goto_0

    :cond_1
    move v0, v1

    .line 126
    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/imagepipeline/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lcom/facebook/imagepipeline/f/e;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/w;->a(Lcom/facebook/imagepipeline/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/w;)Lcom/facebook/imagepipeline/memory/w;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w;->b:Lcom/facebook/imagepipeline/memory/w;

    return-object v0
.end method

.method private b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 147
    .line 148
    invoke-static {p1}, Lcom/facebook/common/util/d;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w;->c:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 152
    if-eqz v1, :cond_4

    .line 153
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 154
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 155
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 158
    :goto_0
    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_0
    :goto_1
    return-object v0

    .line 158
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_1

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 162
    :cond_2
    invoke-static {p1}, Lcom/facebook/common/util/d;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 158
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_1

    :cond_4
    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/net/Uri;)Landroid/media/ExifInterface;
    .locals 2
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/w;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/producers/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/ah;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/j",
            "<",
            "Lcom/facebook/imagepipeline/f/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ah;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->c()Lcom/facebook/imagepipeline/producers/aj;

    move-result-object v3

    .line 67
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->b()Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ah;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v6

    .line 70
    new-instance v0, Lcom/facebook/imagepipeline/producers/w$1;

    const-string v4, "LocalExifThumbnailProducer"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/w$1;-><init>(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/imagepipeline/producers/j;Lcom/facebook/imagepipeline/producers/aj;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 101
    new-instance v1, Lcom/facebook/imagepipeline/producers/w$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/producers/w$2;-><init>(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/imagepipeline/producers/am;)V

    invoke-interface {p2, v1}, Lcom/facebook/imagepipeline/producers/ah;->a(Lcom/facebook/imagepipeline/producers/ai;)V

    .line 108
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/w;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 169
    if-nez p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
