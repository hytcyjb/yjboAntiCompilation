.class public Lcom/didi/game/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/game/download/DownloadManager$1;,
        Lcom/didi/game/download/DownloadManager$RemoveCallback;,
        Lcom/didi/game/download/DownloadManager$ManagerCallBack;
    }
.end annotation


# static fields
.field public static final REMOVE_DOWN_FAILURE:I = 0x535

.field public static final REMOVE_SUCCESS:I = 0x1


# instance fields
.field private db:Lcom/didi/game/db/DownloadItemDAO;

.field private downloadItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/game/download/DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private maxDownloadThread:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "appContext"

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v1, 0x3

    iput v1, p0, Lcom/didi/game/download/DownloadManager;->maxDownloadThread:I

    .line 185
    iput-object p1, p0, Lcom/didi/game/download/DownloadManager;->mContext:Landroid/content/Context;

    .line 186
    new-instance v1, Lcom/didi/game/db/DownloadItemDAO;

    invoke-direct {v1, p1}, Lcom/didi/game/db/DownloadItemDAO;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;

    invoke-virtual {v1}, Lcom/didi/game/db/DownloadItemDAO;->findAll()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;
    :try_end_0
    .catch Lnet/tsz/afinal/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    .line 195
    :cond_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Lnet/tsz/afinal/exception/DbException;
    invoke-virtual {v0}, Lnet/tsz/afinal/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/didi/game/download/DownloadManager;)Lcom/didi/game/db/DownloadItemDAO;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/game/download/DownloadManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/game/download/DownloadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkFileOk(Ljava/lang/String;J)Z
    .locals 4
    .parameter "file"
    .parameter "fileLength"

    .prologue
    const/4 v1, 0x0

    .line 174
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, appFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    .line 177
    const/4 v1, 0x1

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private checkPass(Lcom/didi/game/model/GameInfo;)Z
    .locals 2
    .parameter "gameInfo"

    .prologue
    const/4 v0, 0x0

    .line 86
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    iget-object v1, p1, Lcom/didi/game/model/GameInfo;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p1, Lcom/didi/game/model/GameInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p1, Lcom/didi/game/model/GameInfo;->downOrPlayUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p1, Lcom/didi/game/model/GameInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addNewDownload(Lcom/didi/game/download/DownloadItem;Lcom/didi/game/download/RequestCallBack;)V
    .locals 7
    .parameter "downloadItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/game/download/DownloadItem;",
            "Lcom/didi/game/download/RequestCallBack",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/tsz/afinal/exception/DbException;
        }
    .end annotation

    .prologue
    .line 210
    .local p2, callback:Lcom/didi/game/download/RequestCallBack;,"Lcom/didi/game/download/RequestCallBack<Ljava/io/File;>;"
    invoke-static {}, Lnet/tsz/afinal/FinalHttp;->getInstance()Lnet/tsz/afinal/FinalHttp;

    move-result-object v0

    .line 211
    .local v0, fh:Lnet/tsz/afinal/FinalHttp;
    invoke-virtual {p1, p2}, Lcom/didi/game/download/DownloadItem;->addListener(Lcom/didi/game/download/RequestCallBack;)V

    .line 212
    iget-object v2, p1, Lcom/didi/game/download/DownloadItem;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/didi/game/download/DownloadItem;->getAbsoluteFile()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p1, Lcom/didi/game/download/DownloadItem;->autoResume:Z

    new-instance v5, Lcom/didi/game/download/DownloadManager$ManagerCallBack;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6}, Lcom/didi/game/download/DownloadManager$ManagerCallBack;-><init>(Lcom/didi/game/download/DownloadManager;Lcom/didi/game/download/DownloadItem;Lcom/didi/game/download/DownloadManager$1;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lnet/tsz/afinal/FinalHttp;->download(Ljava/lang/String;Ljava/lang/String;ZLnet/tsz/afinal/http/AjaxCallBack;)Lnet/tsz/afinal/http/HttpHandler;

    move-result-object v1

    .line 214
    .local v1, handler:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<Ljava/io/File;>;"
    sget-object v2, Lcom/didi/game/download/DownloadItem$State;->STARTED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v2}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v2

    iput v2, p1, Lcom/didi/game/download/DownloadItem;->state:I

    .line 215
    iput-object v1, p1, Lcom/didi/game/download/DownloadItem;->handler:Lnet/tsz/afinal/http/HttpHandler;

    .line 216
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;

    invoke-virtual {v2, p1}, Lcom/didi/game/db/DownloadItemDAO;->save(Lcom/didi/game/download/DownloadItem;)V

    .line 218
    return-void
