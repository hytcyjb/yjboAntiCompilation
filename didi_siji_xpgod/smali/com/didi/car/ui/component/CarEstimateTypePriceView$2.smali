.class Lcom/didi/car/ui/component/CarEstimateTypePriceView$2;
.super Ljava/lang/Object;
.source "CarEstimateTypePriceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/component/CarEstimateTypePriceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarEstimateTypePriceView;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarEstimateTypePriceView;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView$2;->this$0:Lcom/didi/car/ui/component/CarEstimateTypePriceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView$2;->this$0:Lcom/didi/car/ui/component/CarEstimateTypePriceView;

    #getter for: Lcom/didi/car/ui/component/CarEstimateTypePriceView;->listener:Lcom/didi/car/ui/component/CarEstimateTypePriceView$CarTypeOptionItemListener;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->access$100(Lcom/didi/car/ui/component/CarEstimateTypePriceView;)Lcom/didi/car/ui/component/CarEstimateTypePriceView$CarTypeOptionItemListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView$CarTypeOptionItemListener;->onSelect()V

    .line 160
    return-void
.end method
