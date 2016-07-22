.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$19;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/taxi/helper/TaxiPushHelper$OnCurrentCostChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->registerOnCurrentCostChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1894
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$19;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentCostChanged(FLjava/lang/String;)V
    .locals 5
    .parameter "price"
    .parameter "desc"

    .prologue
    const/4 v4, 0x1

    .line 1899
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$19;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCarPoolCurrentCostGot:Z
    invoke-static {v0, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$1502(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Z)Z

    .line 1900
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_0

    .line 1901
    const v0, 0x7f0b0235

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateDriverArrivalMarkerBubble(Ljava/lang/String;)V

    .line 1908
    :goto_0
    return-void

    .line 1904
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/didi/map/marker/MarkerController;->updateCarPoolPricemarker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
