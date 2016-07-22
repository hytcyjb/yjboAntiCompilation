.class Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AVIMMessageStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DBHelper"
.end annotation


# static fields
.field static final ADD_DEDUPLICATED_TOKEN:Ljava/lang/String; = "ALTER TABLE messages ADD COLUMN dtoken VARCHAR(32);"

.field static final CONVERSATION_CREATE_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS conversations (conversation_id VARCHAR(32) NOT NULL,expireAt NUMBERIC,attr BLOB,updatedAt VARCHAR(32),createdAt VARCHAR(32),creator TEXT,members TEXT,isTransient INTEGER,lm NUMBERIC,PRIMARY KEY(conversation_id))"

.field static final MESSAGE_CREATE_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS messages (conversation_id VARCHAR(32) NOT NULL, message_id VARCHAR(32) NOT NULL, timestamp NUMBERIC, from_peer_id TEXT NOT NULL, receipt_timestamp NUMBERIC, payload BLOB, status INTEGER, breakpoint INTEGER, PRIMARY KEY(conversation_id,message_id)) "

.field static final MESSAGE_UNIQUE_INDEX_SQL:Ljava/lang/String; = "CREATE UNIQUE INDEX IF NOT EXISTS message_index on messages (conversation_id, timestamp, message_id) "


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getDatabasePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 121
    return-void
.end method

.method private static columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 152
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 153
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    move v0, v8

    .line 153
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    move v0, v8

    .line 155
    goto :goto_0
.end method

.method private static getDatabasePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.avos.avoscloud.im.v2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    const-string v0, "CREATE TABLE IF NOT EXISTS messages (conversation_id VARCHAR(32) NOT NULL, message_id VARCHAR(32) NOT NULL, timestamp NUMBERIC, from_peer_id TEXT NOT NULL, receipt_timestamp NUMBERIC, payload BLOB, status INTEGER, breakpoint INTEGER, PRIMARY KEY(conversation_id,message_id)) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS message_index on messages (conversation_id, timestamp, message_id) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    const-string v0, "CREATE TABLE IF NOT EXISTS conversations (conversation_id VARCHAR(32) NOT NULL,expireAt NUMBERIC,attr BLOB,updatedAt VARCHAR(32),createdAt VARCHAR(32),creator TEXT,members TEXT,isTransient INTEGER,lm NUMBERIC,PRIMARY KEY(conversation_id))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    packed-switch p3, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :pswitch_0
    const-string v0, "CREATE TABLE IF NOT EXISTS conversations (conversation_id VARCHAR(32) NOT NULL,expireAt NUMBERIC,attr BLOB,updatedAt VARCHAR(32),createdAt VARCHAR(32),creator TEXT,members TEXT,isTransient INTEGER,lm NUMBERIC,PRIMARY KEY(conversation_id))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_1
    :try_start_0
    const-string v0, "messages"

    const-string v1, "dtoken"

    invoke-static {p1, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "ALTER TABLE messages ADD COLUMN dtoken VARCHAR(32);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
