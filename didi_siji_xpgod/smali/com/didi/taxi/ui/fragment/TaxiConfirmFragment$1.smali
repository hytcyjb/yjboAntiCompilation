.class Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;
.super Ljava/lang/Object;
.source "TaxiConfirmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->setCarPoolType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isAutoSend:Z

.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;->this$0:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;->isAutoSend:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 148
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/TaxiPreferences;->isOpenShareTrip()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v1, 0x1

    .line 155
    .local v1, trip_type:I
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v2

    invoke-interface {v2}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget v2, v2, Lcom/didi/common/model/CommonAttributes;->autoSend:I

    if-ne v2, v5, :cond_1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->isFirstUseCarPool()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    const/4 v1, 0x0

    .line 157
    const-string v2, "CarPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e13\u8f66\u5bfc\u6d41\uff0c\u4f7f\u7528\u4e0d\u62fc\u8f66:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iput-boolean v5, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;->isAutoSend:Z

    .line 165
    :goto_1
    move v0, v1

    .line 166
    .local v0, mTrip_type:I
    const-string v2, "carPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirm set carpool type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v2, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1$1;

    invoke-direct {v2, p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1$1;-><init>(Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;I)V

    invoke-static {v2}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 160
    .end local v0           #mTrip_type:I
    :cond_1
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolType()I

    move-result v1

    .line 161
    const-string v2, "CarPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u662f\u4e13\u8f66\u5bfc\u6d41\uff0ctrip_Type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment$1;->isAutoSend:Z

    goto :goto_1
.end method
