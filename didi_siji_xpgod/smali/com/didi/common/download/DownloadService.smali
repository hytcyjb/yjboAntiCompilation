.class public Lcom/didi/common/download/DownloadService;
.super Landroid/app/IntentService;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/download/DownloadService$LocalPrefHelper;,
        Lcom/didi/common/download/DownloadService$ProgressReceiver;,
        Lcom/didi/common/download/DownloadService$DownloadState;
    }
.end annotation


# static fields
.field public static final ADD_TASK:Ljava/lang/String; = "add_task"

.field public static final DELETE_TASK:Ljava/lang/String; = "del_task"

.field public static final DOWNLOAD_PROGRESS_ACTION:Ljava/lang/String; = "download_progress_action"

.field public static final DOWN_PARAM:Ljava/lang/String; = "down_param"

.field public static final KEY_DOWN_URL:Ljava/lang/String; = "down_url"

.field public static final KEY_ERR_MSG:Ljava/lang/String; = "err_msg"

.field public static final KEY_MSG_TYPE:Ljava/lang/String; = "msg_type"

.field public static final KEY_TASK_PROGRESS:Ljava/lang/String; = "task_progress"

.field public static final KEY_TASK_TOTAL:Ljava/lang/String; = "task_total"

.field public static final STOP_TASK:Ljava/lang/String; = "stop_task"

.field public static final VAL_MSG_TASK_COMPLETE:I = 0x2

.field public static final VAL_MSG_TASK_DELETE:I = 0x5

.field public static final VAL_MSG_TASK_ERR:I = 0x4

.field public static final VAL_MSG_TASK_STOP:I = 0x3

.field public static final VAL_MSG_UPDATE_PROGRESS:I = 0x1

.field private static mStartId:I


# instance fields
.field private mIsWorking:Z

.field private volatile mState:Lcom/didi/common/download/DownloadService$DownloadState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, -0x1

    sput v0, Lcom/didi/common/download/DownloadService;->mStartId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/didi/common/download/DownloadService$DownloadState;->IDLE:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v0, p0, Lcom/didi/common/download/DownloadService;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/download/DownloadService;->mIsWorking:Z

    .line 77
    return-void
.end method

.method private check(JLjava/lang/String;)Z
    .locals 9
    .parameter "total"
    .parameter "url"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    .line 227
    invoke-static {p0}, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->getInstance(Landroid/content/Context;)Lcom/didi/common/download/DownloadService$LocalPrefHelper;

    move-result-object v2

    .line 228
    .local v2, pref:Lcom/didi/common/download/DownloadService$LocalPrefHelper;
    const-string v6, "size"

    invoke-virtual {v2, v6, v7, v8}, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 229
    .local v3, size:J
    cmp-long v6, v3, v7

    if-eqz v6, :cond_0

    cmp-long v6, v3, p1

    if-nez v6, :cond_2

    .line 230
    :cond_0
    const/4 v5, 0x1

    .line 238
    :cond_1
    :goto_0
    return v5

    .line 232
    :cond_2
    invoke-static {p0, p3}, Lcom/didi/common/download/DownloadService;->getTempFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 235
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private generateFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "url"
    .parameter "path"

    .prologue
    const/4 v8, 0x0

    .line 399
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-object v8

    .line 403
    :cond_1
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 408
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 410
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-nez v10, :cond_0

    .line 416
    :cond_2
    const/4 v9, 0x0

    .line 417
    .local v9, ret:Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 418
    .local v4, i:I
    if-lez v4, :cond_6

    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    if-ge v4, v10, :cond_6

    .line 421
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 422
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 424
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 425
    const/4 v10, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 428
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 429
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v2, file:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    .local v3, file2:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 432
    :cond_4
    invoke-virtual {p0, v7}, Lcom/didi/common/download/DownloadService;->getFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, nam:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/didi/common/download/DownloadService;->getFileExtensionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, ext:Ljava/lang/String;
    invoke-static {v6}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 438
    const/4 v5, 0x1

    .local v5, n:I
    :goto_1
    const/16 v10, 0x2710

    if-ge v5, v10, :cond_6

    .line 439
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 440
    .local v8, p:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .restart local v2       #file:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    .end local v3           #file2:Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .restart local v3       #file2:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 438
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #ext:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #file2:Ljava/io/File;
    .end local v5           #n:I
    .end local v6           #nam:Ljava/lang/String;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #p:Ljava/lang/String;
    :cond_6
    move-object v8, v9

    .line 451
    goto/16 :goto_0
