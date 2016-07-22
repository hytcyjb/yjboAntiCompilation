.class public Lnet/tsz/afinal/FinalDb;
.super Ljava/lang/Object;
.source "FinalDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tsz/afinal/FinalDb$DaoConfig;,
        Lnet/tsz/afinal/FinalDb$DbUpdateListener;,
        Lnet/tsz/afinal/FinalDb$SqliteDbHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FinalDb"

.field private static daoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/FinalDb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private config:Lnet/tsz/afinal/FinalDb$DaoConfig;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/tsz/afinal/FinalDb;->daoMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lnet/tsz/afinal/FinalDb$DaoConfig;)V
    .locals 6
    .parameter "config"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Lnet/tsz/afinal/exception/DbException;

    const-string v1, "daoConfig is null"

    invoke-direct {v0, v1}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Lnet/tsz/afinal/exception/DbException;

    const-string v1, "android context is null"

    invoke-direct {v0, v1}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getTargetDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getTargetDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 61
    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getTargetDirectory()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-direct {p0, v0, v1}, Lnet/tsz/afinal/FinalDb;->createDbFileOnSDCard(Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 69
    :goto_0
    iput-object p1, p0, Lnet/tsz/afinal/FinalDb;->config:Lnet/tsz/afinal/FinalDb$DaoConfig;

    .line 70
    return-void

    .line 64
    :cond_2
    new-instance v0, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;

    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getDbVersion()I

    move-result v4

    invoke-virtual {p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getDbUpdateListener()Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;-><init>(Lnet/tsz/afinal/FinalDb;Landroid/content/Context;Ljava/lang/String;ILnet/tsz/afinal/FinalDb$DbUpdateListener;)V

    .line 67
    invoke-virtual {v0}, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 64
    iput-object v0, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method private checkTableExist(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 743
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/tsz/afinal/FinalDb;->tableIsExist(Lnet/tsz/afinal/db/table/TableInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 744
    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getCreatTableSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, sql:Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 748
    .end local v0           #sql:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .parameter "context"

    .prologue
    .line 87
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 88
    .local v0, config:Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 89
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .parameter "context"
    .parameter "dbName"

    .prologue
    .line 115
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 116
    .local v0, config:Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .parameter "context"
    .parameter "targetDirectory"
    .parameter "dbName"

    .prologue
    .line 147
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 148
    .local v0, config:Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 149
    invoke-virtual {v0, p2}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setTargetDirectory(Ljava/lang/String;)V

    .line 151
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .parameter "context"
    .parameter "targetDirectory"
    .parameter "dbName"
    .parameter "isDebug"

    .prologue
    .line 165
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 166
    .local v0, config:Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 167
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setTargetDirectory(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p2}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, p3}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 170
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILnet/tsz/afinal/FinalDb$DbUpdateListener;)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .parameter "context"
    .parameter "targetDirectory"
    .parameter "dbName"
    .parameter "isDebug"
    .parameter "dbVersion"
    .parameter "dbUpdateListener"

    .prologue
    .line 218
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 219
    .local v0, config:Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 220
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setTargetDirectory(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p2}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p3}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 223
    invoke-virtual {v0, p4}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbVersion(I)V

    .line 224
    invoke-virtual {v0, p5}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbUpdateListener(Lnet/tsz/afinal/FinalDb$DbUpdateListener;)V

    .line 225
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Z)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .parameter "context"
    .parameter "dbName"
    .parameter "isDebug"

    .prologue
    .line 131
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 132
    .local v0, config:Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p2}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 135
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;ZILnet/tsz/afinal/FinalDb$DbUpdateListener;)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .parameter "context"
    .parameter "dbName"
    .parameter "isDebug"
    .parameter "dbVersion"
    .parameter "dbUpdateListener"

    .prologue
    .line 190
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 191
    .local v0, config:Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p2}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 194
    invoke-virtual {v0, p3}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbVersion(I)V

    .line 195
    invoke-virtual {v0, p4}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDbUpdateListener(Lnet/tsz/afinal/FinalDb$DbUpdateListener;)V

    .line 196
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;
    .locals 2
    .parameter "context"
    .parameter "isDebug"

    .prologue
    .line 100
    new-instance v0, Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-direct {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;-><init>()V

    .line 101
    .local v0, config:Lnet/tsz/afinal/FinalDb$DaoConfig;
    invoke-virtual {v0, p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb$DaoConfig;->setDebug(Z)V

    .line 103
    invoke-static {v0}, Lnet/tsz/afinal/FinalDb;->create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;
    .locals 1
    .parameter "daoConfig"

    .prologue
    .line 235
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->getInstance(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    return-object v0
.end method

.method private createDbFileOnSDCard(Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .parameter "sdcardPath"
    .parameter "dbfilename"

    .prologue
    const/4 v2, 0x0

    .line 859
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    .local v0, dbf:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 862
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 863
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 872
    :cond_0
    :goto_0
    return-object v2

    .line 865
    :catch_0
    move-exception v1

    .line 866
    .local v1, ioex:Ljava/io/IOException;
    new-instance v2, Lnet/tsz/afinal/exception/DbException;

    const-string v3, "\u6570\u636e\u5e93\u6587\u4ef6\u521b\u5efa\u5931\u8d25"

    invoke-direct {v2, v3, v1}, Lnet/tsz/afinal/exception/DbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 869
    .end local v1           #ioex:Ljava/io/IOException;
    :cond_1
    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    goto :goto_0
.end method

.method private debugSql(Ljava/lang/String;)V
    .locals 3
    .parameter "sql"

    .prologue
    .line 780
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb;->config:Lnet/tsz/afinal/FinalDb$DaoConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/tsz/afinal/FinalDb;->config:Lnet/tsz/afinal/FinalDb$DaoConfig;

    invoke-virtual {v0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const-string v0, "Debug SQL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>>>>>  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_0
    return-void
.end method

.method private exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V
    .locals 3
    .parameter "sqlInfo"

    .prologue
    .line 395
    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {p1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->getBindArgsAsArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    const-string v0, "FinalDb"

    const-string v1, "sava error:sqlInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter "strSQL"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 686
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 687
    invoke-direct {p0, p2}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 688
    iget-object v5, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 690
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v2, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 699
    if-eqz v0, :cond_0

    .line 700
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_0
    const/4 v0, 0x0

    .line 703
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :goto_1
    return-object v2

    .line 692
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_1
    :try_start_1
    invoke-static {v0, p1, p0}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->getEntity(Landroid/database/Cursor;Ljava/lang/Class;Lnet/tsz/afinal/FinalDb;)Ljava/lang/Object;

    move-result-object v3

    .line 693
    .local v3, t:Ljava/lang/Object;,"TT;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 696
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .end local v3           #t:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v1

    .line 697
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 699
    if-eqz v0, :cond_2

    .line 700
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_2
    const/4 v0, 0x0

    move-object v2, v4

    .line 703
    goto :goto_1

    .line 698
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 699
    if-eqz v0, :cond_3

    .line 700
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_3
    const/4 v0, 0x0

    .line 702
    throw v4
.end method

.method private static declared-synchronized getInstance(Lnet/tsz/afinal/FinalDb$DaoConfig;)Lnet/tsz/afinal/FinalDb;
    .locals 4
    .parameter "daoConfig"

    .prologue
    .line 73
    const-class v2, Lnet/tsz/afinal/FinalDb;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lnet/tsz/afinal/FinalDb;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/tsz/afinal/FinalDb;

    .line 74
    .local v0, dao:Lnet/tsz/afinal/FinalDb;
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lnet/tsz/afinal/FinalDb;

    .end local v0           #dao:Lnet/tsz/afinal/FinalDb;
    invoke-direct {v0, p0}, Lnet/tsz/afinal/FinalDb;-><init>(Lnet/tsz/afinal/FinalDb$DaoConfig;)V

    .line 76
    .restart local v0       #dao:Lnet/tsz/afinal/FinalDb;
    sget-object v1, Lnet/tsz/afinal/FinalDb;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lnet/tsz/afinal/FinalDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    monitor-exit v2

    return-object v0

    .line 73
    .end local v0           #dao:Lnet/tsz/afinal/FinalDb;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private insertContentValues(Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 4
    .parameter
    .parameter "cv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/tsz/afinal/db/table/KeyValue;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 282
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    :goto_1
    return-void

    .line 282
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/tsz/afinal/db/table/KeyValue;

    .line 283
    .local v0, kv:Lnet/tsz/afinal/db/table/KeyValue;
    invoke-virtual {v0}, Lnet/tsz/afinal/db/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/tsz/afinal/db/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    .end local v0           #kv:Lnet/tsz/afinal/db/table/KeyValue;
    :cond_1
    const-string v1, "FinalDb"

    .line 287
    const-string v2, "insertContentValues: List<KeyValue> is empty or ContentValues is empty!"

    .line 286
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private tableIsExist(Lnet/tsz/afinal/db/table/TableInfo;)Z
    .locals 8
    .parameter "table"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 751
    invoke-virtual {p1}, Lnet/tsz/afinal/db/table/TableInfo;->isCheckDatabese()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 776
    :goto_0
    return v4

    .line 754
    :cond_0
    const/4 v1, 0x0

    .line 756
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type =\'table\' AND name =\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p1}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 756
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, sql:Ljava/lang/String;
    invoke-direct {p0, v3}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 759
    iget-object v6, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 760
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 761
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 762
    .local v0, count:I
    if-lez v0, :cond_4

    .line 763
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lnet/tsz/afinal/db/table/TableInfo;->setCheckDatabese(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    if-eqz v1, :cond_1

    .line 772
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_1
    const/4 v1, 0x0

    .line 764
    goto :goto_0

    .line 768
    .end local v0           #count:I
    .end local v3           #sql:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 769
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    if-eqz v1, :cond_2

    .line 772
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_2
    const/4 v1, 0x0

    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    move v4, v5

    .line 776
    goto :goto_0

    .line 770
    :catchall_0
    move-exception v4

    .line 771
    if-eqz v1, :cond_3

    .line 772
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_3
    const/4 v1, 0x0

    .line 774
    throw v4

    .line 771
    .restart local v3       #sql:Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 772
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public delete(Ljava/lang/Object;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 322
    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V

    .line 323
    return-void
.end method

.method public deleteAll(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 359
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, sql:Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public deleteById(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 335
    invoke-static {p1, p2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V

    .line 336
    return-void
.end method

.method public deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "strWhere"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 347
    invoke-static {p1, p2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, sql:Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public dropDb()V
    .locals 4

    .prologue
    .line 381
    iget-object v1, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 382
    const-string v2, "SELECT name FROM sqlite_master WHERE type =\'table\' AND name != \'sqlite_sequence\'"

    const/4 v3, 0x0

    .line 381
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 383
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 384
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 388
    :cond_0
    if-eqz v0, :cond_1

    .line 389
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 390
    const/4 v0, 0x0

    .line 392
    :cond_1
    return-void

    .line 385
    :cond_2
    iget-object v1, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dropTable(Ljava/lang/Class;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 371
    invoke-static {p1}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v1

    .line 372
    .local v1, table:Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, sql:Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 632
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 633
    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/tsz/afinal/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter "orderBy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 644
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-direct {p0, p1, v0}, Lnet/tsz/afinal/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter "strWhere"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 659
    invoke-static {p1, p2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-direct {p0, p1, v0}, Lnet/tsz/afinal/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAllByWhere(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter "strWhere"
    .parameter "orderBy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 673
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 676
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 675
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    invoke-direct {p0, p1, v0}, Lnet/tsz/afinal/FinalDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 410
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 411
    invoke-static {p2, p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSqlAsSqlInfo(Ljava/lang/Class;Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;

    move-result-object v2

    .line 412
    .local v2, sqlInfo:Lnet/tsz/afinal/db/sqlite/SqlInfo;
    if-eqz v2, :cond_0

    .line 413
    invoke-virtual {v2}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 414
    iget-object v3, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v4

    .line 415
    invoke-virtual {v2}, Lnet/tsz/afinal/db/sqlite/SqlInfo;->getBindArgsAsStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 414
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 417
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 418
    invoke-static {v0, p2, p0}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->getEntity(Landroid/database/Cursor;Ljava/lang/Class;Lnet/tsz/afinal/FinalDb;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 423
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 426
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v3

    .line 420
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 421
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 426
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 422
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    .line 423
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 424
    throw v3

    .line 423
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public findDbModelBySQL(Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/DbModel;
    .locals 4
    .parameter "strSQL"

    .prologue
    const/4 v2, 0x0

    .line 712
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 713
    iget-object v3, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 715
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 716
    invoke-static {v0}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lnet/tsz/afinal/db/sqlite/DbModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 721
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 723
    :goto_0
    return-object v2

    .line 718
    :catch_0
    move-exception v1

    .line 719
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 720
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 721
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 722
    throw v2

    .line 721
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public findDbModelListBySQL(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "strSQL"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/tsz/afinal/db/sqlite/DbModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    invoke-direct {p0, p1}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 728
    iget-object v3, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 729
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v1, dbModelList:Ljava/util/List;,"Ljava/util/List<Lnet/tsz/afinal/db/sqlite/DbModel;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 737
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 739
    :goto_1
    return-object v1

    .line 732
    :cond_0
    :try_start_1
    invoke-static {v0}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lnet/tsz/afinal/db/sqlite/DbModel;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 734
    :catch_0
    move-exception v2

    .line 735
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 737
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 736
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 737
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 738
    throw v3
.end method

.method public findWithManyToOneById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 436
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 437
    invoke-static {p2, p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, sql:Ljava/lang/String;
    invoke-direct {p0, v2}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0, v2}, Lnet/tsz/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 440
    .local v0, dbModel:Lnet/tsz/afinal/db/sqlite/DbModel;
    if-eqz v0, :cond_0

    .line 441
    invoke-static {v0, p2}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->dbModel2Entity(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 442
    .local v1, entity:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1, p2, v3}, Lnet/tsz/afinal/FinalDb;->loadManyToOne(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 445
    .end local v1           #entity:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public varargs findWithManyToOneById(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter "id"
    .parameter
    .parameter "findClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 458
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 459
    invoke-static {p2, p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, sql:Ljava/lang/String;
    invoke-direct {p0, v2}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0, v2}, Lnet/tsz/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 462
    .local v0, dbModel:Lnet/tsz/afinal/db/sqlite/DbModel;
    if-eqz v0, :cond_0

    .line 463
    invoke-static {v0, p2}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->dbModel2Entity(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 464
    .local v1, entity:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, v0, v1, p2, p3}, Lnet/tsz/afinal/FinalDb;->loadManyToOne(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 466
    .end local v1           #entity:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public findWithOneToManyById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 545
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 546
    invoke-static {p2, p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, sql:Ljava/lang/String;
    invoke-direct {p0, v2}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0, v2}, Lnet/tsz/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 549
    .local v0, dbModel:Lnet/tsz/afinal/db/sqlite/DbModel;
    if-eqz v0, :cond_0

    .line 550
    invoke-static {v0, p2}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->dbModel2Entity(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 551
    .local v1, entity:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v1, p2, v3}, Lnet/tsz/afinal/FinalDb;->loadOneToMany(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 554
    .end local v1           #entity:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public varargs findWithOneToManyById(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter "id"
    .parameter
    .parameter "findClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 566
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 567
    invoke-static {p2, p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, sql:Ljava/lang/String;
    invoke-direct {p0, v2}, Lnet/tsz/afinal/FinalDb;->debugSql(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0, v2}, Lnet/tsz/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 570
    .local v0, dbModel:Lnet/tsz/afinal/db/sqlite/DbModel;
    if-eqz v0, :cond_0

    .line 571
    invoke-static {v0, p2}, Lnet/tsz/afinal/db/sqlite/CursorUtils;->dbModel2Entity(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 572
    .local v1, entity:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, v1, p2, p3}, Lnet/tsz/afinal/FinalDb;->loadOneToMany(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 575
    .end local v1           #entity:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public varargs loadManyToOne(Lnet/tsz/afinal/db/sqlite/DbModel;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .parameter "dbModel"
    .parameter
    .parameter
    .parameter "findClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/tsz/afinal/db/sqlite/DbModel;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 479
    .local p2, entity:Ljava/lang/Object;,"TT;"
    .local p3, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p2, :cond_1

    .line 481
    :try_start_0
    invoke-static {p3}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v7

    iget-object v7, v7, Lnet/tsz/afinal/db/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    .line 482
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 483
    .local v6, manys:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 535
    .end local v6           #manys:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_1
    :goto_1
    return-object p2

    .line 483
    .restart local v6       #manys:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/tsz/afinal/db/table/ManyToOne;

    .line 485
    .local v4, many:Lnet/tsz/afinal/db/table/ManyToOne;
    const/4 v1, 0x0

    .line 486
    .local v1, id:Ljava/lang/Object;
    if-eqz p1, :cond_7

    .line 487
    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lnet/tsz/afinal/db/sqlite/DbModel;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 494
    .end local v1           #id:Ljava/lang/Object;
    :cond_3
    :goto_2
    if-eqz v1, :cond_0

    .line 495
    const/4 v2, 0x0

    .line 496
    .local v2, isFind:Z
    if-eqz p4, :cond_4

    array-length v7, p4

    if-nez v7, :cond_5

    .line 497
    :cond_4
    const/4 v2, 0x1

    .line 499
    :cond_5
    array-length v9, p4

    const/4 v7, 0x0

    :goto_3
    if-lt v7, v9, :cond_8

    .line 505
    :goto_4
    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 510
    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;

    move-result-object v9

    .line 508
    invoke-virtual {p0, v7, v9}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 511
    .local v5, manyEntity:Ljava/lang/Object;,"TT;"
    if-eqz v5, :cond_0

    .line 512
    invoke-virtual {v4, p2}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v9, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    if-ne v7, v9, :cond_a

    .line 513
    invoke-virtual {v4, p2}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6

    .line 516
    new-instance v7, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    .line 518
    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;

    move-result-object v9

    .line 516
    invoke-direct {v7, p2, p3, v9, p0}, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lnet/tsz/afinal/FinalDb;)V

    .line 514
    invoke-virtual {v4, p2, v7}, Lnet/tsz/afinal/db/table/ManyToOne;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 522
    :cond_6
    invoke-virtual {v4, p2}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    invoke-virtual {v7, v5}, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    .end local v2           #isFind:Z
    .end local v4           #many:Lnet/tsz/afinal/db/table/ManyToOne;
    .end local v5           #manyEntity:Ljava/lang/Object;,"TT;"
    .end local v6           #manys:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :catch_0
    move-exception v0

    .line 532
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 488
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #id:Ljava/lang/Object;
    .restart local v4       #many:Lnet/tsz/afinal/db/table/ManyToOne;
    .restart local v6       #manys:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/ManyToOne;>;"
    :cond_7
    :try_start_1
    invoke-virtual {v4, p2}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v9, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    if-ne v7, v9, :cond_3

    .line 489
    invoke-virtual {v4, p2}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 490
    invoke-virtual {v4, p2}, Lnet/tsz/afinal/db/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;

    .line 491
    invoke-virtual {v7}, Lnet/tsz/afinal/db/sqlite/ManyToOneLazyLoader;->getFieldValue()Ljava/lang/Object;

    move-result-object v1

    .line 490
    goto :goto_2

    .line 499
    .end local v1           #id:Ljava/lang/Object;
    .restart local v2       #isFind:Z
    :cond_8
    aget-object v3, p4, v7

    .line 500
    .local v3, mClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Lnet/tsz/afinal/db/table/ManyToOne;->getManyClass()Ljava/lang/Class;

    move-result-object v10

    if-ne v10, v3, :cond_9

    .line 501
    const/4 v2, 0x1

    .line 502
    goto :goto_4

    .line 499
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 524
    .end local v3           #mClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v5       #manyEntity:Ljava/lang/Object;,"TT;"
    :cond_a
    invoke-virtual {v4, p2, v5}, Lnet/tsz/afinal/db/table/ManyToOne;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public varargs loadOneToMany(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .parameter
    .parameter
    .parameter "findClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, entity:Ljava/lang/Object;,"TT;"
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_1

    .line 589
    :try_start_0
    invoke-static {p2}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v8

    iget-object v8, v8, Lnet/tsz/afinal/db/table/TableInfo;->oneToManyMap:Ljava/util/HashMap;

    .line 590
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    .line 591
    .local v7, ones:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/OneToMany;>;"
    invoke-static {p2}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v8

    invoke-virtual {v8}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v8

    invoke-virtual {v8, p1}, Lnet/tsz/afinal/db/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 592
    .local v1, id:Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 623
    .end local v1           #id:Ljava/lang/Object;
    .end local v7           #ones:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/OneToMany;>;"
    :cond_1
    :goto_1
    return-object p1

    .line 592
    .restart local v1       #id:Ljava/lang/Object;
    .restart local v7       #ones:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/OneToMany;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/tsz/afinal/db/table/OneToMany;

    .line 593
    .local v5, one:Lnet/tsz/afinal/db/table/OneToMany;
    const/4 v2, 0x0

    .line 594
    .local v2, isFind:Z
    if-eqz p3, :cond_3

    array-length v8, p3

    if-nez v8, :cond_4

    .line 595
    :cond_3
    const/4 v2, 0x1

    .line 597
    :cond_4
    array-length v10, p3

    const/4 v8, 0x0

    :goto_2
    if-lt v8, v10, :cond_5

    .line 604
    :goto_3
    if-eqz v2, :cond_0

    .line 605
    invoke-virtual {v5}, Lnet/tsz/afinal/db/table/OneToMany;->getOneClass()Ljava/lang/Class;

    move-result-object v8

    .line 606
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lnet/tsz/afinal/db/table/OneToMany;->getColumn()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 605
    invoke-virtual {p0, v8, v10}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 607
    .local v3, list:Ljava/util/List;,"Ljava/util/List<*>;"
    if-eqz v3, :cond_0

    .line 609
    invoke-virtual {v5}, Lnet/tsz/afinal/db/table/OneToMany;->getDataType()Ljava/lang/Class;

    move-result-object v8

    const-class v10, Lnet/tsz/afinal/db/sqlite/OneToManyLazyLoader;

    if-ne v8, v10, :cond_7

    .line 611
    invoke-virtual {v5, p1}, Lnet/tsz/afinal/db/table/OneToMany;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/tsz/afinal/db/sqlite/OneToManyLazyLoader;

    .line 612
    .local v6, oneToManyLazyLoader:Lnet/tsz/afinal/db/sqlite/OneToManyLazyLoader;
    invoke-virtual {v6, v3}, Lnet/tsz/afinal/db/sqlite/OneToManyLazyLoader;->setList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 619
    .end local v1           #id:Ljava/lang/Object;
    .end local v2           #isFind:Z
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v5           #one:Lnet/tsz/afinal/db/table/OneToMany;
    .end local v6           #oneToManyLazyLoader:Lnet/tsz/afinal/db/sqlite/OneToManyLazyLoader;
    .end local v7           #ones:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/OneToMany;>;"
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 597
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #id:Ljava/lang/Object;
    .restart local v2       #isFind:Z
    .restart local v5       #one:Lnet/tsz/afinal/db/table/OneToMany;
    .restart local v7       #ones:Ljava/util/Collection;,"Ljava/util/Collection<Lnet/tsz/afinal/db/table/OneToMany;>;"
    :cond_5
    :try_start_1
    aget-object v4, p3, v8

    .line 598
    .local v4, mClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Lnet/tsz/afinal/db/table/OneToMany;->getOneClass()Ljava/lang/Class;

    move-result-object v11

    if-ne v11, v4, :cond_6

    .line 599
    const/4 v2, 0x1

    .line 600
    goto :goto_3

    .line 597
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 614
    .end local v4           #mClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_7
    invoke-virtual {v5, p1, v3}, Lnet/tsz/afinal/db/table/OneToMany;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public save(Ljava/lang/Object;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 245
    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->buildInsertSql(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V

    .line 246
    return-void
.end method

.method public saveBindId(Ljava/lang/Object;)Z
    .locals 9
    .parameter "entity"

    .prologue
    const/4 v4, 0x0

    .line 258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 260
    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getSaveKeyValueListByEntity(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 261
    .local v1, entityKvList:Ljava/util/List;,"Ljava/util/List<Lnet/tsz/afinal/db/table/KeyValue;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 262
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lnet/tsz/afinal/db/table/TableInfo;->get(Ljava/lang/Class;)Lnet/tsz/afinal/db/table/TableInfo;

    move-result-object v3

    .line 263
    .local v3, tf:Lnet/tsz/afinal/db/table/TableInfo;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .local v0, cv:Landroid/content/ContentValues;
    invoke-direct {p0, v1, v0}, Lnet/tsz/afinal/FinalDb;->insertContentValues(Ljava/util/List;Landroid/content/ContentValues;)V

    .line 265
    iget-object v5, p0, Lnet/tsz/afinal/FinalDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Lnet/tsz/afinal/db/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 266
    .local v2, id:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 271
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #id:Ljava/lang/Long;
    .end local v3           #tf:Lnet/tsz/afinal/db/table/TableInfo;
    :cond_0
    :goto_0
    return v4

    .line 268
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v2       #id:Ljava/lang/Long;
    .restart local v3       #tf:Lnet/tsz/afinal/db/table/TableInfo;
    :cond_1
    invoke-virtual {v3}, Lnet/tsz/afinal/db/table/TableInfo;->getId()Lnet/tsz/afinal/db/table/Id;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lnet/tsz/afinal/db/table/Id;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 299
    invoke-static {p1}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getUpdateSqlAsSqlInfo(Ljava/lang/Object;)Lnet/tsz/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V

    .line 300
    return-void
.end method

.method public update(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "entity"
    .parameter "strWhere"

    .prologue
    .line 310
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 311
    invoke-static {p1, p2}, Lnet/tsz/afinal/db/sqlite/SqlBuilder;->getUpdateSqlAsSqlInfo(Ljava/lang/Object;Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/FinalDb;->exeSqlInfo(Lnet/tsz/afinal/db/sqlite/SqlInfo;)V

    .line 312
    return-void
.end method
