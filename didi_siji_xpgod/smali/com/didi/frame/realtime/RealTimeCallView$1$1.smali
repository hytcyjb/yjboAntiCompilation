.class Lcom/didi/frame/realtime/RealTimeCallView$1$1;
.super Ljava/lang/Object;
.source "RealTimeCallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/realtime/RealTimeCallView$1;->onHide(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/frame/realtime/RealTimeCallView$1;

.field final synthetic val$event:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/didi/frame/realtime/RealTimeCallView$1;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/didi/frame/realtime/RealTimeCallView$1$1;->this$1:Lcom/didi/frame/realtime/RealTimeCallView$1;

    iput-object p2, p0, Lcom/didi/frame/realtime/RealTimeCallView$1$1;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/didi/frame/realtime/RealTimeCallView$1$1;->this$1:Lcom/didi/frame/realtime/RealTimeCallView$1;

    iget-object v0, v0, Lcom/didi/frame/realtime/RealTimeCallView$1;->this$0:Lcom/didi/frame/realtime/RealTimeCallView;

    iget-object v1, p0, Lcom/didi/frame/realtime/RealTimeCallView$1$1;->val$event:Landroid/view/MotionEvent;

    #calls: Lcom/didi/frame/realtime/RealTimeCallView;->hide(Landroid/view/MotionEvent;)V
    invoke-static {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;->access$200(Lcom/didi/frame/realtime/RealTimeCallView;Landroid/view/MotionEvent;)V

    .line 114
    return-void
.end method