.end method

.method public backupDownloadInfoList()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/tsz/afinal/exception/DbException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v3, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/game/download/DownloadItem;

    .line 322
    .local v0, downloadItem:Lcom/didi/game/download/DownloadItem;
    iget v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    sget-object v4, Lcom/didi/game/download/DownloadItem$State;->SUCCESS:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v4}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v4

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    sget-object v4, Lcom/didi/game/download/DownloadItem$State;->INSTALLED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v4}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 323
    :cond_1
    iget-object v3, p0, Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;

    invoke-virtual {v3, v0}, Lcom/didi/game/db/DownloadItemDAO;->update(Lcom/didi/game/download/DownloadItem;)I

    goto :goto_0

    .line 326
    :cond_2
    iget-object v1, v0, Lcom/didi/game/download/DownloadItem;->handler:Lnet/tsz/afinal/http/HttpHandler;

    .line 327
    .local v1, handler:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<Ljava/io/File;>;"
    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v1}, Lnet/tsz/afinal/http/HttpHandler;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 329
    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->CANCELLED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    iput v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    .line 335
    :goto_1
    iget-object v3, p0, Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;

    invoke-virtual {v3, v0}, Lcom/didi/game/db/DownloadItemDAO;->update(Lcom/didi/game/download/DownloadItem;)I

    goto :goto_0

    .line 330
    :cond_3
    invoke-virtual {v1}, Lnet/tsz/afinal/http/HttpHandler;->isStop()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 331
    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->PAUSE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    iput v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    goto :goto_1

    .line 333
    :cond_4
    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->PAUSE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    iput v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    goto :goto_1

    .line 338
    .end local v0           #downloadItem:Lcom/didi/game/download/DownloadItem;
    .end local v1           #handler:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<Ljava/io/File;>;"
    :cond_5
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    .line 357
    return-void
.end method

.method public getDownloadItem(I)Lcom/didi/game/download/DownloadItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/game/download/DownloadItem;

    return-object v0
.end method

.method public getDownloadItemByAppId(Ljava/lang/String;)Lcom/didi/game/download/DownloadItem;
    .locals 4
    .parameter "appId"

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v3, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v2

    .line 67
    :goto_0
    return-object v1

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/game/download/DownloadItem;

    .line 63
    .local v1, item:Lcom/didi/game/download/DownloadItem;
    iget-object v3, v1, Lcom/didi/game/download/DownloadItem;->appId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v1           #item:Lcom/didi/game/download/DownloadItem;
    :cond_3
    move-object v1, v2

    .line 67
    goto :goto_0
.end method

.method public getDownloadItemList()Ljava/util/List;
    .locals 1
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
    .line 50
    iget-object v0, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadItemListCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMaxDownloadThread()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/didi/game/download/DownloadManager;->maxDownloadThread:I

    return v0
.end method

