.class Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;
.super Ljava/lang/Object;
.source "CarDriverInfoActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/activity/CarDriverInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    #getter for: Lcom/didi/car/ui/activity/CarDriverInfoActivity;->driverInfoView:Lcom/didi/car/ui/component/CarDriverInfoView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->access$000(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)Lcom/didi/car/ui/component/CarDriverInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarDriverInfoView;->hideProgress()V

    .line 98
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    #getter for: Lcom/didi/car/ui/activity/CarDriverInfoActivity;->mPageNo:I
    invoke-static {v1}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->access$300(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/didi/car/ui/activity/CarDriverInfoActivity;->mRequestPageNo:I
    invoke-static {v0, v1}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->access$202(Lcom/didi/car/ui/activity/CarDriverInfoActivity;I)I

    .line 102
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    #getter for: Lcom/didi/car/ui/activity/CarDriverInfoActivity;->did:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->access$400(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    #getter for: Lcom/didi/car/ui/activity/CarDriverInfoActivity;->mRequestPageNo:I
    invoke-static {v1}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->access$200(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)I

    move-result v1

    new-instance v2, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3$1;

    invoke-direct {v2, p0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3$1;-><init>(Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;)V

    invoke-static {v0, v1, v2}, Lcom/didi/car/net/CarRequest;->doGetDriverInfo(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    #getter for: Lcom/didi/car/ui/activity/CarDriverInfoActivity;->driverInfoView:Lcom/didi/car/ui/component/CarDriverInfoView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->access$000(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)Lcom/didi/car/ui/component/CarDriverInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarDriverInfoView;->showProgress()V

    .line 93
    return-void
.end method

.method public onTurn()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
