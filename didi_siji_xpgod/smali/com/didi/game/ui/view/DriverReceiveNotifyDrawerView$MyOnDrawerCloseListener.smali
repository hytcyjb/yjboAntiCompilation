.class Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$MyOnDrawerCloseListener;
.super Ljava/lang/Object;
.source "DriverReceiveNotifyDrawerView.java"

# interfaces
.implements Lcom/didi/common/ui/component/DrawerView$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnDrawerCloseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;


# direct methods
.method constructor <init>(Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$MyOnDrawerCloseListener;->this$0:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 6

    .prologue
    .line 202
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setVisibility(I)V

    .line 205
    :cond_0
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;

    .local v0, mParam:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;
    if-eqz v0, :cond_1

    .line 206
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    const/16 v3, 0x22

    const/4 v4, 0x1

    iget v5, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$Param;->drawerType:I

    invoke-static {v2, v3, v4, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    :cond_1
    return-void
.end method
