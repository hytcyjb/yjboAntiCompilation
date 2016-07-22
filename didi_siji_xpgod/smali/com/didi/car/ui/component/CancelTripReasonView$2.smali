.class Lcom/didi/car/ui/component/CancelTripReasonView$2;
.super Ljava/lang/Object;
.source "CancelTripReasonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/component/CancelTripReasonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/component/CancelTripReasonView;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/component/CancelTripReasonView;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/didi/car/ui/component/CancelTripReasonView$2;->this$0:Lcom/didi/car/ui/component/CancelTripReasonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/car/ui/component/CancelTripReasonView$2;->this$0:Lcom/didi/car/ui/component/CancelTripReasonView;

    #getter for: Lcom/didi/car/ui/component/CancelTripReasonView;->listener:Lcom/didi/car/ui/component/CarCancelTripView$ReasonItemListener;
    invoke-static {v0}, Lcom/didi/car/ui/component/CancelTripReasonView;->access$100(Lcom/didi/car/ui/component/CancelTripReasonView;)Lcom/didi/car/ui/component/CarCancelTripView$ReasonItemListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/car/ui/component/CarCancelTripView$ReasonItemListener;->onSelect()V

    .line 111
    return-void
.end method
