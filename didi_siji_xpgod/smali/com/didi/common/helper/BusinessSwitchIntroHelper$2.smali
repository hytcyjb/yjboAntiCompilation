.class Lcom/didi/common/helper/BusinessSwitchIntroHelper$2;
.super Ljava/lang/Object;
.source "BusinessSwitchIntroHelper.java"

# interfaces
.implements Lcom/didi/car/listener/DynamicUpdatePriceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/BusinessSwitchIntroHelper;->setUpCarPopuDialog(Lcom/didi/car/model/CarFlag;Lcom/didi/frame/business/Business;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

.field final synthetic val$business:Lcom/didi/frame/business/Business;


# direct methods
.method constructor <init>(Lcom/didi/common/helper/BusinessSwitchIntroHelper;Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$2;->this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    iput-object p2, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$2;->val$business:Lcom/didi/frame/business/Business;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCall()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$2;->this$0:Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->resetFlag()V

    .line 167
    return-void
.end method

.method public confirmCall()V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->autoSend:I

    .line 161
    iget-object v0, p0, Lcom/didi/common/helper/BusinessSwitchIntroHelper$2;->val$business:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->switchToByBusiness(Lcom/didi/frame/business/Business;)V

    .line 162
    return-void
.end method
