.class Lcom/didi/taxi/ui/fragment/TaxiResendFragment$2;
.super Ljava/lang/Object;
.source "TaxiResendFragment.java"

# interfaces
.implements Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$2;->this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarPoolTriggerIntercepted()Z
    .locals 3

    .prologue
    .line 105
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 106
    .local v0, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getInputType()Lcom/didi/frame/business/InputType;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    if-ne v1, v2, :cond_0

    .line 107
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$2;->this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->showRecommandDialog()V
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->access$100(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V

    .line 108
    const/4 v1, 0x1

    .line 110
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
