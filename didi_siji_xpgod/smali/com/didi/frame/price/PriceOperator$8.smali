.class Lcom/didi/frame/price/PriceOperator$8;
.super Ljava/lang/Object;
.source "PriceOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/price/PriceOperator;->doSlide(Landroid/view/View;ILandroid/view/View;IILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/price/PriceOperator;

.field final synthetic val$end:Landroid/view/View;

.field final synthetic val$endVisibility:I

.field final synthetic val$start:Landroid/view/View;

.field final synthetic val$startVisibility:I


# direct methods
.method constructor <init>(Lcom/didi/frame/price/PriceOperator;Landroid/view/View;ILandroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/didi/frame/price/PriceOperator$8;->this$0:Lcom/didi/frame/price/PriceOperator;

    iput-object p2, p0, Lcom/didi/frame/price/PriceOperator$8;->val$start:Landroid/view/View;

    iput p3, p0, Lcom/didi/frame/price/PriceOperator$8;->val$startVisibility:I

    iput-object p4, p0, Lcom/didi/frame/price/PriceOperator$8;->val$end:Landroid/view/View;

    iput p5, p0, Lcom/didi/frame/price/PriceOperator$8;->val$endVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator$8;->val$start:Landroid/view/View;

    iget v1, p0, Lcom/didi/frame/price/PriceOperator$8;->val$startVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/didi/frame/price/PriceOperator$8;->val$end:Landroid/view/View;

    iget v1, p0, Lcom/didi/frame/price/PriceOperator$8;->val$endVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    return-void
.end method
