.class Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$6;
.super Ljava/lang/Object;
.source "ActivityRealtimeFragment.java"

# interfaces
.implements Lcom/didi/frame/realtime/RealtimeCallViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$6;->this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRightBtnClick()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onTextEditClick()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$6;->this$0:Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

    invoke-virtual {v0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->jumpToActivity()V

    .line 191
    return-void
.end method

.method public onTopicClick(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 208
    return-void
.end method

.method public onUp()V
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    .line 201
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 202
    .local v0, order:Lcom/didi/car/model/CarOrder;
    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0, v1}, Lcom/didi/car/model/CarOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 203
    return-void
.end method
