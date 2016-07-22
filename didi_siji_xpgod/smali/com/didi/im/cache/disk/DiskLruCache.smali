.class public final Lcom/didi/im/cache/disk/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/im/cache/disk/DiskLruCache$Entry;,
        Lcom/didi/im/cache/disk/DiskLruCache$Editor;,
        Lcom/didi/im/cache/disk/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern; = null

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream; = null

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final STRING_KEY_PATTERN:Ljava/lang/String; = "[a-z0-9_-]{1,120}"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/im/cache/disk/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/didi/im/cache/disk/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 684
    new-instance v0, Lcom/didi/im/cache/disk/DiskLruCache$2;

    invoke-direct {v0}, Lcom/didi/im/cache/disk/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/didi/im/cache/disk/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-wide v4, p0, Lcom/didi/im/cache/disk/DiskLruCache;->size:J

    .line 136
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 144
    iput-wide v4, p0, Lcom/didi/im/cache/disk/DiskLruCache;->nextSequenceNumber:J

    .line 147
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 148
    new-instance v0, Lcom/didi/im/cache/disk/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/didi/im/cache/disk/DiskLruCache$1;-><init>(Lcom/didi/im/cache/disk/DiskLruCache;)V

    iput-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 165
    iput-object p1, p0, Lcom/didi/im/cache/disk/DiskLruCache;->directory:Ljava/io/File;

    .line 166
    iput p2, p0, Lcom/didi/im/cache/disk/DiskLruCache;->appVersion:I

    .line 167
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFile:Ljava/io/File;

    .line 168
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 169
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 170
    iput p3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I

    .line 171
    iput-wide p4, p0, Lcom/didi/im/cache/disk/DiskLruCache;->maxSize:J

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/didi/im/cache/disk/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/im/cache/disk/DiskLruCache;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/didi/im/cache/disk/DiskLruCache;Ljava/lang/String;J)Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/im/cache/disk/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/didi/im/cache/disk/DiskLruCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/didi/im/cache/disk/DiskLruCache;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/im/cache/disk/DiskLruCache;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/didi/im/cache/disk/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/didi/im/cache/disk/DiskLruCache;Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/didi/im/cache/disk/DiskLruCache;->completeEdit(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/im/cache/disk/DiskLruCache;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/didi/im/cache/disk/DiskLruCache;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/didi/im/cache/disk/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/didi/im/cache/disk/DiskLruCache$Editor;Z)V
    .locals 12
    .parameter "editor"
    .parameter "success"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Editor;->entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->access$1400(Lcom/didi/im/cache/disk/DiskLruCache$Editor;)Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    move-result-object v2

    .line 483
    .local v2, entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$700(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 484
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    .end local v2           #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 488
    .restart local v2       #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$600(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 489
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_4

    .line 490
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->access$1500(Lcom/didi/im/cache/disk/DiskLruCache$Editor;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_1

    .line 491
    invoke-virtual {p1}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->abort()V

    .line 492
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Newly created entry didn\'t create value for index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 494
    :cond_1
    invoke-virtual {v2, v3}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 495
    invoke-virtual {p1}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 489
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 501
    .end local v3           #i:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    :try_start_2
    iget v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_7

    .line 502
    invoke-virtual {v2, v3}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 503
    .local v1, dirty:Ljava/io/File;
    if-eqz p2, :cond_6

    .line 504
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 505
    invoke-virtual {v2, v3}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 506
    .local v0, clean:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 507
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1000(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 508
    .local v6, oldLength:J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 509
    .local v4, newLength:J
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1000(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 510
    iget-wide v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->size:J

    .line 501
    .end local v0           #clean:Ljava/io/File;
    .end local v4           #newLength:J
    .end local v6           #oldLength:J
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 513
    :cond_6
    invoke-static {v1}, Lcom/didi/im/cache/disk/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_3

    .line 517
    .end local v1           #dirty:Ljava/io/File;
    :cond_7
    iget v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->redundantOpCount:I

    .line 518
    const/4 v8, 0x0

    #setter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v2, v8}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$702(Lcom/didi/im/cache/disk/DiskLruCache$Entry;Lcom/didi/im/cache/disk/DiskLruCache$Editor;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    .line 519
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$600(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_a

    .line 520
    const/4 v8, 0x1

    #setter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v8}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$602(Lcom/didi/im/cache/disk/DiskLruCache$Entry;Z)Z

    .line 521
    iget-object v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1100(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 522
    if-eqz p2, :cond_8

    .line 523
    iget-wide v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/didi/im/cache/disk/DiskLruCache;->nextSequenceNumber:J

    #setter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v2, v8, v9}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1202(Lcom/didi/im/cache/disk/DiskLruCache$Entry;J)J

    .line 529
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 531
    iget-wide v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/didi/im/cache/disk/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_9

    invoke-direct {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 532
    :cond_9
    iget-object v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/didi/im/cache/disk/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 526
    :cond_a
    iget-object v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1100(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1100(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 366
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    .locals 5
    .parameter "key"
    .parameter "expectedSequenceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 430
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->checkNotClosed()V

    .line 431
    invoke-direct {p0, p1}, Lcom/didi/im/cache/disk/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    .line 433
    .local v1, entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v1}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1200(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 449
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 436
    :cond_1
    if-nez v1, :cond_3

    .line 437
    :try_start_1
    new-instance v1, Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    .end local v1           #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;-><init>(Lcom/didi/im/cache/disk/DiskLruCache;Ljava/lang/String;Lcom/didi/im/cache/disk/DiskLruCache$1;)V

    .line 438
    .restart local v1       #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_2
    new-instance v0, Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;-><init>(Lcom/didi/im/cache/disk/DiskLruCache;Lcom/didi/im/cache/disk/DiskLruCache$Entry;Lcom/didi/im/cache/disk/DiskLruCache$1;)V

    .line 444
    .local v0, editor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    #setter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$702(Lcom/didi/im/cache/disk/DiskLruCache$Entry;Lcom/didi/im/cache/disk/DiskLruCache$Editor;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    .line 447
    iget-object v2, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 430
    .end local v0           #editor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    .end local v1           #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 439
    .restart local v1       #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    :cond_3
    :try_start_2
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$700(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/didi/im/cache/disk/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/didi/im/cache/disk/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .prologue
    .line 541
    const/16 v0, 0x7d0

    .line 542
    .local v0, redundantOpCompactThreshold:I
    iget v1, p0, Lcom/didi/im/cache/disk/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/didi/im/cache/disk/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/didi/im/cache/disk/DiskLruCache;
    .locals 10
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_0

    .line 188
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_0
    if-gtz p2, :cond_1

    .line 191
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v6, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    .local v6, backupFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    new-instance v8, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v8, journalFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 207
    .end local v8           #journalFile:Ljava/io/File;
    :cond_2
    :goto_0
    new-instance v0, Lcom/didi/im/cache/disk/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/didi/im/cache/disk/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 208
    .local v0, cache:Lcom/didi/im/cache/disk/DiskLruCache;
    iget-object v1, v0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    :try_start_0
    invoke-direct {v0}, Lcom/didi/im/cache/disk/DiskLruCache;->readJournal()V

    .line 211
    invoke-direct {v0}, Lcom/didi/im/cache/disk/DiskLruCache;->processJournal()V

    .line 212
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/didi/im/cache/disk/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 226
    .end local v0           #cache:Lcom/didi/im/cache/disk/DiskLruCache;
    .local v7, cache:Ljava/lang/Object;
    :goto_1
    return-object v7

    .line 202
    .end local v7           #cache:Ljava/lang/Object;
    .restart local v8       #journalFile:Ljava/io/File;
    :cond_3
    const/4 v1, 0x0

    invoke-static {v6, v8, v1}, Lcom/didi/im/cache/disk/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 215
    .end local v8           #journalFile:Ljava/io/File;
    .restart local v0       #cache:Lcom/didi/im/cache/disk/DiskLruCache;
    :catch_0
    move-exception v9

    .line 218
    .local v9, journalIsCorrupt:Ljava/io/IOException;
    invoke-virtual {v0}, Lcom/didi/im/cache/disk/DiskLruCache;->delete()V

    .line 223
    .end local v9           #journalIsCorrupt:Ljava/io/IOException;
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 224
    new-instance v0, Lcom/didi/im/cache/disk/DiskLruCache;

    .end local v0           #cache:Lcom/didi/im/cache/disk/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/didi/im/cache/disk/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 225
    .restart local v0       #cache:Lcom/didi/im/cache/disk/DiskLruCache;
    invoke-direct {v0}, Lcom/didi/im/cache/disk/DiskLruCache;->rebuildJournal()V

    move-object v7, v0

    .line 226
    .restart local v7       #cache:Ljava/lang/Object;
    goto :goto_1
.end method

.method private processJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/didi/im/cache/disk/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 304
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/didi/im/cache/disk/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    .line 306
    .local v0, entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$700(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 307
    const/4 v2, 0x0

    .local v2, t:I
    :goto_1
    iget v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 308
    iget-wide v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->size:J

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1000(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->size:J

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 311
    .end local v2           #t:I
    :cond_1
    const/4 v3, 0x0

    #setter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v0, v3}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$702(Lcom/didi/im/cache/disk/DiskLruCache$Entry;Lcom/didi/im/cache/disk/DiskLruCache$Editor;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    .line 312
    const/4 v2, 0x0

    .restart local v2       #t:I
    :goto_2
    iget v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 313
    invoke-virtual {v0, v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/im/cache/disk/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 314
    invoke-virtual {v0, v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/im/cache/disk/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 316
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 319
    .end local v0           #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    .end local v2           #t:I
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v5, Lcom/didi/im/cache/disk/StrictLineReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v9, Lcom/didi/im/cache/disk/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v8, v9}, Lcom/didi/im/cache/disk/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 232
    .local v5, reader:Lcom/didi/im/cache/disk/StrictLineReader;
    :try_start_0
    invoke-virtual {v5}, Lcom/didi/im/cache/disk/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, magic:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/didi/im/cache/disk/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, version:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/didi/im/cache/disk/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, appVersionString:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/didi/im/cache/disk/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, valueCountString:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/didi/im/cache/disk/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, blank:Ljava/lang/String;
    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->appVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 240
    :cond_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected journal header: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v0           #appVersionString:Ljava/lang/String;
    .end local v1           #blank:Ljava/lang/String;
    .end local v4           #magic:Ljava/lang/String;
    .end local v6           #valueCountString:Ljava/lang/String;
    .end local v7           #version:Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Lcom/didi/im/cache/disk/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .line 244
    .restart local v0       #appVersionString:Ljava/lang/String;
    .restart local v1       #blank:Ljava/lang/String;
    .restart local v4       #magic:Ljava/lang/String;
    .restart local v6       #valueCountString:Ljava/lang/String;
    .restart local v7       #version:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 247
    .local v3, lineCount:I
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lcom/didi/im/cache/disk/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/didi/im/cache/disk/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :catch_0
    move-exception v2

    .line 253
    .local v2, endOfJournal:Ljava/io/EOFException;
    :try_start_2
    iget-object v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    sub-int v8, v3, v8

    iput v8, p0, Lcom/didi/im/cache/disk/DiskLruCache;->redundantOpCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    invoke-static {v5}, Lcom/didi/im/cache/disk/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 257
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 260
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 261
    .local v1, firstSpace:I
    if-ne v1, v7, :cond_0

    .line 262
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 265
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 266
    .local v3, keyBegin:I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 268
    .local v5, secondSpace:I
    if-ne v5, v7, :cond_2

    .line 269
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, key:Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_3

    const-string v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 271
    iget-object v6, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 275
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 278
    .restart local v2       #key:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    .line 279
    .local v0, entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    if-nez v0, :cond_4

    .line 280
    new-instance v0, Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    .end local v0           #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    invoke-direct {v0, p0, v2, v8}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;-><init>(Lcom/didi/im/cache/disk/DiskLruCache;Ljava/lang/String;Lcom/didi/im/cache/disk/DiskLruCache$1;)V

    .line 281
    .restart local v0       #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    iget-object v6, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_4
    if-eq v5, v7, :cond_5

    const-string v6, "CLEAN"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_5

    const-string v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 285
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, parts:[Ljava/lang/String;
    const/4 v6, 0x1

    #setter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v6}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$602(Lcom/didi/im/cache/disk/DiskLruCache$Entry;Z)Z

    .line 287
    #setter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v0, v8}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$702(Lcom/didi/im/cache/disk/DiskLruCache$Entry;Lcom/didi/im/cache/disk/DiskLruCache$Editor;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    .line 288
    #calls: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$800(Lcom/didi/im/cache/disk/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 289
    .end local v4           #parts:[Ljava/lang/String;
    :cond_5
    if-ne v5, v7, :cond_6

    const-string v6, "DIRTY"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_6

    const-string v6, "DIRTY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 290
    new-instance v6, Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    invoke-direct {v6, p0, v0, v8}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;-><init>(Lcom/didi/im/cache/disk/DiskLruCache;Lcom/didi/im/cache/disk/DiskLruCache$Entry;Lcom/didi/im/cache/disk/DiskLruCache$1;)V

    #setter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v0, v6}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$702(Lcom/didi/im/cache/disk/DiskLruCache$Entry;Lcom/didi/im/cache/disk/DiskLruCache$Editor;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    goto :goto_0

    .line 291
    :cond_6
    if-ne v5, v7, :cond_7

    const-string v6, "READ"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_7

    const-string v6, "READ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 294
    :cond_7
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 330
    :cond_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Lcom/didi/im/cache/disk/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 332
    .local v2, writer:Ljava/io/Writer;
    :try_start_1
    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 333
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 334
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 335
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 336
    iget v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->appVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 337
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 338
    iget v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 339
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 340
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    .line 343
    .local v0, entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$700(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1100(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 350
    .end local v0           #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 326
    .end local v2           #writer:Ljava/io/Writer;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 346
    .restart local v0       #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #writer:Ljava/io/Writer;
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1100(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 350
    .end local v0           #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 353
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 354
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v4, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFileBackup:Ljava/io/File;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/didi/im/cache/disk/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 356
    :cond_3
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/didi/im/cache/disk/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 357
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 359
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v6, Lcom/didi/im/cache/disk/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 360
    monitor-exit p0

    return-void
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "deleteDestination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    if-eqz p2, :cond_0

    .line 370
    invoke-static {p1}, Lcom/didi/im/cache/disk/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 372
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 375
    :cond_1
    return-void
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    :goto_0
    iget-wide v1, p0, Lcom/didi/im/cache/disk/DiskLruCache;->size:J

    iget-wide v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 616
    .local v0, toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/didi/im/cache/disk/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/didi/im/cache/disk/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 618
    .end local v0           #toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/didi/im/cache/disk/DiskLruCache$Entry;>;"
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 630
    sget-object v1, Lcom/didi/im/cache/disk/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 631
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 611
    :goto_0
    monitor-exit p0

    return-void

    .line 603
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    .line 604
    .local v0, entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$700(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 605
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$700(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/im/cache/disk/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 600
    .end local v0           #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 608
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->trimToSize()V

    .line 609
    iget-object v2, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 610
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->close()V

    .line 626
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/didi/im/cache/disk/Util;->deleteContents(Ljava/io/File;)V

    .line 627
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/didi/im/cache/disk/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/didi/im/cache/disk/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->checkNotClosed()V

    .line 594
    invoke-direct {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->trimToSize()V

    .line 595
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    monitor-exit p0

    return-void

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/didi/im/cache/disk/DiskLruCache$Snapshot;
    .locals 11
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 382
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->checkNotClosed()V

    .line 383
    invoke-direct {p0, p1}, Lcom/didi/im/cache/disk/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .local v9, entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    if-nez v9, :cond_1

    .line 419
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 389
    :cond_1
    :try_start_1
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->readable:Z
    invoke-static {v9}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$600(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget v1, p0, Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I

    new-array v5, v1, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    .local v5, ins:[Ljava/io/InputStream;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    :try_start_2
    iget v1, p0, Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I

    if-ge v10, v1, :cond_2

    .line 399
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v9, v10}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v5, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 398
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 401
    :catch_0
    move-exception v8

    .line 403
    .local v8, e:Ljava/io/FileNotFoundException;
    const/4 v10, 0x0

    :goto_2
    :try_start_3
    iget v1, p0, Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I

    if-ge v10, v1, :cond_0

    .line 404
    aget-object v1, v5, v10

    if-eqz v1, :cond_0

    .line 405
    aget-object v1, v5, v10

    invoke-static {v1}, Lcom/didi/im/cache/disk/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 403
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 413
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :cond_2
    iget v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->redundantOpCount:I

    .line 414
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 415
    invoke-direct {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 419
    :cond_3
    new-instance v0, Lcom/didi/im/cache/disk/DiskLruCache$Snapshot;

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v9}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1200(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)J

    move-result-wide v3

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->lengths:[J
    invoke-static {v9}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1000(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)[J

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/didi/im/cache/disk/DiskLruCache$Snapshot;-><init>(Lcom/didi/im/cache/disk/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/didi/im/cache/disk/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 382
    .end local v5           #ins:[Ljava/io/InputStream;
    .end local v9           #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    .end local v10           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->checkNotClosed()V

    .line 554
    invoke-direct {p0, p1}, Lcom/didi/im/cache/disk/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 555
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/im/cache/disk/DiskLruCache$Entry;

    .line 556
    .local v0, entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    if-eqz v0, :cond_0

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->currentEditor:Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$700(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)Lcom/didi/im/cache/disk/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 557
    :cond_0
    const/4 v3, 0x0

    .line 577
    :goto_0
    monitor-exit p0

    return v3

    .line 560
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_3

    .line 561
    invoke-virtual {v0, v2}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 562
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 563
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    .end local v0           #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 565
    .restart local v0       #entry:Lcom/didi/im/cache/disk/DiskLruCache$Entry;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #i:I
    :cond_2
    :try_start_2
    iget-wide v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->size:J

    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1000(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->size:J

    .line 566
    #getter for: Lcom/didi/im/cache/disk/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/didi/im/cache/disk/DiskLruCache$Entry;->access$1000(Lcom/didi/im/cache/disk/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 569
    .end local v1           #file:Ljava/io/File;
    :cond_3
    iget v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->redundantOpCount:I

    .line 570
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 571
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-direct {p0}, Lcom/didi/im/cache/disk/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 574
    iget-object v3, p0, Lcom/didi/im/cache/disk/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/didi/im/cache/disk/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 577
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 2
    .parameter "maxSize"

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/didi/im/cache/disk/DiskLruCache;->maxSize:J

    .line 470
    iget-object v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/didi/im/cache/disk/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 478
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/didi/im/cache/disk/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
