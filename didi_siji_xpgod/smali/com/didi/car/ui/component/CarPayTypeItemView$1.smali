.class Lcom/didi/car/ui/component/CarPayTypeItemView$1;
.super Ljava/lang/Object;
.source "CarPayTypeItemView.java"

# interfaces
.implements Lcom/didi/common/cache/ImageWorker$ImageloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarPayTypeItemView;->fillData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarPayTypeItemView;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarPayTypeItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/didi/car/ui/component/CarPayTypeItemView$1;->this$0:Lcom/didi/car/ui/component/CarPayTypeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .parameter "bitmapDrawable"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView$1;->this$0:Lcom/didi/car/ui/component/CarPayTypeItemView;

    #getter for: Lcom/didi/car/ui/component/CarPayTypeItemView;->mImgViewPayIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarPayTypeItemView;->access$000(Lcom/didi/car/ui/component/CarPayTypeItemView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayTypeItemView$1;->this$0:Lcom/didi/car/ui/component/CarPayTypeItemView;

    #getter for: Lcom/didi/car/ui/component/CarPayTypeItemView;->mImgViewPayIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarPayTypeItemView;->access$000(Lcom/didi/car/ui/component/CarPayTypeItemView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :cond_0
    return-void
.end method
