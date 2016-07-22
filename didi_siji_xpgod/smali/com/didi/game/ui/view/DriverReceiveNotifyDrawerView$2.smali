.class final Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$2;
.super Ljava/lang/Object;
.source "DriverReceiveNotifyDrawerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->getDrawerView()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->close(Z)V

    .line 149
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->handler:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$DrawerHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
