.class Lcom/didi/car/ui/fragment/CarRealtimeFragment$8;
.super Ljava/lang/Object;
.source "CarRealtimeFragment.java"

# interfaces
.implements Lcom/didi/frame/realtime/RealtimeCallViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRightBtnClick()V
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showCarBookingFragment()V

    .line 317
    return-void
.end method

.method public onTextEditClick()V
    .locals 2

    .prologue
    .line 310
    const-string v0, "pgxhome07_ck"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$8;->this$0:Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    invoke-virtual {v0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->jumpToSearch()V

    .line 312
    return-void
.end method

.method public onTopicClick(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 329
    return-void
.end method

.method public onUp()V
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    .line 322
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 323
    .local v0, order:Lcom/didi/car/model/CarOrder;
    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0, v1}, Lcom/didi/car/model/CarOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 324
    return-void
.end method
