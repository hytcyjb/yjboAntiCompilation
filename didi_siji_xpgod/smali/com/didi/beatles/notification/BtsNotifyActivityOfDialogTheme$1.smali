.class Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;
.super Ljava/lang/Object;
.source "BtsNotifyActivityOfDialogTheme.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;

.field final synthetic val$redirect:Lcom/didi/beatles/notification/Redirect;


# direct methods
.method constructor <init>(Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;Lcom/didi/beatles/notification/Redirect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->this$0:Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;

    iput-object p2, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->val$redirect:Lcom/didi/beatles/notification/Redirect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->this$0:Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;

    invoke-virtual {v0}, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;->finish()V

    .line 94
    return-void
.end method

.method public firstClick()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->this$0:Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;

    invoke-virtual {v0}, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;->finish()V

    .line 89
    return-void
.end method

.method public secondClick()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->this$0:Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;

    invoke-virtual {v0}, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;->finish()V

    .line 84
    return-void
.end method

.method public submit()V
    .locals 4

    .prologue
    .line 60
    iget-object v2, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->val$redirect:Lcom/didi/beatles/notification/Redirect;

    invoke-virtual {v2}, Lcom/didi/beatles/notification/Redirect;->getActionActivity()Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->this$0:Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "ORDER_UI_PARAM_OID"

    iget-object v3, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->val$redirect:Lcom/didi/beatles/notification/Redirect;

    iget-object v3, v3, Lcom/didi/beatles/notification/Redirect;->oid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "ORDER_UI_PARAM_STATUS"

    iget-object v3, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->val$redirect:Lcom/didi/beatles/notification/Redirect;

    iget-object v3, v3, Lcom/didi/beatles/notification/Redirect;->orderStatus:Lcom/didi/beatles/model/order/BtsOrderStatus;

    invoke-virtual {v3}, Lcom/didi/beatles/model/order/BtsOrderStatus;->getStatus()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string v2, "ORDER_UI_PARAM_SUBSTATUS"

    iget-object v3, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->val$redirect:Lcom/didi/beatles/notification/Redirect;

    iget-object v3, v3, Lcom/didi/beatles/notification/Redirect;->orderStatus:Lcom/didi/beatles/model/order/BtsOrderStatus;

    invoke-virtual {v3}, Lcom/didi/beatles/model/order/BtsOrderStatus;->getSubStatus()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v2, "ORDER_UI_PARAM_ROUTE_ID"

    iget-object v3, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->val$redirect:Lcom/didi/beatles/notification/Redirect;

    iget-object v3, v3, Lcom/didi/beatles/notification/Redirect;->roadId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v2, "from"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->this$0:Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;

    invoke-virtual {v2, v1}, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->this$0:Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;

    invoke-virtual {v2}, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;->finish()V

    .line 79
    return-void

    .line 74
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public submitOnly()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->this$0:Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;

    invoke-virtual {v0}, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;->finish()V

    .line 56
    return-void
.end method

.method public thirdClick()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme$1;->this$0:Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;

    invoke-virtual {v0}, Lcom/didi/beatles/notification/BtsNotifyActivityOfDialogTheme;->finish()V

    .line 51
    return-void
.end method
