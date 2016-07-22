.class Lcom/didi/car/ui/activity/CarComplaintActivity$4;
.super Lcom/didi/common/net/ResponseListener;
.source "CarComplaintActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/activity/CarComplaintActivity;->doConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/BaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/activity/CarComplaintActivity;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/activity/CarComplaintActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarComplaintActivity$4;->this$0:Lcom/didi/car/ui/activity/CarComplaintActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 187
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 188
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarComplaintActivity$4;->this$0:Lcom/didi/car/ui/activity/CarComplaintActivity;

    #calls: Lcom/didi/car/ui/activity/CarComplaintActivity;->onComplain(Lcom/didi/common/model/BaseObject;)V
    invoke-static {v0, p1}, Lcom/didi/car/ui/activity/CarComplaintActivity;->access$400(Lcom/didi/car/ui/activity/CarComplaintActivity;Lcom/didi/common/model/BaseObject;)V

    .line 189
    return-void
.end method
