.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$10;
.super Ljava/lang/Object;
.source "TaxiWaitForResponseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 548
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$10;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$10;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getOpenCarByCurrentCity()Z

    move-result v1

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isOpenCar:Z
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2302(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Z)Z

    .line 552
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$10;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getCityGuideFlag()Lcom/didi/car/model/CarGuideFlag;

    move-result-object v1

    #setter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->guide:Lcom/didi/car/model/CarGuideFlag;
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$2402(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/car/model/CarGuideFlag;)Lcom/didi/car/model/CarGuideFlag;

    .line 553
    return-void
.end method
