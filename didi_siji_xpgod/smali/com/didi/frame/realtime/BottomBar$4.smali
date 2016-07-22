.class Lcom/didi/frame/realtime/BottomBar$4;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 231
    iput-object p1, p0, Lcom/didi/frame/realtime/BottomBar$4;->this$0:Lcom/didi/frame/realtime/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$4;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mCarLayout:Lx/RelativeLayout;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$900(Lcom/didi/frame/realtime/BottomBar;)Lx/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setClickable(Z)V

    .line 236
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$4;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mTextLayout:Lx/RelativeLayout;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$1000(Lcom/didi/frame/realtime/BottomBar;)Lx/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setClickable(Z)V

    .line 237
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$4;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mFlierLayout:Lx/RelativeLayout;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$1100(Lcom/didi/frame/realtime/BottomBar;)Lx/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setClickable(Z)V

    .line 238
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$4;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mTopicLayout:Lx/LinearLayout;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$1200(Lcom/didi/frame/realtime/BottomBar;)Lx/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lx/LinearLayout;->setClickable(Z)V

    .line 239
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$4;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$200(Lcom/didi/frame/realtime/BottomBar;)Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;->onTextEditClick()V

    .line 240
    return-void
.end method
