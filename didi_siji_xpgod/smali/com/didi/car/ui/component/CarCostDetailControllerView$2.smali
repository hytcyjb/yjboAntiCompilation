.class Lcom/didi/car/ui/component/CarCostDetailControllerView$2;
.super Ljava/lang/Object;
.source "CarCostDetailControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarCostDetailControllerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarCostDetailControllerView;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarCostDetailControllerView;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView$2;->this$0:Lcom/didi/car/ui/component/CarCostDetailControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCostDetailControllerView$2;->this$0:Lcom/didi/car/ui/component/CarCostDetailControllerView;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarCostDetailControllerView;->onTitleRightClicked(Landroid/view/View;)V

    .line 114
    return-void
.end method
