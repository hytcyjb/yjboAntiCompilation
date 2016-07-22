.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$1;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitleLeft()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$1;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onTitleLeftClicked(Landroid/view/View;)V

    .line 155
    return-void
.end method
