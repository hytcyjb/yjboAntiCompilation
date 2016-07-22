.class Lcom/didi/car/ui/component/CarCancelTripView$2;
.super Ljava/lang/Object;
.source "CarCancelTripView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/component/CarCancelTripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CarCancelTripView;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CarCancelTripView;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/didi/car/ui/component/CarCancelTripView$2;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$2;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    #getter for: Lcom/didi/car/ui/component/CarCancelTripView;->cancelListener:Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;
    invoke-static {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->access$900(Lcom/didi/car/ui/component/CarCancelTripView;)Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;->onConfirm()V

    .line 278
    return-void
.end method
