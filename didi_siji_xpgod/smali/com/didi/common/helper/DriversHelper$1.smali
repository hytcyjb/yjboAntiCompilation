.class final Lcom/didi/common/helper/DriversHelper$1;
.super Lthread/Job;
.source "DriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/DriversHelper;->showCarDrivers(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$lat:Ljava/lang/String;

.field final synthetic val$lng:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/didi/common/helper/DriversHelper$1;->val$lat:Ljava/lang/String;

    iput-object p2, p0, Lcom/didi/common/helper/DriversHelper$1;->val$lng:Ljava/lang/String;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/didi/common/helper/DriversHelper$1;->val$lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/didi/common/helper/DriversHelper$1;->val$lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    #calls: Lcom/didi/common/helper/DriversHelper;->showCarDriversOnMap(DD)V
    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DriversHelper;->access$000(DD)V

    .line 109
    #calls: Lcom/didi/common/helper/DriversHelper;->upDateMyMarker()V
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$100()V

    .line 110
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker(Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(Ljava/lang/String;)V

    goto :goto_0
.end method
