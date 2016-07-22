.class Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$4;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiEndOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->submit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

.field final synthetic val$showRecallDialogFlag:Z


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$4;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    iput-boolean p2, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$4;->val$showRecallDialogFlag:Z

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 183
    check-cast p1, Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$4;->onFinish(Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;)V

    return-void
.end method

.method public onFinish(Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 186
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;->cancelResult:Lcom/didi/common/model/RelationCancelResult;

    .line 187
    .local v0, rcr:Lcom/didi/common/model/RelationCancelResult;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/didi/common/model/RelationCancelResult;->needCancelRelation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-static {}, Lcom/didi/common/helper/PLocationHelper;->obtain()Lcom/didi/common/helper/PLocationHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$4;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->taxi:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v2}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$500(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/helper/PLocationHelper;->cancelRelationIfNeed(Ljava/lang/String;)V

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$4;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    iget-boolean v2, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$4;->val$showRecallDialogFlag:Z

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->onFinishOrder(ZLcom/didi/common/model/BaseObject;)V
    invoke-static {v1, v2, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$600(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;ZLcom/didi/common/model/BaseObject;)V

    .line 192
    return-void
.end method
