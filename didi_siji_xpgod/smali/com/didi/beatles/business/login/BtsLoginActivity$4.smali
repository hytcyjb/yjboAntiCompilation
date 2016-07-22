.class Lcom/didi/beatles/business/login/BtsLoginActivity$4;
.super Lcom/didi/common/net/ResponseListener;
.source "BtsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity;->getServerCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/CommonSMSCode;",
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
    .line 333
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$4;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 333
    check-cast p1, Lcom/didi/common/model/CommonSMSCode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity$4;->onError(Lcom/didi/common/model/CommonSMSCode;)V

    return-void
.end method

.method public onError(Lcom/didi/common/model/CommonSMSCode;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------smscode getServerCode onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonSMSCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 355
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 356
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    .line 357
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 333
    check-cast p1, Lcom/didi/common/model/CommonSMSCode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity$4;->onFail(Lcom/didi/common/model/CommonSMSCode;)V

    return-void
.end method

.method public onFail(Lcom/didi/common/model/CommonSMSCode;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------smscode getServerCode onFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonSMSCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 362
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 363
    iget v0, p1, Lcom/didi/common/model/CommonSMSCode;->errno:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/net/HttpHelper;->validateHttpState(ILjava/lang/String;Z)Z

    .line 364
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 333
    check-cast p1, Lcom/didi/common/model/CommonSMSCode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity$4;->onFinish(Lcom/didi/common/model/CommonSMSCode;)V

    return-void
.end method

.method public onFinish(Lcom/didi/common/model/CommonSMSCode;)V
    .locals 5
    .parameter "code"

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------------smscode getServerCode onFinish:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/CommonSMSCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$4;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->isVoiceVerify(Lcom/didi/common/model/BaseObject;)Z
    invoke-static {v0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1100(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget v0, p1, Lcom/didi/common/model/CommonSMSCode;->errno:I

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$4;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #setter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->smsCode:Lcom/didi/common/model/CommonSMSCode;
    invoke-static {v0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1202(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/common/model/CommonSMSCode;)Lcom/didi/common/model/CommonSMSCode;

    .line 347
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$4;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    iget-object v0, v0, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsUtil:Lcom/didi/common/util/SMSUtil;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$4;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$4;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->smsCode:Lcom/didi/common/model/CommonSMSCode;
    invoke-static {v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1200(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/model/CommonSMSCode;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/common/model/CommonSMSCode;->phoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$4;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->smsCode:Lcom/didi/common/model/CommonSMSCode;
    invoke-static {v3}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1200(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/model/CommonSMSCode;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/common/model/CommonSMSCode;->content:Ljava/lang/String;

    iget-object v4, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$4;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1300(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/didi/common/util/SMSUtil;->sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 348
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$4;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$1300(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7de

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 333
    check-cast p1, Lcom/didi/common/model/CommonSMSCode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity$4;->onSuccess(Lcom/didi/common/model/CommonSMSCode;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CommonSMSCode;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 337
    return-void
.end method
