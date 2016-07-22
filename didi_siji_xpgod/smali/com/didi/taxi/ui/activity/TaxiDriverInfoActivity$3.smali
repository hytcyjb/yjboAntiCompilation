.class Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;
.super Ljava/lang/Object;
.source "TaxiDriverInfoActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->access$000(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)Lcom/didi/frame/driverinfo/DriverInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/driverinfo/DriverInfoView;->hideProgress()V

    .line 94
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->mPageNo:I
    invoke-static {v1}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->access$300(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->mRequestPageNo:I
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->access$202(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;I)I

    .line 98
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->did:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->access$400(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->mRequestPageNo:I
    invoke-static {v1}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->access$200(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)I

    move-result v1

    new-instance v2, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3$1;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3$1;-><init>(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;)V

    invoke-static {v0, v1, v2}, Lcom/didi/taxi/net/TaxiRequest;->doGetDriverInfo(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$3;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->access$000(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)Lcom/didi/frame/driverinfo/DriverInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/driverinfo/DriverInfoView;->showProgress()V

    .line 89
    return-void
.end method

.method public onTurn()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
