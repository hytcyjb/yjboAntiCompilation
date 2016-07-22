.class Lcom/didi/common/ui/fragment/CommonLoginFragment$18;
.super Lcom/didi/common/net/ResponseListener;
.source "CommonLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/CommonLoginFragment;->getGuideFlag()V
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
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment$18;->this$0:Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/didi/car/model/CarGuideFlag;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 864
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 865
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 842
    check-cast p1, Lcom/didi/car/model/CarGuideFlag;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment$18;->onFail(Lcom/didi/car/model/CarGuideFlag;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarGuideFlag;)V
    .locals 3
    .parameter "t"

    .prologue
    const/4 v2, 0x1

    .line 844
    invoke-static {p1}, Lcom/didi/common/database/CityListHelper;->addCityGuideFlag(Lcom/didi/car/model/CarGuideFlag;)V

    .line 849
    const-string v0, ""

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/helper/LocationHelper;->notifyCityChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/didi/car/model/CarGuideFlag;->isShowWxAgent:I

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setWxAgentFlag(I)V

    .line 852
    iget v0, p1, Lcom/didi/car/model/CarGuideFlag;->open:I

    if-ne v0, v2, :cond_1

    .line 853
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/common/config/Preferences;->setOpenActivity(Z)V

    .line 854
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/didi/car/model/CarGuideFlag;->project_id:I

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setActivityId(I)V

    .line 855
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/car/model/CarGuideFlag;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setActivityName(Ljava/lang/String;)V

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget v0, p1, Lcom/didi/car/model/CarGuideFlag;->open:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 857
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
    .line 842
    check-cast p1, Lcom/didi/car/model/CarGuideFlag;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment$18;->onSuccess(Lcom/didi/car/model/CarGuideFlag;)V

    return-void
.end method
