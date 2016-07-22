.class Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2$1;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsPullOrderSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;->OnChanged(Lcom/didi/common/ui/component/SwitchBar;Z)V
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
.field final synthetic this$1:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;

.field final synthetic val$wiperSwitch:Lcom/didi/common/ui/component/SwitchBar;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;Lcom/didi/common/ui/component/SwitchBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2$1;->this$1:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;

    iput-object p2, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2$1;->val$wiperSwitch:Lcom/didi/common/ui/component/SwitchBar;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2$1;->this$1:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;

    iget-object v0, v0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->access$300(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)Lcom/didi/beatles/model/role/BtsRoleSetting;

    move-result-object v1

    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2$1;->this$1:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;

    iget-object v0, v0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;
    invoke-static {v0}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->access$300(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)Lcom/didi/beatles/model/role/BtsRoleSetting;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/beatles/model/role/BtsRoleSetting;->new_order_alert:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/didi/beatles/model/role/BtsRoleSetting;->new_order_alert:Z

    .line 152
    iget-object v0, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2$1;->val$wiperSwitch:Lcom/didi/common/ui/component/SwitchBar;

    iget-object v1, p0, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2$1;->this$1:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;

    iget-object v1, v1, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity$2;->this$0:Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;

    #getter for: Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->mBtsRoleSetting:Lcom/didi/beatles/model/role/BtsRoleSetting;
    invoke-static {v1}, Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;->access$300(Lcom/didi/beatles/business/route/BtsPullOrderSettingActivity;)Lcom/didi/beatles/model/role/BtsRoleSetting;

    move-result-object v1

    iget-boolean v1, v1, Lcom/didi/beatles/model/role/BtsRoleSetting;->new_order_alert:Z

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/SwitchBar;->setChecked(Z)V

    .line 153
    invoke-virtual {p1}, Lcom/didi/beatles/model/BtsBaseObject;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
