.class public final Lcom/didi/common/cache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/didi/common/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/didi/common/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "sequenceNumber"
    .parameter "ins"

    .prologue
    .line 735
    iput-object p1, p0, Lcom/didi/common/cache/DiskLruCache$Snapshot;->this$0:Lcom/didi/common/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p2, p0, Lcom/didi/common/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 737
    iput-wide p3, p0, Lcom/didi/common/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 738
    iput-object p5, p0, Lcom/didi/common/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 739
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/common/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/didi/common/cache/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 730
    invoke-direct/range {p0 .. p5}, Lcom/didi/common/cache/DiskLruCache$Snapshot;-><init>(Lcom/didi/common/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 765
    iget-object v0, p0, Lcom/didi/common/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .local v0, arr$:[Ljava/io/InputStream;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 766
    .local v2, in:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/didi/common/cache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    .end local v2           #in:Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public edit()Lcom/didi/common/cache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 747
    iget-object v0, p0, Lcom/didi/common/cache/DiskLruCache$Snapshot;->this$0:Lcom/didi/common/cache/DiskLruCache;

    iget-object v1, p0, Lcom/didi/common/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/didi/common/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    #calls: Lcom/didi/common/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/didi/common/cache/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/cache/DiskLruCache;->access$1500(Lcom/didi/common/cache/DiskLruCache;Ljava/lang/String;J)Lcom/didi/common/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .parameter "index"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/didi/common/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    invoke-virtual {p0, p1}, Lcom/didi/common/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    #calls: Lcom/didi/common/cache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/cache/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
