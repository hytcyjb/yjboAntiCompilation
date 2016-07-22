.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$10;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doSNSCarConfigGet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarSNSConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

.field final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$10;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iput-object p2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$10;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/didi/car/model/CarSNSConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$10;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$10;->val$orderId:Ljava/lang/String;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onSnsConfigGot(Ljava/lang/String;Lcom/didi/car/model/CarSNSConfig;)V
    invoke-static {v0, v1, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1400(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Ljava/lang/String;Lcom/didi/car/model/CarSNSConfig;)V

    .line 1019
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1014
    check-cast p1, Lcom/didi/car/model/CarSNSConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$10;->onSuccess(Lcom/didi/car/model/CarSNSConfig;)V

    return-void
.end method
