.class Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3$1;
.super Lcom/didi/beatles/net/BtsResponseListener;
.source "BtsWeixinLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/beatles/net/BtsResponseListener",
        "<",
        "Lcom/didi/beatles/model/role/BtsRandNickname;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3$1;->this$1:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3;

    invoke-direct {p0}, Lcom/didi/beatles/net/BtsResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/didi/beatles/model/BtsBaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 242
    check-cast p1, Lcom/didi/beatles/model/role/BtsRandNickname;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3$1;->onFinish(Lcom/didi/beatles/model/role/BtsRandNickname;)V

    return-void
.end method

.method public onFinish(Lcom/didi/beatles/model/role/BtsRandNickname;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 245
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/role/BtsRandNickname;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/beatles/model/role/BtsRandNickname;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfo;->setUserNickname(Ljava/lang/String;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3$1;->this$1:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3;

    iget-object v0, v0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$3;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    const-string v1, "mock_openid"

    iget-object v2, p1, Lcom/didi/beatles/model/role/BtsRandNickname;->nickname:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    #calls: Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->passengerRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->access$200(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method
