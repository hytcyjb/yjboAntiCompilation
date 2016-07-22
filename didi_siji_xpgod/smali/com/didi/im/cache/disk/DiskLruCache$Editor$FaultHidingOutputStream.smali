.class Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/cache/disk/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/im/cache/disk/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "out"

    .prologue
    .line 810
    iput-object p1, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    .line 811
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 812
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/didi/im/cache/disk/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 809
    invoke-direct {p0, p1, p2}, Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 835
    :try_start_0
    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :goto_0
    return-void

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/didi/im/cache/disk/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->access$2302(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 844
    :try_start_0
    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/didi/im/cache/disk/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->access$2302(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .parameter "oneByte"

    .prologue
    .line 817
    :try_start_0
    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/didi/im/cache/disk/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->access$2302(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_0
    return-void

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/didi/im/cache/disk/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->access$2302(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
