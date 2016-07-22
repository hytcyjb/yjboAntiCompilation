.class Lcom/didi/frame/wait/WaitOperator$3;
.super Ljava/lang/Object;
.source "WaitOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/wait/WaitOperator;->boomPins(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/wait/WaitOperator;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/didi/frame/wait/WaitOperator;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/didi/frame/wait/WaitOperator$3;->this$0:Lcom/didi/frame/wait/WaitOperator;

    iput p2, p0, Lcom/didi/frame/wait/WaitOperator$3;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 230
    iget-object v5, p0, Lcom/didi/frame/wait/WaitOperator$3;->this$0:Lcom/didi/frame/wait/WaitOperator;

    #getter for: Lcom/didi/frame/wait/WaitOperator;->selectedPinView:Lcom/didi/frame/wait/WaitPinView;
    invoke-static {v5}, Lcom/didi/frame/wait/WaitOperator;->access$200(Lcom/didi/frame/wait/WaitOperator;)Lcom/didi/frame/wait/WaitPinView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/wait/WaitPinView;->getLeft()I

    move-result v2

    .line 231
    .local v2, startX:I
    iget-object v5, p0, Lcom/didi/frame/wait/WaitOperator$3;->this$0:Lcom/didi/frame/wait/WaitOperator;

    #getter for: Lcom/didi/frame/wait/WaitOperator;->selectedPinView:Lcom/didi/frame/wait/WaitPinView;
    invoke-static {v5}, Lcom/didi/frame/wait/WaitOperator;->access$200(Lcom/didi/frame/wait/WaitOperator;)Lcom/didi/frame/wait/WaitPinView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/wait/WaitPinView;->getTop()I

    move-result v3

    .line 234
    .local v3, startY:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/didi/frame/wait/WaitOperator$3;->this$0:Lcom/didi/frame/wait/WaitOperator;

    #getter for: Lcom/didi/frame/wait/WaitOperator;->count:I
    invoke-static {v5}, Lcom/didi/frame/wait/WaitOperator;->access$300(Lcom/didi/frame/wait/WaitOperator;)I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 235
    iget-object v5, p0, Lcom/didi/frame/wait/WaitOperator$3;->this$0:Lcom/didi/frame/wait/WaitOperator;

    #getter for: Lcom/didi/frame/wait/WaitOperator;->waitPinArray:[Lcom/didi/frame/wait/WaitPinView;
    invoke-static {v5}, Lcom/didi/frame/wait/WaitOperator;->access$400(Lcom/didi/frame/wait/WaitOperator;)[Lcom/didi/frame/wait/WaitPinView;

    move-result-object v5

    aget-object v4, v5, v1

    .line 236
    .local v4, view:Lcom/didi/frame/wait/WaitPinView;
    invoke-virtual {v4}, Lcom/didi/frame/wait/WaitPinView;->checkEnabled()V

    .line 237
    invoke-virtual {v4}, Lcom/didi/frame/wait/WaitPinView;->show()V

    .line 238
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v4}, Lcom/didi/frame/wait/WaitPinView;->getLeft()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    int-to-float v7, v3

    int-to-float v8, v3

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 239
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    iget v5, p0, Lcom/didi/frame/wait/WaitOperator$3;->val$duration:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 240
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    const v6, 0x3fb33333

    invoke-direct {v5, v6}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 241
    invoke-virtual {v4, v0}, Lcom/didi/frame/wait/WaitPinView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    .end local v4           #view:Lcom/didi/frame/wait/WaitPinView;
    :cond_0
    return-void
.end method
