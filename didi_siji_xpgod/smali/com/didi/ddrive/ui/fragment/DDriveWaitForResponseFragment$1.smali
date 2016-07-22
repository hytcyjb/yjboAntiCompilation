.class Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;
.super Landroid/os/Handler;
.source "DDriveWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const-wide/16 v8, 0x2710

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 124
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$000()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 125
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$100(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #calls: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->closeBar(Z)V
    invoke-static {v1, v4}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$200(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;Z)V

    .line 128
    :cond_0
    const-string v0, ""

    .line 129
    .local v0, pkMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->subStatus:I
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$300(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)I

    move-result v1

    const/16 v2, 0x1b59

    if-ne v1, v2, :cond_3

    .line 130
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->pkMsg:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$400(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$500()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$600()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v4, v7}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 165
    .end local v0           #pkMessage:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 131
    .restart local v0       #pkMessage:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->subStatus:I
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$300(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)I

    move-result v1

    const/16 v2, 0x1b5a

    if-ne v1, v2, :cond_1

    .line 132
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->pkMsg:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$400(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$600()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    .end local v0           #pkMessage:Ljava/lang/String;
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$700()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 136
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b0427

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, v7}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 137
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$800()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 138
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 139
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$900(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->myTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$900(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_1

    .line 142
    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_8

    .line 143
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->updateWaitingTime()V

    .line 144
    const-string v1, "morning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSecondTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mSecondTime:I
    invoke-static {v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$1000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "orderWaitTimeout is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/ddrive/managers/GlobalSettingManager;->getInstance()Lcom/didi/ddrive/managers/GlobalSettingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/managers/GlobalSettingManager;->getGlobalSetting()Lcom/didi/ddrive/net/http/response/GlobalSetting;

    move-result-object v3

    iget v3, v3, Lcom/didi/ddrive/net/http/response/GlobalSetting;->orderWaitTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mSecondTime:I
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$1000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)I

    move-result v1

    invoke-static {}, Lcom/didi/ddrive/managers/GlobalSettingManager;->getInstance()Lcom/didi/ddrive/managers/GlobalSettingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/GlobalSettingManager;->getGlobalSetting()Lcom/didi/ddrive/net/http/response/GlobalSetting;

    move-result-object v2

    iget v2, v2, Lcom/didi/ddrive/net/http/response/GlobalSetting;->orderWaitTimeout:I

    if-lt v1, v2, :cond_7

    .line 152
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$1100(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 153
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/didi/ddrive/eventbus/event/OrderTimeoutEvent;

    invoke-direct {v2}, Lcom/didi/ddrive/eventbus/event/OrderTimeoutEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 155
    :cond_7
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v5, v1, v2}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 157
    :cond_8
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 158
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/OrderStateManager;->queryOrderState()V

    .line 159
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$1100(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 160
    :cond_9
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 161
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mWaitingOrderManager:Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$1200(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->queryAcceptedDriverCount()V

    .line 162
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->access$1100(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1
.end method
