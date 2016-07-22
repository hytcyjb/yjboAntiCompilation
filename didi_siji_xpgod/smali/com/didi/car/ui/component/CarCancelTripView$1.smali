.class Lcom/didi/car/ui/component/CarCancelTripView$1;
.super Ljava/lang/Object;
.source "CarCancelTripView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarCancelTripView;->setCarAnimView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarCancelTripView;

.field final synthetic val$step:I


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarCancelTripView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/didi/car/ui/component/CarCancelTripView$1;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    iput p2, p0, Lcom/didi/car/ui/component/CarCancelTripView$1;->val$step:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    .line 135
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView$1;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnimBg:Lx/ImageView;
    invoke-static {v5}, Lcom/didi/car/ui/component/CarCancelTripView;->access$000(Lcom/didi/car/ui/component/CarCancelTripView;)Lx/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Lx/ImageView;->getWidth()I

    move-result v3

    .line 136
    .local v3, mWidthBG:I
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView$1;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnimBg:Lx/ImageView;
    invoke-static {v5}, Lcom/didi/car/ui/component/CarCancelTripView;->access$000(Lcom/didi/car/ui/component/CarCancelTripView;)Lx/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Lx/ImageView;->getHeight()I

    move-result v1

    .line 138
    .local v1, mHeightBG:I
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView$1;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnim:Lx/ImageView;
    invoke-static {v5}, Lcom/didi/car/ui/component/CarCancelTripView;->access$100(Lcom/didi/car/ui/component/CarCancelTripView;)Lx/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Lx/ImageView;->getWidth()I

    move-result v4

    .line 139
    .local v4, mWidthCar:I
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView$1;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnim:Lx/ImageView;
    invoke-static {v5}, Lcom/didi/car/ui/component/CarCancelTripView;->access$100(Lcom/didi/car/ui/component/CarCancelTripView;)Lx/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Lx/ImageView;->getHeight()I

    move-result v2

    .line 141
    .local v2, mHeightCar:I
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView$1;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnim:Lx/ImageView;
    invoke-static {v5}, Lcom/didi/car/ui/component/CarCancelTripView;->access$100(Lcom/didi/car/ui/component/CarCancelTripView;)Lx/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Lx/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 142
    .local v0, carParams:Landroid/widget/RelativeLayout$LayoutParams;
    int-to-float v5, v3

    iget-object v6, p0, Lcom/didi/car/ui/component/CarCancelTripView$1;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->ratArray:[F
    invoke-static {v6}, Lcom/didi/car/ui/component/CarCancelTripView;->access$200(Lcom/didi/car/ui/component/CarCancelTripView;)[F

    move-result-object v6

    iget v7, p0, Lcom/didi/car/ui/component/CarCancelTripView$1;->val$step:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    mul-float/2addr v5, v6

    int-to-float v6, v4

    iget-object v7, p0, Lcom/didi/car/ui/component/CarCancelTripView$1;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->carRat:F
    invoke-static {v7}, Lcom/didi/car/ui/component/CarCancelTripView;->access$300(Lcom/didi/car/ui/component/CarCancelTripView;)F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 144
    mul-int/lit8 v5, v1, 0x11

    div-int/lit8 v5, v5, 0x25

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x2

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 145
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView$1;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnim:Lx/ImageView;
    invoke-static {v5}, Lcom/didi/car/ui/component/CarCancelTripView;->access$100(Lcom/didi/car/ui/component/CarCancelTripView;)Lx/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Lx/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v5, p0, Lcom/didi/car/ui/component/CarCancelTripView$1;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->carImgAnim:Lx/ImageView;
    invoke-static {v5}, Lcom/didi/car/ui/component/CarCancelTripView;->access$100(Lcom/didi/car/ui/component/CarCancelTripView;)Lx/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Lx/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 148
    return-void
.end method
