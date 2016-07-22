.class Lcom/didi/taxi/ui/fragment/TaxiResendFragment$8;
.super Ljava/lang/Object;
.source "TaxiResendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiResendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$8;->this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 281
    const-string v0, "ro_cancel_click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taxiresend click cancel order,oid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ordertype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isOpenCarForBookingCity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$8;->this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->doCancel()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->access$300(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V

    .line 293
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->getOpenCarByCurrentCity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$8;->this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->doCancel()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->access$300(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$8;->this$0:Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->doCancel()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->access$300(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V

    goto :goto_0
.end method
