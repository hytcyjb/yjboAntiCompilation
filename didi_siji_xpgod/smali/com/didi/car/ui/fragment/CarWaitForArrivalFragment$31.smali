.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$31;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doConsultConfirm(I)V
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

.field final synthetic val$consultType:I


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2189
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$31;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iput p2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$31;->val$consultType:I

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$31;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iget v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$31;->val$consultType:I

    invoke-virtual {v0, v1, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onConsultConfirmed(ILcom/didi/common/model/BaseObject;)V

    .line 2194
    return-void
.end method
