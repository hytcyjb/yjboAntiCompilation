.class final Lct/cn$2;
.super Ljava/lang/Thread;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lct/cn;->a(Lct/be;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Lct/be;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lct/be;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lct/cn$2;->a:Lct/be;

    iput-object p2, p0, Lct/cn$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lct/cn$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lct/cn$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lct/cn$2;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Lct/cn;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    invoke-static {v0}, Lct/cn;->a(Z)Z

    .line 83
    iget-object v0, p0, Lct/cn$2;->a:Lct/be;

    iget-object v1, p0, Lct/cn$2;->b:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lct/cn$2;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lct/cn;->a(Lct/be;Ljava/lang/String;Ljava/io/File;)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lct/cn$2;->a:Lct/be;

    iget-object v1, p0, Lct/cn$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lct/cn$2;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lct/be;->a(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lct/cn;->a(Z)Z

    .line 115
    :cond_0
    iget-object v0, p0, Lct/cn$2;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 116
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v1, "ExceptionReporter"

    const-string v2, "exception"

    invoke-static {v1, v2, v0}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lct/cn$2;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :try_start_2
    iget-object v0, p0, Lct/cn$2;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
.end method
