.class public Lcom/didi/game/db/DownloadItemDAO;
.super Lcom/didi/common/database/DBHelper;
.source "DownloadItemDAO.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final AUTO_RENAME:Ljava/lang/String; = "auto_rename"

.field private static final AUTO_RESUME:Ljava/lang/String; = "auto_resume"

.field private static final BEGIN_TIME:Ljava/lang/String; = "begin_time"

.field private static final CONTENT:Ljava/lang/String; = "content"

.field public static final CREATE_SQL:Ljava/lang/String; = null

.field private static final CUR_SIZE:Ljava/lang/String; = "cur_size"

.field private static final DOWNLOAD_URL:Ljava/lang/String; = "download_url"

.field private static final END_TIME:Ljava/lang/String; = "end_title"

.field private static final FILE_LENGTH:Ljava/lang/String; = "file_length"

.field private static final FILE_NAME:Ljava/lang/String; = "file_name"

.field private static final FILE_SAVE_PATH:Ljava/lang/String; = "file_save_path"

.field private static final FIND_ALL_SQL:Ljava/lang/String; = "SELECT * FROM download_items"

.field private static final ICON_URL:Ljava/lang/String; = "icon_url"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final SELECT_BY_APP_ID_SQL:Ljava/lang/String; = "SELECT * FROM download_items WHERE app_id=?"

.field private static final SELECT_BY_ID_SQL:Ljava/lang/String; = "SELECT * FROM download_items WHERE id=? LIMIT 1"

.field private static final STATE:Ljava/lang/String; = "down_state"

.field private static final TABLE_NAME:Ljava/lang/String; = "download_items"

.field private static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 64
    const-string v0, "CREATE TABLE IF NOT EXISTS %1$s (%2$s integer primary key autoincrement,%3$s TEXT NOT NULL,%4$s TEXT NULL,%5$s TEXT NULL,%6$s TEXT NULL,%7$s INTEGER DEFAULT 0,%8$s TEXT NOT NULL,%9$s TEXT NULL,%10$s TEXT NULL,%11$s INTEGER DEFAULT 0,%12$s INTEGER DEFAULT 1,%13$s INTEGER DEFAULT 0,%14$s TEXT NULL,%15$s TEXT NULL,%16$s INTEGER DEFAULT 0)"

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "download_items"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "app_id"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "content"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "icon_url"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "down_state"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "download_url"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "file_name"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "file_save_path"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "file_length"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "auto_resume"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "auto_rename"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "begin_time"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "end_title"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "cur_size"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/didi/common/database/DBHelper;-><init>(Landroid/content/Context;)V

    .line 88
    iget-object v0, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/didi/game/db/DownloadItemDAO;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private cursor2Obj(Landroid/database/Cursor;)Lcom/didi/game/download/DownloadItem;
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    iget-object v1, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 340
    if-nez p1, :cond_0

    .line 341
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    .line 342
    :cond_0
    new-instance v0, Lcom/didi/game/download/DownloadItem;

    invoke-direct {v0}, Lcom/didi/game/download/DownloadItem;-><init>()V

    .line 343
    .local v0, item:Lcom/didi/game/download/DownloadItem;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/didi/game/download/DownloadItem;->id:J

    .line 344
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/download/DownloadItem;->appId:Ljava/lang/String;

    .line 345
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/download/DownloadItem;->title:Ljava/lang/String;

    .line 346
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/download/DownloadItem;->content:Ljava/lang/String;

    .line 347
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/download/DownloadItem;->iconUrl:Ljava/lang/String;

    .line 348
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/didi/game/download/DownloadItem;->state:I

    .line 349
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/download/DownloadItem;->downloadUrl:Ljava/lang/String;

    .line 350
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/download/DownloadItem;->fileName:Ljava/lang/String;

    .line 351
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/download/DownloadItem;->fileSavePath:Ljava/lang/String;

    .line 352
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/didi/game/download/DownloadItem;->fileLength:J

    .line 353
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/didi/game/download/DownloadItem;->autoResume:Z

    .line 354
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    iput-boolean v2, v0, Lcom/didi/game/download/DownloadItem;->autoRename:Z

    .line 355
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/download/DownloadItem;->beginTime:Ljava/lang/String;

    .line 356
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/download/DownloadItem;->endTime:Ljava/lang/String;

    .line 357
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/didi/game/download/DownloadItem;->curSize:J

    goto :goto_0

    :cond_1
    move v1, v3

    .line 353
    goto :goto_1

    :cond_2
    move v2, v3

    .line 354
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 263
    return-void
