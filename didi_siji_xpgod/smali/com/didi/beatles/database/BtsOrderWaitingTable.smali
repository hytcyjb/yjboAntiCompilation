.class public Lcom/didi/beatles/database/BtsOrderWaitingTable;
.super Ljava/lang/Object;
.source "BtsOrderWaitingTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_COLUMN;,
        Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;
    }
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "waiting_record"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "order_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time_out"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/beatles/database/BtsOrderWaitingTable;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static createDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 137
    :try_start_0
    const-string v1, "CREATE TABLE waiting_record(_id INTEGER PRIMARY KEY AUTOINCREMENT,order_id VARCHAR UNIQUE,create_time INTEGER,time_out INTEGER,status INTEGER)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create waiting table error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static cursorToModel(Landroid/database/Cursor;)Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 159
    new-instance v0, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;

    invoke-direct {v0}, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;-><init>()V

    .line 160
    .local v0, model:Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;
    const-string v1, "order_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mOrderId:Ljava/lang/String;

    .line 161
    const-string v1, "create_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mCreateTime:J

    .line 162
    const-string v1, "time_out"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mTimeOut:J

    .line 163
    const-string v1, "status"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mStatus:I

    .line 164
    return-object v0
.end method

.method public static deleteAllItem(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 94
    invoke-static {p0}, Lcom/didi/beatles/database/BtsDBManager;->getInstance(Landroid/content/Context;)Lcom/didi/beatles/database/BtsDBManager;

    move-result-object v1

    .line 95
    .local v1, dbManager:Lcom/didi/beatles/database/BtsDBManager;
    invoke-virtual {v1}, Lcom/didi/beatles/database/BtsDBManager;->getDatabse()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 97
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "waiting_record"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete all item error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteItem(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/didi/beatles/database/BtsDBManager;->getInstance(Landroid/content/Context;)Lcom/didi/beatles/database/BtsDBManager;

    move-result-object v1

    .line 85
    .local v1, dbManager:Lcom/didi/beatles/database/BtsDBManager;
    invoke-virtual {v1}, Lcom/didi/beatles/database/BtsDBManager;->getDatabse()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "waiting_record"

    const-string v4, "order_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete item error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static hasWaitingItem(Landroid/content/Context;)Z
    .locals 16
    .parameter "context"

    .prologue
    .line 104
    invoke-static/range {p0 .. p0}, Lcom/didi/beatles/database/BtsDBManager;->getInstance(Landroid/content/Context;)Lcom/didi/beatles/database/BtsDBManager;

    move-result-object v10

    .line 105
    .local v10, dbManager:Lcom/didi/beatles/database/BtsDBManager;
    invoke-virtual {v10}, Lcom/didi/beatles/database/BtsDBManager;->getDatabse()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 106
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 107
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 108
    .local v12, hasWaitingItem:Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v9, datas:Ljava/util/List;,"Ljava/util/List<Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;>;"
    :try_start_0
    const-string v1, "waiting_record"

    sget-object v2, Lcom/didi/beatles/database/BtsOrderWaitingTable;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 111
    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-static {v8}, Lcom/didi/beatles/database/BtsOrderWaitingTable;->cursorToModel(Landroid/database/Cursor;)Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;

    move-result-object v14

    .line 113
    .local v14, model:Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;
    iget v1, v14, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-wide v1, v14, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mCreateTime:J

    iget-wide v3, v14, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mTimeOut:J

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 114
    const/4 v12, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v14           #model:Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;
    :catch_0
    move-exception v11

    .line 120
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting table has waiting item error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-static {v8}, Lcom/didi/beatles/database/BtsDBManager;->closeCursor(Landroid/database/Cursor;)V

    .line 126
    .end local v11           #e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    .line 127
    .local v15, size:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    if-ge v13, v15, :cond_2

    .line 128
    const-string v2, "waiting_record"

    const-string v3, "order_id=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;

    iget-object v1, v1, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mOrderId:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 127
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 122
    .end local v13           #i:I
    .end local v15           #size:I
    :cond_1
    invoke-static {v8}, Lcom/didi/beatles/database/BtsDBManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/didi/beatles/database/BtsDBManager;->closeCursor(Landroid/database/Cursor;)V

    throw v1

    .line 129
    :catch_1
    move-exception v11

    .line 130
    .restart local v11       #e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete item error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 132
    .end local v11           #e:Ljava/lang/Exception;
    :cond_2
    return v12
.end method

.method public static insertOrUpdateItem(Landroid/content/Context;Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;)V
    .locals 10
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v9, 0x1

    .line 49
    invoke-static {p0}, Lcom/didi/beatles/database/BtsDBManager;->getInstance(Landroid/content/Context;)Lcom/didi/beatles/database/BtsDBManager;

    move-result-object v1

    .line 50
    .local v1, dbManager:Lcom/didi/beatles/database/BtsDBManager;
    invoke-virtual {v1}, Lcom/didi/beatles/database/BtsDBManager;->getDatabse()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 52
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .local v4, values:Landroid/content/ContentValues;
    const-string v7, "status"

    iget v8, p1, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, row:I
    const-string v6, "order_id=?"

    .line 56
    .local v6, whereClause:Ljava/lang/String;
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mOrderId:Ljava/lang/String;

    aput-object v8, v5, v7

    .line 57
    .local v5, whereArgs:[Ljava/lang/String;
    iget v7, p1, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mStatus:I

    if-nez v7, :cond_1

    .line 58
    const-string v7, "waiting_record"

    invoke-virtual {v0, v7, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 62
    :goto_0
    if-gtz v3, :cond_0

    iget v7, p1, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mStatus:I

    if-ne v7, v9, :cond_0

    .line 63
    invoke-static {p1}, Lcom/didi/beatles/database/BtsOrderWaitingTable;->modelToContentValue(Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;)Landroid/content/ContentValues;

    move-result-object v4

    .line 64
    const-string v7, "waiting_record"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 69
    .end local v3           #row:I
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v6           #whereClause:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 60
    .restart local v3       #row:I
    .restart local v4       #values:Landroid/content/ContentValues;
    .restart local v5       #whereArgs:[Ljava/lang/String;
    .restart local v6       #whereClause:Ljava/lang/String;
    :cond_1
    const-string v7, "waiting_record"

    invoke-virtual {v0, v7, v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 66
    .end local v3           #row:I
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v6           #whereClause:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 67
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "waiting table insert item error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static modelToContentValue(Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;)Landroid/content/ContentValues;
    .locals 4
    .parameter "item"

    .prologue
    .line 150
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "order_id"

    iget-object v2, p0, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mOrderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "create_time"

    iget-wide v2, p0, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mCreateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    const-string v1, "time_out"

    iget-wide v2, p0, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mTimeOut:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    const-string v1, "status"

    iget v2, p0, Lcom/didi/beatles/database/BtsOrderWaitingTable$TABLE_MODEL;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    return-object v0
.end method

.method public static updateItemStatus(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8
    .parameter "context"
    .parameter "id"
    .parameter "status"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/didi/beatles/database/BtsDBManager;->getInstance(Landroid/content/Context;)Lcom/didi/beatles/database/BtsDBManager;

    move-result-object v1

    .line 73
    .local v1, dbManager:Lcom/didi/beatles/database/BtsDBManager;
    invoke-virtual {v1}, Lcom/didi/beatles/database/BtsDBManager;->getDatabse()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v4, "waiting_record"

    const-string v5, "order_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update item status error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
