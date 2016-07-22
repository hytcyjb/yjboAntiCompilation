.class Lcom/didi/frame/realtime/BottomBar$1;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/realtime/BottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/realtime/BottomBar;


# direct methods
.method constructor <init>(Lcom/didi/frame/realtime/BottomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/didi/frame/realtime/BottomBar$1;->this$0:Lcom/didi/frame/realtime/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 189
    :goto_0
    return v0

    .line 171
    :pswitch_0
    const-string v1, "vc_pressed"

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/didi/common/util/Utils;->isLocated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/didi/common/util/Utils;->isValidCity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    :cond_0
    const v0, 0x7f0b03e6

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    .line 174
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar$1;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #calls: Lcom/didi/frame/realtime/BottomBar;->hideViewOnTouchDown()V
    invoke-static {v1}, Lcom/didi/frame/realtime/BottomBar;->access$000(Lcom/didi/frame/realtime/BottomBar;)V

    .line 177
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar$1;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;
    invoke-static {v1}, Lcom/didi/frame/realtime/BottomBar;->access$100(Lcom/didi/frame/realtime/BottomBar;)Lx/RelativeLayout;

    move-result-object v1

    const v2, 0x7f020298

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setBackgroundResource(I)V

    .line 178
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar$1;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;
    invoke-static {v1}, Lcom/didi/frame/realtime/BottomBar;->access$200(Lcom/didi/frame/realtime/BottomBar;)Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;->onShow()V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar$1;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;
    invoke-static {v1}, Lcom/didi/frame/realtime/BottomBar;->access$200(Lcom/didi/frame/realtime/BottomBar;)Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar$1;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;
    invoke-static {v1}, Lcom/didi/frame/realtime/BottomBar;->access$100(Lcom/didi/frame/realtime/BottomBar;)Lx/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lx/RelativeLayout;->setEnabled(Z)V

    .line 185
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar$1;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;
    invoke-static {v1}, Lcom/didi/frame/realtime/BottomBar;->access$100(Lcom/didi/frame/realtime/BottomBar;)Lx/RelativeLayout;

    move-result-object v1

    const v2, 0x7f020297

    invoke-virtual {v1, v2}, Lx/RelativeLayout;->setBackgroundResource(I)V

    .line 186
    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar$1;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;
    invoke-static {v1}, Lcom/didi/frame/realtime/BottomBar;->access$200(Lcom/didi/frame/realtime/BottomBar;)Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;->onHide(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
