.class public Lcom/didi/frame/VersionIntroActivity;
.super Landroid/app/Activity;
.source "VersionIntroActivity.java"


# instance fields
.field private mEnterListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Lcom/didi/frame/VersionIntroActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/VersionIntroActivity$1;-><init>(Lcom/didi/frame/VersionIntroActivity;)V

    iput-object v0, p0, Lcom/didi/frame/VersionIntroActivity;->mEnterListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/didi/async/task/ActivityController;->addAcitivty(Landroid/app/Activity;)V

    .line 21
    const v1, 0x7f03010d

    invoke-virtual {p0, v1}, Lcom/didi/frame/VersionIntroActivity;->setContentView(I)V

    .line 22
    const v1, 0x7f08060f

    invoke-virtual {p0, v1}, Lcom/didi/frame/VersionIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    .line 23
    .local v0, enter:Lx/Button;
    iget-object v1, p0, Lcom/didi/frame/VersionIntroActivity;->mEnterListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 43
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->removeActivity(Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->unregisterHomeReceiver(Landroid/content/Context;)V

    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->registerHomeReceiver(Landroid/content/Context;)V

    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 31
    return-void
.end method
