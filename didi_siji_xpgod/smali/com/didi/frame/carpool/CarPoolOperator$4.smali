.class Lcom/didi/frame/carpool/CarPoolOperator$4;
.super Ljava/lang/Object;
.source "CarPoolOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carpool/CarPoolOperator;->boomPins(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/carpool/CarPoolOperator;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/didi/frame/carpool/CarPoolOperator;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/didi/frame/carpool/CarPoolOperator$4;->this$0:Lcom/didi/frame/carpool/CarPoolOperator;

    iput p2, p0, Lcom/didi/frame/carpool/CarPoolOperator$4;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 293
    iget-object v5, p0, Lcom/didi/frame/carpool/CarPoolOperator$4;->this$0:Lcom/didi/frame/carpool/CarPoolOperator;

    #getter for: Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;
    invoke-static {v5}, Lcom/didi/frame/carpool/CarPoolOperator;->access$200(Lcom/didi/frame/carpool/CarPoolOperator;)Lcom/didi/frame/carpool/CarPoolPinView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/carpool/CarPoolPinView;->getLeft()I

    move-result v2

    .line 294
    .local v2, startX:I
    iget-object v5, p0, Lcom/didi/frame/carpool/CarPoolOperator$4;->this$0:Lcom/didi/frame/carpool/CarPoolOperator;

    #getter for: Lcom/didi/frame/carpool/CarPoolOperator;->mSelectedPinView:Lcom/didi/frame/carpool/CarPoolPinView;
    invoke-static {v5}, Lcom/didi/frame/carpool/CarPoolOperator;->access$200(Lcom/didi/frame/carpool/CarPoolOperator;)Lcom/didi/frame/carpool/CarPoolPinView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/carpool/CarPoolPinView;->getTop()I

    move-result v3

    .line 297
    .local v3, startY:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/didi/frame/carpool/CarPoolOperator$4;->this$0:Lcom/didi/frame/carpool/CarPoolOperator;

    #getter for: Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;
    invoke-static {v5}, Lcom/didi/frame/carpool/CarPoolOperator;->access$300(Lcom/didi/frame/carpool/CarPoolOperator;)[Lcom/didi/frame/carpool/CarPoolPinView;

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 298
    iget-object v5, p0, Lcom/didi/frame/carpool/CarPoolOperator$4;->this$0:Lcom/didi/frame/carpool/CarPoolOperator;

    #getter for: Lcom/didi/frame/carpool/CarPoolOperator;->mPoolPinViews:[Lcom/didi/frame/carpool/CarPoolPinView;
    invoke-static {v5}, Lcom/didi/frame/carpool/CarPoolOperator;->access$300(Lcom/didi/frame/carpool/CarPoolOperator;)[Lcom/didi/frame/carpool/CarPoolPinView;

    move-result-object v5

    aget-object v4, v5, v1

    .line 299
    .local v4, view:Lcom/didi/frame/carpool/CarPoolPinView;
    invoke-virtual {v4}, Lcom/didi/frame/carpool/CarPoolPinView;->checkEnabled()V

    .line 300
    invoke-virtual {v4}, Lcom/didi/frame/carpool/CarPoolPinView;->show()V

    .line 301
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v4}, Lcom/didi/frame/carpool/CarPoolPinView;->getLeft()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    int-to-float v7, v3

    int-to-float v8, v3

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 302
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    iget v5, p0, Lcom/didi/frame/carpool/CarPoolOperator$4;->val$duration:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 303
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    const v6, 0x3fb33333

    invoke-direct {v5, v6}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 304
    invoke-virtual {v4, v0}, Lcom/didi/frame/carpool/CarPoolPinView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    .end local v4           #view:Lcom/didi/frame/carpool/CarPoolPinView;
    :cond_0
    return-void
.end method
