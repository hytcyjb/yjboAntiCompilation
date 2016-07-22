.class Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$9;
.super Lcom/didi/ddrive/ui/component/DialogListener;
.source "DDriveWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showPayAlert(Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

.field final synthetic val$event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$9;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    iput-object p2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$9;->val$event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submitOnly()V
    .locals 2

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$9;->val$event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    iget-object v0, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->action:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent$Action;

    if-eqz v0, :cond_1

    .line 1087
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "action is not null"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$9;->val$event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    iget-object v0, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->action:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent$Action;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$9;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$800(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent$Action;->run(Landroid/content/Context;)V

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "action is null"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$9;->val$event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    iget-object v0, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->state:Lcom/didi/ddrive/model/OrderState;

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    if-ne v0, v1, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$9;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #calls: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showPayedView()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$900(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V

    goto :goto_0
.end method
