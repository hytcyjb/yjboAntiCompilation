.class public Lcom/didi/common/database/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field public static final CALL_TYPE:Ljava/lang/String; = "call_type"

.field public static final CARPOOL_TRIP_IS_OPEN:Ljava/lang/String; = "carpool_trip_isopen"

.field public static final CARPOOL_TRIP_TYPE:Ljava/lang/String; = "carpool_trip_type"

.field public static final CAR_TIP_PRICE:Ljava/lang/String; = "car_tip_price"

.field public static final CAR_TIP_TITLE:Ljava/lang/String; = "car_tip_title"

.field public static final CITY_ID:Ljava/lang/String; = "city_id"

.field public static final CITY_LAT:Ljava/lang/String; = "city_lat"

.field public static final CITY_LNG:Ljava/lang/String; = "city_lng"

.field public static final CITY_NAME:Ljava/lang/String; = "city_name"

.field public static final CLOSE_INPUT:Ljava/lang/String; = "close_Input"

.field public static final CLOSE_REMARK:Ljava/lang/String; = "close_remark"

.field public static final CONTACT_NAME_STRING:Ljava/lang/String; = "name"

.field public static final CONTACT_PHONE_STRING:Ljava/lang/String; = "phone"

.field public static final CREATE_CONTACT_INVITE_TABLE:Ljava/lang/String; = "create table if not exists contact_invite(_id integer primary key autoincrement,name text,phone text not null,invite integer default 0);"

.field public static final CREATE_SUGGESTION_TABLE:Ljava/lang/String; = "create table if not exists suggestion(_id integer primary key autoincrement,loc_name text not null,loc_addr text,loc_district text,loc_city text  null,loc_lng text default \'0\',loc_lat text default \'0\',loc_type int default 0);"

.field public static final CREATE_TABLE_CAR_HOT_CITY:Ljava/lang/String; = "create table if not exists car_hot_city(_id integer primary key autoincrement,city_id int default 0,group_name text,city_name text,tags text);"

.field public static final CREATE_TABLE_CITY:Ljava/lang/String; = "create table if not exists city(_id integer primary key autoincrement,city_id int default 0,group_name text,city_name text,taxi_tip_title text,taxi_tip_price text,wait_time text,car_tip_title text,car_tip_price text,call_type int,text_call_tip text,city_lng text,city_lat text,limits int,open_taxi  int default 1,open_Car  int default 0,close_Input int default 0,carpool_trip_isopen int default 0,carpool_trip_type int default 1,close_remark int default 0);"

.field public static final CREATE_TABLE_CITY_INDEX:Ljava/lang/String; = "create table if not exists city_index(_id integer primary key autoincrement,city_id int default 0,group_name text,city_name text,tags text,open_taxi  int default 0,open_Car  int default 0);"

.field public static final CREATE_TABLE_TAXI_HOT_CITY:Ljava/lang/String; = "create table if not exists taxi_hot_city(_id integer primary key autoincrement,city_id int default 0,group_name text,city_name text,tags text);"

.field public static final DBNAME:Ljava/lang/String; = "didi.db"

.field public static final GROUP_NAME:Ljava/lang/String; = "group_name"

.field public static final ID_STRING:Ljava/lang/String; = "_id"

.field public static final INVITE_STRING:Ljava/lang/String; = "invite"

.field public static final LIMITS:Ljava/lang/String; = "limits"

.field public static final LOC_ADDR:Ljava/lang/String; = "loc_addr"

.field public static final LOC_CITY:Ljava/lang/String; = "loc_city"

.field public static final LOC_DISTRICT:Ljava/lang/String; = "loc_district"

.field public static final LOC_LAT:Ljava/lang/String; = "loc_lat"

.field public static final LOC_LNG:Ljava/lang/String; = "loc_lng"

.field public static final LOC_NAME:Ljava/lang/String; = "loc_name"

.field public static final LOC_TYPE:Ljava/lang/String; = "loc_type"

.field public static final OPEN_CAR:Ljava/lang/String; = "open_Car"

.field public static final OPEN_TAXI:Ljava/lang/String; = "open_taxi"

.field public static final TABLE_CAR_HOT_CITY:Ljava/lang/String; = "car_hot_city"

