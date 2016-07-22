.class Lcom/didi/frame/realtime/BottomBar$7;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 348
    iput-object p1, p0, Lcom/didi/frame/realtime/BottomBar$7;->this$0:Lcom/didi/frame/realtime/BottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$7;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mLayout:Lx/RelativeLayout;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$100(Lcom/didi/frame/realtime/BottomBar;)Lx/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lx/RelativeLayout;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/didi/frame/realtime/BottomBar$7;->this$0:Lcom/didi/frame/realtime/BottomBar;

    #getter for: Lcom/didi/frame/realtime/BottomBar;->mChannel:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/frame/realtime/BottomBar;->access$400(Lcom/didi/frame/realtime/BottomBar;)Lx/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx/ImageView;->setEnabled(Z)V

    .line 363
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 356
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 352
    return-void
.end method
