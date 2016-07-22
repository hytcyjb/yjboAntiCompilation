.class final Lcom/didi/common/helper/GThirdTokenManager$1;
.super Lcom/didi/common/net/ResponseListener;
.source "GThirdTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/helper/GThirdTokenManager;->refreshGThirdToken(ZLcom/didi/common/listener/ThirdTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/CommonPassPortTTicket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$currentTime:J

.field final synthetic val$listener:Lcom/didi/common/listener/ThirdTokenListener;

.field final synthetic val$refreshNow:Z


# direct methods
.method constructor <init>(JLcom/didi/common/listener/ThirdTokenListener;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/didi/common/helper/GThirdTokenManager$1;->val$currentTime:J

    iput-object p3, p0, Lcom/didi/common/helper/GThirdTokenManager$1;->val$listener:Lcom/didi/common/listener/ThirdTokenListener;

    iput-boolean p4, p0, Lcom/didi/common/helper/GThirdTokenManager$1;->val$refreshNow:Z

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lcom/didi/common/model/CommonPassPortTTicket;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/GThirdTokenManager$1;->onError(Lcom/didi/common/model/CommonPassPortTTicket;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/CommonPassPortTTicket;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 68
    const-string v0, "GThirdTokenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t refresh token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/common/model/CommonPassPortTTicket;->errmsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/didi/common/model/CommonPassPortTTicket;->errno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-boolean v0, p0, Lcom/didi/common/helper/GThirdTokenManager$1;->val$refreshNow:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/didi/common/model/CommonPassPortTTicket;->errno:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/didi/common/model/CommonPassPortTTicket;->errno:I

    const/16 v1, 0x3f3

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/didi/common/model/CommonPassPortTTicket;->errno:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_1

    .line 70
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setToken(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setTToken(Ljava/lang/String;)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/didi/common/helper/GThirdTokenManager$1;->val$listener:Lcom/didi/common/listener/ThirdTokenListener;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/didi/common/helper/GThirdTokenManager$1;->val$listener:Lcom/didi/common/listener/ThirdTokenListener;

    invoke-interface {v0}, Lcom/didi/common/listener/ThirdTokenListener;->getNewThirdTokenFail()V

    .line 76
    :cond_2
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lcom/didi/common/model/CommonPassPortTTicket;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/GThirdTokenManager$1;->onFail(Lcom/didi/common/model/CommonPassPortTTicket;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/CommonPassPortTTicket;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 56
    const-string v0, "GThirdTokenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t refresh token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/common/model/CommonPassPortTTicket;->errmsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/didi/common/model/CommonPassPortTTicket;->errno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lcom/didi/common/helper/GThirdTokenManager$1;->val$refreshNow:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/didi/common/model/CommonPassPortTTicket;->errno:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/didi/common/model/CommonPassPortTTicket;->errno:I

    const/16 v1, 0x3f3

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/didi/common/model/CommonPassPortTTicket;->errno:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_1

    .line 58
    :cond_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setToken(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setTToken(Ljava/lang/String;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/didi/common/helper/GThirdTokenManager$1;->val$listener:Lcom/didi/common/listener/ThirdTokenListener;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/didi/common/helper/GThirdTokenManager$1;->val$listener:Lcom/didi/common/listener/ThirdTokenListener;

    invoke-interface {v0}, Lcom/didi/common/listener/ThirdTokenListener;->getNewThirdTokenFail()V

    .line 64
    :cond_2
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lcom/didi/common/model/CommonPassPortTTicket;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/GThirdTokenManager$1;->onFinish(Lcom/didi/common/model/CommonPassPortTTicket;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/CommonPassPortTTicket;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 81
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lcom/didi/common/model/CommonPassPortTTicket;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/helper/GThirdTokenManager$1;->onSuccess(Lcom/didi/common/model/CommonPassPortTTicket;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CommonPassPortTTicket;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 38
    const-string v0, "GThirdTokenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshed token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/common/model/CommonPassPortTTicket;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p1, Lcom/didi/common/model/CommonPassPortTTicket;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/common/helper/GThirdTokenManager$1;->val$currentTime:J

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/Preferences;->setTTokenLastTime(J)V

    .line 43
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/common/model/CommonPassPortTTicket;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setTToken(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->getInstance()Lcom/didi/common/config/preference/PreferenceEditorProxy;

    move-result-object v0

    new-instance v1, Lcom/didi/common/helper/GThirdTokenManager$1$1;

    invoke-direct {v1, p0}, Lcom/didi/common/helper/GThirdTokenManager$1$1;-><init>(Lcom/didi/common/helper/GThirdTokenManager$1;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commitImmediately(Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;)V

    .line 49
    iget-object v0, p0, Lcom/didi/common/helper/GThirdTokenManager$1;->val$listener:Lcom/didi/common/listener/ThirdTokenListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/didi/common/helper/GThirdTokenManager$1;->val$listener:Lcom/didi/common/listener/ThirdTokenListener;

    iget-object v1, p1, Lcom/didi/common/model/CommonPassPortTTicket;->token:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/didi/common/listener/ThirdTokenListener;->getNewThirdTokenSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method
