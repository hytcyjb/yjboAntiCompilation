.class Lcom/didi/car/ui/component/CarCancelTripView$3;
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
    .line 281
    iput-object p1, p0, Lcom/didi/car/ui/component/CarCancelTripView$3;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/didi/car/ui/component/CarCancelTripView$3;->this$0:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarCancelTripView;->hideInputMethod()V

    .line 286
    return-void
.end method
