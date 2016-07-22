.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$32;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doPayParamsGet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarPayParams;",
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
    .line 2271
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$32;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarPayParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$32;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPayParamsGot(Lcom/didi/car/model/CarPayParams;)V

    .line 2276
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2271
    check-cast p1, Lcom/didi/car/model/CarPayParams;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$32;->onFinish(Lcom/didi/car/model/CarPayParams;)V

    return-void
.end method
