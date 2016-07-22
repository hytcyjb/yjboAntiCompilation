.class public Lcom/didi/im/helper/IMAudioHelper;
.super Ljava/lang/Object;
.source "IMAudioHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelRecording()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/didi/im/audio/IMAudioRecorder;->getRecordFileId()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, fileId:Ljava/lang/String;
    invoke-static {}, Lcom/didi/im/audio/IMAudioRecorder;->stop()V

    .line 40
    invoke-static {v0}, Lcom/didi/im/helper/IMFileHelper;->deleteAudioFile(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static getAmplitude()D
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/didi/im/audio/IMAudioRecorder;->getAmplitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public static play(Ljava/lang/String;Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;)Z
    .locals 3
    .parameter "fileId"
    .parameter "listener"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/didi/im/helper/IMFileHelper;->getAudioFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 57
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    const/4 v2, 0x0

    .line 68
    :goto_0
    return v2

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/didi/im/audio/IMAudioPlayer;->play(Ljava/lang/String;Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    invoke-interface {p1}, Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;->onError()V

    goto :goto_1
.end method

.method public static record(Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 20
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, fileId:Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/didi/im/audio/IMAudioRecorder;->record(Ljava/lang/String;Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v1           #fileId:Ljava/lang/String;
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/Exception;
    invoke-interface {p0}, Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;->onError()V

    goto :goto_0
.end method

.method public static stopPlaying()V
    .locals 1

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Lcom/didi/im/audio/IMAudioPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 74
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 75
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static stopRecording()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/didi/im/audio/IMAudioRecorder;->getRecordFileId()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, path:Ljava/lang/String;
    invoke-static {}, Lcom/didi/im/audio/IMAudioRecorder;->stop()V

    .line 34
    return-object v0
.end method
