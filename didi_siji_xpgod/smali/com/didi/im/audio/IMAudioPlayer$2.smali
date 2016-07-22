.class final Lcom/didi/im/audio/IMAudioPlayer$2;
.super Ljava/lang/Object;
.source "IMAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 68
    iput-object p1, p0, Lcom/didi/im/audio/IMAudioPlayer$2;->val$listener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "player"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/im/audio/IMAudioPlayer$2;->val$listener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/didi/im/audio/IMAudioPlayer$2;->val$listener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;

    invoke-interface {v0}, Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;->onCompletion()V

    .line 75
    :cond_0
    invoke-static {}, Lcom/didi/im/audio/IMAudioPlayer;->release()V

    .line 76
    return-void
.end method