.end method

.method public static getTempFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "url"

    .prologue
    .line 385
    invoke-static {p0}, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->getInstance(Landroid/content/Context;)Lcom/didi/common/download/DownloadService$LocalPrefHelper;

    move-result-object v0

    .line 386
    .local v0, pref:Lcom/didi/common/download/DownloadService$LocalPrefHelper;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeTempFilePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "url"

    .prologue
    .line 373
    invoke-static {p0}, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->getInstance(Landroid/content/Context;)Lcom/didi/common/download/DownloadService$LocalPrefHelper;

    move-result-object v0

    .line 374
    .local v0, pref:Lcom/didi/common/download/DownloadService$LocalPrefHelper;
    invoke-virtual {v0, p1}, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->remove(Ljava/lang/String;)Z

    .line 375
    return-void
.end method

.method private saveTempFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "path"

    .prologue
    .line 367
    invoke-static {p0}, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->getInstance(Landroid/content/Context;)Lcom/didi/common/download/DownloadService$LocalPrefHelper;

    move-result-object v0

    .line 368
    .local v0, pref:Lcom/didi/common/download/DownloadService$LocalPrefHelper;
    invoke-virtual {v0, p1, p2}, Lcom/didi/common/download/DownloadService$LocalPrefHelper;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 369
    return-void
.end method


# virtual methods
.method public getFileExtensionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    .line 482
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-object v1

    .line 486
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 487
    .local v0, i:I
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 491
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    .line 462
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-object v1

    .line 466
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 467
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 471
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v2, "download_progress_action"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, i:Landroid/content/Intent;
    const-string v2, "msg_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    const-string v2, "down_url"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0}, Lcom/didi/common/download/DownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 272
    .local v1, mgr:Landroid/support/v4/content/LocalBroadcastManager;
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 273
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 82
    return-void
.end method

