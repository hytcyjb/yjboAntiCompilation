.class public Lcom/ddtaxi/common/tracesdk/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "CELL"

.field public static final b:Ljava/lang/String; = "GPS"

.field public static final c:Ljava/lang/String; = "WIFI"

.field public static final d:Ljava/lang/String; = "EXTRA"

.field private static volatile f:Lcom/ddtaxi/common/tracesdk/f;


# instance fields
.field private e:Landroid/content/Context;

.field private g:Lcom/ddtaxi/common/tracesdk/j;

.field private h:Landroid/database/sqlite/SQLiteDatabase;

.field private i:Lcom/ddtaxi/common/tracesdk/h;

.field private j:Lcom/ddtaxi/common/tracesdk/h;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ddtaxi/common/tracesdk/g;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/g;-><init>(Lcom/ddtaxi/common/tracesdk/f;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->j:Lcom/ddtaxi/common/tracesdk/h;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->e:Landroid/content/Context;

    new-instance v0, Lcom/ddtaxi/common/tracesdk/j;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/f;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ddtaxi/common/tracesdk/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->g:Lcom/ddtaxi/common/tracesdk/j;

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->g:Lcom/ddtaxi/common/tracesdk/j;

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/j;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->h:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/common/tracesdk/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->e:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/f;
    .locals 2

    sget-object v0, Lcom/ddtaxi/common/tracesdk/f;->f:Lcom/ddtaxi/common/tracesdk/f;

    if-nez v0, :cond_1

    const-class v1, Lcom/ddtaxi/common/tracesdk/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ddtaxi/common/tracesdk/f;->f:Lcom/ddtaxi/common/tracesdk/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/common/tracesdk/f;

    invoke-direct {v0, p0}, Lcom/ddtaxi/common/tracesdk/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/f;->f:Lcom/ddtaxi/common/tracesdk/f;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ddtaxi/common/tracesdk/f;->f:Lcom/ddtaxi/common/tracesdk/f;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;[B)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "ts"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "type"

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "byte_data"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "location"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->j:Lcom/ddtaxi/common/tracesdk/h;

    invoke-interface {v0}, Lcom/ddtaxi/common/tracesdk/h;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/ddtaxi/common/tracesdk/f;)Lcom/ddtaxi/common/tracesdk/h;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->i:Lcom/ddtaxi/common/tracesdk/h;

    return-object v0
.end method


# virtual methods
.method a()J
    .locals 2

    const-string v0, "select count(*) from location"

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/f;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    goto :goto_0
.end method

.method declared-synchronized a(I)Ljava/util/ArrayList;
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from location order by ts ASC limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/f;->h:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v2, "ts"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "byte_data"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete from location where ts in (select ts from location order by ts ASC LIMIT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/f;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/f;->j:Lcom/ddtaxi/common/tracesdk/h;

    invoke-interface {v1}, Lcom/ddtaxi/common/tracesdk/h;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v5, Lcom/ddtaxi/common/tracesdk/i;

    invoke-direct {v5, p0}, Lcom/ddtaxi/common/tracesdk/i;-><init>(Lcom/ddtaxi/common/tracesdk/f;)V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/ddtaxi/common/tracesdk/i;->a:J

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/ddtaxi/common/tracesdk/i;->b:Ljava/lang/String;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    iput-object v6, v5, Lcom/ddtaxi/common/tracesdk/i;->c:[B

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method a(Lcom/ddtaxi/common/tracesdk/h;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/f;->i:Lcom/ddtaxi/common/tracesdk/h;

    return-void
.end method

.method a([B)V
    .locals 1

    const-string v0, "WIFI"

    invoke-direct {p0, v0, p1}, Lcom/ddtaxi/common/tracesdk/f;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method a(Ljava/util/ArrayList;)[B
    .locals 5

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ap;->s()Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/ddtaxi/common/tracesdk/ar;->t()Lcom/ddtaxi/common/tracesdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/ap;->Y()[B

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/i;

    :try_start_0
    iget-object v3, v0, Lcom/ddtaxi/common/tracesdk/i;->b:Ljava/lang/String;

    const-string v4, "CELL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/ddtaxi/common/tracesdk/i;->c:[B

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/t;->a([B)Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/ar;->a(Lcom/ddtaxi/common/tracesdk/t;)Lcom/ddtaxi/common/tracesdk/ar;
    :try_end_0
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/fz;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, v0, Lcom/ddtaxi/common/tracesdk/i;->b:Ljava/lang/String;

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, v0, Lcom/ddtaxi/common/tracesdk/i;->c:[B

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/at;->a([B)Lcom/ddtaxi/common/tracesdk/at;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/ar;->a(Lcom/ddtaxi/common/tracesdk/at;)Lcom/ddtaxi/common/tracesdk/ar;

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/ddtaxi/common/tracesdk/i;->b:Ljava/lang/String;

    const-string v4, "GPS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, v0, Lcom/ddtaxi/common/tracesdk/i;->c:[B

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/ah;->a([B)Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/ar;->a(Lcom/ddtaxi/common/tracesdk/ah;)Lcom/ddtaxi/common/tracesdk/ar;

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/ddtaxi/common/tracesdk/i;->b:Ljava/lang/String;

    const-string v4, "EXTRA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/ddtaxi/common/tracesdk/i;->c:[B

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/ad;->a([B)Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ddtaxi/common/tracesdk/ar;->a(Lcom/ddtaxi/common/tracesdk/ad;)Lcom/ddtaxi/common/tracesdk/ar;
    :try_end_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method b()V
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getInstance(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/TraceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getEarliestInsertTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/TraceManager;->getInstance(Landroid/content/Context;)Lcom/ddtaxi/common/tracesdk/TraceManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/common/tracesdk/TraceManager;->setEarliestInsertTime(J)V

    :cond_0
    return-void
.end method

.method declared-synchronized b(Ljava/util/ArrayList;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/i;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "ts"

    iget-wide v4, v0, Lcom/ddtaxi/common/tracesdk/i;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "type"

    iget-object v4, v0, Lcom/ddtaxi/common/tracesdk/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "byte_data"

    iget-object v0, v0, Lcom/ddtaxi/common/tracesdk/i;->c:[B

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->h:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "location"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->j:Lcom/ddtaxi/common/tracesdk/h;

    invoke-interface {v0}, Lcom/ddtaxi/common/tracesdk/h;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/f;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/f;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method b([B)V
    .locals 1

    const-string v0, "CELL"

    invoke-direct {p0, v0, p1}, Lcom/ddtaxi/common/tracesdk/f;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method c([B)V
    .locals 1

    const-string v0, "GPS"

    invoke-direct {p0, v0, p1}, Lcom/ddtaxi/common/tracesdk/f;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method d([B)V
    .locals 1

    const-string v0, "EXTRA"

    invoke-direct {p0, v0, p1}, Lcom/ddtaxi/common/tracesdk/f;->a(Ljava/lang/String;[B)V

    return-void
.end method
