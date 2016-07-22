.class Lcom/facebook/imagepipeline/a/a/b$2;
.super Ljava/lang/Object;
.source "OkHttpNetworkFetcher.java"

# interfaces
.implements Lcom/squareup/okhttp/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b$a;Lcom/facebook/imagepipeline/producers/ad$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/a/a/b$a;

.field final synthetic b:Lcom/squareup/okhttp/e;

.field final synthetic c:Lcom/facebook/imagepipeline/producers/ad$a;

.field final synthetic d:Lcom/facebook/imagepipeline/a/a/b;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/a/a/b;Lcom/facebook/imagepipeline/a/a/b$a;Lcom/squareup/okhttp/e;Lcom/facebook/imagepipeline/producers/ad$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/facebook/imagepipeline/a/a/b$2;->d:Lcom/facebook/imagepipeline/a/a/b;

    iput-object p2, p0, Lcom/facebook/imagepipeline/a/a/b$2;->a:Lcom/facebook/imagepipeline/a/a/b$a;

    iput-object p3, p0, Lcom/facebook/imagepipeline/a/a/b$2;->b:Lcom/squareup/okhttp/e;

    iput-object p4, p0, Lcom/facebook/imagepipeline/a/a/b$2;->c:Lcom/facebook/imagepipeline/producers/ad$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/t;Ljava/io/IOException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/imagepipeline/a/a/b$2;->d:Lcom/facebook/imagepipeline/a/a/b;

    iget-object v1, p0, Lcom/facebook/imagepipeline/a/a/b$2;->b:Lcom/squareup/okhttp/e;

    iget-object v2, p0, Lcom/facebook/imagepipeline/a/a/b$2;->c:Lcom/facebook/imagepipeline/producers/ad$a;

    invoke-static {v0, v1, p2, v2}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b;Lcom/squareup/okhttp/e;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/ad$a;)V

    .line 135
    return-void
.end method

.method public a(Lcom/squareup/okhttp/v;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 109
    iget-object v2, p0, Lcom/facebook/imagepipeline/a/a/b$2;->a:Lcom/facebook/imagepipeline/a/a/b$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/facebook/imagepipeline/a/a/b$a;->b:J

    .line 110
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/a/a/b$2;->d:Lcom/facebook/imagepipeline/a/a/b;

    iget-object v1, p0, Lcom/facebook/imagepipeline/a/a/b$2;->b:Lcom/squareup/okhttp/e;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected HTTP code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/imagepipeline/a/a/b$2;->c:Lcom/facebook/imagepipeline/producers/ad$a;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b;Lcom/squareup/okhttp/e;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/ad$a;)V

    .line 130
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/v;->g()Lcom/squareup/okhttp/w;

    move-result-object v4

    .line 116
    :try_start_0
    invoke-virtual {v4}, Lcom/squareup/okhttp/w;->b()J

    move-result-wide v2

    .line 117
    cmp-long v5, v2, v0

    if-gez v5, :cond_1

    .line 120
    :goto_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/a/a/b$2;->c:Lcom/facebook/imagepipeline/producers/ad$a;

    invoke-virtual {v4}, Lcom/squareup/okhttp/w;->c()Ljava/io/InputStream;

    move-result-object v3

    long-to-int v0, v0

    invoke-interface {v2, v3, v0}, Lcom/facebook/imagepipeline/producers/ad$a;->a(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :try_start_1
    invoke-virtual {v4}, Lcom/squareup/okhttp/w;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "OkHttpNetworkFetchProducer"

    const-string v2, "Exception when closing response body"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    .line 122
    :try_start_2
    iget-object v1, p0, Lcom/facebook/imagepipeline/a/a/b$2;->d:Lcom/facebook/imagepipeline/a/a/b;

    iget-object v2, p0, Lcom/facebook/imagepipeline/a/a/b$2;->b:Lcom/squareup/okhttp/e;

    iget-object v3, p0, Lcom/facebook/imagepipeline/a/a/b$2;->c:Lcom/facebook/imagepipeline/producers/ad$a;

    invoke-static {v1, v2, v0, v3}, Lcom/facebook/imagepipeline/a/a/b;->a(Lcom/facebook/imagepipeline/a/a/b;Lcom/squareup/okhttp/e;Ljava/lang/Exception;Lcom/facebook/imagepipeline/producers/ad$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :try_start_3
    invoke-virtual {v4}, Lcom/squareup/okhttp/w;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 126
    :catch_2
    move-exception v0

    .line 127
    const-string v1, "OkHttpNetworkFetchProducer"

    const-string v2, "Exception when closing response body"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    :try_start_4
    invoke-virtual {v4}, Lcom/squareup/okhttp/w;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 128
    :goto_2
    throw v0

    .line 126
    :catch_3
    move-exception v1

    .line 127
    const-string v2, "OkHttpNetworkFetchProducer"

    const-string v3, "Exception when closing response body"

    invoke-static {v2, v3, v1}, Lcom/facebook/common/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method