.method public initDownloadItem(Lcom/didi/game/model/GameInfo;)Lcom/didi/game/download/DownloadItem;
    .locals 8
    .parameter "gameInfo"

    .prologue
    const-wide/16 v6, 0x0

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, downloadItem:Lcom/didi/game/download/DownloadItem;
    invoke-direct {p0, p1}, Lcom/didi/game/download/DownloadManager;->checkPass(Lcom/didi/game/model/GameInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    const/4 v3, 0x0

    .line 163
    :goto_0
    return-object v3

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/game/download/DownloadItem;

    .line 115
    .local v2, item:Lcom/didi/game/download/DownloadItem;
    iget-object v3, p1, Lcom/didi/game/model/GameInfo;->id:Ljava/lang/String;

    iget-object v4, v2, Lcom/didi/game/download/DownloadItem;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    move-object v0, v2

    .line 117
    iget-object v3, p1, Lcom/didi/game/model/GameInfo;->name:Ljava/lang/String;

    iput-object v3, v0, Lcom/didi/game/download/DownloadItem;->title:Ljava/lang/String;

    .line 118
    iget-object v3, p1, Lcom/didi/game/model/GameInfo;->downOrPlayUrl:Ljava/lang/String;

    iput-object v3, v0, Lcom/didi/game/download/DownloadItem;->downloadUrl:Ljava/lang/String;

    .line 123
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/didi/game/download/DownloadItem;
    :cond_2
    if-nez v0, :cond_3

    .line 124
    new-instance v0, Lcom/didi/game/download/DownloadItem;

    .end local v0           #downloadItem:Lcom/didi/game/download/DownloadItem;
    invoke-direct {v0}, Lcom/didi/game/download/DownloadItem;-><init>()V

    .line 125
    .restart local v0       #downloadItem:Lcom/didi/game/download/DownloadItem;
    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->BEFORE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    iput v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    .line 126
    iget-object v3, p1, Lcom/didi/game/model/GameInfo;->id:Ljava/lang/String;

    iput-object v3, v0, Lcom/didi/game/download/DownloadItem;->appId:Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/didi/game/common/utils/PathUtil;->getFileSavePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/game/download/DownloadItem;->fileSavePath:Ljava/lang/String;

    .line 128
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/didi/game/download/DownloadItem;->autoRename:Z

    .line 129
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/didi/game/download/DownloadItem;->autoResume:Z

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/didi/game/model/GameInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/game/download/DownloadItem;->fileName:Ljava/lang/String;

    .line 131
    iget-object v3, p1, Lcom/didi/game/model/GameInfo;->name:Ljava/lang/String;

    iput-object v3, v0, Lcom/didi/game/download/DownloadItem;->title:Ljava/lang/String;

    .line 132
    iget-object v3, p1, Lcom/didi/game/model/GameInfo;->downOrPlayUrl:Ljava/lang/String;

    iput-object v3, v0, Lcom/didi/game/download/DownloadItem;->downloadUrl:Ljava/lang/String;

    .line 137
    :cond_3
    iget v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    sget-object v4, Lcom/didi/game/download/DownloadItem$State;->BEFORE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v4}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v4

    if-eq v3, v4, :cond_4

    iget v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    sget-object v4, Lcom/didi/game/download/DownloadItem$State;->PAUSE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v4}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v4

    if-eq v3, v4, :cond_4

    iget v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    sget-object v4, Lcom/didi/game/download/DownloadItem$State;->INSTALLED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v4}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v4

    if-eq v3, v4, :cond_4

    iget v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    sget-object v4, Lcom/didi/game/download/DownloadItem$State;->LOADING:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v4}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v4

    if-eq v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/didi/game/download/DownloadItem;->getAbsoluteFile()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/didi/game/download/DownloadItem;->fileLength:J

    invoke-direct {p0, v3, v4, v5}, Lcom/didi/game/download/DownloadManager;->checkFileOk(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_4

    .line 141
    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->BEFORE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    iput v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    .line 142
    iput-wide v6, v0, Lcom/didi/game/download/DownloadItem;->curSize:J

    .line 143
    iput-wide v6, v0, Lcom/didi/game/download/DownloadItem;->fileLength:J

    .line 144
    invoke-virtual {p0, v0}, Lcom/didi/game/download/DownloadManager;->updateDownloadItem(Lcom/didi/game/download/DownloadItem;)V

    .line 149
    :cond_4
    iget v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    sget-object v4, Lcom/didi/game/download/DownloadItem$State;->INSTALLED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v4}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v4

    if-ne v3, v4, :cond_5

    iget-object v3, p1, Lcom/didi/game/model/GameInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/game/common/utils/DiDiUtils;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 150
    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->BEFORE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    iput v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    .line 151
    iput-wide v6, v0, Lcom/didi/game/download/DownloadItem;->curSize:J

    .line 152
    iput-wide v6, v0, Lcom/didi/game/download/DownloadItem;->fileLength:J

    .line 153
    invoke-virtual {p0, v0}, Lcom/didi/game/download/DownloadManager;->updateDownloadItem(Lcom/didi/game/download/DownloadItem;)V

    .line 158
    :cond_5
    iget v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    sget-object v4, Lcom/didi/game/download/DownloadItem$State;->INSTALLED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v4}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v4

    if-eq v3, v4, :cond_6

    iget-object v3, p1, Lcom/didi/game/model/GameInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/game/common/utils/DiDiUtils;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 159
    sget-object v3, Lcom/didi/game/download/DownloadItem$State;->INSTALLED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v3}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v3

    iput v3, v0, Lcom/didi/game/download/DownloadItem;->state:I

    .line 160
    invoke-virtual {p0, v0}, Lcom/didi/game/download/DownloadManager;->updateDownloadItem(Lcom/didi/game/download/DownloadItem;)V

    :cond_6
    move-object v3, v0

    .line 163
    goto/16 :goto_0
