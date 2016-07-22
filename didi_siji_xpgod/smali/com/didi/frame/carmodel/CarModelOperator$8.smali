.class Lcom/didi/frame/carmodel/CarModelOperator$8;
.super Ljava/lang/Object;
.source "CarModelOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carmodel/CarModelOperator;->doSlide(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/carmodel/CarModelOperator;

.field final synthetic val$end:Landroid/view/View;

.field final synthetic val$endVisibility:I

.field final synthetic val$start:Landroid/view/View;

.field final synthetic val$startVisibility:I


# direct methods
.method constructor <init>(Lcom/didi/frame/carmodel/CarModelOperator;Landroid/view/View;ILandroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/didi/frame/carmodel/CarModelOperator$8;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    iput-object p2, p0, Lcom/didi/frame/carmodel/CarModelOperator$8;->val$start:Landroid/view/View;

    iput p3, p0, Lcom/didi/frame/carmodel/CarModelOperator$8;->val$startVisibility:I

    iput-object p4, p0, Lcom/didi/frame/carmodel/CarModelOperator$8;->val$end:Landroid/view/View;

    iput p5, p0, Lcom/didi/frame/carmodel/CarModelOperator$8;->val$endVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 386
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelAdapter;->getCurrentAdapter()Lcom/didi/frame/carmodel/ModelAdapter;

    move-result-object v0

    .line 387
    .local v0, adapter:Lcom/didi/frame/carmodel/ModelAdapter;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v1

    instance-of v1, v1, Lcom/didi/car/business/CarOrderLooper;

    if-nez v1, :cond_0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    if-eq v1, v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v1

    instance-of v1, v1, Lcom/didi/flier/business/FlierOrderLooper;

    if-nez v1, :cond_2

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/didi/frame/carmodel/CarModelOperator$8;->val$start:Landroid/view/View;

    iget v2, p0, Lcom/didi/frame/carmodel/CarModelOperator$8;->val$startVisibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lcom/didi/frame/carmodel/CarModelOperator$8;->val$end:Landroid/view/View;

    iget v2, p0, Lcom/didi/frame/carmodel/CarModelOperator$8;->val$endVisibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :cond_2
    return-void
.end method
