.class Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;
.super Landroid/os/Handler;
.source "DriverReceiveNotifyDrawerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawerHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 464
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 465
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 467
    :pswitch_0
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v2

    iget v2, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->type:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_0

    .line 469
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_1

    .line 470
    invoke-static {v4}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->close(Z)V

    goto :goto_0

    .line 472
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->close(Z)V

    goto :goto_0

    .line 476
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_0

    .line 477
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;

    .line 478
    .local v1, p:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v4, :cond_2

    .line 479
    iget-object v2, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->iconUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->driverName:Ljava/lang/String;

    iget-object v4, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->card:Ljava/lang/String;

    iget-object v5, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->distance:Ljava/lang/String;

    iget-object v6, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->time:Ljava/lang/String;

    #calls: Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->showDrawer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_2
    iget-object v2, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->iconUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->driverName:Ljava/lang/String;

    iget-object v4, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->card:Ljava/lang/String;

    #calls: Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->showDrawer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    .end local v1           #p:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;
    :pswitch_2
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->driverDistanceAndTimeTV:Lx/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lx/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 490
    :pswitch_3
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 492
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/frame/MainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
