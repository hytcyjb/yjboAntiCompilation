.class Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$1;
.super Ljava/lang/Object;
.source "TaxiEndedOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$1;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 144
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 145
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 146
    .local v0, taxi:Lcom/didi/taxi/model/TaxiOrder;
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getComplaintState()I

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$1;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$1;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    const-class v4, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$1;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity$1;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;

    const-class v4, Lcom/didi/taxi/ui/activity/TaxiComplaintedActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/didi/taxi/ui/activity/TaxiEndedOrderActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
