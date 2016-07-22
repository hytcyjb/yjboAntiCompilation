.class Lcom/didi/beatles/business/login/BtsLoginActivity$18;
.super Lcom/didi/common/net/ResponseListener;
.source "BtsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity;->getGuideFlag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarGuideFlag;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$18;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/didi/car/model/CarGuideFlag;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$18;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->getGuideFlag()V
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$3000(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    .line 891
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 892
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 869
    check-cast p1, Lcom/didi/car/model/CarGuideFlag;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity$18;->onFail(Lcom/didi/car/model/CarGuideFlag;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarGuideFlag;)V
    .locals 3
    .parameter "t"

    .prologue
    const/4 v2, 0x1

    .line 871
    invoke-static {p1}, Lcom/didi/common/database/CityListHelper;->addCityGuideFlag(Lcom/didi/car/model/CarGuideFlag;)V

    .line 876
    const-string v0, ""

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/helper/LocationHelper;->notifyCityChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/didi/car/model/CarGuideFlag;->isShowWxAgent:I

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setWxAgentFlag(I)V

    .line 879
    iget v0, p1, Lcom/didi/car/model/CarGuideFlag;->open:I

    if-ne v0, v2, :cond_1

    .line 880
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setOpenActivity(Z)V

    .line 881
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/didi/car/model/CarGuideFlag;->project_id:I

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setActivityId(I)V

    .line 882
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/car/model/CarGuideFlag;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setActivityName(Ljava/lang/String;)V

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget v0, p1, Lcom/didi/car/model/CarGuideFlag;->open:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 884
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setOpenActivity(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 869
    check-cast p1, Lcom/didi/car/model/CarGuideFlag;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity$18;->onSuccess(Lcom/didi/car/model/CarGuideFlag;)V

    return-void
.end method