.method public onDelete(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v2, "download_progress_action"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, i:Landroid/content/Intent;
    const-string v2, "msg_type"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v2, "down_url"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0}, Lcom/didi/common/download/DownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 317
    .local v1, mgr:Landroid/support/v4/content/LocalBroadcastManager;
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 318
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .parameter "errMsg"

    .prologue
    .line 298
    new-instance v0, Landroid/content/Intent;

    const-string v2, "download_progress_action"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, i:Landroid/content/Intent;
    const-string v2, "msg_type"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v2, "down_url"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v2, "err_msg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0}, Lcom/didi/common/download/DownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 303
    .local v1, mgr:Landroid/support/v4/content/LocalBroadcastManager;
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 304
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 28
    .parameter "intent"

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/didi/common/download/DownloadService;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    sget-object v26, Lcom/didi/common/download/DownloadService$DownloadState;->RUNNING:Lcom/didi/common/download/DownloadService$DownloadState;

    move-object/from16 v0, v26

    if-eq v2, v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v2, "down_param"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v22

    check-cast v22, Lcom/didi/common/download/DownloadParam;

    .line 134
    .local v22, param:Lcom/didi/common/download/DownloadParam;
    new-instance v17, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v17 .. v17}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 135
    .local v17, httpParam:Lorg/apache/http/params/HttpParams;
    invoke-virtual/range {v22 .. v22}, Lcom/didi/common/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, url:Ljava/lang/String;
    new-instance v16, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 137
    .local v16, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 140
    .local v9, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/didi/common/download/DownloadService;->getTempFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 141
    .local v15, filePath:Ljava/lang/String;
    invoke-static {v15}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    invoke-virtual/range {v22 .. v22}, Lcom/didi/common/download/DownloadParam;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 144
    .local v23, path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/didi/common/download/DownloadService;->generateFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 147
    .end local v23           #path:Ljava/lang/String;
    :cond_1
    invoke-static {v15}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    const v2, 0x7f0b04d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/didi/common/download/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/didi/common/download/DownloadService;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/didi/common/download/DownloadService;->saveTempFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-wide/16 v4, 0x0

    .line 156
    .local v4, curSize:J
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v25, tmpFile:Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    const-wide/16 v4, 0x0

    .line 159
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 165
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/didi/common/download/DownloadService;->mIsWorking:Z

    .line 167
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    .line 168
    .local v24, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 169
    .local v10, code:I
    const/16 v2, 0xc8

    if-eq v10, v2, :cond_4

    const/16 v2, 0xce

    if-ne v10, v2, :cond_7

    .line 170
    :cond_4
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 173
    .local v12, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    .line 174
    .local v6, totalSize:J
    add-long/2addr v6, v4

    .line 176
    const/16 v19, 0x0

    .line 177
    .local v19, len:I
    const v2, 0xa000

    new-array v8, v2, [B

    .line 178
    .local v8, buffer:[B
    new-instance v13, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v13, v15, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .local v13, f:Ljava/io/RandomAccessFile;
    invoke-virtual {v13, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 180
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    .line 181
    .local v18, is:Ljava/io/InputStream;
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v19

    if-lez v19, :cond_6

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/didi/common/download/DownloadService;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    sget-object v26, Lcom/didi/common/download/DownloadService$DownloadState;->RUNNING:Lcom/didi/common/download/DownloadService$DownloadState;

    move-object/from16 v0, v26

    if-ne v2, v0, :cond_5

    .line 184
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v4, v4, v26

    move-object/from16 v2, p0

    .line 185
    invoke-virtual/range {v2 .. v7}, Lcom/didi/common/download/DownloadService;->onProgressChanged(Ljava/lang/String;JJ)V

    .line 186
    const/4 v2, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v8, v2, v0}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 198
    .end local v6           #totalSize:J
    .end local v8           #buffer:[B
    .end local v10           #code:I
    .end local v12           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #f:Ljava/io/RandomAccessFile;
    .end local v18           #is:Ljava/io/InputStream;
    .end local v19           #len:I
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v11

    .line 199
    .local v11, e1:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    const v2, 0x7f0b0351

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/didi/common/download/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/didi/common/download/DownloadService;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/didi/common/download/DownloadService;->mIsWorking:Z

    goto/16 :goto_0

    .line 187
    .end local v11           #e1:Ljava/io/IOException;
    .restart local v6       #totalSize:J
    .restart local v8       #buffer:[B
    .restart local v10       #code:I
    .restart local v12       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #f:Ljava/io/RandomAccessFile;
    .restart local v18       #is:Ljava/io/InputStream;
    .restart local v19       #len:I
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/didi/common/download/DownloadService;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    sget-object v26, Lcom/didi/common/download/DownloadService$DownloadState;->STOP:Lcom/didi/common/download/DownloadService$DownloadState;

    move-object/from16 v0, v26

    if-ne v2, v0, :cond_6

    .line 188
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v4, v4, v26

    move-object/from16 v2, p0

    .line 189
    invoke-virtual/range {v2 .. v7}, Lcom/didi/common/download/DownloadService;->onProgressChanged(Ljava/lang/String;JJ)V

    .line 190
    const/4 v2, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v8, v2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 196
    :cond_6
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .end local v6           #totalSize:J
    .end local v8           #buffer:[B
    .end local v12           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #f:Ljava/io/RandomAccessFile;
    .end local v18           #is:Ljava/io/InputStream;
    .end local v19           #len:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/didi/common/download/DownloadService;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    sget-object v26, Lcom/didi/common/download/DownloadService$DownloadState;->STOP:Lcom/didi/common/download/DownloadService$DownloadState;

    move-object/from16 v0, v26

    if-ne v2, v0, :cond_8

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/didi/common/download/DownloadService;->onStop(Ljava/lang/String;)V

    .line 223
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/didi/common/download/DownloadService;->mIsWorking:Z

    goto/16 :goto_0

    .line 207
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/didi/common/download/DownloadService;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    sget-object v26, Lcom/didi/common/download/DownloadService$DownloadState;->RUNNING:Lcom/didi/common/download/DownloadService$DownloadState;

    move-object/from16 v0, v26

    if-ne v2, v0, :cond_9

    .line 208
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/didi/common/download/DownloadService;->removeTempFilePath(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x0

    const-string v26, ".tmp"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v15, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 210
    .local v21, newName:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v20, newFile:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v13, f:Ljava/io/File;
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 213
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/didi/common/download/DownloadService;->onComplete(Ljava/lang/String;)V

    goto :goto_2

    .line 214
    .end local v13           #f:Ljava/io/File;
    .end local v20           #newFile:Ljava/io/File;
    .end local v21           #newName:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/didi/common/download/DownloadService;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    sget-object v26, Lcom/didi/common/download/DownloadService$DownloadState;->DELETE:Lcom/didi/common/download/DownloadService$DownloadState;

    move-object/from16 v0, v26

    if-ne v2, v0, :cond_a

    .line 216
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 218
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/didi/common/download/DownloadService;->onDelete(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/didi/common/download/DownloadService;->removeTempFilePath(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 221
    .end local v14           #file:Ljava/io/File;
    :cond_a
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/didi/common/download/DownloadService;->removeTempFilePath(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onProgressChanged(Ljava/lang/String;JJ)V
    .locals 4
    .parameter "url"
    .parameter "progress"
    .parameter "total"

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v2, "download_progress_action"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, i:Landroid/content/Intent;
    const-string v2, "msg_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string v2, "down_url"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v2, "task_progress"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 256
    const-string v2, "task_total"

    invoke-virtual {v0, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0}, Lcom/didi/common/download/DownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 258
    .local v1, mgr:Landroid/support/v4/content/LocalBroadcastManager;
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 259
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, action:Ljava/lang/String;
    const-string v1, "stop_task"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lcom/didi/common/download/DownloadService$DownloadState;->STOP:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v1, p0, Lcom/didi/common/download/DownloadService;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    .line 117
    :goto_0
    sput p3, Lcom/didi/common/download/DownloadService;->mStartId:I

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    :goto_1
    return v1

    .line 90
    :cond_0
    const-string v1, "del_task"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    sget-object v1, Lcom/didi/common/download/DownloadService$DownloadState;->DELETE:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v1, p0, Lcom/didi/common/download/DownloadService;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    goto :goto_0

    .line 109
    :cond_1
    iget-boolean v1, p0, Lcom/didi/common/download/DownloadService;->mIsWorking:Z

    if-eqz v1, :cond_2

    .line 111
    sget v1, Lcom/didi/common/download/DownloadService;->mStartId:I

    goto :goto_1

    .line 113
    :cond_2
    sget-object v1, Lcom/didi/common/download/DownloadService$DownloadState;->RUNNING:Lcom/didi/common/download/DownloadService$DownloadState;

    iput-object v1, p0, Lcom/didi/common/download/DownloadService;->mState:Lcom/didi/common/download/DownloadService$DownloadState;

    goto :goto_0
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string v2, "download_progress_action"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, i:Landroid/content/Intent;
    const-string v2, "msg_type"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v2, "down_url"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0}, Lcom/didi/common/download/DownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 286
    .local v1, mgr:Landroid/support/v4/content/LocalBroadcastManager;
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 287
    return-void
.end method
