.class Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$4;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiComplaintActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->doConfirm()V
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
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$4;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity$4;->this$0:Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    #calls: Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->onComplain(Lcom/didi/common/model/BaseObject;)V
    invoke-static {v0, p1}, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;->access$300(Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;Lcom/didi/common/model/BaseObject;)V

    .line 222
    return-void
.end method
