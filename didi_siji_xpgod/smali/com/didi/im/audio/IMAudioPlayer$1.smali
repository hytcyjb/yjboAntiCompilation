.class final Lcom/didi/im/audio/IMAudioPlayer$1;
.super Ljava/lang/Object;
.source "IMAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/audio/IMAudioPlayer;->setPlayerListener(Landroid/media/MediaPlayer;Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;


# direct methods
.method constructor <init>(Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/didi/im/audio/IMAudioPlayer$1;->val$listener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "player"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/didi/im/audio/IMAudioPlayer$1;->val$listener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/didi/im/audio/IMAudioPlayer$1;->val$listener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;

    invoke-interface {v0}, Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;->onStarted()V

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 65
    return-void
.end method
