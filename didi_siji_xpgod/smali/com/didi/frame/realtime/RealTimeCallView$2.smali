.class Lcom/didi/frame/realtime/RealTimeCallView$2;
.super Ljava/lang/Object;
.source "RealTimeCallView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 158
    iput-object p1, p0, Lcom/didi/frame/realtime/RealTimeCallView$2;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView$2;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    const v1, 0x7f070044

    #calls: Lcom/didi/frame/realtime/RealTimeCallView;->setBackground(I)V
    invoke-static {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;->access$400(Lcom/didi/frame/realtime/RealTimeCallView;I)V

    .line 171
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView$2;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #getter for: Lcom/didi/frame/realtime/RealTimeCallView;->mBottomBar:Lcom/didi/frame/realtime/BottomBar;
    invoke-static {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->access$500(Lcom/didi/frame/realtime/RealTimeCallView;)Lcom/didi/frame/realtime/BottomBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/realtime/BottomBar;->showViewOnTouchUp()V

    .line 172
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView$2;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;->setCallEnable(Z)V

    .line 173
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView$2;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #getter for: Lcom/didi/frame/realtime/RealTimeCallView;->mSlideVoice:Lcom/didi/frame/realtime/SlideVoiceView;
    invoke-static {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->access$000(Lcom/didi/frame/realtime/RealTimeCallView;)Lcom/didi/frame/realtime/SlideVoiceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/realtime/SlideVoiceView;->getCancelState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "vc_record_cancel"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView$2;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->getCallItem()I

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView$2;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #getter for: Lcom/didi/frame/realtime/RealTimeCallView;->fragListener:Lcom/didi/frame/realtime/RealtimeCallViewListener;
    invoke-static {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->access$300(Lcom/didi/frame/realtime/RealTimeCallView;)Lcom/didi/frame/realtime/RealtimeCallViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/realtime/RealtimeCallViewListener;->onUp()V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView$2;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    #calls: Lcom/didi/frame/realtime/RealTimeCallView;->checkVoiceDuration()V
    invoke-static {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->access$600(Lcom/didi/frame/realtime/RealTimeCallView;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 166
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 162
    return-void
.end method
