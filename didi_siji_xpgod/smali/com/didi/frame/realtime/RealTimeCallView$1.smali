.class Lcom/didi/frame/realtime/RealTimeCallView$1;
.super Ljava/lang/Object;
.source "RealTimeCallView.java"

# interfaces
.implements Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/realtime/RealTimeCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/realtime/RealTimeCallView;


# direct methods
.method constructor <init>(Lcom/didi/frame/realtime/RealTimeCallView;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/didi/frame/realtime/RealTimeCallView$1;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHide(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 109
    new-instance v0, Lcom/didi/frame/realtime/RealTimeCallView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/didi/frame/realtime/RealTimeCallView$1$1;-><init>(Lcom/didi/frame/realtime/RealTimeCallView$1;Landroid/view/MotionEvent;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void
.end method

.method public onMove(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView$1;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #getter for: Lcom/didi/frame/realtime/RealTimeCallView;->mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;
    invoke-static {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->access$000(Lcom/didi/frame/realtime/RealTimeCallView;)Lcom/didi/frame/realtime/SlideVoiceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/frame/realtime/SlideVoiceView;->move(Landroid/view/MotionEvent;)V

    .line 121
    return-void
.end method

.method public onRightBtnClick()V
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 126
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView$1;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #getter for: Lcom/didi/frame/realtime/RealTimeCallView;->fragListener:Lcom/didi/frame/realtime/RealtimeCallViewListener;
    invoke-static {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->access$300(Lcom/didi/frame/realtime/RealTimeCallView;)Lcom/didi/frame/realtime/RealtimeCallViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/realtime/RealtimeCallViewListener;->onRightBtnClick()V

    .line 127
    return-void
.end method

.method public onShow()V
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->removePoupView()V

    .line 99
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->hideLocation()V

    .line 100
    iget-object v1, p0, Lcom/didi/frame/realtime/RealTimeCallView$1;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #getter for: Lcom/didi/frame/realtime/RealTimeCallView;->mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;
    invoke-static {v1}, Lcom/didi/frame/realtime/RealTimeCallView;->access$000(Lcom/didi/frame/realtime/RealTimeCallView;)Lcom/didi/frame/realtime/SlideVoiceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/realtime/SlideVoiceView;->show()V

    .line 101
    iget-object v1, p0, Lcom/didi/frame/realtime/RealTimeCallView$1;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    const v2, 0x7f070032

    invoke-virtual {v1, v2}, Lcom/didi/frame/realtime/RealTimeCallView;->setBackgroundResource(I)V

    .line 102
    iget-object v1, p0, Lcom/didi/frame/realtime/RealTimeCallView$1;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v1}, Lcom/didi/frame/realtime/RealTimeCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 103
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/didi/frame/realtime/RealTimeCallView$1;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #getter for: Lcom/didi/frame/realtime/RealTimeCallView;->mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;
    invoke-static {v1}, Lcom/didi/frame/realtime/RealTimeCallView;->access$000(Lcom/didi/frame/realtime/RealTimeCallView;)Lcom/didi/frame/realtime/SlideVoiceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/frame/realtime/SlideVoiceView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v1, p0, Lcom/didi/frame/realtime/RealTimeCallView$1;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #calls: Lcom/didi/frame/realtime/RealTimeCallView;->startTimer()V
    invoke-static {v1}, Lcom/didi/frame/realtime/RealTimeCallView;->access$100(Lcom/didi/frame/realtime/RealTimeCallView;)V

    .line 105
    return-void
.end method

.method public onTextEditClick()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView$1;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #getter for: Lcom/didi/frame/realtime/RealTimeCallView;->fragListener:Lcom/didi/frame/realtime/RealtimeCallViewListener;
    invoke-static {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->access$300(Lcom/didi/frame/realtime/RealTimeCallView;)Lcom/didi/frame/realtime/RealtimeCallViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/realtime/RealtimeCallViewListener;->onTextEditClick()V

    .line 132
    return-void
.end method

.method public onTopicClick(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView$1;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #getter for: Lcom/didi/frame/realtime/RealTimeCallView;->fragListener:Lcom/didi/frame/realtime/RealtimeCallViewListener;
    invoke-static {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->access$300(Lcom/didi/frame/realtime/RealTimeCallView;)Lcom/didi/frame/realtime/RealtimeCallViewListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/didi/frame/realtime/RealtimeCallViewListener;->onTopicClick(I)V

    .line 137
    return-void
.end method
