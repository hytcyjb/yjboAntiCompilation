.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$27;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarOrderState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2005
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$27;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/didi/car/model/CarOrderState;)V
    .locals 3
    .parameter "t"

    .prologue
    const/4 v2, 0x1

    .line 2009
    iget v0, p1, Lcom/didi/car/model/CarOrderState;->status:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/didi/car/model/CarOrderState;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2010
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$27;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagReqOrderStatusEnd:Z
    invoke-static {v0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2302(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Z)Z

    .line 2012
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$27;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onQueryOrderDetail()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1300(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 2016
    :goto_0
    iget v0, p1, Lcom/didi/car/model/CarOrderState;->switchOpen:I

    if-nez v0, :cond_1

    .line 2017
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/common/receiver/NetReceiver;->setNetListener(Lcom/didi/common/receiver/NetReceiver$NetListener;)V

    .line 2018
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$27;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagReqOrderStatusEnd:Z
    invoke-static {v0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2302(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Z)Z

    .line 2020
    :cond_1
    return-void

    .line 2014
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$27;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    const/4 v1, 0x0

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagReqOrderStatusEnd:Z
    invoke-static {v0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2302(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Z)Z

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2005
    check-cast p1, Lcom/didi/car/model/CarOrderState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$27;->onSuccess(Lcom/didi/car/model/CarOrderState;)V

    return-void
.end method
