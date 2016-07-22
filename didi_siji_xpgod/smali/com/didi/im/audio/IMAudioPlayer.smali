.class public Lcom/didi/im/audio/IMAudioPlayer;
.super Ljava/lang/Object;
.source "IMAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;
    }
.end annotation


# static fields
.field private static sListener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;

.field private static sPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static play(Ljava/lang/String;Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;)V
    .locals 2
    .parameter "path"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lcom/didi/im/audio/IMAudioPlayer;->sPlayer:Landroid/media/MediaPlayer;

    .line 29
    .local v0, player:Landroid/media/MediaPlayer;
    if-nez v0, :cond_0

    .line 30
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/didi/im/audio/IMAudioPlayer;->sPlayer:Landroid/media/MediaPlayer;

    .line 31
    sget-object v0, Lcom/didi/im/audio/IMAudioPlayer;->sPlayer:Landroid/media/MediaPlayer;

    .line 34
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 37
    sget-object v1, Lcom/didi/im/audio/IMAudioPlayer;->sListener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;

    if-eqz v1, :cond_1

    .line 38
    sget-object v1, Lcom/didi/im/audio/IMAudioPlayer;->sListener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;

    invoke-interface {v1}, Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;->onCompletion()V

    .line 42
    :cond_1
    sput-object p1, Lcom/didi/im/audio/IMAudioPlayer;->sListener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;

    .line 44
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/didi/im/audio/IMAudioPlayer;->sListener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;

    invoke-static {v0, v1}, Lcom/didi/im/audio/IMAudioPlayer;->setPlayerListener(Landroid/media/MediaPlayer;Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;)V

    .line 46
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 47
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/didi/im/audio/IMAudioPlayer;->sPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/didi/im/audio/IMAudioPlayer;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    sget-object v0, Lcom/didi/im/audio/IMAudioPlayer;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 102
    :cond_1
    sget-object v0, Lcom/didi/im/audio/IMAudioPlayer;->sPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/im/audio/IMAudioPlayer;->sPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method private static setPlayerListener(Landroid/media/MediaPlayer;Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;)V
    .locals 1
    .parameter "player"
    .parameter "listener"

    .prologue
    .line 57
    new-instance v0, Lcom/didi/im/audio/IMAudioPlayer$1;

    invoke-direct {v0, p1}, Lcom/didi/im/audio/IMAudioPlayer$1;-><init>(Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;)V

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 68
    new-instance v0, Lcom/didi/im/audio/IMAudioPlayer$2;

    invoke-direct {v0, p1}, Lcom/didi/im/audio/IMAudioPlayer$2;-><init>(Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;)V

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 79
    new-instance v0, Lcom/didi/im/audio/IMAudioPlayer$3;

    invoke-direct {v0, p1}, Lcom/didi/im/audio/IMAudioPlayer$3;-><init>(Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;)V

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 87
    return-void
.end method
