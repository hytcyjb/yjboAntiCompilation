.class Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsWeixinLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->passengerRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/role/BtsRegisterResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

.field final synthetic val$gender:Ljava/lang/String;

.field final synthetic val$nickname:Ljava/lang/String;

.field final synthetic val$open_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    iput-object p2, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->val$open_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->val$nickname:Ljava/lang/String;

    iput-object p4, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->val$gender:Ljava/lang/String;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 319
    check-cast p1, Lcom/didi/beatles/model/role/BtsRegisterResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->onFinish(Lcom/didi/beatles/model/role/BtsRegisterResult;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/role/BtsRegisterResult;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 322
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/didi/beatles/model/role/BtsRegisterResult;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    sget-object v2, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->ERROR:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    invoke-virtual {p1}, Lcom/didi/beatles/model/role/BtsRegisterResult;->getFullErrorMsg()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->showToastInfo(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->access$300(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->val$open_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->saveWeixinRoleListener:Lcom/didi/beatles/net/BtsResponseListener;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->access$400(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)Lcom/didi/beatles/net/BtsResponseListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/beatles/net/BtsRequest;->saveWeixinRoleSetting(Ljava/lang/String;Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 334
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    sget-object v2, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;->COMPLETE:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;

    iget-object v3, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    const v4, 0x7f0b0122

    invoke-virtual {v3, v4}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->showToastInfo(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->access$300(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$ToastType;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v0

    .line 336
    .local v0, info:Lcom/didi/beatles/model/role/BtsRoleInfo;
    invoke-virtual {v0}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/beatles/model/role/BtsRegisterResult;->head_url:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->head_img_url:Ljava/lang/String;

    .line 337
    invoke-virtual {v0}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->val$nickname:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->nick_name:Ljava/lang/String;

    .line 338
    invoke-virtual {v0}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->val$gender:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->gender:Ljava/lang/String;

    .line 339
    invoke-virtual {v0}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->base_state:Z

    .line 341
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->loadUserInfo()V

    .line 343
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$8;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-virtual {v1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->finish()V

    goto :goto_0
.end method
