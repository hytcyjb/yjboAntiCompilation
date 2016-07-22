.class final Lcom/didi/taxi/helper/TaxiPushHelper$11;
.super Ljava/lang/Object;
.source "TaxiPushHelper.java"

# interfaces
.implements Lcom/didi/frame/push/Push$OnPushMessageReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiPushHelper;->registerShareTripCostDetailListener(Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$l:Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;

.field final synthetic val$oid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$11;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;

    iput-object p2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$11;->val$oid:Ljava/lang/String;

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
    .line 478
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiPushHelper$11;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;

    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$11;->val$oid:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Lcom/didi/taxi/helper/TaxiPushHelper;->onShareTripCostDetailReceived(Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;Ljava/lang/String;[B)V

    .line 479
    return-void
.end method
