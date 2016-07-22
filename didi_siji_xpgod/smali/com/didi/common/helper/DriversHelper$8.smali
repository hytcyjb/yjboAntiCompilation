.class final Lcom/didi/common/helper/DriversHelper$8;
.super Lthread/Job;
.source "DriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/DriversHelper;->showTaxiDrivers(Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$lat:Ljava/lang/String;

.field final synthetic val$listener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

.field final synthetic val$lng:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/didi/common/helper/DriversHelper$8;->val$listener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

    iput-object p2, p0, Lcom/didi/common/helper/DriversHelper$8;->val$lat:Ljava/lang/String;

    iput-object p3, p0, Lcom/didi/common/helper/DriversHelper$8;->val$lng:Ljava/lang/String;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$8;->val$listener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$8;->val$listener:Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;

    invoke-interface {v0}, Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;->isDestoryView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$8;->val$lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/didi/common/helper/DriversHelper$8;->val$lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    #calls: Lcom/didi/common/helper/DriversHelper;->showTaxiDriversOnMap(DD)V
    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DriversHelper;->access$700(DD)V

    .line 346
    #calls: Lcom/didi/common/helper/DriversHelper;->upDateMyMarker()V
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$100()V

    .line 347
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(Ljava/lang/String;)V

    goto :goto_0
.end method
