.class Lnet/tsz/afinal/FinalDb$SqliteDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FinalDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/FinalDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SqliteDbHelper"
.end annotation


# instance fields
.field private mDbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

.field final synthetic this$0:Lnet/tsz/afinal/FinalDb;


# direct methods
.method public constructor <init>(Lnet/tsz/afinal/FinalDb;Landroid/content/Context;Ljava/lang/String;ILnet/tsz/afinal/FinalDb$DbUpdateListener;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "version"
    .parameter "dbUpdateListener"

    .prologue
    .line 880
    iput-object p1, p0, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;->this$0:Lnet/tsz/afinal/FinalDb;

    .line 881
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 882
    iput-object p5, p0, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;->mDbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    .line 883
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 887
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 891
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;->mDbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;->mDbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    invoke-interface {v0, p1, p2, p3}, Lnet/tsz/afinal/FinalDb$DbUpdateListener;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 896
    :goto_0
    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb$SqliteDbHelper;->this$0:Lnet/tsz/afinal/FinalDb;

    invoke-virtual {v0}, Lnet/tsz/afinal/FinalDb;->dropDb()V

    goto :goto_0
.end method
