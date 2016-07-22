.class Lcom/didi/frame/carpool/CarPoolOperator$7;
.super Ljava/lang/Object;
.source "CarPoolOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carpool/CarPoolOperator;->doSlideBack(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/carpool/CarPoolOperator;

.field final synthetic val$end:Landroid/view/View;

.field final synthetic val$endVisibility:I

.field final synthetic val$start:Landroid/view/View;

.field final synthetic val$startVisibility:I


# direct methods
.method constructor <init>(Lcom/didi/frame/carpool/CarPoolOperator;Landroid/view/View;ILandroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/didi/frame/carpool/CarPoolOperator$7;->this$0:Lcom/didi/frame/carpool/CarPoolOperator;

    iput-object p2, p0, Lcom/didi/frame/carpool/CarPoolOperator$7;->val$start:Landroid/view/View;

    iput p3, p0, Lcom/didi/frame/carpool/CarPoolOperator$7;->val$startVisibility:I

    iput-object p4, p0, Lcom/didi/frame/carpool/CarPoolOperator$7;->val$end:Landroid/view/View;

    iput p5, p0, Lcom/didi/frame/carpool/CarPoolOperator$7;->val$endVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator$7;->val$start:Landroid/view/View;

    iget v1, p0, Lcom/didi/frame/carpool/CarPoolOperator$7;->val$startVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator$7;->val$end:Landroid/view/View;

    iget v1, p0, Lcom/didi/frame/carpool/CarPoolOperator$7;->val$endVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    return-void
.end method
