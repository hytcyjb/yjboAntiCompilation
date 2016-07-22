.class Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$8;
.super Lcom/didi/ddrive/ui/component/DialogListener;
.source "DDriveWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$8;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/ddrive/ui/component/DialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submitOnly()V
    .locals 2

    .prologue
    .line 908
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/PaymentEvent;

    invoke-direct {v1}, Lcom/didi/ddrive/eventbus/event/PaymentEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 909
    return-void
.end method
