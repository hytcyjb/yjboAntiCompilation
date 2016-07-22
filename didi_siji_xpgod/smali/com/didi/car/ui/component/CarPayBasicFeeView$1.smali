.class Lcom/didi/car/ui/component/CarPayBasicFeeView$1;
.super Ljava/lang/Object;
.source "CarPayBasicFeeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarPayBasicFeeView;->setItems(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarPayBasicFeeView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarPayBasicFeeView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView$1;->this$0:Lcom/didi/car/ui/component/CarPayBasicFeeView;

    iput-object p2, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView$1;->this$0:Lcom/didi/car/ui/component/CarPayBasicFeeView;

    #getter for: Lcom/didi/car/ui/component/CarPayBasicFeeView;->mContentView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarPayBasicFeeView;->access$000(Lcom/didi/car/ui/component/CarPayBasicFeeView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/didi/car/ui/component/CarPayBasicFeeView$1;->this$0:Lcom/didi/car/ui/component/CarPayBasicFeeView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarPayBasicFeeView;->showAllBasicView()V

    .line 88
    return-void
.end method
