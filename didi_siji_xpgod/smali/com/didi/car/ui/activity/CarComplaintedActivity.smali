.class public Lcom/didi/car/ui/activity/CarComplaintedActivity;
.super Landroid/app/Activity;
.source "CarComplaintedActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setComplaintedContent()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 56
    .local v0, car:Lcom/didi/car/model/CarOrder;
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->complaintContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/frame/complaint/ComplaintedViewHelper;->setComplaintedContent(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/didi/frame/complaint/ComplaintedViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b026e

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 44
    invoke-static {}, Lcom/didi/frame/complaint/ComplaintedViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f020170

    new-instance v2, Lcom/didi/car/ui/activity/CarComplaintedActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/car/ui/activity/CarComplaintedActivity$1;-><init>(Lcom/didi/car/ui/activity/CarComplaintedActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 69
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarComplaintedActivity;->finish()V

    .line 70
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/car/ui/activity/CarComplaintedActivity;->overridePendingTransition(II)V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/didi/async/task/ActivityController;->addAcitivty(Landroid/app/Activity;)V

    .line 22
    const v1, 0x7f04001b

    const v2, 0x7f04001c

    invoke-virtual {p0, v1, v2}, Lcom/didi/car/ui/activity/CarComplaintedActivity;->overridePendingTransition(II)V

    .line 23
    new-instance v0, Lcom/didi/frame/complaint/ComplaintedView;

    invoke-direct {v0, p0}, Lcom/didi/frame/complaint/ComplaintedView;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, view:Lcom/didi/frame/complaint/ComplaintedView;
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarComplaintedActivity;->setContentView(Landroid/view/View;)V

    .line 25
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarComplaintedActivity;->setTitleBar()V

    .line 26
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarComplaintedActivity;->setComplaintedContent()V

    .line 27
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 28
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 62
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->removeActivity(Landroid/app/Activity;)V

    .line 63
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->unregisterHomeReceiver(Landroid/content/Context;)V

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->registerHomeReceiver(Landroid/content/Context;)V

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 34
    return-void
.end method
