.class public Lcom/didi/frame/realtime/voice/AudioRecorder;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# instance fields
.field final path:Ljava/lang/String;

.field private recorder:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->path:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getAmplitude()D
    .locals 6

    .prologue
    .line 52
    iget-object v2, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v2

    div-int/lit16 v1, v2, 0x258

    .line 54
    .local v1, ratio:I
    const/4 v0, 0x0

    .line 55
    .local v0, db:I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 56
    const-wide/high16 v2, 0x4034

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 57
    :cond_0
    int-to-double v2, v0

    .line 59
    .end local v0           #db:I
    .end local v1           #ratio:I
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 21
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 22
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    .end local v0           #directory:Ljava/io/File;
    :goto_0
    return-void

    .line 26
    .restart local v0       #directory:Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 28
    iget-object v1, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 30
    iget-object v1, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 32
    iget-object v1, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 34
    iget-object v1, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    .end local v0           #directory:Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 44
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/AudioRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method
