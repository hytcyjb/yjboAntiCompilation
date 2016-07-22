.class final Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private final cleanFiles:[Ljava/io/File;

.field private currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

.field private final dirtyFiles:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 948
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    .line 949
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 950
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 954
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 955
    const/4 v0, 0x0

    :goto_0
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 956
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 957
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2800(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 958
    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2800(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 960
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 955
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 962
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 928
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 928
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[J
    .locals 1
    .parameter

    .prologue
    .line 928
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 928
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 928
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 928
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)J
    .locals 2
    .parameter

    .prologue
    .line 928
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 928
    iput-wide p1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z
    .locals 1
    .parameter

    .prologue
    .line 928
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$802(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 928
    iput-boolean p1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$900(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    .locals 1
    .parameter

    .prologue
    .line 928
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    return-object p1
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .parameter

    .prologue
    .line 987
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 966
    array-length v0, p1

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 967
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 971
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 972
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 977
    :cond_1
    return-void
.end method


# virtual methods
.method snapshot()Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 996
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 998
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)I

    move-result v1

    new-array v6, v1, [Lcom/avos/avoscloud/okio/Source;

    .line 999
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    move v1, v0

    .line 1001
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1002
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2400(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/avos/avoscloud/okio/Source;

    move-result-object v2

    aput-object v2, v6, v1

    .line 1001
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1004
    :cond_1
    new-instance v1, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;-><init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/avos/avoscloud/okio/Source;[JLcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :goto_1
    return-object v1

    .line 1007
    :goto_2
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->access$2300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1008
    aget-object v1, v6, v0

    if-eqz v1, :cond_2

    .line 1009
    aget-object v1, v6, v0

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v1, v9

    .line 1014
    goto :goto_1

    .line 1005
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method writeLengths(Lcom/avos/avoscloud/okio/BufferedSink;)V
    .locals 6
    .parameter

    .prologue
    .line 981
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    .line 982
    const/16 v3, 0x20

    invoke-interface {p1, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Lcom/avos/avoscloud/okio/BufferedSink;->writeDecimalLong(J)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    :cond_0
    return-void
.end method
