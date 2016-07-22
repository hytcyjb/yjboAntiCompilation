.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$6;
.super Ljava/lang/Object;
.source "TaxiWaitForResponseFragment.java"

# interfaces
.implements Lcom/didi/frame/carpool/CarPoolListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$6;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarPoolChanged(I)V
    .locals 2
    .parameter "carPoolType"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$6;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v1, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1202(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/taxi/model/TaxiOrder;)Lcom/didi/taxi/model/TaxiOrder;

    .line 240
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$6;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTrip_type()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolType()I

    move-result v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setTripType(I)V

    .line 243
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$6;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->onOrderModified()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$1100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    goto :goto_0
.end method
