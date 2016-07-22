.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$34;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doPayStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/BaseObject;",
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
    .line 2651
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$34;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$34;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPayStoped(Lcom/didi/common/model/BaseObject;)V
    invoke-static {v0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/common/model/BaseObject;)V

    .line 2656
    return-void
.end method