.end method

.method public initDownloadItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/didi/game/download/DownloadItem;
    .locals 2
    .parameter "appId"
    .parameter "appName"
    .parameter "dloadUrl"
    .parameter "packageName"

    .prologue
    .line 71
    new-instance v0, Lcom/didi/game/model/GameInfo;

    invoke-direct {v0}, Lcom/didi/game/model/GameInfo;-><init>()V

    .line 72
    .local v0, gameInfo:Lcom/didi/game/model/GameInfo;
    iput-object p1, v0, Lcom/didi/game/model/GameInfo;->id:Ljava/lang/String;

    .line 73
    iput-object p2, v0, Lcom/didi/game/model/GameInfo;->name:Ljava/lang/String;

    .line 74
    iput-object p3, v0, Lcom/didi/game/model/GameInfo;->downOrPlayUrl:Ljava/lang/String;

    .line 75
    iput-object p4, v0, Lcom/didi/game/model/GameInfo;->packageName:Ljava/lang/String;

    .line 76
    invoke-virtual {p0, v0}, Lcom/didi/game/download/DownloadManager;->initDownloadItem(Lcom/didi/game/model/GameInfo;)Lcom/didi/game/download/DownloadItem;

    move-result-object v1

    return-object v1
.end method

.method public removeDownload(ILcom/didi/game/download/DownloadManager$RemoveCallback;)V
    .locals 2
    .parameter "index"
    .parameter "removeCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/tsz/afinal/exception/DbException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v1, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/game/download/DownloadItem;

    .line 237
    .local v0, downloadInfo:Lcom/didi/game/download/DownloadItem;
    invoke-virtual {p0, v0, p2}, Lcom/didi/game/download/DownloadManager;->removeDownload(Lcom/didi/game/download/DownloadItem;Lcom/didi/game/download/DownloadManager$RemoveCallback;)V

    .line 238
    return-void
.end method

