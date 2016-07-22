.class Lcom/didi/activity/ui/fragment/SendOrderHelper$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "SendOrderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/activity/ui/fragment/SendOrderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;


# direct methods
.method constructor <init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$1;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submitOnly()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$1;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #calls: Lcom/didi/activity/ui/fragment/SendOrderHelper;->removeDialog()V
    invoke-static {v0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$000(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    .line 135
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$1;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #getter for: Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$100(Lcom/didi/activity/ui/fragment/SendOrderHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper$1;->this$0:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    #getter for: Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->access$100(Lcom/didi/activity/ui/fragment/SendOrderHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 137
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setToken(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/database/BtsOrderWaitingTable;->deleteAllItem(Landroid/content/Context;)V

    .line 139
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showLoginFragment()V

    .line 141
    :cond_0
    return-void
.end method
