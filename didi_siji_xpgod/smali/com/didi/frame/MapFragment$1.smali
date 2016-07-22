.class Lcom/didi/frame/MapFragment$1;
.super Lcom/didi/common/net/ResponseListener;
.source "MapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/MapFragment;->getGuideFlag()V
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
.field final synthetic this$0:Lcom/didi/frame/MapFragment;


# direct methods
.method constructor <init>(Lcom/didi/frame/MapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/didi/frame/MapFragment$1;->this$0:Lcom/didi/frame/MapFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/didi/car/model/CarGuideFlag;)V
    .locals 2
    .parameter "t"

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-static {p1}, Lcom/didi/common/database/CityListHelper;->addCityGuideFlag(Lcom/didi/car/model/CarGuideFlag;)V

    .line 207
    iget v0, p1, Lcom/didi/car/model/CarGuideFlag;->open:I

    if-ne v0, v1, :cond_1

    .line 208
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setOpenActivity(Z)V

    .line 209
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/didi/car/model/CarGuideFlag;->project_id:I

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setActivityId(I)V

    .line 210
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/car/model/CarGuideFlag;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setActivityName(Ljava/lang/String;)V

    .line 216
    :cond_0
    :goto_0
    const-string v0, ""

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/helper/LocationHelper;->notifyCityChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/didi/car/model/CarGuideFlag;->isShowWxAgent:I

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setWxAgentFlag(I)V

    .line 219
    return-void

    .line 211
    :cond_1
    iget v0, p1, Lcom/didi/car/model/CarGuideFlag;->open:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 212
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
    .line 200
    check-cast p1, Lcom/didi/car/model/CarGuideFlag;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/MapFragment$1;->onSuccess(Lcom/didi/car/model/CarGuideFlag;)V

    return-void
.end method
