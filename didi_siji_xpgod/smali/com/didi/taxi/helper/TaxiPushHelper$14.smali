.class final Lcom/didi/taxi/helper/TaxiPushHelper$14;
.super Ljava/lang/Object;
.source "TaxiPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiPushHelper;->onCurrentCostChanged([BLcom/didi/taxi/helper/TaxiPushHelper$OnCurrentCostChangedListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$desc:Ljava/lang/String;

.field final synthetic val$l:Lcom/didi/taxi/helper/TaxiPushHelper$OnCurrentCostChangedListener;

.field final synthetic val$price:F


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiPushHelper$OnCurrentCostChangedListener;FLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 663
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$14;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$OnCurrentCostChangedListener;

    iput p2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$14;->val$price:F

    iput-object p3, p0, Lcom/didi/taxi/helper/TaxiPushHelper$14;->val$desc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 667
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiPushHelper$14;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$OnCurrentCostChangedListener;

    iget v1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$14;->val$price:F

    iget-object v2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$14;->val$desc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/didi/taxi/helper/TaxiPushHelper$OnCurrentCostChangedListener;->onCurrentCostChanged(FLjava/lang/String;)V

    .line 668
    return-void
.end method
