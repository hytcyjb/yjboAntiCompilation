.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$21;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "TaxiWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showInfoDialog(Lcom/didi/common/model/BaseObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

.field final synthetic val$base:Lcom/didi/common/model/BaseObject;

.field final synthetic val$from:I


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/common/model/BaseObject;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$21;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iput-object p2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$21;->val$base:Lcom/didi/common/model/BaseObject;

    iput p3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$21;->val$from:I

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 1131
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 1119
    return-void
.end method

.method public submitOnly()V
    .locals 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$21;->val$base:Lcom/didi/common/model/BaseObject;

    iget v0, v0, Lcom/didi/common/model/BaseObject;->errno:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$21;->val$base:Lcom/didi/common/model/BaseObject;

    iget v0, v0, Lcom/didi/common/model/BaseObject;->errno:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_1

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$21;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->redictTaxiRealtimeFragment()V
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3800(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    .line 1125
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$21;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iget v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$21;->val$from:I

    #calls: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->switchToTextCall(I)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$3900(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)V

    .line 1127
    :cond_1
    return-void
.end method
