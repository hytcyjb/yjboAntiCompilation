.class Lcom/didi/frame/carpool/CarPoolOperator$2;
.super Ljava/lang/Object;
.source "CarPoolOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/carpool/CarPoolOperator;->slide(Landroid/view/View;ILandroid/view/View;IIILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/carpool/CarPoolOperator;

.field final synthetic val$duration:I

.field final synthetic val$end:Landroid/view/View;

.field final synthetic val$endVisibility:I

.field final synthetic val$interpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$start:Landroid/view/View;

.field final synthetic val$startVisibility:I


# direct methods
.method constructor <init>(Lcom/didi/frame/carpool/CarPoolOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->this$0:Lcom/didi/frame/carpool/CarPoolOperator;

    iput-object p2, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->val$start:Landroid/view/View;

    iput p3, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->val$startVisibility:I

    iput-object p4, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->val$end:Landroid/view/View;

    iput p5, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->val$endVisibility:I

    iput p6, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->val$duration:I

    iput-object p7, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->val$interpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 258
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->this$0:Lcom/didi/frame/carpool/CarPoolOperator;

    iget-object v1, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->val$start:Landroid/view/View;

    iget v2, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->val$startVisibility:I

    iget-object v3, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->val$end:Landroid/view/View;

    iget v4, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->val$endVisibility:I

    iget v5, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->val$duration:I

    iget-object v6, p0, Lcom/didi/frame/carpool/CarPoolOperator$2;->val$interpolator:Landroid/view/animation/Interpolator;

    #calls: Lcom/didi/frame/carpool/CarPoolOperator;->doSlide(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
    invoke-static/range {v0 .. v6}, Lcom/didi/frame/carpool/CarPoolOperator;->access$100(Lcom/didi/frame/carpool/CarPoolOperator;Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V

    .line 259
    return-void
.end method
