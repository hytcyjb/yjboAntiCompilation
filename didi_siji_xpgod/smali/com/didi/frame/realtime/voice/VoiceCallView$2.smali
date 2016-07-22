.class Lcom/didi/frame/realtime/voice/VoiceCallView$2;
.super Landroid/os/Handler;
.source "VoiceCallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/realtime/voice/VoiceCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/realtime/voice/VoiceCallView;


# direct methods
.method constructor <init>(Lcom/didi/frame/realtime/voice/VoiceCallView;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/didi/frame/realtime/voice/VoiceCallView$2;->this$0:Lcom/didi/frame/realtime/voice/VoiceCallView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView$2;->this$0:Lcom/didi/frame/realtime/voice/VoiceCallView;

    #getter for: Lcom/didi/frame/realtime/voice/VoiceCallView;->recordState:I
    invoke-static {v0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->access$000(Lcom/didi/frame/realtime/voice/VoiceCallView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/frame/realtime/voice/VoiceCallView$2;->this$0:Lcom/didi/frame/realtime/voice/VoiceCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/voice/VoiceCallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
