.class Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;
.super Ljava/lang/Object;
.source "AVIMMessageStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageMessageCallback;,
        Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;,
        Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;,
        Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$SQL;
    }
.end annotation


# static fields
.field static final COLUMN_ATTRIBUTE:Ljava/lang/String; = "attr"

.field static final COLUMN_BREAKPOINT:Ljava/lang/String; = "breakpoint"

.field static final COLUMN_CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field static final COLUMN_CREATEDAT:Ljava/lang/String; = "createdAt"

.field static final COLUMN_CREATOR:Ljava/lang/String; = "creator"

.field static final COLUMN_DEDUPLICATED_TOKEN:Ljava/lang/String; = "dtoken"

.field static final COLUMN_EXPIREAT:Ljava/lang/String; = "expireAt"

.field static final COLUMN_FROM_PEER_ID:Ljava/lang/String; = "from_peer_id"

.field static final COLUMN_LM:Ljava/lang/String; = "lm"

.field static final COLUMN_MEMBERS:Ljava/lang/String; = "members"

.field static final COLUMN_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field static final COLUMN_PAYLOAD:Ljava/lang/String; = "payload"

.field static final COLUMN_RECEIPT_TIMESTAMP:Ljava/lang/String; = "receipt_timestamp"

.field static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field static final COLUMN_TRANSIENT:Ljava/lang/String; = "isTransient"

.field static final COLUMN_UPDATEDAT:Ljava/lang/String; = "updatedAt"

.field static final CONVERSATION_TABLE:Ljava/lang/String; = "conversations"

.field static final DB_NAME_PREFIX:Ljava/lang/String; = "com.avos.avoscloud.im.v2."

.field static final DB_VERSION:I = 0x3

.field static final MESSAGE_INDEX:Ljava/lang/String; = "message_index"

.field static final MESSAGE_TABLE:Ljava/lang/String; = "messages"

.field static messageComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static storages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field clientId:Ljava/lang/String;

