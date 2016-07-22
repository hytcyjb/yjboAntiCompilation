.class final Lcom/didi/im/audio/IMAudioPlayer$3;
.super Ljava/lang/Object;
.source "IMAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 79
    iput-object p1, p0, Lcom/didi/im/audio/IMAudioPlayer$3;->val$listener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "player"
    .parameter "errorType"
    .parameter "errorCode"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/im/audio/IMAudioPlayer$3;->val$listener:Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;

    invoke-interface {v0}, Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;->onError()V

    .line 84
    const/4 v0, 0x0

    return v0
.end method
