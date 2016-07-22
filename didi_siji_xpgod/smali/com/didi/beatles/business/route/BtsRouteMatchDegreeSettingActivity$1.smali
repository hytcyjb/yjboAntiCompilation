.class Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$1;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsRouteMatchDegreeSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->setChoice(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/BtsBaseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;

.field final synthetic val$lastState:I


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$1;->this$0:Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;

    iput p2, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$1;->val$lastState:I

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 150
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 151
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lcom/didi/beatles/model/event/BtsRouteSettingEvent;

    invoke-direct {v0}, Lcom/didi/beatles/model/event/BtsRouteSettingEvent;-><init>()V

    const-string v1, "BTS_ROUTE_SETTING_EVENT"

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->postBtsEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$1;->this$0:Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->finish()V

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$1;->this$0:Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->access$000(Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;)Lcom/didi/beatles/model/role/BtsRoleSetting;

    move-result-object v0

    iget v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$1;->val$lastState:I

    iput v1, v0, Lcom/didi/beatles/model/role/BtsRoleSetting;->push_direct_degree:I

    .line 157
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$1;->this$0:Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;

    iget v1, p0, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity$1;->val$lastState:I

    const/4 v2, 0x0

    #calls: Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->setChoice(IZ)V
    invoke-static {v0, v1, v2}, Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;->access$100(Lcom/didi/beatles/business/route/BtsRouteMatchDegreeSettingActivity;IZ)V

    .line 158
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_0
.end method
