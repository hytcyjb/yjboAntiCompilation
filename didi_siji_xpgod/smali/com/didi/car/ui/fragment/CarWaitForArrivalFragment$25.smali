.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$25;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed(Lcom/didi/car/model/CarCancelTrip;)V
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
    .line 1835
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$25;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$25;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doCostDetailGet()V

    .line 1840
    return-void
.end method
