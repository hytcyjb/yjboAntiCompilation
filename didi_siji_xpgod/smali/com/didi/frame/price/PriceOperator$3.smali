.class Lcom/didi/frame/price/PriceOperator$3;
.super Ljava/lang/Object;
.source "PriceOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/price/PriceOperator;->boomPins(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/price/PriceOperator;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/didi/frame/price/PriceOperator;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/didi/frame/price/PriceOperator$3;->this$0:Lcom/didi/frame/price/PriceOperator;

    iput p2, p0, Lcom/didi/frame/price/PriceOperator$3;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 267
    iget-object v5, p0, Lcom/didi/frame/price/PriceOperator$3;->this$0:Lcom/didi/frame/price/PriceOperator;

    #getter for: Lcom/didi/frame/price/PriceOperator;->selectedPinView:Lcom/didi/frame/price/PricePinView;
    invoke-static {v5}, Lcom/didi/frame/price/PriceOperator;->access$200(Lcom/didi/frame/price/PriceOperator;)Lcom/didi/frame/price/PricePinView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/price/PricePinView;->getLeft()I

    move-result v2

    .line 268
    .local v2, startX:I
    iget-object v5, p0, Lcom/didi/frame/price/PriceOperator$3;->this$0:Lcom/didi/frame/price/PriceOperator;

    #getter for: Lcom/didi/frame/price/PriceOperator;->selectedPinView:Lcom/didi/frame/price/PricePinView;
    invoke-static {v5}, Lcom/didi/frame/price/PriceOperator;->access$200(Lcom/didi/frame/price/PriceOperator;)Lcom/didi/frame/price/PricePinView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/frame/price/PricePinView;->getTop()I

    move-result v3

    .line 271
    .local v3, startY:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/didi/frame/price/PriceOperator$3;->this$0:Lcom/didi/frame/price/PriceOperator;

    #getter for: Lcom/didi/frame/price/PriceOperator;->count:I
    invoke-static {v5}, Lcom/didi/frame/price/PriceOperator;->access$300(Lcom/didi/frame/price/PriceOperator;)I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 272
    iget-object v5, p0, Lcom/didi/frame/price/PriceOperator$3;->this$0:Lcom/didi/frame/price/PriceOperator;

    #getter for: Lcom/didi/frame/price/PriceOperator;->pricePinArray:[Lcom/didi/frame/price/PricePinView;
    invoke-static {v5}, Lcom/didi/frame/price/PriceOperator;->access$400(Lcom/didi/frame/price/PriceOperator;)[Lcom/didi/frame/price/PricePinView;

    move-result-object v5

    aget-object v4, v5, v1

    .line 273
    .local v4, view:Lcom/didi/frame/price/PricePinView;
    invoke-virtual {v4}, Lcom/didi/frame/price/PricePinView;->checkEnabled()V

    .line 274
    invoke-virtual {v4}, Lcom/didi/frame/price/PricePinView;->show()V

    .line 275
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v4}, Lcom/didi/frame/price/PricePinView;->getLeft()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    int-to-float v7, v3

    int-to-float v8, v3

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 276
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    iget v5, p0, Lcom/didi/frame/price/PriceOperator$3;->val$duration:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 277
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    const v6, 0x3fb33333

    invoke-direct {v5, v6}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 278
    invoke-virtual {v4, v0}, Lcom/didi/frame/price/PricePinView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    .end local v4           #view:Lcom/didi/frame/price/PricePinView;
    :cond_0
    return-void
.end method
