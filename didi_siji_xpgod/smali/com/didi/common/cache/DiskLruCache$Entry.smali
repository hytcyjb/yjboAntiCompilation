.class final Lcom/didi/common/cache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lcom/didi/common/cache/DiskLruCache$Editor;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/didi/common/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/didi/common/cache/DiskLruCache;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "key"

    .prologue
    .line 911
    iput-object p1, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->this$0:Lcom/didi/common/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput-object p2, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 913
    #getter for: Lcom/didi/common/cache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/didi/common/cache/DiskLruCache;->access$2100(Lcom/didi/common/cache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->lengths:[J

    .line 914
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/common/cache/DiskLruCache;Ljava/lang/String;Lcom/didi/common/cache/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 896
    invoke-direct {p0, p1, p2}, Lcom/didi/common/cache/DiskLruCache$Entry;-><init>(Lcom/didi/common/cache/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/common/cache/DiskLruCache$Entry;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1100(Lcom/didi/common/cache/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/common/cache/DiskLruCache$Entry;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 896
    iget-wide v0, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/didi/common/cache/DiskLruCache$Entry;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 896
    iput-wide p1, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/didi/common/cache/DiskLruCache$Entry;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$602(Lcom/didi/common/cache/DiskLruCache$Entry;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 896
    iput-boolean p1, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/didi/common/cache/DiskLruCache$Entry;)Lcom/didi/common/cache/DiskLruCache$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/didi/common/cache/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/didi/common/cache/DiskLruCache$Entry;Lcom/didi/common/cache/DiskLruCache$Editor;)Lcom/didi/common/cache/DiskLruCache$Editor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 896
    iput-object p1, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/didi/common/cache/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/didi/common/cache/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    invoke-direct {p0, p1}, Lcom/didi/common/cache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .parameter "strings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 942
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
    .locals 5
    .parameter "strings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 928
    array-length v2, p1

    iget-object v3, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->this$0:Lcom/didi/common/cache/DiskLruCache;

    #getter for: Lcom/didi/common/cache/DiskLruCache;->valueCount:I
    invoke-static {v3}, Lcom/didi/common/cache/DiskLruCache;->access$2100(Lcom/didi/common/cache/DiskLruCache;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 929
    invoke-direct {p0, p1}, Lcom/didi/common/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 933
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 934
    iget-object v2, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->lengths:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/didi/common/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 939
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4
    .parameter "i"

    .prologue
    .line 946
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->this$0:Lcom/didi/common/cache/DiskLruCache;

    #getter for: Lcom/didi/common/cache/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/didi/common/cache/DiskLruCache;->access$2200(Lcom/didi/common/cache/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 4
    .parameter "i"

    .prologue
    .line 950
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->this$0:Lcom/didi/common/cache/DiskLruCache;

    #getter for: Lcom/didi/common/cache/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/didi/common/cache/DiskLruCache;->access$2200(Lcom/didi/common/cache/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .local v3, result:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/didi/common/cache/DiskLruCache$Entry;->lengths:[J

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v4, v0, v1

    .line 919
    .local v4, size:J
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 921
    .end local v4           #size:J
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
