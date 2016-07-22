.class Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$2;
.super Lcom/didi/ddrive/ui/component/DialogListener;
.source "DDriveCancelTripActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverCancelNoFeeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

.field final synthetic val$resultIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$2;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    iput-object p2, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$2;->val$resultIntent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$2;->val$resultIntent:Landroid/content/Intent;

    const-string v1, "extra_driver_cancel_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$2;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$2;->val$resultIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->setResult(ILandroid/content/Intent;)V

    .line 227
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$2;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->finish()V

    .line 228
    return-void
.end method

.method public submit()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$2;->val$resultIntent:Landroid/content/Intent;

    const-string v1, "extra_driver_cancel_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$2;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$2;->val$resultIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->setResult(ILandroid/content/Intent;)V

    .line 219
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$2;->this$0:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->finish()V

    .line 220
    return-void
.end method
