.class Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$MyOnDrawerOpenListener;
.super Ljava/lang/Object;
.source "DriverReceiveNotifyDrawerView.java"

# interfaces
.implements Lcom/didi/common/ui/component/DrawerView$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnDrawerOpenListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;


# direct methods
.method constructor <init>(Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView$MyOnDrawerOpenListener;->this$0:Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 2

    .prologue
    .line 188
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->access$000()Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/game/ui/view/DriverReceiveNotifyDrawerView;->setVisibility(I)V

    .line 190
    :cond_0
    return-void
.end method
