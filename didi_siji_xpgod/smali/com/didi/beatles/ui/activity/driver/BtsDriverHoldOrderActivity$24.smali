.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$24;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsDriverHoldOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showStrivedDialog(Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;)V
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
    .line 2145
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$24;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submitOnly()V
    .locals 1

    .prologue
    .line 2148
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submitOnly()V

    .line 2149
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$24;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->finish()V

    .line 2150
    return-void
.end method
