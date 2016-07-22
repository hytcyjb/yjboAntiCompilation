.class public Lcom/didi/common/download/DownloadService$LocalPrefHelper;
.super Ljava/lang/Object;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalPrefHelper"
.end annotation


# static fields
.field private static mInstance:Lcom/didi/common/download/DownloadService$LocalPrefHelper;


# instance fields
.field private PREFERENCES_NAME:Ljava/lang/String;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    const-string v0, "down"

    iput-object v0, p0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->PREFERENCES_NAME:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->PREFERENCES_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mPreferences:Landroid/content/SharedPreferences;

    .line 508
    iget-object v0, p0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 509
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/didi/common/download/DownloadService$LocalPrefHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 512
    const-class v1, Lcom/didi/common/download/DownloadService$LocalPrefHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mInstance:Lcom/didi/common/download/DownloadService$LocalPrefHelper;

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/download/DownloadService$LocalPrefHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mInstance:Lcom/didi/common/download/DownloadService$LocalPrefHelper;

    .line 515
    :cond_0
    sget-object v0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mInstance:Lcom/didi/common/download/DownloadService$LocalPrefHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putLong(Ljava/lang/String;J)Z
    .locals 1
    .parameter "key"
    .parameter "l"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 524
    iget-object v0, p0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "s"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 533
    iget-object v0, p0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 538
    iget-object v0, p0, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
