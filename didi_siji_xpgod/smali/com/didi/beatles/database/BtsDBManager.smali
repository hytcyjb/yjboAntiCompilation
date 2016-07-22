.class Lcom/didi/beatles/database/BtsDBManager;
.super Ljava/lang/Object;
.source "BtsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/database/BtsDBManager$DBOpenHelper;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "bts_db.db"

.field private static final VERSION_CODE:I = 0x4b70c

.field private static sInstance:Lcom/didi/beatles/database/BtsDBManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mHelper:Lcom/didi/beatles/database/BtsDBManager$DBOpenHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/database/BtsDBManager;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 50
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 57
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 55
    const/4 p0, 0x0

    .line 56
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    const/4 p0, 0x0

    throw v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/didi/beatles/database/BtsDBManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    const-class v1, Lcom/didi/beatles/database/BtsDBManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/beatles/database/BtsDBManager;->sInstance:Lcom/didi/beatles/database/BtsDBManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/didi/beatles/database/BtsDBManager;

    invoke-direct {v0, p0}, Lcom/didi/beatles/database/BtsDBManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/beatles/database/BtsDBManager;->sInstance:Lcom/didi/beatles/database/BtsDBManager;

    .line 25
    :cond_0
    sget-object v0, Lcom/didi/beatles/database/BtsDBManager;->sInstance:Lcom/didi/beatles/database/BtsDBManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized tryOpenDB()V
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/didi/beatles/database/BtsDBManager;->mHelper:Lcom/didi/beatles/database/BtsDBManager$DBOpenHelper;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/didi/beatles/database/BtsDBManager$DBOpenHelper;

    iget-object v1, p0, Lcom/didi/beatles/database/BtsDBManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/beatles/database/BtsDBManager$DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/beatles/database/BtsDBManager;->mHelper:Lcom/didi/beatles/database/BtsDBManager$DBOpenHelper;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/database/BtsDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/didi/beatles/database/BtsDBManager;->mHelper:Lcom/didi/beatles/database/BtsDBManager$DBOpenHelper;

    invoke-virtual {v0}, Lcom/didi/beatles/database/BtsDBManager$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/database/BtsDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/database/BtsDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/beatles/database/BtsDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    iget-object v0, p0, Lcom/didi/beatles/database/BtsDBManager;->mHelper:Lcom/didi/beatles/database/BtsDBManager$DBOpenHelper;

    invoke-virtual {v0}, Lcom/didi/beatles/database/BtsDBManager$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/database/BtsDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_2
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method getDatabse()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/didi/beatles/database/BtsDBManager;->tryOpenDB()V

    .line 34
    iget-object v0, p0, Lcom/didi/beatles/database/BtsDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method
