.class Lcom/facebook/soloader/h$1;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/soloader/h;->a(Lcom/facebook/soloader/e;I[B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:[B

.field final synthetic c:Lcom/facebook/soloader/h$b;

.field final synthetic d:Ljava/io/File;

.field final synthetic e:Lcom/facebook/soloader/e;

.field final synthetic f:Lcom/facebook/soloader/h;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/h;Ljava/io/File;[BLcom/facebook/soloader/h$b;Ljava/io/File;Lcom/facebook/soloader/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/facebook/soloader/h$1;->f:Lcom/facebook/soloader/h;

    iput-object p2, p0, Lcom/facebook/soloader/h$1;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/facebook/soloader/h$1;->b:[B

    iput-object p4, p0, Lcom/facebook/soloader/h$1;->c:Lcom/facebook/soloader/h$b;

    iput-object p5, p0, Lcom/facebook/soloader/h$1;->d:Ljava/io/File;

    iput-object p6, p0, Lcom/facebook/soloader/h$1;->e:Lcom/facebook/soloader/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 297
    :try_start_0
    const-string v0, "fb-UnpackingSoSource"

    const-string v2, "starting syncer worker"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/facebook/soloader/h$1;->a:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 307
    :try_start_1
    iget-object v3, p0, Lcom/facebook/soloader/h$1;->b:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 308
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 309
    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 311
    :cond_0
    :goto_0
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/soloader/h$1;->f:Lcom/facebook/soloader/h;

    iget-object v2, v2, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    const-string v3, "dso_manifest"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    .line 313
    :try_start_4
    iget-object v3, p0, Lcom/facebook/soloader/h$1;->c:Lcom/facebook/soloader/h$b;

    invoke-virtual {v3, v2}, Lcom/facebook/soloader/h$b;->a(Ljava/io/DataOutput;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 314
    if-eqz v2, :cond_1

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 316
    :cond_1
    :goto_1
    :try_start_6
    iget-object v0, p0, Lcom/facebook/soloader/h$1;->f:Lcom/facebook/soloader/h;

    iget-object v0, v0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/soloader/g;->c(Ljava/io/File;)V

    .line 317
    iget-object v0, p0, Lcom/facebook/soloader/h$1;->d:Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/soloader/h;->a(Ljava/io/File;B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 319
    :try_start_7
    const-string v0, "fb-UnpackingSoSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasing dso store lock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/soloader/h$1;->f:Lcom/facebook/soloader/h;

    iget-object v2, v2, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (from syncer thread)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/facebook/soloader/h$1;->e:Lcom/facebook/soloader/e;

    invoke-virtual {v0}, Lcom/facebook/soloader/e;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 325
    return-void

    .line 309
    :catch_0
    move-exception v2

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    :try_start_9
    const-string v1, "fb-UnpackingSoSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing dso store lock for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/soloader/h$1;->f:Lcom/facebook/soloader/h;

    iget-object v3, v3, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (from syncer thread)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Lcom/facebook/soloader/h$1;->e:Lcom/facebook/soloader/e;

    invoke-virtual {v1}, Lcom/facebook/soloader/e;->close()V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 322
    :catch_1
    move-exception v0

    .line 323
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 309
    :cond_2
    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 306
    :catch_2
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 309
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :try_start_c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    :cond_3
    :goto_3
    :try_start_d
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_3

    .line 314
    :catch_4
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 312
    :catch_5
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 314
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    if-eqz v2, :cond_6

    if-eqz v1, :cond_7

    :try_start_f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    :cond_6
    :goto_5
    :try_start_10
    throw v0

    :catch_6
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 309
    :catchall_4
    move-exception v0

    goto :goto_2
.end method
