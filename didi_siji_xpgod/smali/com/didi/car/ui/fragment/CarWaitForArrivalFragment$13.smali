.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$13;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$13;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderTotalCountReceived(Lcom/didi/car/model/FeeDetail;Z)V
    .locals 1
    .parameter "totalCount"
    .parameter "isNewPrice"

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$13;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v0, p1, p2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onOrderTotalCountPushReceived(Lcom/didi/car/model/FeeDetail;Z)V

    .line 1061
    return-void
.end method
