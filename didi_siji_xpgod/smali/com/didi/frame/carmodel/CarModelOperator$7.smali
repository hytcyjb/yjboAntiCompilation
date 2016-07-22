.class Lcom/didi/frame/carmodel/CarModelOperator$7;
.super Ljava/lang/Object;
.source "CarModelOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carmodel/CarModelOperator;->doSlideBack(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
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
    .line 360
    iput-object p1, p0, Lcom/didi/frame/carmodel/CarModelOperator$7;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    iput-object p2, p0, Lcom/didi/frame/carmodel/CarModelOperator$7;->val$start:Landroid/view/View;

    iput p3, p0, Lcom/didi/frame/carmodel/CarModelOperator$7;->val$startVisibility:I

    iput-object p4, p0, Lcom/didi/frame/carmodel/CarModelOperator$7;->val$end:Landroid/view/View;

    iput p5, p0, Lcom/didi/frame/carmodel/CarModelOperator$7;->val$endVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator$7;->val$start:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator$7;->val$start:Landroid/view/View;

    iget v1, p0, Lcom/didi/frame/carmodel/CarModelOperator$7;->val$startVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator$7;->val$end:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator$7;->val$end:Landroid/view/View;

    iget v1, p0, Lcom/didi/frame/carmodel/CarModelOperator$7;->val$endVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :cond_1
    return-void
.end method
