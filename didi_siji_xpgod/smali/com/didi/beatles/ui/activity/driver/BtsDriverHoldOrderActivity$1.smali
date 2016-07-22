.class Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$1;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "BtsDriverHoldOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;->showAddRouteDialog()V
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
    .line 307
    iput-object p1, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$1;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->cancel()V

    .line 319
    return-void
.end method

.method public submit()V
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 312
    iget-object v0, p0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity$1;->this$0:Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsAddNewRouteActivity;->startActivity(Landroid/app/Activity;)V

    .line 313
    return-void
.end method
