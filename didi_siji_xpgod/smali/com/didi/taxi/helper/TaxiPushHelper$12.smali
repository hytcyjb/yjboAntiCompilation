.class final Lcom/didi/taxi/helper/TaxiPushHelper$12;
.super Ljava/lang/Object;
.source "TaxiPushHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiPushHelper;->onShareTripCostDetailReceived(Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ffeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

.field final synthetic val$l:Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;


# direct methods
.method constructor <init>(Lcom/didi/taxi/model/TaxiFeeDetail;Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$12;->val$ffeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    iput-object p2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$12;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 605
    const/4 v0, 0x1

    .line 607
    .local v0, isHint:Z
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->isAppFront(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 609
    const v1, 0x7f0b01e2

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$12;->val$ffeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiFeeDetail;->mToastContent:Ljava/lang/String;

    const-class v3, Lcom/didi/frame/MainActivity;

    invoke-static {v1, v2, v3}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 613
    const/4 v0, 0x0

    .line 619
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/didi/taxi/helper/TaxiPushHelper$12;->val$l:Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;

    iget-object v2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$12;->val$ffeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    invoke-interface {v1, v2, v0}, Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;->onShareTripCostDetailReceived(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V

    .line 620
    return-void

    .line 614
    :cond_1
    sget-object v1, Lcom/didi/taxi/helper/TaxiPushHelper;->mInnerCostDetailListener:Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;

    if-eqz v1, :cond_0

    .line 615
    sget-object v1, Lcom/didi/taxi/helper/TaxiPushHelper;->mInnerCostDetailListener:Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;

    iget-object v2, p0, Lcom/didi/taxi/helper/TaxiPushHelper$12;->val$ffeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    invoke-interface {v1, v2, v0}, Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;->onCostDetailReceived(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V

    .line 616
    const/4 v0, 0x0

    goto :goto_0
.end method
