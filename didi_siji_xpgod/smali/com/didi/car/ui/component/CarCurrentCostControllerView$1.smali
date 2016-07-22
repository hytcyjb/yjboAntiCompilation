.class Lcom/didi/car/ui/component/CarCurrentCostControllerView$1;
.super Ljava/lang/Object;
.source "CarCurrentCostControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarCurrentCostControllerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarCurrentCostControllerView;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarCurrentCostControllerView;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/didi/car/ui/component/CarCurrentCostControllerView$1;->this$0:Lcom/didi/car/ui/component/CarCurrentCostControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCurrentCostControllerView$1;->this$0:Lcom/didi/car/ui/component/CarCurrentCostControllerView;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->onTitleLeftClicked(Landroid/view/View;)V

    .line 69
    return-void
.end method
