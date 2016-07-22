.class Lcom/didi/frame/realtime/BottomBar$2;
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
    .line 193
    iput-object p1, p0, Lcom/didi/frame/realtime/BottomBar$2;->this$0:Lcom/didi/frame/realtime/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$2;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$300(Lcom/didi/frame/realtime/BottomBar;)Lx/Button;

    move-result-object v0

    const v1, 0x7f02028e

    invoke-virtual {v0, v1}, Lx/Button;->setBackgroundResource(I)V

    .line 199
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$2;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$300(Lcom/didi/frame/realtime/BottomBar;)Lx/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar$2;->this$0:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v1}, Lcom/didi/frame/realtime/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/Button;->setTextColor(I)V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$2;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$300(Lcom/didi/frame/realtime/BottomBar;)Lx/Button;

    move-result-object v0

    const v1, 0x7f02028d

    invoke-virtual {v0, v1}, Lx/Button;->setBackgroundResource(I)V

    .line 203
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$2;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mBookCall:Lx/Button;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$300(Lcom/didi/frame/realtime/BottomBar;)Lx/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/frame/realtime/BottomBar$2;->this$0:Lcom/didi/frame/realtime/BottomBar;

    invoke-virtual {v1}, Lcom/didi/frame/realtime/BottomBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/Button;->setTextColor(I)V

    .line 204
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$2;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$200(Lcom/didi/frame/realtime/BottomBar;)Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;->onRightBtnClick()V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
