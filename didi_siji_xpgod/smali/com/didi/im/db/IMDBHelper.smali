.class public Lcom/didi/im/db/IMDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IMDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/im/db/IMDBHelper$CommonSentenceColumns;,
        Lcom/didi/im/db/IMDBHelper$TransactionColumns;,
        Lcom/didi/im/db/IMDBHelper$ChatRecordAndUsersColumns;,
        Lcom/didi/im/db/IMDBHelper$ChatRecordColumns;,
        Lcom/didi/im/db/IMDBHelper$SessionOrderColumns;,
        Lcom/didi/im/db/IMDBHelper$SessionColumns;,
        Lcom/didi/im/db/IMDBHelper$UsersColumns;,
        Lcom/didi/im/db/IMDBHelper$UserRole;,
        Lcom/didi/im/db/IMDBHelper$MessageType;,
        Lcom/didi/im/db/IMDBHelper$MessageStatus;,
        Lcom/didi/im/db/IMDBHelper$VoiceStatus;
    }
.end annotation


# static fields
.field public static final CREATE_CHAT_RECORD_TABLE:Ljava/lang/String; = "create table if not exists chat_record(_id integer primary key autoincrement,sid text,uid text not null,oid text,mid integer,type integer,status integer,content text,original_pic text,voice_time integer,voice_status integer,create_time text);"

.field public static final CREATE_COMMON_SENTENCE_TABLE:Ljava/lang/String; = "create table if not exists common_sentence(_id integer primary key autoincrement,content text);"

.field public static final CREATE_SESSION_TABLE:Ljava/lang/String; = "create table if not exists sessions(_id integer primary key autoincrement,sid text,mid integer,type int,title text,summary text,room_name text,unread_cnt integer default 0,draft text,create_time text);"

.field public static final CREATE_USER_TABLE:Ljava/lang/String; = "create table if not exists users(_id integer primary key autoincrement,sid text,uid text not null,role integer default 0,uname text,avatar_url text);"

.field public static final CREAT_ORDER_SESSION:Ljava/lang/String; = "create table if not exists sessions_order(_id integer primary key autoincrement,sid text,title text,oid text);"

.field public static final DBNAME:Ljava/lang/String; = "didi_im.db"

.field private static final VERSION:I = 0x2

.field private static mInstance:Lcom/didi/im/db/IMDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/im/db/IMDBHelper;->mInstance:Lcom/didi/im/db/IMDBHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 153
    const-string v0, "didi_im.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 154
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 194
    const-string v0, "create table if not exists users(_id integer primary key autoincrement,sid text,uid text not null,role integer default 0,uname text,avatar_url text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    const-string v0, "create table if not exists sessions(_id integer primary key autoincrement,sid text,mid integer,type int,title text,summary text,room_name text,unread_cnt integer default 0,draft text,create_time text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    const-string v0, "create table if not exists chat_record(_id integer primary key autoincrement,sid text,uid text not null,oid text,mid integer,type integer,status integer,content text,original_pic text,voice_time integer,voice_status integer,create_time text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    const-string v0, "create table if not exists common_sentence(_id integer primary key autoincrement,content text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    const-string v0, "create table if not exists sessions_order(_id integer primary key autoincrement,sid text,title text,oid text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    const-string v0, "IMDB createTable"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 200
    const-string v0, "------------IMDB createTable----------------"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 175
    const-string v1, "IMDB drop table"

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 178
    :try_start_0
    const-string v1, "users"

    invoke-direct {p0, v1}, Lcom/didi/im/db/IMDBHelper;->getDeleteSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v1, "sessions"

    invoke-direct {p0, v1}, Lcom/didi/im/db/IMDBHelper;->getDeleteSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v1, "chat_record"

    invoke-direct {p0, v1}, Lcom/didi/im/db/IMDBHelper;->getDeleteSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    const-string v1, "common_sentence"

    invoke-direct {p0, v1}, Lcom/didi/im/db/IMDBHelper;->getDeleteSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string v1, "sessions_order"

    invoke-direct {p0, v1}, Lcom/didi/im/db/IMDBHelper;->getDeleteSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    .line 185
    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDeleteSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/didi/im/db/IMDBHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 157
    const-class v1, Lcom/didi/im/db/IMDBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/im/db/IMDBHelper;->mInstance:Lcom/didi/im/db/IMDBHelper;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/didi/im/db/IMDBHelper;

    invoke-direct {v0, p0}, Lcom/didi/im/db/IMDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/im/db/IMDBHelper;->mInstance:Lcom/didi/im/db/IMDBHelper;

    .line 160
    :cond_0
    sget-object v0, Lcom/didi/im/db/IMDBHelper;->mInstance:Lcom/didi/im/db/IMDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/didi/im/db/IMDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 166
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/didi/im/db/IMDBHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/didi/im/db/IMDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 172
    return-void
.end method
