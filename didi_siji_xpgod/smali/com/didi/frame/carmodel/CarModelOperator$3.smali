.class Lcom/didi/frame/carmodel/CarModelOperator$3;
.super Ljava/lang/Object;
.source "CarModelOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carmodel/CarModelOperator;->boomPins(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/carmodel/CarModelOperator;

.field final synthetic val$carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/didi/frame/carmodel/CarModelOperator;Lcom/didi/car/model/CarEstimatePrice;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/didi/frame/carmodel/CarModelOperator$3;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    iput-object p2, p0, Lcom/didi/frame/carmodel/CarModelOperator$3;->val$carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iput p3, p0, Lcom/didi/frame/carmodel/CarModelOperator$3;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 240
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelAdapter;->getCurrentAdapter()Lcom/didi/frame/carmodel/ModelAdapter;

    move-result-object v0

    .line 241
    .local v0, adapter:Lcom/didi/frame/carmodel/ModelAdapter;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v6

    instance-of v6, v6, Lcom/didi/car/business/CarOrderLooper;

    if-nez v6, :cond_0

    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v7

    if-eq v6, v7, :cond_1

    :cond_0
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v6

    instance-of v6, v6, Lcom/didi/flier/business/FlierOrderLooper;

    if-nez v6, :cond_4

    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v7

    if-ne v6, v7, :cond_4

    .line 245
    :cond_1
    iget-object v6, p0, Lcom/didi/frame/carmodel/CarModelOperator$3;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    #getter for: Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;
    invoke-static {v6}, Lcom/didi/frame/carmodel/CarModelOperator;->access$200(Lcom/didi/frame/carmodel/CarModelOperator;)[Lcom/didi/frame/carmodel/CarModelPinView;

    move-result-object v6

    aget-object v6, v6, v10

    invoke-virtual {v6}, Lcom/didi/frame/carmodel/CarModelPinView;->getLeft()I

    move-result v3

    .line 246
    .local v3, startX:I
    iget-object v6, p0, Lcom/didi/frame/carmodel/CarModelOperator$3;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    #getter for: Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;
    invoke-static {v6}, Lcom/didi/frame/carmodel/CarModelOperator;->access$200(Lcom/didi/frame/carmodel/CarModelOperator;)[Lcom/didi/frame/carmodel/CarModelPinView;

    move-result-object v6

    aget-object v6, v6, v10

    invoke-virtual {v6}, Lcom/didi/frame/carmodel/CarModelPinView;->getTop()I

    move-result v4

    .line 249
    .local v4, startY:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/didi/frame/carmodel/CarModelOperator$3;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    #getter for: Lcom/didi/frame/carmodel/CarModelOperator;->count:I
    invoke-static {v6}, Lcom/didi/frame/carmodel/CarModelOperator;->access$300(Lcom/didi/frame/carmodel/CarModelOperator;)I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 250
    iget-object v6, p0, Lcom/didi/frame/carmodel/CarModelOperator$3;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    #getter for: Lcom/didi/frame/carmodel/CarModelOperator;->modelPinArray:[Lcom/didi/frame/carmodel/CarModelPinView;
    invoke-static {v6}, Lcom/didi/frame/carmodel/CarModelOperator;->access$200(Lcom/didi/frame/carmodel/CarModelOperator;)[Lcom/didi/frame/carmodel/CarModelPinView;

    move-result-object v6

    aget-object v5, v6, v2

    .line 251
    .local v5, view:Lcom/didi/frame/carmodel/CarModelPinView;
    invoke-virtual {v5}, Lcom/didi/frame/carmodel/CarModelPinView;->checkEnabled()V

    .line 252
    invoke-virtual {v5}, Lcom/didi/frame/carmodel/CarModelPinView;->show()V

    .line 253
    iget-object v6, p0, Lcom/didi/frame/carmodel/CarModelOperator$3;->val$carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/didi/frame/carmodel/CarModelOperator$3;->val$carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v6, v6, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    aget v6, v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 254
    iget-object v6, p0, Lcom/didi/frame/carmodel/CarModelOperator$3;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    #calls: Lcom/didi/frame/carmodel/CarModelOperator;->setActivatedView(Lcom/didi/frame/carmodel/CarModelPinView;Z)V
    invoke-static {v6, v5, v10}, Lcom/didi/frame/carmodel/CarModelOperator;->access$400(Lcom/didi/frame/carmodel/CarModelOperator;Lcom/didi/frame/carmodel/CarModelPinView;Z)V

    .line 259
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "boomPins name is ****** : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/didi/frame/carmodel/CarModelPinView;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 260
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v5}, Lcom/didi/frame/carmodel/CarModelPinView;->getLeft()I

    move-result v6

    sub-int v6, v3, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    int-to-float v8, v4

    int-to-float v9, v4

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 261
    .local v1, anim:Landroid/view/animation/TranslateAnimation;
    iget v6, p0, Lcom/didi/frame/carmodel/CarModelOperator$3;->val$duration:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 262
    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    const v7, 0x3fb33333

    invoke-direct {v6, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 263
    invoke-virtual {v5, v1}, Lcom/didi/frame/carmodel/CarModelPinView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v1           #anim:Landroid/view/animation/TranslateAnimation;
    .end local v5           #view:Lcom/didi/frame/carmodel/CarModelPinView;
    :cond_3
    iget-object v6, p0, Lcom/didi/frame/carmodel/CarModelOperator$3;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    #calls: Lcom/didi/frame/carmodel/CarModelOperator;->checkPins()V
    invoke-static {v6}, Lcom/didi/frame/carmodel/CarModelOperator;->access$500(Lcom/didi/frame/carmodel/CarModelOperator;)V

    .line 267
    .end local v2           #i:I
    .end local v3           #startX:I
    .end local v4           #startY:I
    :cond_4
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 268
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/frame/price/PriceOperator;->hideContentPins()V

    .line 269
    new-instance v6, Lcom/didi/frame/carmodel/CarModelOperator$3$1;

    invoke-direct {v6, p0}, Lcom/didi/frame/carmodel/CarModelOperator$3$1;-><init>(Lcom/didi/frame/carmodel/CarModelOperator$3;)V

    const-wide/16 v7, 0x2bc

    invoke-static {v6, v7, v8}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 285
    :goto_1
    return-void

    .line 280
    :cond_5
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/frame/price/PriceOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->setEnabled(Z)V

    .line 281
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/frame/price/PriceOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->hide()V

    goto :goto_1
.end method