.field private dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->storages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 525
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->messageComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-direct {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    .line 164
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 166
    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->clientId:Ljava/lang/String;

    .line 167
    return-void
.end method

.method private createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 10
    .parameter

    .prologue
    .line 430
    const-string v0, "message_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string v1, "timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 432
    const-string v1, "conversation_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 433
    const-string v1, "from_peer_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 434
    const-string v1, "receipt_timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 435
    const-string v1, "payload"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 436
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([B)V

    .line 437
    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 439
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-direct/range {v1 .. v7}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 440
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v1, v8}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 442
    invoke-static {v9}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getMessageStatus(I)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 443
    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;
    .locals 3
    .parameter

    .prologue
    .line 170
    const-class v2, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->storages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 174
    :cond_1
    :try_start_1
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->storages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static varargs getWhereClause([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    const-string v0, " and "

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized insertMessages(Ljava/util/List;Z)I
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 223
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 225
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v3

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 226
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 227
    const-string v7, "conversation_id"

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v7, "message_id"

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v7, "timestamp"

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    const-string v7, "from_peer_id"

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getFrom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v7, "payload"

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 232
    const-string v7, "receipt_timestamp"

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getReceiptTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 233
    const-string v7, "status"

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageStatus()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v7, "breakpoint"

    if-eqz p2, :cond_1

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :try_start_1
    const-string v0, "messages"

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v4, v0, v7, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    .line 239
    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    move v0, v2

    .line 240
    :goto_2
    if-eqz v0, :cond_4

    .line 241
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    .line 247
    goto/16 :goto_0

    :cond_1
    move v0, v3

    .line 234
    goto :goto_1

    :cond_2
    move v0, v3

    .line 239
    goto :goto_2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    :try_start_2
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 249
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 250
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    monitor-exit p0

    return v1

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method private parseConversationFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 13
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 599
    const-string v0, "conversation_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 600
    const-string v2, "createdAt"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 601
    const-string v3, "updatedAt"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 602
    const-string v4, "members"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 603
    const-string v5, "attr"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 604
    const-string v6, "creator"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 605
    const-string v7, "lm"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 606
    const-string v7, "isTransient"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 608
    new-instance v10, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    new-instance v11, Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v12, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->clientId:Ljava/lang/String;

    invoke-direct {v11, v12, v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v10, v11, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    .line 610
    iput-object v2, v10, Lcom/avos/avoscloud/im/v2/AVIMConversation;->createdAt:Ljava/lang/String;

    .line 611
    iput-object v3, v10, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updatedAt:Ljava/lang/String;

    .line 613
    :try_start_0
    const-class v0, Ljava/util/Set;

    invoke-static {v4, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, v10, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    .line 614
    const-class v0, Ljava/util/HashMap;

    invoke-static {v5, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, v10, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :cond_0
    :goto_0
    iput-object v6, v10, Lcom/avos/avoscloud/im/v2/AVIMConversation;->creator:Ljava/lang/String;

    .line 621
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    iput-object v0, v10, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    .line 622
    if-ne v7, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v10, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    .line 623
    return-object v10

    .line 615
    :catch_0
    move-exception v0

    .line 616
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error during conversation cache parse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processMessages(Landroid/database/Cursor;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 447
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 448
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 449
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 452
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    .line 454
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    const-string v0, "breakpoint"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 456
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 455
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object v0, v1

    move-object v1, v2

    .line 460
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 461
    invoke-interface {p2, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;->done(Ljava/util/List;Ljava/util/List;)V

    .line 462
    return-void
.end method

.method private declared-synchronized updateBreakpointsForBatch(Ljava/util/List;ZLjava/lang/String;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;Z",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 299
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 300
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 302
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 303
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 304
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 305
    const-string v0, "?"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 308
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 309
    const-string v6, "breakpoint"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    const-string v0, ","

    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string v1, "messages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message_id in ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v5, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 313
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    .line 309
    goto :goto_1

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public containMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 276
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 277
    const-string v1, "messages"

    new-array v2, v9, [Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "conversation_id"

    aput-object v4, v3, v9

    const-string v4, "message_id"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    iget-object v6, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    aput-object v6, v4, v9

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 280
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v8

    .line 281
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 282
    return v0

    :cond_0
    move v0, v9

    .line 280
    goto :goto_0
.end method

.method public declared-synchronized deleteClientData()V
    .locals 4

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 352
    const-string v1, "messages"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 353
    const-string v1, "conversations"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteConversation(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 659
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 660
    const-string v1, "conversations"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "conversation_id"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 662
    return-void
.end method

.method public declared-synchronized deleteConversationData(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 344
    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conversation_id"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 346
    const-string v1, "conversations"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conversation_id"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteMessages(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 331
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 332
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getNextMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v4

    .line 334
    if-eqz v4, :cond_0

    .line 335
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/avos/avoscloud/im/v2/AVIMMessage;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateBreakpoints(Ljava/util/List;ZLjava/lang/String;)V

    .line 337
    :cond_0
    const-string v0, "messages"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "message_id"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v1, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 340
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getAllCachedConversations()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 583
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 584
    const-string v1, "conversations"

    const-string v3, "expireAt > ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 588
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 589
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 590
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 591
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->parseConversationFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 594
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 595
    return-object v1
.end method

.method public getCachedConversations(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM conversations WHERE conversation_id in (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-static {p1, v2}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 648
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 649
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 650
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 651
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->parseConversationFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 654
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 655
    return-object v1
.end method

.method public getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 627
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 628
    const-string v1, "conversations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "conversation_id"

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "expireAt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 634
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 636
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 637
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->parseConversationFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v2

    .line 639
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 640
    return-object v2
.end method

.method getLatestMessage(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 484
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 485
    const-string v1, "messages"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "conversation_id"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    const-string v7, "timestamp desc, message_id desc"

    const-string v8, "1"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v2

    .line 492
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 493
    return-object v2
.end method

.method getLatestMessage(Ljava/lang/String;J)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 497
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 498
    const-string v1, "messages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "conversation_id"

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "timestamp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v7, "timestamp desc, message_id desc"

    const-string v8, "1"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 504
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v2

    .line 507
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 508
    return-object v2
.end method

.method getLatestMessageWithBreakpoint(Ljava/lang/String;Z)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 512
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 513
    const-string v1, "messages"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "conversation_id"

    aput-object v4, v3, v5

    const-string v4, "breakpoint"

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v5

    if-eqz p2, :cond_1

    const-string v5, "1"

    :goto_0
    aput-object v5, v4, v6

    const-string v7, "timestamp desc, message_id desc"

    const-string v8, "1"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 518
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v2

    .line 521
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 522
    return-object v2

    .line 513
    :cond_1
    const-string v5, "0"

    goto :goto_0
.end method

.method getMessage(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageMessageCallback;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p5, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageMessageCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V

    .line 380
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 363
    if-nez p1, :cond_2

    .line 364
    const-string v1, "messages"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "timestamp"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "conversation_id"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 371
    :goto_1
    const/4 v2, 0x0

    .line 372
    const/4 v1, 0x0

    .line 373
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v2

    .line 375
    const-string v1, "breakpoint"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 377
    :cond_1
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 378
    invoke-interface {p5, v2, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageMessageCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V

    goto :goto_0

    .line 368
    :cond_2
    const-string v1, "messages"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "message_id"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 375
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getMessageCount(Ljava/lang/String;)J
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 406
    invoke-virtual {p0, p1, v6}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getLatestMessageWithBreakpoint(Ljava/lang/String;Z)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 410
    if-nez v0, :cond_0

    .line 411
    const-string v0, "select count(*) from messages where conversation_id = ?"

    new-array v2, v6, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-static {v1, v0, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 426
    :goto_0
    return-wide v0

    .line 415
    :cond_0
    const-string v2, "select count(*) from messages where conversation_id = ? and (timestamp > ? or ( timestamp = ? and message_id >= ? )) order by timestamp desc, message_id desc"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    iget-wide v4, v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-wide v6, v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMessages(Ljava/lang/String;JILjava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 384
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 387
    const-wide/16 v6, 0x0

    cmp-long v3, p2, v6

    if-lez v3, :cond_1

    .line 388
    if-nez p1, :cond_0

    .line 389
    const-string v5, "timestamp < ? and conversation_id = ? "

    .line 390
    new-array v6, v10, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    aput-object p5, v6, v9

    .line 400
    :goto_0
    const-string v3, "messages"

    const-string v9, "timestamp desc, message_id desc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 402
    move-object/from16 v0, p6

    invoke-direct {p0, v2, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->processMessages(Landroid/database/Cursor;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;)V

    .line 403
    return-void

    .line 392
    :cond_0
    const-string v5, " ( timestamp < ? or (timestamp = ? and message_id < ? )) and conversation_id = ? "

    .line 393
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    aput-object p1, v6, v10

    const/4 v3, 0x3

    aput-object p5, v6, v3

    goto :goto_0

    .line 397
    :cond_1
    new-array v3, v9, [Ljava/lang/String;

    const-string v5, "conversation_id"

    aput-object v5, v3, v8

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    new-array v6, v9, [Ljava/lang/String;

    aput-object p5, v6, v8

    goto :goto_0
.end method

.method protected getNextMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 465
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 466
    const-string v1, "messages"

    const-string v3, " ( timestamp > ? or (timestamp = ? and message_id > ? )) and conversation_id = ? "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v7, "timestamp , message_id"

    const-string v8, "1"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 476
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->createMessageFromCursor(Landroid/database/Cursor;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v2

    .line 479
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 480
    return-object v2
.end method

.method public insertContinuousMessages(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 255
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 257
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->messageComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 259
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 260
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 261
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->containMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 262
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getNextMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_1

    .line 264
    new-array v3, v5, [Lcom/avos/avoscloud/im/v2/AVIMMessage;

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v5, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateBreakpoints(Ljava/util/List;ZLjava/lang/String;)V

    .line 267
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 268
    invoke-direct {p0, v2, v4}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertMessages(Ljava/util/List;Z)I

    .line 270
    invoke-virtual {p0, v2, v4, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateBreakpoints(Ljava/util/List;ZLjava/lang/String;)V

    .line 272
    :cond_2
    invoke-virtual {p0, v0, v5}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V

    goto :goto_0
.end method

.method public insertConversations(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 548
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 549
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 550
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 551
    const-string v1, "attr"

    iget-object v5, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v1, "createdAt"

    iget-object v5, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->createdAt:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v1, "updatedAt"

    iget-object v5, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updatedAt:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v1, "creator"

    iget-object v5, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->creator:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v1, "expireAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 557
    iget-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 558
    const-string v1, "lm"

    iget-object v5, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 560
    :cond_0
    const-string v1, "members"

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getMembers()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v5, "isTransient"

    iget-boolean v1, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    const-string v1, "conversation_id"

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "conversations"

    const/4 v1, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    .line 561
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 565
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 566
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 567
    return-void
.end method

.method public insertLocalMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 196
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 197
    const-string v1, "messages"

    new-array v2, v9, [Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "conversation_id"

    aput-object v4, v3, v9

    const-string v4, "dtoken"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    iget-object v6, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    aput-object v6, v4, v9

    iget-object v6, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 200
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v8

    .line 201
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 203
    if-eqz v0, :cond_1

    .line 219
    :goto_1
    return-void

    :cond_0
    move v0, v9

    .line 200
    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 207
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 208
    const-string v2, "conversation_id"

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v2, "message_id"

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "timestamp"

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    const-string v2, "from_peer_id"

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "payload"

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 213
    const-string v2, "receipt_timestamp"

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getReceiptTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 214
    const-string v2, "status"

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageStatus()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v2, "breakpoint"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const-string v2, "dtoken"

    iget-object v3, p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v2, "messages"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_1
.end method

.method public insertMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/avos/avoscloud/im/v2/AVIMMessage;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertMessages(Ljava/util/List;Z)I

    .line 190
    return-void
.end method

.method protected declared-synchronized updateBreakpoints(Ljava/util/List;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 288
    monitor-enter p0

    const/16 v0, 0x384

    .line 289
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 290
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateBreakpointsForBatch(Ljava/util/List;ZLjava/lang/String;)I

    .line 291
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateBreakpoints(Ljava/util/List;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :goto_0
    monitor-exit p0

    return-void

    .line 293
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateBreakpointsForBatch(Ljava/util/List;ZLjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateConversationLastMessageAt(Lcom/avos/avoscloud/im/v2/AVIMConversation;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 570
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getLastMessageAt()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 572
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 573
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 574
    const-string v4, "lm"

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getLastMessageAt()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 575
    const-string v4, "conversations"

    new-array v5, v0, [Ljava/lang/String;

    const-string v6, "conversation_id"

    aput-object v6, v5, v1

    invoke-static {v5}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 577
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 579
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 577
    goto :goto_0

    :cond_1
    move v0, v1

    .line 579
    goto :goto_0
.end method

.method public declared-synchronized updateMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->dbHelper:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 318
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 319
    const-string v4, "timestamp"

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 320
    const-string v4, "status"

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageStatus()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v4, "receipt_timestamp"

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getReceiptTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 322
    const-string v4, "message_id"

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v4, "messages"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "message_id"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v2, v2

    .line 326
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
