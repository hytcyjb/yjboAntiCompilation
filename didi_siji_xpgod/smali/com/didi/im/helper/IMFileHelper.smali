.class public Lcom/didi/im/helper/IMFileHelper;
.super Ljava/lang/Object;
.source "IMFileHelper.java"


# static fields
.field private static final AUDIO_APP_DIR:Ljava/lang/String;

.field private static final AUDIO_SDK_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getDidiPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/im/helper/IMFileHelper;->AUDIO_SDK_DIR:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/util/Utils;->getAppPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/didi/im/helper/IMFileHelper;->AUDIO_APP_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAudioFile(Ljava/lang/String;)V
    .locals 2
    .parameter "fileId"

    .prologue
    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/didi/im/helper/IMFileHelper;->getAudioFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, filePath:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-static {v0}, Lcom/didi/common/util/FileUtil;->delete(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static getAudioFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "fileId"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/didi/im/helper/IMFileHelper;->getAudioFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAudioFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileId"

    .prologue
    .line 20
    sget-object v0, Lcom/didi/im/helper/IMFileHelper;->AUDIO_SDK_DIR:Ljava/lang/String;

    .line 21
    .local v0, path:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    sget-object v0, Lcom/didi/im/helper/IMFileHelper;->AUDIO_APP_DIR:Ljava/lang/String;

    .line 25
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isAuioFileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileId"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/didi/im/helper/IMFileHelper;->getAudioFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 66
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 70
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static renameAudioFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "oldFileId"
    .parameter "newFileId"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/didi/im/helper/IMFileHelper;->getAudioFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 56
    .local v0, file:Ljava/io/File;
    invoke-static {p1}, Lcom/didi/im/helper/IMFileHelper;->getAudioFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    return v1
.end method
