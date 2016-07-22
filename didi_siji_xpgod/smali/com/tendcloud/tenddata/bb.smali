.class Lcom/tendcloud/tenddata/bb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tendcloud/tenddata/o;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/o;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/bb;->b:Lcom/tendcloud/tenddata/o;

    iput-object p2, p0, Lcom/tendcloud/tenddata/bb;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tendcloud/tenddata/bb;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "td.lock"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sput-object v1, Lcom/tendcloud/tenddata/o;->l:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/tendcloud/tenddata/o;->o()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/o;->b(J)V

    :cond_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/bb;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/o;->c(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/tendcloud/tenddata/o;->i:Z

    iget-object v1, p0, Lcom/tendcloud/tenddata/bb;->b:Lcom/tendcloud/tenddata/o;

    iget-object v2, p0, Lcom/tendcloud/tenddata/bb;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/o;->a(Lcom/tendcloud/tenddata/o;Landroid/content/Context;)V

    invoke-static {}, Lcom/tendcloud/tenddata/o;->g()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/tendcloud/tenddata/bb;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/au;->f(Landroid/content/Context;)[[Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/tendcloud/tenddata/o;->e:[[Ljava/lang/Long;

    if-ge v1, v5, :cond_2

    sget-object v1, Lcom/tendcloud/tenddata/o;->e:[[Ljava/lang/Long;

    const/4 v2, 0x0

    aput-object v2, v1, v5

    :cond_2
    invoke-static {}, Lcom/tendcloud/tenddata/c;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    sget-boolean v3, Lcom/tendcloud/tenddata/o;->i:Z

    if-nez v3, :cond_3

    sget-object v0, Lcom/tendcloud/tenddata/o;->q:Ljava/util/Random;

    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x7530

    :cond_3
    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
