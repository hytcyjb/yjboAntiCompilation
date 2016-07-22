.class public final Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;,
        Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;,
        Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern; = null

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_SINK:Lcom/avos/avoscloud/okio/Sink; = null

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field private closed:Z

.field private final directory:Ljava/io/File;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

.field private hasJournalErrors:Z

.field private initialized:Z

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;",
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
    .line 89
    const-class v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->$assertionsDisabled:Z

    .line 96
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 810
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$4;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$4;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/avos/avoscloud/okio/Sink;

    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->size:J

    .line 152
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 165
    iput-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    .line 169
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;-><init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    .line 190
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    .line 191
    iput-object p2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    .line 192
    iput p3, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->appVersion:I

    .line 193
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    .line 194
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 195
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 196
    iput p4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I

    .line 197
    iput-wide p5, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->maxSize:J

    .line 198
    iput-object p7, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialized:Z

    return v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->closed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$2000(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)I
    .locals 1
    .parameter

    .prologue
    .line 89
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    return-object v0
.end method

.method static synthetic access$2500()Lcom/avos/avoscloud/okio/Sink;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/avos/avoscloud/okio/Sink;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->completeEdit(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->removeEntry(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$502(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput p1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method static synthetic access$602(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->hasJournalErrors:Z

    return p1
.end method

.method private declared-synchronized checkNotClosed()V
    .locals 2

    .prologue
    .line 630
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 633
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 516
    monitor-enter p0

    :try_start_0
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->access$1700(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    move-result-object v2

    .line 517
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 518
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 522
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 523
    :goto_0
    iget v3, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v1, v3, :cond_4

    .line 524
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->access$1800(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 525
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->abort()V

    .line 526
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_1
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 529
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 523
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_7

    .line 536
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, v0

    .line 537
    if-eqz p2, :cond_6

    .line 538
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    invoke-interface {v3, v1}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 539
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v0

    .line 540
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    invoke-interface {v4, v1, v3}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 541
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 542
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    invoke-interface {v1, v3}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->size(Ljava/io/File;)J

    move-result-wide v6

    .line 543
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 544
    iget-wide v8, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->size:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->size:J

    .line 535
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 547
    :cond_6
    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    invoke-interface {v3, v1}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    goto :goto_3

    .line 551
    :cond_7
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 552
    const/4 v0, 0x0

    #setter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v2, v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    .line 553
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 554
    const/4 v0, 0x1

    #setter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$802(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;Z)Z

    .line 555
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    const-string v1, "CLEAN"

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 556
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 557
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->writeLengths(Lcom/avos/avoscloud/okio/BufferedSink;)V

    .line 558
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 559
    if-eqz p2, :cond_8

    .line 560
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    #setter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v2, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1602(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;J)J

    .line 568
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V

    .line 570
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    :cond_9
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 563
    :cond_a
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 565
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 566
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public static create(Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    if-gtz p3, :cond_1

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp DiskLruCache"

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/avos/avoscloud/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 259
    new-instance v3, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move-object v10, v1

    invoke-direct/range {v3 .. v10}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;-><init>(Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v3
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 451
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialize()V

    .line 453
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 454
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    .line 456
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1600(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 478
    :goto_0
    monitor-exit p0

    return-object v0

    .line 460
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 461
    goto :goto_0

    .line 465
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    const-string v3, "DIRTY"

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 466
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v2}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V

    .line 468
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->hasJournalErrors:Z

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 469
    goto :goto_0

    .line 472
    :cond_3
    if-nez v0, :cond_4

    .line 473
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;)V

    .line 474
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 476
    :goto_1
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;)V

    .line 477
    #setter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .prologue
    .line 580
    .line 581
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newJournalWriter()Lcom/avos/avoscloud/okio/BufferedSink;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Lcom/avos/avoscloud/okio/Sink;

    move-result-object v0

    .line 303
    new-instance v1, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$2;

    invoke-direct {v1, p0, v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$2;-><init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okio/Sink;)V

    .line 309
    invoke-static {v1}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Sink;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method private processJournal()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 357
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    .line 359
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 360
    :goto_1
    iget v4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_0

    .line 361
    iget-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->size:J

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->size:J

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 364
    :cond_1
    const/4 v1, 0x0

    #setter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move v1, v2

    .line 365
    :goto_2
    iget v4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_2

    .line 366
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-interface {v4, v5}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 367
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-interface {v4, v5}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 369
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 372
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 8

    .prologue
    .line 263
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/avos/avoscloud/okio/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Source;)Lcom/avos/avoscloud/okio/BufferedSource;

    move-result-object v1

    .line 265
    :try_start_0
    invoke-interface {v1}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-interface {v1}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-interface {v1}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-interface {v1}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-interface {v1}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 270
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->appVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 279
    :cond_1
    const/4 v0, 0x0

    .line 282
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lcom/avos/avoscloud/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :catch_0
    move-exception v2

    .line 288
    :try_start_2
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 291
    invoke-interface {v1}, Lcom/avos/avoscloud/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->rebuildJournal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    :goto_1
    invoke-static {v1}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 299
    return-void

    .line 294
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->newJournalWriter()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/16 v1, 0x20

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 313
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 314
    if-ne v2, v5, :cond_0

    .line 315
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 319
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 321
    if-ne v3, v5, :cond_2

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    const-string v1, "REMOVE"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_7

    const-string v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 324
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_1
    :goto_0
    return-void

    .line 328
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 331
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    .line 332
    if-nez v0, :cond_3

    .line 333
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    invoke-direct {v0, p0, v1, v6}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;)V

    .line 334
    iget-object v4, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_3
    if-eq v3, v5, :cond_4

    const-string v1, "CLEAN"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_4

    const-string v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 338
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 339
    const/4 v2, 0x1

    #setter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v2}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$802(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;Z)Z

    .line 340
    #setter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0, v6}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    .line 341
    #calls: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1000(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_4
    if-ne v3, v5, :cond_5

    const-string v1, "DIRTY"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_5

    const-string v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 343
    new-instance v1, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v6}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$1;)V

    #setter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    goto :goto_0

    .line 344
    :cond_5
    if-ne v3, v5, :cond_6

    const-string v0, "READ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_6

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 5

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->close()V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lcom/avos/avoscloud/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okio/Okio;->buffer(Lcom/avos/avoscloud/okio/Sink;)Lcom/avos/avoscloud/okio/BufferedSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 385
    :try_start_1
    const-string v0, "libcore.io.DiskLruCache"

    invoke-interface {v1, v0}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 386
    const-string v0, "1"

    invoke-interface {v1, v0}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 387
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->appVersion:I

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeDecimalLong(J)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 388
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeDecimalLong(J)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 389
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 391
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    .line 392
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 393
    const-string v3, "DIRTY"

    invoke-interface {v1, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 394
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 395
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Lcom/avos/avoscloud/okio/BufferedSink;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 379
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 397
    :cond_1
    :try_start_3
    const-string v3, "CLEAN"

    invoke-interface {v1, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 398
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 399
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->writeLengths(Lcom/avos/avoscloud/okio/BufferedSink;)V

    .line 400
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 404
    :cond_2
    :try_start_4
    invoke-interface {v1}, Lcom/avos/avoscloud/okio/BufferedSink;->close()V

    .line 407
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 411
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 413
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->newJournalWriter()Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->hasJournalErrors:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 415
    monitor-exit p0

    return-void
.end method

.method private removeEntry(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 603
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    #setter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v0, v6}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->access$1902(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;Z)Z

    .line 607
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1300(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 609
    iget-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->size:J

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->size:J

    .line 610
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 614
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 615
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 621
    :cond_2
    return v6
.end method

.method private trimToSize()V
    .locals 4

    .prologue
    .line 663
    :goto_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    .line 665
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->removeEntry(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z

    goto :goto_0

    .line 667
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 692
    sget-object v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->closed:Z

    if-eqz v0, :cond_1

    .line 647
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :goto_0
    monitor-exit p0

    return-void

    .line 651
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 652
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 653
    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v3}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;->abort()V

    .line 651
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 656
    :cond_3
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->trimToSize()V

    .line 657
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->close()V

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->close()V

    .line 676
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V

    .line 677
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;
    .locals 2
    .parameter

    .prologue
    .line 447
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized evictAll()V
    .locals 4

    .prologue
    .line 684
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialize()V

    .line 686
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 687
    invoke-direct {p0, v3}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->removeEntry(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    :cond_0
    monitor-exit p0

    return-void

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 642
    :goto_0
    monitor-exit p0

    return-void

    .line 639
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 640
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->trimToSize()V

    .line 641
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    invoke-interface {v0}, Lcom/avos/avoscloud/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 423
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialize()V

    .line 425
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 426
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;

    .line 428
    if-eqz v0, :cond_0

    #getter for: Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 439
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 430
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;->snapshot()Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v0

    .line 431
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 433
    :cond_3
    iget v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 434
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalWriter:Lcom/avos/avoscloud/okio/BufferedSink;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/avos/avoscloud/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/avos/avoscloud/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lcom/avos/avoscloud/okio/BufferedSink;->writeByte(I)Lcom/avos/avoscloud/okio/BufferedSink;

    .line 435
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize()V
    .locals 4

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 204
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 236
    :goto_0
    monitor-exit p0

    return-void

    .line 209
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 219
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    :try_start_3
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->readJournal()V

    .line 222
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->processJournal()V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    :try_start_4
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/Platform;->get()Lcom/avos/avoscloud/okhttp/internal/Platform;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", removing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->delete()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->closed:Z

    .line 233
    :cond_3
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->rebuildJournal()V

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialized:Z

    goto :goto_0

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->fileSystem:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 626
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialize()V

    .line 595
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 596
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 599
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->removeEntry(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Entry;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 3
    .parameter

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->maxSize:J

    .line 500
    iget-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialized:Z

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :cond_0
    monitor-exit p0

    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialize()V

    .line 512
    iget-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized snapshots()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;->initialize()V

    .line 716
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$3;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/okhttp/internal/DiskLruCache$3;-><init>(Lcom/avos/avoscloud/okhttp/internal/DiskLruCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
