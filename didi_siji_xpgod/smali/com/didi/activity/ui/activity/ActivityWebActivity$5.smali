.class Lcom/didi/activity/ui/activity/ActivityWebActivity$5;
.super Ljava/lang/Object;
.source "ActivityWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/activity/ui/activity/ActivityWebActivity;->onCreateOrderSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/activity/ui/activity/ActivityWebActivity;

.field final synthetic val$originalBus:Lcom/didi/frame/business/Business;


# direct methods
.method constructor <init>(Lcom/didi/activity/ui/activity/ActivityWebActivity;Lcom/didi/frame/business/Business;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$5;->this$0:Lcom/didi/activity/ui/activity/ActivityWebActivity;

    iput-object p2, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$5;->val$originalBus:Lcom/didi/frame/business/Business;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    iget-object v1, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$5;->val$originalBus:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_1

    .line 165
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 166
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showDefaultContent()V

    .line 167
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->checkSwitcher(Lcom/didi/frame/business/Business;)V

    .line 175
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$5;->this$0:Lcom/didi/activity/ui/activity/ActivityWebActivity;

    #getter for: Lcom/didi/activity/ui/activity/ActivityWebActivity;->mIndex:Lcom/didi/activity/business/index/ActivityIndex;
    invoke-static {v0}, Lcom/didi/activity/ui/activity/ActivityWebActivity;->access$000(Lcom/didi/activity/ui/activity/ActivityWebActivity;)Lcom/didi/activity/business/index/ActivityIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/activity/business/index/ActivityIndex;->resetIndex()V

    .line 176
    iget-object v0, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$5;->this$0:Lcom/didi/activity/ui/activity/ActivityWebActivity;

    invoke-virtual {v0}, Lcom/didi/activity/ui/activity/ActivityWebActivity;->finish()V

    .line 177
    return-void

    .line 168
    :cond_1
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    iget-object v1, p0, Lcom/didi/activity/ui/activity/ActivityWebActivity$5;->val$originalBus:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 169
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 170
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showDefaultContent()V

    .line 171
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarPriceLayout()V

    .line 172
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->checkSwitcher(Lcom/didi/frame/business/Business;)V

    goto :goto_0
.end method
