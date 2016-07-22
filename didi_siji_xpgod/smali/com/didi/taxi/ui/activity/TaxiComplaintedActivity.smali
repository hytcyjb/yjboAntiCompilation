.class public Lcom/didi/taxi/ui/activity/TaxiComplaintedActivity;
.super Landroid/app/Activity;
.source "TaxiComplaintedActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setComplaintedContent()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 55
    .local v0, taxi:Lcom/didi/taxi/model/TaxiOrder;
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getComplaintContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/complaint/ComplaintedViewHelper;->setComplaintedContent(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/didi/frame/complaint/ComplaintedViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b026e

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 43
    invoke-static {}, Lcom/didi/frame/complaint/ComplaintedViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f020170

    new-instance v2, Lcom/didi/taxi/ui/activity/TaxiComplaintedActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintedActivity$1;-><init>(Lcom/didi/taxi/ui/activity/TaxiComplaintedActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 68
    invoke-virtual {p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintedActivity;->finish()V

    .line 69
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/taxi/ui/activity/TaxiComplaintedActivity;->overridePendingTransition(II)V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/didi/async/task/ActivityController;->addAcitivty(Landroid/app/Activity;)V

    .line 21
    const v1, 0x7f04001b

    const v2, 0x7f04001c

    invoke-virtual {p0, v1, v2}, Lcom/didi/taxi/ui/activity/TaxiComplaintedActivity;->overridePendingTransition(II)V

    .line 22
    new-instance v0, Lcom/didi/frame/complaint/ComplaintedView;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintedView;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, view:Lcom/didi/frame/complaint/ComplaintedView;
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/activity/TaxiComplaintedActivity;->setContentView(Landroid/view/View;)V

    .line 24
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintedActivity;->setTitleBar()V

    .line 25
    invoke-direct {p0}, Lcom/didi/taxi/ui/activity/TaxiComplaintedActivity;->setComplaintedContent()V

    .line 26
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->removeActivity(Landroid/app/Activity;)V

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 62
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 37
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->unregisterHomeReceiver(Landroid/content/Context;)V

    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 39
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->registerHomeReceiver(Landroid/content/Context;)V

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 33
    return-void
.end method
