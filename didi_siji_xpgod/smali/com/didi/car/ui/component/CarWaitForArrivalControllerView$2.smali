.class Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$2;
.super Ljava/lang/Object;
.source "CarWaitForArrivalControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setTitleLeft()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$2;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$2;->this$0:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->onTitleLeftClicked(Landroid/view/View;)V

    .line 164
    return-void
.end method
