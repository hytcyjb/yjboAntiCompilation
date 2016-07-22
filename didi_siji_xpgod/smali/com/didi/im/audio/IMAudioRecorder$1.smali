.class final Lcom/didi/im/audio/IMAudioRecorder$1;
.super Ljava/lang/Object;
.source "IMAudioRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/audio/IMAudioRecorder;->setRecorderListener(Landroid/media/MediaRecorder;Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;


# direct methods
.method constructor <init>(Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/didi/im/audio/IMAudioRecorder$1;->val$listener:Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/im/audio/IMAudioRecorder$1;->val$listener:Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/didi/im/audio/IMAudioRecorder$1;->val$listener:Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;

    invoke-interface {v0}, Lcom/didi/im/audio/IMAudioRecorder$OnAudioRecordingListener;->onError()V

    .line 59
    :cond_0
    return-void
.end method
