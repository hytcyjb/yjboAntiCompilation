.class public Lcom/ddtaxi/common/tracesdk/j;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final a:I = 0x1

.field public static final b:Ljava/lang/String; = "location"

.field public static final c:Ljava/lang/String; = "_id"

.field public static final d:Ljava/lang/String; = "ts"

.field public static final e:Ljava/lang/String; = "type"

.field public static final f:Ljava/lang/String; = "byte_data"

.field private static final g:Ljava/lang/String; = "location_info.db"

.field private static final h:Ljava/lang/String; = "create table location(_id integer primary key autoincrement, ts long, type text not null, byte_data BLOB );"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "location_info.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table location(_id integer primary key autoincrement, ts long, type text not null, byte_data BLOB );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS location"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/j;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
