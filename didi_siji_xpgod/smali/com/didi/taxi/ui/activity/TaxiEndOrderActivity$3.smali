.class Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$3;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiEndOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->doSubmitConfirm()V
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


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 154
    check-cast p1, Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$3;->onFinish(Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;)V

    return-void
.end method

.method public onFinish(Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 157
    iget v0, p1, Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;->errno:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;->errmsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->finish()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;->msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    invoke-static {}, Lcom/didi/frame/endorder/EndOrderViewHelper;->getReasonCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->mReaCode:[Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$100(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->showCallDriverDialog()V
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$200(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    const/4 v1, 0x1

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->submit(Z)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$300(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;Z)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;->msg:Ljava/lang/String;

    #calls: Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->showSubmitConfirmDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->access$400(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
