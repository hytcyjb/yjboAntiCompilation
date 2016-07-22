.class public Lcom/didi/car/ui/activity/CarCurrentCostActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "CarCurrentCostActivity.java"

# interfaces
.implements Lcom/didi/car/ui/component/CarCurrentCostControllerView$CarCurrentCostControllerListener;


# static fields
.field public static final KEY_CURRENT_COST:Ljava/lang/String; = "current_cost"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private doBack()V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCurrentCostActivity;->finish()V

    .line 88
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/car/ui/activity/CarCurrentCostActivity;->overridePendingTransition(II)V

    .line 89
    return-void
.end method

.method private initContentView(Lcom/didi/car/ui/component/CarCurrentCostControllerView;)V
    .locals 5
    .parameter "controllerView"

    .prologue
    .line 40
    invoke-virtual {p1, p0}, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->setListener(Lcom/didi/car/ui/component/CarCurrentCostControllerView$CarCurrentCostControllerListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCurrentCostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pricing_mode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, priceModel:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCurrentCostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "current_cost"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrderNewRealtimeCount;

    .line 45
    .local v1, realtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;
    invoke-virtual {p1, v1}, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->setCarOrderTotalCount(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V

    .line 51
    .end local v1           #realtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCurrentCostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "current_cost"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrderRealtimeCount;

    .line 48
    .local v1, realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;
    invoke-virtual {p1, v1}, Lcom/didi/car/ui/component/CarCurrentCostControllerView;->setCarOrderTotalCount(Lcom/didi/car/model/CarOrderRealtimeCount;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onBackPressed()V

    .line 77
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCurrentCostActivity;->doBack()V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f04001b

    const v2, 0x7f04001c

    invoke-virtual {p0, v1, v2}, Lcom/didi/car/ui/activity/CarCurrentCostActivity;->overridePendingTransition(II)V

    .line 34
    new-instance v0, Lcom/didi/car/ui/component/CarCurrentCostControllerView;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarCurrentCostControllerView;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, controllerView:Lcom/didi/car/ui/component/CarCurrentCostControllerView;
    invoke-direct {p0, v0}, Lcom/didi/car/ui/activity/CarCurrentCostActivity;->initContentView(Lcom/didi/car/ui/component/CarCurrentCostControllerView;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarCurrentCostActivity;->setContentView(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method public onCurrentCostInstructionClicked(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 64
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 65
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v4, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/didi/car/net/CarRequest;->getPiceRuleUrl(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 66
    iput-boolean v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 67
    iput-boolean v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarCurrentCostActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    move v2, v3

    .line 65
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->onDestroy()V

    .line 84
    return-void
.end method

.method public onTitleLeftClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCurrentCostActivity;->doBack()V

    .line 56
    return-void
.end method

.method public onTitleRightClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 60
    return-void
.end method
