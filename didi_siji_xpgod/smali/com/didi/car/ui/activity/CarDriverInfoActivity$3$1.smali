.class Lcom/didi/car/ui/activity/CarDriverInfoActivity$3$1;
.super Lcom/didi/common/net/ResponseListener;
.source "CarDriverInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarDriverPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3$1;->this$1:Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarDriverPage;)V
    .locals 2
    .parameter "driver"

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverPage;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3$1;->this$1:Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;

    iget-object v0, v0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3$1;->this$1:Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;

    iget-object v1, v1, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    #getter for: Lcom/didi/car/ui/activity/CarDriverInfoActivity;->mRequestPageNo:I
    invoke-static {v1}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->access$200(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)I

    move-result v1

    #setter for: Lcom/didi/car/ui/activity/CarDriverInfoActivity;->mPageNo:I
    invoke-static {v0, v1}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->access$302(Lcom/didi/car/ui/activity/CarDriverInfoActivity;I)I

    .line 106
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3$1;->this$1:Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;

    iget-object v0, v0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    #getter for: Lcom/didi/car/ui/activity/CarDriverInfoActivity;->driverInfoView:Lcom/didi/car/ui/component/CarDriverInfoView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->access$000(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)Lcom/didi/car/ui/component/CarDriverInfoView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/car/model/CarDriverPage;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarDriverInfoView;->onCarDriverloadMore(Ljava/util/ArrayList;)V

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3$1;->this$1:Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;

    iget-object v0, v0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    const v1, 0x7f0b025b

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, Lcom/didi/car/model/CarDriverPage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/activity/CarDriverInfoActivity$3$1;->onFinish(Lcom/didi/car/model/CarDriverPage;)V

    return-void
.end method
