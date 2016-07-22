.class Lcom/didi/common/ui/component/VoicePlayer$1;
.super Ljava/lang/Object;
.source "VoicePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/component/VoicePlayer;->create(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/component/VoicePlayer;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/component/VoicePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/didi/common/ui/component/VoicePlayer$1;->this$0:Lcom/didi/common/ui/component/VoicePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer$1;->this$0:Lcom/didi/common/ui/component/VoicePlayer;

    #getter for: Lcom/didi/common/ui/component/VoicePlayer;->mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;
    invoke-static {v0}, Lcom/didi/common/ui/component/VoicePlayer;->access$000(Lcom/didi/common/ui/component/VoicePlayer;)Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/didi/common/ui/component/VoicePlayer$1;->this$0:Lcom/didi/common/ui/component/VoicePlayer;

    #getter for: Lcom/didi/common/ui/component/VoicePlayer;->mVoiceListener:Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;
    invoke-static {v0}, Lcom/didi/common/ui/component/VoicePlayer;->access$000(Lcom/didi/common/ui/component/VoicePlayer;)Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/common/ui/component/VoicePlayer$VoiceListener;->onComplete()V

    .line 110
    :cond_0
    return-void
.end method
