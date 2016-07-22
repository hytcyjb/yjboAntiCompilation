.class Lcom/didi/frame/switcher/SwitcherPanel$2;
.super Ljava/lang/Object;
.source "SwitcherPanel.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/switcher/SwitcherPanel;->canSwitchTo(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/switcher/SwitcherPanel;


# direct methods
.method constructor <init>(Lcom/didi/frame/switcher/SwitcherPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/didi/frame/switcher/SwitcherPanel$2;->this$0:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/frame/switcher/SwitcherPanel$2;->this$0:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-virtual {v1}, Lcom/didi/frame/switcher/SwitcherPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/didi/frame/switcher/SwitcherPanel$2;->this$0:Lcom/didi/frame/switcher/SwitcherPanel;

    invoke-virtual {v1}, Lcom/didi/frame/switcher/SwitcherPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method