.method public removeDownload(Lcom/didi/game/download/DownloadItem;Lcom/didi/game/download/DownloadManager$RemoveCallback;)V
    .locals 7
    .parameter "downloadItem"
    .parameter "removeCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/tsz/afinal/exception/DbException;
        }
    .end annotation

    .prologue
    const v5, 0x7f0b0166

    .line 241
    iget-object v3, p1, Lcom/didi/game/download/DownloadItem;->handler:Lnet/tsz/afinal/http/HttpHandler;

    .line 242
    .local v3, handler:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<Ljava/io/File;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lnet/tsz/afinal/http/HttpHandler;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 244
    :try_start_0
    invoke-virtual {v3}, Lnet/tsz/afinal/http/HttpHandler;->stop()V

    .line 245
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/tsz/afinal/http/HttpHandler;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 255
    .local v1, delFile:Z
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/didi/game/download/DownloadItem;->getAbsoluteFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, appFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 258
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 259
    if-eqz v1, :cond_3

    .line 260
    const-string v4, "\u5220\u9664\u4e0b\u8f7d\u9879---\u6210\u529f\u79fb\u9664\u4e0b\u8f7d\u98791"

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 261
    sget-object v4, Lcom/didi/game/download/DownloadItem$State;->CANCELLED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v4}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v4

    iput v4, p1, Lcom/didi/game/download/DownloadItem;->state:I

    .line 262
    iget-object v4, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 263
    iget-object v4, p0, Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;

    iget-wide v5, p1, Lcom/didi/game/download/DownloadItem;->id:J

    invoke-virtual {v4, v5, v6}, Lcom/didi/game/db/DownloadItemDAO;->deleteById(J)I

    .line 264
    if-eqz p2, :cond_1

    .line 265
    const v4, 0x7f0b0167

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/didi/game/download/DownloadManager$RemoveCallback;->onSuccess(Ljava/lang/String;)V

    .line 284
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5220\u9664\u6587\u4ef6 file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/didi/game/download/DownloadItem;->getAbsoluteFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",delFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    :cond_2
    :goto_2
    return-void

    .line 246
    .end local v0           #appFile:Ljava/io/File;
    .end local v1           #delFile:Z
    :catch_0
    move-exception v2

    .line 247
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    invoke-static {v5}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u53d6\u6d88\u4e0b\u8f7d\u5931\u8d25,err="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 250
    if-eqz p2, :cond_0

    .line 251
    const/16 v4, 0x535

    const-string v5, "\u79fb\u9664\u5931\u8d25"

    invoke-interface {p2, v4, v5}, Lcom/didi/game/download/DownloadManager$RemoveCallback;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 267
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #appFile:Ljava/io/File;
    .restart local v1       #delFile:Z
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 268
    const-string v4, "\u5220\u9664\u4e0b\u8f7d\u9879---\u6210\u529f\u79fb\u9664\u4e0b\u8f7d\u9879"

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 269
    sget-object v4, Lcom/didi/game/download/DownloadItem$State;->CANCELLED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v4}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v4

    iput v4, p1, Lcom/didi/game/download/DownloadItem;->state:I

    .line 270
    iget-object v4, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 271
    iget-object v4, p0, Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;

    iget-wide v5, p1, Lcom/didi/game/download/DownloadItem;->id:J

    invoke-virtual {v4, v5, v6}, Lcom/didi/game/db/DownloadItemDAO;->deleteById(J)I

    .line 272
    if-eqz p2, :cond_1

    .line 273
    const v4, 0x7f0b0167

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/didi/game/download/DownloadManager$RemoveCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 285
    :catch_1
    move-exception v2

    .line 286
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5220\u9664\u6587\u4ef6 file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/didi/game/download/DownloadItem;->getAbsoluteFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5931\u8d25,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 275
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_3
    const-string v4, "\u5220\u9664\u4e0b\u8f7d\u9879---\u79fb\u9664\u4e0b\u8f7d\u9879\u5931\u8d25"

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 276
    const v4, 0x7f0b0166

    invoke-static {v4}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 277
    sget-object v4, Lcom/didi/game/download/DownloadItem$State;->CANCELLED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v4}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v4

    iput v4, p1, Lcom/didi/game/download/DownloadItem;->state:I

    .line 278
    iget-object v4, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 279
    iget-object v4, p0, Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;

    iget-wide v5, p1, Lcom/didi/game/download/DownloadItem;->id:J

    invoke-virtual {v4, v5, v6}, Lcom/didi/game/db/DownloadItemDAO;->deleteById(J)I

    .line 280
    if-eqz p2, :cond_1

    .line 281
    const/4 v4, 0x0

    const v5, 0x7f0b0166

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lcom/didi/game/download/DownloadManager$RemoveCallback;->onFailure(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method public resumeDownload(ILcom/didi/game/download/RequestCallBack;)V
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/didi/game/download/RequestCallBack",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/tsz/afinal/exception/DbException;
        }
    .end annotation

    .prologue
    .line 221
    .local p2, callback:Lcom/didi/game/download/RequestCallBack;,"Lcom/didi/game/download/RequestCallBack<Ljava/io/File;>;"
    iget-object v1, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/game/download/DownloadItem;

    .line 222
    .local v0, downloadInfo:Lcom/didi/game/download/DownloadItem;
    invoke-virtual {p0, v0, p2}, Lcom/didi/game/download/DownloadManager;->resumeDownload(Lcom/didi/game/download/DownloadItem;Lcom/didi/game/download/RequestCallBack;)V

    .line 223
    return-void
.end method

