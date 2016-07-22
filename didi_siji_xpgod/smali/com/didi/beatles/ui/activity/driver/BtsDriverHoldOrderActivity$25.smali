.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$25;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsDriverHoldOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showReStriveConfirm(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2164
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$25;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 2174
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 2175
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$25;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->finish()V

    .line 2176
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 2167
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 2168
    invoke-static {}, Lcom/didi/beatles/helper/BtsDialogHelper;->closeConfirm()V

    .line 2169
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$25;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->striveOrder()V
    invoke-static {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3500(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)V

    .line 2170
    return-void
.end method
