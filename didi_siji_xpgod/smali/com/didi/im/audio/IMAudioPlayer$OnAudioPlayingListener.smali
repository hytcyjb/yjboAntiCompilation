.class public interface abstract Lcom/didi/im/audio/IMAudioPlayer$OnAudioPlayingListener;
.super Ljava/lang/Object;
.source "IMAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/audio/IMAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAudioPlayingListener"
.end annotation


# virtual methods
.method public abstract onCompletion()V
.end method

.method public abstract onError()V
.end method

.method public abstract onStarted()V
.end method
