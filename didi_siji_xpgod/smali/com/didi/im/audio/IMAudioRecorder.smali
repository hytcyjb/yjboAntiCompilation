.class public Lcom/didi/im/audio/IMAudioRecorder;
.super Ljava/lang/Object;
.source "IMAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;
    }
.end annotation


# static fields
.field private static mCurrentRecordFileId:Ljava/lang/String;

.field private static sRecorder:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static getAmplitude()D
    .locals 6

    .prologue
    .line 80
    sget-object v2, Lcom/didi/im/audio/IMAudioRecorder;->sRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 81
    const-wide/16 v2, 0x0

    .line 88
    .local v0, db:I
    .local v1, ratio:I
    :goto_0
    return-wide v2

    .line 84
    .end local v0           #db:I
    .end local v1           #ratio:I
    :cond_0
    sget-object v2, Lcom/didi/im/audio/IMAudioRecorder;->sRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v2

    div-int/lit16 v1, v2, 0x258

    .line 85
    .restart local v1       #ratio:I
    const/4 v0, 0x0

    .line 86
    .restart local v0       #db:I
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 87
    const-wide/high16 v2, 0x4034

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 88
    :cond_1
    int-to-double v2, v0

    goto :goto_0
.end method

.method public static getRecordFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/didi/im/audio/IMAudioRecorder;->mCurrentRecordFileId:Ljava/lang/String;

    return-object v0
.end method

.method public static record(Ljava/lang/String;Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;)V
    .locals 4
    .parameter "fileId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 23
    sget-object v2, Lcom/didi/im/audio/IMAudioRecorder;->sRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-static {p0}, Lcom/didi/im/helper/IMFileHelper;->getAudioFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 28
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    :cond_2
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    .line 33
    .local v1, recorder:Landroid/media/MediaRecorder;
    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 40
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 41
    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 43
    invoke-static {p0}, Lcom/didi/im/helper/IMFileHelper;->getAudioFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 44
    invoke-static {v1, p1}, Lcom/didi/im/audio/IMAudioRecorder;->setRecorderListener(Landroid/media/MediaRecorder;Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;)V

    .line 45
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 46
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 47
    sput-object v1, Lcom/didi/im/audio/IMAudioRecorder;->sRecorder:Landroid/media/MediaRecorder;

    .line 48
    sput-object p0, Lcom/didi/im/audio/IMAudioRecorder;->mCurrentRecordFileId:Ljava/lang/String;

    goto :goto_0
.end method

.method private static setRecorderListener(Landroid/media/MediaRecorder;Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;)V
    .locals 1
    .parameter "recorder"
    .parameter "listener"

    .prologue
    .line 52
    new-instance v0, Lcom/didi/im/audio/IMAudioRecorder$1;

    invoke-direct {v0, p1}, Lcom/didi/im/audio/IMAudioRecorder$1;-><init>(Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;)V

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 61
    return-void
.end method

.method public static stop()V
    .locals 0

    .prologue
    .line 64
    invoke-static {}, Lcom/didi/im/audio/IMAudioRecorder;->stopInner()V

    .line 65
    return-void
.end method

.method private static stopInner()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    sget-object v0, Lcom/didi/im/audio/IMAudioRecorder;->sRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 70
    :try_start_0
    sget-object v0, Lcom/didi/im/audio/IMAudioRecorder;->sRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 71
    sget-object v0, Lcom/didi/im/audio/IMAudioRecorder;->sRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    sput-object v1, Lcom/didi/im/audio/IMAudioRecorder;->sRecorder:Landroid/media/MediaRecorder;

    .line 75
    sput-object v1, Lcom/didi/im/audio/IMAudioRecorder;->mCurrentRecordFileId:Ljava/lang/String;

    .line 77
    :cond_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method
