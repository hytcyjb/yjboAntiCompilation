.class Lcom/didi/car/helper/CarDriversHelper$1$1;
.super Lthread/Job;
.source "CarDriversHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/helper/CarDriversHelper$1;->onSuccess(Lcom/didi/car/model/CarDriverList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/helper/CarDriversHelper$1;


# direct methods
.method constructor <init>(Lcom/didi/car/helper/CarDriversHelper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/didi/car/helper/CarDriversHelper$1$1;->this$0:Lcom/didi/car/helper/CarDriversHelper$1;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/car/helper/CarDriversHelper$1$1;->this$0:Lcom/didi/car/helper/CarDriversHelper$1;

    iget-object v0, v0, Lcom/didi/car/helper/CarDriversHelper$1;->val$business:Lcom/didi/frame/business/Business;

    iget-object v1, p0, Lcom/didi/car/helper/CarDriversHelper$1$1;->this$0:Lcom/didi/car/helper/CarDriversHelper$1;

    iget-object v1, v1, Lcom/didi/car/helper/CarDriversHelper$1;->val$lat:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/didi/car/helper/CarDriversHelper$1$1;->this$0:Lcom/didi/car/helper/CarDriversHelper$1;

    iget-object v3, v3, Lcom/didi/car/helper/CarDriversHelper$1;->val$lng:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/didi/car/helper/CarDriversHelper;->showCarDriversOnMap(Lcom/didi/frame/business/Business;DD)V

    .line 73
    return-void
.end method
