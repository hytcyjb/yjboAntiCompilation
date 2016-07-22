.class final Lcom/didi/taxi/helper/TaxiPushHelper$5;
.super Ljava/lang/Object;
.source "TaxiPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiPushHelper;->registerCostDetailListener(Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;

.field final synthetic val$oid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$5;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;

    iput-object p2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$5;->val$oid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushMessageReceived(II[B)V
    .locals 2
    .parameter "productId"
    .parameter "msgType"
    .parameter "data"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiPushHelper$5;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;

    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$5;->val$oid:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Lcom/didi/taxi/helper/TaxiPushHelper;->onCostDetailReceived(Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;Ljava/lang/String;[B)V

    .line 267
    return-void
.end method
