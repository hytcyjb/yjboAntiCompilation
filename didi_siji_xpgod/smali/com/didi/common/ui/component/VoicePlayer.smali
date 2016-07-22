.class public Lcom/didi/common/ui/component/VoicePlayer;
.super Ljava/lang/Object;
.source "VoicePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;
    }
.end annotation


# static fields
.field private static VoicePlayer:Lcom/didi/common/ui/component/VoicePlayer;


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;

.field private mVoicePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/ui/component/VoicePlayer;->VoicePlayer:Lcom/didi/common/ui/component/VoicePlayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mVoicePath:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/component/VoicePlayer;)Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;

    return-object v0
.end method

.method private create(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 103
    :try_start_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 104
    iget-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/didi/common/ui/component/VoicePlayer$1;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/component/VoicePlayer$1;-><init>(Lcom/didi/common/ui/component/VoicePlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/didi/common/ui/component/VoicePlayer;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/ui/component/VoicePlayer;->getInstance(Landroid/content/Context;)Lcom/didi/common/ui/component/VoicePlayer;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/didi/common/ui/component/VoicePlayer;
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    const-class v1, Lcom/didi/common/ui/component/VoicePlayer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/common/ui/component/VoicePlayer;->VoicePlayer:Lcom/didi/common/ui/component/VoicePlayer;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/didi/common/ui/component/VoicePlayer;

    invoke-direct {v0}, Lcom/didi/common/ui/component/VoicePlayer;-><init>()V

    sput-object v0, Lcom/didi/common/ui/component/VoicePlayer;->VoicePlayer:Lcom/didi/common/ui/component/VoicePlayer;

    .line 34
    :cond_0
    sget-object v0, Lcom/didi/common/ui/component/VoicePlayer;->VoicePlayer:Lcom/didi/common/ui/component/VoicePlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private playVoice(Ljava/io/FileInputStream;)V
    .locals 0
    .parameter "stream"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/didi/common/ui/component/VoicePlayer;->reset()V

    .line 89
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/VoicePlayer;->prepare(Ljava/io/FileInputStream;)V

    .line 90
    invoke-direct {p0}, Lcom/didi/common/ui/component/VoicePlayer;->start()V

    .line 91
    return-void
.end method

.method private prepare()V
    .locals 2

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 178
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private prepare(Ljava/io/FileInputStream;)V
    .locals 3
    .parameter "fis"

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 158
    iget-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 166
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 164
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private release()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 124
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 127
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 132
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 133
    iget-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/didi/common/ui/component/VoicePlayer$2;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/component/VoicePlayer$2;-><init>(Lcom/didi/common/ui/component/VoicePlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 146
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private start()V
    .locals 2

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 183
    iget-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;

    invoke-interface {v1}, Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;->onStart()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getVoiceByte()[B
    .locals 6

    .prologue
    .line 198
    const/4 v4, 0x0

    .line 199
    .local v4, mByte:[B
    iget-object v5, p0, Lcom/didi/common/ui/component/VoicePlayer;->mVoicePath:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 201
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/didi/common/ui/component/VoicePlayer;->mVoicePath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 202
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v1

    .local v1, ch:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 205
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #ch:I
    .end local v3           #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 211
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v4

    .line 207
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #ch:I
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 208
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 209
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getVoicePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mVoicePath:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public play(ILcom/didi/common/ui/component/VoicePlayer$VoiceListener;)V
    .locals 0
    .parameter "resId"
    .parameter "l"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/didi/common/ui/component/VoicePlayer;->release()V

    .line 95
    invoke-virtual {p0, p2}, Lcom/didi/common/ui/component/VoicePlayer;->setVoiceListener(Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/VoicePlayer;->create(I)V

    .line 97
    invoke-direct {p0}, Lcom/didi/common/ui/component/VoicePlayer;->prepare()V

    .line 98
    invoke-direct {p0}, Lcom/didi/common/ui/component/VoicePlayer;->start()V

    .line 99
    return-void
.end method

.method public playOrderVoice(Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;)Z
    .locals 5
    .parameter "voiceListener"

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v4, p0, Lcom/didi/common/ui/component/VoicePlayer;->mVoicePath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 79
    :goto_0
    return v3

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/component/VoicePlayer;->setVoiceListener(Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;)V

    .line 69
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/didi/common/ui/component/VoicePlayer;->mVoicePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 73
    .local v2, stream:Ljava/io/FileInputStream;
    invoke-direct {p0, v2}, Lcom/didi/common/ui/component/VoicePlayer;->playVoice(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v3, 0x1

    goto :goto_0

    .line 74
    .end local v2           #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVoiceListener(Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;)V
    .locals 0
    .parameter "voiceListener"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;

    .line 58
    return-void
.end method

.method public setVoicePath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/didi/common/ui/component/VoicePlayer;->mVoicePath:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 224
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer;->mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;

    invoke-interface {v0}, Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;->onComplete()V

    goto :goto_0
.end method
