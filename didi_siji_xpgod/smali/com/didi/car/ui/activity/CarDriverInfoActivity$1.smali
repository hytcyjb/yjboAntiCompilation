.class Lcom/didi/car/ui/activity/CarDriverInfoActivity$1;
.super Lcom/didi/common/net/ResponseListener;
.source "CarDriverInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/activity/CarDriverInfoActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$1;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarDriverPage;)V
    .locals 2
    .parameter "driver"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$1;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    #getter for: Lcom/didi/car/ui/activity/CarDriverInfoActivity;->driverInfoView:Lcom/didi/car/ui/component/CarDriverInfoView;
    invoke-static {v0}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->access$000(Lcom/didi/car/ui/activity/CarDriverInfoActivity;)Lcom/didi/car/ui/component/CarDriverInfoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarDriverInfoView;->setCarDriverPage(Lcom/didi/car/model/CarDriverPage;)V

    .line 60
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarDriverInfoActivity$1;->this$0:Lcom/didi/car/ui/activity/CarDriverInfoActivity;

    iget-object v1, p1, Lcom/didi/car/model/CarDriverPage;->bigHeadUrl:Ljava/lang/String;

    #calls: Lcom/didi/car/ui/activity/CarDriverInfoActivity;->getPhoto(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/car/ui/activity/CarDriverInfoActivity;->access$100(Lcom/didi/car/ui/activity/CarDriverInfoActivity;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Lcom/didi/car/model/CarDriverPage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/activity/CarDriverInfoActivity$1;->onFinish(Lcom/didi/car/model/CarDriverPage;)V

    return-void
.end method
