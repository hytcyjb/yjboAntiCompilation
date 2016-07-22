.class Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$10;
.super Ljava/lang/Object;
.source "TopicRealtimeFragment.java"

# interfaces
.implements Lcom/didi/frame/realtime/RealtimeCallViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$10;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRightBtnClick()V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method public onTextEditClick()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$10;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-virtual {v0}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->jumpToActivity()V

    .line 496
    return-void
.end method

.method public onTopicClick(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 513
    const v0, 0x7f0804e2

    if-ne p1, v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$10;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getTopicButtonUrl1()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->gotoHtml(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$200(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Ljava/lang/String;)V

    .line 517
    :cond_0
    const v0, 0x7f0804e3

    if-ne p1, v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment$10;->this$0:Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getTopicButtonUrl2()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->gotoHtml(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;->access$200(Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;Ljava/lang/String;)V

    .line 520
    :cond_1
    return-void
.end method

.method public onUp()V
    .locals 2

    .prologue
    .line 505
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    .line 506
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 507
    .local v0, order:Lcom/didi/car/model/CarOrder;
    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0, v1}, Lcom/didi/car/model/CarOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 508
    return-void
.end method
