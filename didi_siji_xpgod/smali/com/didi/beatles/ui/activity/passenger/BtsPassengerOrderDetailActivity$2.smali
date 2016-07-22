.class Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$2;
.super Ljava/lang/Object;
.source "BtsPassengerOrderDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 86
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;

    iget-object v1, p0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity$2;->this$0:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;

    #getter for: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->mOrderId:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->access$000(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->loadOrderInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;->access$100(Lcom/didi/beatles/ui/activity/passenger/BtsPassengerOrderDetailActivity;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method
