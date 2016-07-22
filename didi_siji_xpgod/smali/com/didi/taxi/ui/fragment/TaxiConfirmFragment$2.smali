.class Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$2;
.super Ljava/lang/Object;
.source "TaxiConfirmFragment.java"

# interfaces
.implements Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$2;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarPoolTriggerIntercepted()Z
    .locals 3

    .prologue
    .line 187
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 188
    .local v0, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getInputType()Lcom/didi/frame/business/InputType;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    if-ne v1, v2, :cond_0

    .line 189
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$2;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->showRecommandDialog()V
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->access$100(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V

    .line 190
    const/4 v1, 0x1

    .line 192
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
