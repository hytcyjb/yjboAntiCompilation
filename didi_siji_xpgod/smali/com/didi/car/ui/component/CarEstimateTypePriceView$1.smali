.class Lcom/didi/car/ui/component/CarEstimateTypePriceView$1;
.super Ljava/lang/Object;
.source "CarEstimateTypePriceView.java"

# interfaces
.implements Lcom/didi/common/cache/ImageWorker$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarEstimateTypePriceView;->setImgIcon(Lcom/didi/car/model/CarModel;)V
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
    .line 121
    iput-object p1, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView$1;->this$0:Lcom/didi/car/ui/component/CarEstimateTypePriceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .parameter "bitmapDrawable"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView$1;->this$0:Lcom/didi/car/ui/component/CarEstimateTypePriceView;

    #getter for: Lcom/didi/car/ui/component/CarEstimateTypePriceView;->imgCarType:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->access$000(Lcom/didi/car/ui/component/CarEstimateTypePriceView;)Lx/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/didi/car/ui/component/CarEstimateTypePriceView$1;->this$0:Lcom/didi/car/ui/component/CarEstimateTypePriceView;

    #getter for: Lcom/didi/car/ui/component/CarEstimateTypePriceView;->imgCarType:Lx/ImageView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarEstimateTypePriceView;->access$000(Lcom/didi/car/ui/component/CarEstimateTypePriceView;)Lx/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_0
    return-void
.end method