.field public static final TABLE_CITY:Ljava/lang/String; = "city"

.field public static final TABLE_CITY_INDEX:Ljava/lang/String; = "city_index"

.field public static final TABLE_CONTACT_INVITE:Ljava/lang/String; = "contact_invite"

.field public static final TABLE_SUGGESTION:Ljava/lang/String; = "suggestion"

.field public static final TABLE_TAXI_HOT_CITY:Ljava/lang/String; = "taxi_hot_city"

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final TAXI_TIP_PRICE:Ljava/lang/String; = "taxi_tip_price"

.field public static final TAXI_TIP_TITLE:Ljava/lang/String; = "taxi_tip_title"

.field public static final TEXT_CALL_TIP:Ljava/lang/String; = "text_call_tip"

.field private static final VERSION:I = 0x18

.field public static final WAIT_TIME:Ljava/lang/String; = "wait_time"

.field private static mInstance:Lcom/didi/common/database/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/database/DBHelper;->mInstance:Lcom/didi/common/database/DBHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 20
    const-string v0, "didi.db"

    const/4 v1, 0x0

    const/16 v2, 0x18

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 21
    return-void
.end method

.method public static XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 65
    const-string v0, "create table if not exists contact_invite(_id integer primary key autoincrement,name text,phone text not null,invite integer default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v0, "create table if not exists suggestion(_id integer primary key autoincrement,loc_name text not null,loc_addr text,loc_district text,loc_city text  null,loc_lng text default \'0\',loc_lat text default \'0\',loc_type int default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "create table if not exists car_hot_city(_id integer primary key autoincrement,city_id int default 0,group_name text,city_name text,tags text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "create table if not exists taxi_hot_city(_id integer primary key autoincrement,city_id int default 0,group_name text,city_name text,tags text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v0, "create table if not exists city_index(_id integer primary key autoincrement,city_id int default 0,group_name text,city_name text,tags text,open_taxi  int default 0,open_Car  int default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string v0, "create table if not exists city(_id integer primary key autoincrement,city_id int default 0,group_name text,city_name text,taxi_tip_title text,taxi_tip_price text,wait_time text,car_tip_title text,car_tip_price text,call_type int,text_call_tip text,city_lng text,city_lat text,limits int,open_taxi  int default 1,open_Car  int default 0,close_Input int default 0,carpool_trip_isopen int default 0,carpool_trip_type int default 1,close_remark int default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 52
    const-string v0, "contact_invite"

    invoke-direct {p0, v0}, Lcom/didi/common/database/DBHelper;->getDeleteSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/didi/common/database/DBHelper;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 53
    const-string v0, "suggestion"

    invoke-direct {p0, v0}, Lcom/didi/common/database/DBHelper;->getDeleteSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/didi/common/database/DBHelper;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 54
    const-string v0, "car_hot_city"

    invoke-direct {p0, v0}, Lcom/didi/common/database/DBHelper;->getDeleteSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/didi/common/database/DBHelper;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 55
    const-string v0, "taxi_hot_city"

    invoke-direct {p0, v0}, Lcom/didi/common/database/DBHelper;->getDeleteSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/didi/common/database/DBHelper;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 56
    const-string v0, "city_index"

    invoke-direct {p0, v0}, Lcom/didi/common/database/DBHelper;->getDeleteSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/didi/common/database/DBHelper;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 57
    const-string v0, "city"

    invoke-direct {p0, v0}, Lcom/didi/common/database/DBHelper;->getDeleteSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/didi/common/database/DBHelper;->XJExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private getDeleteSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/didi/common/database/DBHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    const-class v1, Lcom/didi/common/database/DBHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/common/database/DBHelper;->mInstance:Lcom/didi/common/database/DBHelper;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/didi/common/database/DBHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/database/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/common/database/DBHelper;->mInstance:Lcom/didi/common/database/DBHelper;

    .line 29
    :cond_0
    sget-object v0, Lcom/didi/common/database/DBHelper;->mInstance:Lcom/didi/common/database/DBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
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
    .line 34
    invoke-direct {p0, p1}, Lcom/didi/common/database/DBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/didi/common/database/DBHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/didi/common/database/DBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    return-void
.end method
