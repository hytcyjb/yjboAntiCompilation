.class public Lcom/facebook/imagepipeline/producers/u;
.super Lcom/facebook/imagepipeline/producers/x;
.source "LocalAssetFetchProducer.java"


# instance fields
.field private final a:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Landroid/content/res/AssetManager;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p4}, Lcom/facebook/imagepipeline/producers/x;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/w;Z)V

    .line 37
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/u;->a:Landroid/content/res/AssetManager;

    .line 38
    return-void
.end method

.method private b(Lcom/facebook/imagepipeline/request/ImageRequest;)I
    .locals 5
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/u;->a:Landroid/content/res/AssetManager;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/u;->c(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-wide v2

    long-to-int v0, v2

    .line 56
    if-eqz v1, :cond_0

    .line 57
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 52
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 53
    :goto_1
    const/4 v0, -0x1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 59
    :catch_1
    move-exception v1

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 56
    :goto_2
    if-eqz v1, :cond_1

    .line 57
    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 61
    :cond_1
    :goto_3
    throw v0

    .line 59
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 55
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 52
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private static c(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/f/e;
    .locals 3
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/u;->a:Landroid/content/res/AssetManager;

    .line 43
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/u;->c(Lcom/facebook/imagepipeline/request/ImageRequest;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/u;->b(Lcom/facebook/imagepipeline/request/ImageRequest;)I

    move-result v1

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/facebook/imagepipeline/producers/u;->b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/f/e;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "LocalAssetFetchProducer"

    return-object v0
.end method
