.class Lcom/didi/frame/realtime/RealTimeCallView$3;
.super Landroid/os/CountDownTimer;
.source "RealTimeCallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/realtime/RealTimeCallView;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/realtime/RealTimeCallView;


# direct methods
.method constructor <init>(Lcom/didi/frame/realtime/RealTimeCallView;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/didi/frame/realtime/RealTimeCallView$3;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView$3;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    const/4 v1, 0x0

    #calls: Lcom/didi/frame/realtime/RealTimeCallView;->hide(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;->access$200(Lcom/didi/frame/realtime/RealTimeCallView;Landroid/view/MotionEvent;)V

    .line 211
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 203
    iget-object v2, p0, Lcom/didi/frame/realtime/RealTimeCallView$3;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #getter for: Lcom/didi/frame/realtime/RealTimeCallView;->unitTime:J
    invoke-static {v2}, Lcom/didi/frame/realtime/RealTimeCallView;->access$700(Lcom/didi/frame/realtime/RealTimeCallView;)J

    move-result-wide v2

    div-long v0, p1, v2

    .line 204
    .local v0, unti:J
    iget-object v2, p0, Lcom/didi/frame/realtime/RealTimeCallView$3;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    iget-object v3, p0, Lcom/didi/frame/realtime/RealTimeCallView$3;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #getter for: Lcom/didi/frame/realtime/RealTimeCallView;->voiceMaxTime:J
    invoke-static {v3}, Lcom/didi/frame/realtime/RealTimeCallView;->access$900(Lcom/didi/frame/realtime/RealTimeCallView;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/didi/frame/realtime/RealTimeCallView$3;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #getter for: Lcom/didi/frame/realtime/RealTimeCallView;->unitTime:J
    invoke-static {v5}, Lcom/didi/frame/realtime/RealTimeCallView;->access$700(Lcom/didi/frame/realtime/RealTimeCallView;)J

    move-result-wide v5

    div-long/2addr v3, v5

    sub-long/2addr v3, v0

    #setter for: Lcom/didi/frame/realtime/RealTimeCallView;->callTime:J
    invoke-static {v2, v3, v4}, Lcom/didi/frame/realtime/RealTimeCallView;->access$802(Lcom/didi/frame/realtime/RealTimeCallView;J)J

    .line 205
    iget-object v2, p0, Lcom/didi/frame/realtime/RealTimeCallView$3;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #getter for: Lcom/didi/frame/realtime/RealTimeCallView;->mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;
    invoke-static {v2}, Lcom/didi/frame/realtime/RealTimeCallView;->access$000(Lcom/didi/frame/realtime/RealTimeCallView;)Lcom/didi/frame/realtime/SlideVoiceView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/didi/frame/realtime/SlideVoiceView;->tick(J)V

    .line 206
    return-void
.end method
