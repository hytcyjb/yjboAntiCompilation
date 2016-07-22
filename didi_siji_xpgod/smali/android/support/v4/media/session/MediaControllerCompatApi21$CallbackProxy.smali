.class Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;
.super Landroid/media/session/MediaController$Callback;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;",
        ">",
        "Landroid/media/session/MediaController$Callback;"
    }
.end annotation


# instance fields
.field protected final mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, this:Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;,"Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    .local p1, callback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;,"TT;"
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 201
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    .line 202
    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1
    .parameter "metadata"

    .prologue
    .line 221
    .local p0, this:Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;,"Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onMetadataChanged(Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 216
    .local p0, this:Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;,"Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onPlaybackStateChanged(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    .prologue
    .line 206
    .local p0, this:Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;,"Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onSessionDestroyed()V

    .line 207
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "event"
    .parameter "extras"

    .prologue
    .line 211
    .local p0, this:Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;,"Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 212
    return-void
.end method
