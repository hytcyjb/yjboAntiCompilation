.class Lcom/didi/frame/realtime/BottomBar$9;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/realtime/BottomBar;->changeToTopic()V
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
    .line 442
    iput-object p1, p0, Lcom/didi/frame/realtime/BottomBar$9;->this$0:Lcom/didi/frame/realtime/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$9;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mListener:Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$200(Lcom/didi/frame/realtime/BottomBar;)Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView$BottomBarListener;->onTopicClick(I)V

    .line 446
    return-void
.end method
