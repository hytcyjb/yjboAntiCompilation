.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$21;
.super Ljava/lang/Object;
.source "BtsDriverHoldOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;
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
    .line 2004
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$21;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$21;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$21;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    #getter for: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->btsFreeDeliver:Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;
    invoke-static {v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3100(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;)Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/beatles/ui/component/BtsFreeDeliverCheckBox;->isFreeChecked()Z

    move-result v2

    #calls: Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->sendPassenger(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->access$3200(Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;ZZ)V

    .line 2009
    return-void
.end method
