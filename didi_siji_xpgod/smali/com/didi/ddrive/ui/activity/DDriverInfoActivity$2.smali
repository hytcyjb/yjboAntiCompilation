.class Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$2;
.super Ljava/lang/Object;
.source "DDriverInfoActivity.java"

# interfaces
.implements Lcom/didi/common/ui/component/PullScrollView$OnRefreshLisener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$2;->this$0:Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$2;->this$0:Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;

    #getter for: Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;
    invoke-static {v0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->access$000(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;)Lcom/didi/frame/driverinfo/DriverInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/driverinfo/DriverInfoView;->hideProgress()V

    .line 87
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$2;->this$0:Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;

    iget-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$2;->this$0:Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;

    #getter for: Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->mPageNo:I
    invoke-static {v1}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->access$200(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->mRequestPageNo:I
    invoke-static {v0, v1}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->access$102(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;I)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity$2;->this$0:Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;

    #getter for: Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;
    invoke-static {v0}, Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;->access$000(Lcom/didi/ddrive/ui/activity/DDriverInfoActivity;)Lcom/didi/frame/driverinfo/DriverInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/driverinfo/DriverInfoView;->showProgress()V

    .line 82
    return-void
.end method

.method public onTurn()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method
