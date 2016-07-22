.class Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3$1;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiDriverInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/taxi/model/TaxiDriverPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3$1;->this$1:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    check-cast p1, Lcom/didi/taxi/model/TaxiDriverPage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3$1;->onFinish(Lcom/didi/taxi/model/TaxiDriverPage;)V

    return-void
.end method

.method public onFinish(Lcom/didi/taxi/model/TaxiDriverPage;)V
    .locals 2
    .parameter "driver"

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiDriverPage;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3$1;->this$1:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;

    iget-object v0, v0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3$1;->this$1:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;

    iget-object v1, v1, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->mRequestPageNo:I
    invoke-static {v1}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->access$200(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)I

    move-result v1

    #setter for: Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->mPageNo:I
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->access$302(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;I)I

    .line 102
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3$1;->this$1:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;

    iget-object v0, v0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->access$000(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)Lcom/didi/frame/driverinfo/DriverInfoView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiDriverPage;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/driverinfo/DriverInfoView;->onTaxiDriverloadMore(Ljava/util/ArrayList;)V

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3$1;->this$1:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;

    iget-object v0, v0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    const v1, 0x7f0b025b

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