.method public resumeDownload(Lcom/didi/game/download/DownloadItem;Lcom/didi/game/download/RequestCallBack;)V
    .locals 7
    .parameter "downloadItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/game/download/DownloadItem;",
            "Lcom/didi/game/download/RequestCallBack",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/tsz/afinal/exception/DbException;
        }
    .end annotation

    .prologue
    .line 226
    .local p2, callback:Lcom/didi/game/download/RequestCallBack;,"Lcom/didi/game/download/RequestCallBack<Ljava/io/File;>;"
    invoke-static {}, Lnet/tsz/afinal/FinalHttp;->getInstance()Lnet/tsz/afinal/FinalHttp;

    move-result-object v1

    .line 227
    .local v1, http:Lnet/tsz/afinal/FinalHttp;
    invoke-virtual {p1, p2}, Lcom/didi/game/download/DownloadItem;->addListener(Lcom/didi/game/download/RequestCallBack;)V

    .line 228
    iget-object v2, p1, Lcom/didi/game/download/DownloadItem;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/didi/game/download/DownloadItem;->getAbsoluteFile()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p1, Lcom/didi/game/download/DownloadItem;->autoResume:Z

    new-instance v5, Lcom/didi/game/download/DownloadManager$ManagerCallBack;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6}, Lcom/didi/game/download/DownloadManager$ManagerCallBack;-><init>(Lcom/didi/game/download/DownloadManager;Lcom/didi/game/download/DownloadItem;Lcom/didi/game/download/DownloadManager$1;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lnet/tsz/afinal/FinalHttp;->download(Ljava/lang/String;Ljava/lang/String;ZLnet/tsz/afinal/http/AjaxCallBack;)Lnet/tsz/afinal/http/HttpHandler;

    move-result-object v0

    .line 230
    .local v0, handler:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<Ljava/io/File;>;"
    iput-object v0, p1, Lcom/didi/game/download/DownloadItem;->handler:Lnet/tsz/afinal/http/HttpHandler;

    .line 231
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;

    invoke-virtual {v2, p1}, Lcom/didi/game/db/DownloadItemDAO;->update(Lcom/didi/game/download/DownloadItem;)I

    .line 233
    return-void
.end method

.method public setMaxDownloadThread(I)V
    .locals 0
    .parameter "maxDownloadThread"

    .prologue
    .line 364
    iput p1, p0, Lcom/didi/game/download/DownloadManager;->maxDownloadThread:I

    .line 365
    return-void
.end method

.method public showAll()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5168\u90e8\u6570\u636e===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;

    invoke-virtual {v1}, Lcom/didi/game/db/DownloadItemDAO;->findAll()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public stopAllDownload()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/tsz/afinal/exception/DbException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v2, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/game/download/DownloadItem;

    .line 315
    .local v0, downloadItem:Lcom/didi/game/download/DownloadItem;
    invoke-virtual {p0, v0}, Lcom/didi/game/download/DownloadManager;->stopDownload(Lcom/didi/game/download/DownloadItem;)V

    goto :goto_0

    .line 318
    .end local v0           #downloadItem:Lcom/didi/game/download/DownloadItem;
    :cond_0
    return-void
.end method

.method public stopDownload(I)V
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/tsz/afinal/exception/DbException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v1, p0, Lcom/didi/game/download/DownloadManager;->downloadItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/game/download/DownloadItem;

    .line 295
    .local v0, downloadInfo:Lcom/didi/game/download/DownloadItem;
    invoke-virtual {p0, v0}, Lcom/didi/game/download/DownloadManager;->stopDownload(Lcom/didi/game/download/DownloadItem;)V

    .line 296
    return-void
.end method

.method public stopDownload(Lcom/didi/game/download/DownloadItem;)V
    .locals 3
    .parameter "downloadInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/tsz/afinal/exception/DbException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p1, Lcom/didi/game/download/DownloadItem;->handler:Lnet/tsz/afinal/http/HttpHandler;

    .line 300
    .local v0, handler:Lnet/tsz/afinal/http/HttpHandler;,"Lnet/tsz/afinal/http/HttpHandler<Ljava/io/File;>;"
    iget v1, p1, Lcom/didi/game/download/DownloadItem;->state:I

    sget-object v2, Lcom/didi/game/download/DownloadItem$State;->SUCCESS:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v2}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/didi/game/download/DownloadItem;->state:I

    sget-object v2, Lcom/didi/game/download/DownloadItem$State;->INSTALLED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v2}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 306
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v0}, Lnet/tsz/afinal/http/HttpHandler;->stop()V

    .line 308
    const/4 v0, 0x0

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;

    invoke-virtual {v1, p1}, Lcom/didi/game/db/DownloadItemDAO;->update(Lcom/didi/game/download/DownloadItem;)I

    .line 311
    return-void

    .line 301
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/tsz/afinal/http/HttpHandler;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 302
    sget-object v1, Lcom/didi/game/download/DownloadItem$State;->PAUSE:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v1}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v1

    iput v1, p1, Lcom/didi/game/download/DownloadItem;->state:I

    goto :goto_0

    .line 304
    :cond_3
    sget-object v1, Lcom/didi/game/download/DownloadItem$State;->CANCELLED:Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v1}, Lcom/didi/game/download/DownloadItem$State;->value()I

    move-result v1

    iput v1, p1, Lcom/didi/game/download/DownloadItem;->state:I

    goto :goto_0
.end method

.method public updateDownloadItem(Lcom/didi/game/download/DownloadItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/didi/game/download/DownloadManager;->db:Lcom/didi/game/db/DownloadItemDAO;

    invoke-virtual {v0, p1}, Lcom/didi/game/db/DownloadItemDAO;->update(Lcom/didi/game/download/DownloadItem;)I

    goto :goto_0
.end method
