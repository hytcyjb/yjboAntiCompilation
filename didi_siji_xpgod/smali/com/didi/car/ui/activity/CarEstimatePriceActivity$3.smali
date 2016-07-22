.class Lcom/didi/car/ui/activity/CarEstimatePriceActivity$3;
.super Ljava/lang/Object;
.source "CarEstimatePriceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/activity/CarEstimatePriceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$3;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarEstimatePriceActivity$3;->this$0:Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    #calls: Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->back()V
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;->access$600(Lcom/didi/car/ui/activity/CarEstimatePriceActivity;)V

    .line 449
    return-void
.end method