.end method

.method public deleteByAppId(J)I
    .locals 4
    .parameter "appId"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_items"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteById(J)I
    .locals 4
    .parameter "id"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_items"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dropTable(Ljava/lang/String;)V
    .locals 3
    .parameter "tableName"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/didi/game/db/DownloadItemDAO;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public exists(JJ)Z
    .locals 8
    .parameter "id"
    .parameter "appId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    iget-object v3, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT COUNT(*) FROM download_items WHERE id=? OR app_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 148
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 155
    :goto_0
    return v1

    .line 154
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v1, v2

    .line 155
    goto :goto_0
.end method

.method public exists(Lcom/didi/game/download/DownloadItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    iget-object v3, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT COUNT(*) FROM download_items WHERE id=? OR app_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p1, Lcom/didi/game/download/DownloadItem;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/didi/game/download/DownloadItem;->appId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 130
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 137
    :goto_0
    return v1

    .line 136
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v1, v2

    .line 137
    goto :goto_0
.end method

.method public existsByAppId(J)Z
    .locals 8
    .parameter "appId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v3, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT COUNT(*) FROM download_items WHERE app_id=?"

    new-array v5, v1, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 183
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 190
    :goto_0
    return v1

    .line 189
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v1, v2

    .line 190
    goto :goto_0
.end method

.method public existsById(J)Z
    .locals 8
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    iget-object v3, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT COUNT(*) FROM download_items WHERE id=?"

    new-array v5, v1, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 166
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 173
    :goto_0
    return v1

    .line 172
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v1, v2

    .line 173
    goto :goto_0
.end method

.method public findAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/didi/game/download/DownloadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/game/download/DownloadItem;>;"
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM download_items"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 325
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 326
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    invoke-direct {p0, v0}, Lcom/didi/game/db/DownloadItemDAO;->cursor2Obj(Landroid/database/Cursor;)Lcom/didi/game/download/DownloadItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 331
    return-object v1
.end method

.method public getDItemByAppId(J)Ljava/util/List;
    .locals 9
    .parameter "appId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/didi/game/download/DownloadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v3, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/game/download/DownloadItem;>;"
    const/4 v1, 0x0

    .line 272
    .local v1, item:Lcom/didi/game/download/DownloadItem;
    iget-object v3, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT * FROM download_items WHERE app_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 273
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 274
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    invoke-direct {p0, v0}, Lcom/didi/game/db/DownloadItemDAO;->cursor2Obj(Landroid/database/Cursor;)Lcom/didi/game/download/DownloadItem;

    move-result-object v1

    .line 276
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 280
    return-object v2
.end method

.method public getDItemById(J)Lcom/didi/game/download/DownloadItem;
    .locals 8
    .parameter "id"

    .prologue
    .line 288
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, item:Lcom/didi/game/download/DownloadItem;
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM download_items WHERE id=? LIMIT 1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 291
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 292
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-direct {p0, v0}, Lcom/didi/game/db/DownloadItemDAO;->cursor2Obj(Landroid/database/Cursor;)Lcom/didi/game/download/DownloadItem;

    move-result-object v1

    goto :goto_0

    .line 296
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 297
    return-object v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/database/DBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 98
    return-void
.end method

.method public save(Lcom/didi/game/download/DownloadItem;)V
    .locals 6
    .parameter "dItem"

    .prologue
    .line 103
    iget-object v3, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 104
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "app_id"

    iget-object v4, p1, Lcom/didi/game/download/DownloadItem;->appId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "title"

    iget-object v4, p1, Lcom/didi/game/download/DownloadItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "content"

    iget-object v4, p1, Lcom/didi/game/download/DownloadItem;->content:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v3, "icon_url"

    iget-object v4, p1, Lcom/didi/game/download/DownloadItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v3, "down_state"

    iget v4, p1, Lcom/didi/game/download/DownloadItem;->state:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v3, "download_url"

    iget-object v4, p1, Lcom/didi/game/download/DownloadItem;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v3, "file_name"

    iget-object v4, p1, Lcom/didi/game/download/DownloadItem;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v3, "file_save_path"

    iget-object v4, p1, Lcom/didi/game/download/DownloadItem;->fileSavePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "file_length"

    iget-wide v4, p1, Lcom/didi/game/download/DownloadItem;->fileLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    const-string v3, "auto_resume"

    iget-boolean v4, p1, Lcom/didi/game/download/DownloadItem;->autoResume:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 115
    const-string v3, "auto_rename"

    iget-boolean v4, p1, Lcom/didi/game/download/DownloadItem;->autoRename:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 116
    const-string v3, "begin_time"

    iget-object v4, p1, Lcom/didi/game/download/DownloadItem;->beginTime:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v3, "end_title"

    iget-object v4, p1, Lcom/didi/game/download/DownloadItem;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v3, "cur_size"

    iget-wide v4, p1, Lcom/didi/game/download/DownloadItem;->curSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    iget-object v3, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "download_items"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 120
    .local v1, id:J
    iput-wide v1, p1, Lcom/didi/game/download/DownloadItem;->id:J

    .line 121
    return-void
.end method

.method public update(II)I
    .locals 6
    .parameter "id"
    .parameter "state"

    .prologue
    .line 248
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 250
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .local v1, cv:Landroid/content/ContentValues;
    const-string v2, "down_state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "download_items"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 253
    .local v0, count:I
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 254
    return v0
.end method

.method public update(IJJI)I
    .locals 6
    .parameter "id"
    .parameter "fileLength"
    .parameter "curSize"
    .parameter "state"

    .prologue
    .line 230
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 232
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v1, cv:Landroid/content/ContentValues;
    const-string v2, "down_state"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v2, "file_length"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string v2, "cur_size"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "download_items"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 237
    .local v0, count:I
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 238
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 239
    return v0
.end method

.method public update(Lcom/didi/game/download/DownloadItem;)I
    .locals 7
    .parameter "dItem"

    .prologue
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update item====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/didi/game/db/DownloadItemDAO;->CREATE_SQL:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/game/db/DownloadItemDAO;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 201
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v1, cv:Landroid/content/ContentValues;
    const-string v2, "app_id"

    iget-object v3, p1, Lcom/didi/game/download/DownloadItem;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v2, "title"

    iget-object v3, p1, Lcom/didi/game/download/DownloadItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v2, "content"

    iget-object v3, p1, Lcom/didi/game/download/DownloadItem;->content:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v2, "icon_url"

    iget-object v3, p1, Lcom/didi/game/download/DownloadItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "down_state"

    iget v3, p1, Lcom/didi/game/download/DownloadItem;->state:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v2, "download_url"

    iget-object v3, p1, Lcom/didi/game/download/DownloadItem;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "file_name"

    iget-object v3, p1, Lcom/didi/game/download/DownloadItem;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v2, "file_save_path"

    iget-object v3, p1, Lcom/didi/game/download/DownloadItem;->fileSavePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "file_length"

    iget-wide v3, p1, Lcom/didi/game/download/DownloadItem;->fileLength:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    const-string v2, "auto_resume"

    iget-boolean v3, p1, Lcom/didi/game/download/DownloadItem;->autoResume:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 212
    const-string v2, "auto_rename"

    iget-boolean v3, p1, Lcom/didi/game/download/DownloadItem;->autoRename:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 213
    const-string v2, "begin_time"

    iget-object v3, p1, Lcom/didi/game/download/DownloadItem;->beginTime:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "end_title"

    iget-object v3, p1, Lcom/didi/game/download/DownloadItem;->endTime:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v2, "cur_size"

    iget-wide v3, p1, Lcom/didi/game/download/DownloadItem;->curSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "download_items"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/didi/game/download/DownloadItem;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, count:I
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 218
    iget-object v2, p0, Lcom/didi/game/db/DownloadItemDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 219
    return v0
.end method
