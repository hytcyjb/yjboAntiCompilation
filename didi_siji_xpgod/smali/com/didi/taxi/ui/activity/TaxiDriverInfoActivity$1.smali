.class Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$1;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiDriverInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$1;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    check-cast p1, Lcom/didi/taxi/model/TaxiDriverPage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$1;->onFinish(Lcom/didi/taxi/model/TaxiDriverPage;)V

    return-void
.end method

.method public onFinish(Lcom/didi/taxi/model/TaxiDriverPage;)V
    .locals 2
    .parameter "driver"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$1;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    #getter for: Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->driverInfoView:Lcom/didi/frame/driverinfo/DriverInfoView;
    invoke-static {v0}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->access$000(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;)Lcom/didi/frame/driverinfo/DriverInfoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/didi/frame/driverinfo/DriverInfoView;->setTaxiDriverPage(Lcom/didi/taxi/model/TaxiDriverPage;)V

    .line 54
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity$1;->this$0:Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiDriverPage;->headUrl:Ljava/lang/String;

    #calls: Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->getPhoto(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;->access$100(Lcom/didi/taxi/ui/activity/TaxiDriverInfoActivity;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------------------taxidrvier url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiDriverPage;->headUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 57
    return-void
.end method
